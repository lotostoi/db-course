-- 1 Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.

/* [client]
user=root
password=root */

-- 2 Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

create database if not exists example;

use example;

CREATE TABLE if not exists users(id int, name CHAR);

show tables;

DESCRIBE users;

CREATE DATABASE if not exists sample;

-- 3 Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

-- $ mysqldump example > dump.sql

-- $ mysql sample < dump.sql // не работает под виндой, пришлось из gitbash делать((

use sample;

describe users;
