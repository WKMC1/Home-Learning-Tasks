create database games;
use games;
create table game_details(
game_id int auto_increment primary key,
title varchar(40) not null,
platform varchar(20) not null,
release_yr year not null,
score int not null);
explain game_details
