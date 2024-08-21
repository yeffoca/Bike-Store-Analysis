create table order_items
(
    order_id   integer,
    item_id    integer,
    product_id integer,
    quantity   integer,
    list_price double precision,
    discount   double precision
);

alter table order_items
    owner to gus;

