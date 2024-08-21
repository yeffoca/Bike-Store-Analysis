create table customers
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

alter table customers
    owner to gus;

