create table users
(
    id           serial       not null
        constraint users_pkey
            primary key,
    fullname     varchar(100) not null,
    username     varchar(100) not null,
    password     varchar(100) not null,
    email        varchar(100) not null,
    phone_number varchar(100) not null,
    isadmin      boolean default false,
    course_id    integer
        constraint fk_course
            references courses
);
