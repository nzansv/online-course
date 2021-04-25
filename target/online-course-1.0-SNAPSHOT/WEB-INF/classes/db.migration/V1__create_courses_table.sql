create table courses
(
    id          serial       not null
        constraint courses_pkey
            primary key,
    title       varchar(100) not null,
    description varchar      not null,
    duration    varchar(100) not null,
    level       varchar(100) not null,
    img_src     varchar,
    short_info  varchar
);
