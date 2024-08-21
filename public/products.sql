create table products
(
    product_id   integer,
    product_name text,
    brand_id     integer,
    category_id  integer,
    model_year   integer,
    list_price   double precision
);

alter table products
    owner to gus;

