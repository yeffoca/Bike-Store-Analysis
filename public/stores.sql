create table stores
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

alter table stores
    owner to gus;

