create table staffs
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

alter table staffs
    owner to gus;

