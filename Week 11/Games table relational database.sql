create database games;
use games;
create table game_details(
game_id int auto_increment primary key,
title varchar(40) not null,
platform varchar(20) not null,
release_yr year not null,
score int not null);
explain game_details;
use games;
insert into game_details (title, platform, release_yr, score)
values ('Championship Pool', 'Game Boy', 1999, 4),
('F-1 Race', 'Game Boy', 1999, 7),
('Final Fantasy Advent', 'Game Boy', 2000, 9),
('007: The World is No', 'Nintendo 64', 2000, 8.9),
('1080ﾂｰ Snowboarding', 'Nintendo 64', 1998, 8.6),
('Aero Gauge', 'Nintendo 64', 1998, 5.2),
('Child of Light', 'PlayStation 4', 2014, 9.3),
('ChoroQ', 'PlayStation 2', 2004, 2),
('Chulip', 'PlayStation 2', 2007, 6),
('Citizens of Earth', 'PlayStation 4', 2015, 6.5),
('Deus Ex: Mankind Div', 'Xbox One', 2016, 9.2),
('Devil May Cry 4', 'Xbox 360', 2008, 8.7),
('Divinity: Original S', 'Xbox One', 2015, 9),
('DJ Hero', 'Xbox 360', 2009, 9);
select * from game_details;

use games;
create table platform(
game_id int auto_increment primary key,
console varchar(20) not null,
release_yr year not null,
discontinued year not null,
company varchar(20) not null);

insert into platform (console, release_yr, discontinued, company)
values ('Games Boy', 1989, 2003, 'Nintendo'),
('Nintendo 64', 1996, 2002, 'Nintendo'),
('PlayStation 2', 2000, 2012, 'Sony'),
('PlayStation 4', 2013, 2021, 'Sony'),
('Xbox 360', 2005, 2016, 'Microsoft'),
('Xbox One', 2013, 2021, 'Microsoft');
select * from platform;

alter table platform
rename column release_yr to console_release_yr,
rename column discontinued to console_discontinued;

select * from platform;

select * from game_details;

select game_details.title, game_details.platform, platform.company
from game_details
inner join platform
on game_details.platform = platform.console;

-- complex query to find games where console released before 2000
select game_details.title, game_details.platform, platform.console_release_yr
from game_details, platform
where game_details.platform = platform.console and platform.console_release_yr < 2000;

update platform
set console = 'Game Boy'
where game_id = 1;

-- simple query to find games on playstation 4 platform
select * from game_details
where platform = 'Playstation 4';

-- comparison operators to find games with scores above 6 and below 8
select * from game_details
where score between 6 and 8;

