-- Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

drop database if exists `example`;
create database `example`;
use `example`;

drop table if exists `users`;
create table `users` (
    id serial primary key,
    name varchar(100)
) comment 'Пользователи';

