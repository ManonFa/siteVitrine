create database if not exists maldiBDD character set utf8 collate utf8_unicode_ci;
use maldiBDD;

grant all privileges on maldiBDD.* to '_user'@'localhost' identified by 'secret';
