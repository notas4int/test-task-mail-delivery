create table PostalItem (
    id int primary key generated by default as identity,
    mail_type varchar not null,
    person_index bigint not null,
    address varchar not null,
    person_name varchar not null,
    mail_status varchar default 'IN_THE_POST_OFFICE' not null
);

create table PostOffice (
    id bigint primary key generated by default as identity,
    name varchar not null,
    address varchar not null
);

create table "post_office_postal_item" (
    id bigint primary key generated by default as identity,
    postal_item_id bigint references PostalItem(id) on delete cascade,
    post_office_id bigint references PostOffice(id) on delete cascade
);