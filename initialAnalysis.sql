---------------How do total sales compare between stores each month?--------------------

/*
    This query gives us a table that shows that Baldwin Bikes is the highest
    performing store month to month. All three stores appear to share low and high months
    with no discernible pattern just by skimming the table (Tableau visualization may change this).
 */

SELECT store_name, CAST(SUM(total_sale) AS decimal(10, 2)) AS monthly_sales,
       TO_CHAR(o.order_date, 'YYYY-MM') AS month FROM (
    SELECT order_id, SUM((quantity * list_price) * (1-discount)) AS total_sale FROM order_items
    GROUP BY order_id) AS order_sums
LEFT JOIN orders as o
ON order_sums.order_id = o.order_id
LEFT JOIN stores AS s
ON o.store_id = s.store_id
GROUP BY month, store_name
ORDER BY month;

--------------How does order fulfillment time compare between stores?--------------------

/*
    This query gives us a table with the average fulfillment time for each store
    as well as the modal fulfillment time. This table suggests that Baldwin Bikes is
    most efficient while Santa Cruz Bikes is least efficient.
 */

SELECT s.store_name,
       AVG(CAST(data_diffs.shipped_date AS DATE) - data_diffs.order_date) AS mean_fulfillment_time,
       MODE() WITHIN GROUP (ORDER BY (CAST(data_diffs.shipped_date AS DATE) - data_diffs.order_date)) AS mode_fulfillment_time
FROM (
    SELECT store_id, order_date, shipped_date FROM orders
    WHERE shipped_date != 'NULL') as data_diffs
LEFT JOIN stores AS s
ON data_diffs.store_id = s.store_id
GROUP BY s.store_name;

-------------Which stores find themselves with the most repeat customers?----------------

/*
    This query produces a table that tallies the number of repeat customers each store has.
    A repeat customer is anyone who has made 2 or more purchases. The table shows that Baldwin
    Bikes has the best customer retention.
 */

SELECT store_name, num_repeat_customers FROM (
    SELECT store_name, COUNT(repeats) AS num_repeat_customers FROM (
        SELECT store_name, customer_id, COUNT(customer_id) AS repeats FROM orders AS o
        LEFT JOIN stores as s
        ON s.store_id = o.store_id
        GROUP BY s.store_name, customer_id) AS repeat_count
    GROUP BY store_name) as final_totals;

----------------Preliminary conclusions-------------------------
/*
    These few queries have shown that Baldwin Bikes is the best performing store
    in this chain. This appears to be related to their efficiency with orders
    and their customer service as they have about 4x more repeat customers
    than the other two stores. It would be wise to investigate this store and
    try to apply their strategies to the others.
 */