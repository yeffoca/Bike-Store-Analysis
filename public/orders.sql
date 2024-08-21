create table orders
(
    order_id      integer,
    customer_id   integer,
    order_status  integer,
    order_date    date,
    required_date text,
    shipped_date  text,
    store_id      integer,
    staff_id      integer
);

alter table orders
    owner to gus;

