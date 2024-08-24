create database "Bike-Store"
    with owner guest;

create type public.man_id as enum ('1', '2', '3', '4', '5', '6', '7');

alter type public.man_id owner to guest;

create type public.order_stat as enum ('1', '2', '3', '4');

alter type public.order_stat owner to guest;

create type public.cats as enum ('Children Bicycles', 'Comfort Bicycles', 'Cruisers Bicycles', 'Cyclocross Bicycles', 'Electric Bikes', 'Mountain Bikes', 'Road Bikes');

alter type public.cats owner to guest;

create type public.brand_names as enum ('Electra', 'Haro', 'Heller', 'Pure Cycles', 'Ritchey', 'Strider', 'Sun Bicycles', 'Surly', 'Trek');

alter type public.brand_names owner to guest;

create table public.brands
(
    brand_id   integer,
    brand_name text
);

alter table public.brands
    owner to guest;

create table public.categories
(
    category_id   integer,
    category_name text
);

alter table public.categories
    owner to guest;

create table public.customers
(
    customer_id integer,
    first_name  text,
    last_name   text,
    phone       text,
    email       text,
    street      text,
    city        text,
    state       text,
    zip_code    integer
);

alter table public.customers
    owner to guest;

create table public.order_items
(
    order_id   integer,
    item_id    integer,
    product_id integer,
    quantity   integer,
    list_price double precision,
    discount   double precision
);

alter table public.order_items
    owner to guest;

create table public.orders
(
    order_id      integer,
    customer_id   integer,
    order_status  integer,
    order_date    date,
    required_date date,
    shipped_date  text,
    store_id      integer,
    staff_id      integer
);

alter table public.orders
    owner to guest;

create table public.products
(
    product_id   integer,
    product_name text,
    brand_id     integer,
    category_id  integer,
    model_year   integer,
    list_price   double precision
);

alter table public.products
    owner to guest;

create table public.staffs
(
    staff_id   integer,
    first_name text,
    last_name  text,
    email      text,
    phone      text,
    active     integer,
    store_id   integer,
    manager_id text
);

alter table public.staffs
    owner to guest;

create table public.stocks
(
    store_id   integer,
    product_id integer,
    quantity   integer
);

alter table public.stocks
    owner to guest;

create table public.stores
(
    store_id   integer,
    store_name text,
    phone      text,
    email      text,
    street     text,
    city       text,
    state      text,
    zip_code   integer
);

alter table public.stores
    owner to guest;

