DROP DATABASE IF EXISTS `cinema`;
CREATE DATABASE `cinema`;
USE `cinema`;

drop table if exists `member`;
create table `member`(
id int primary key auto_increment,
age int not null,
passport_id int,
foreign key (passport_id) references `passport`(id)
);

INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (1,  1988,  '221212321');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (2,  1999,  '3214234234');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (3,  2020,  '4354352342');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (4,  1972,  '432543534');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (5,  2001,  '65454524');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (6,  2000,  '6545244234');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (7,  2021,  '634524523');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (8,  2021,  '64553452');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (9,  1982,  '74553452');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (10, 1996,  '4235234534');
INSERT INTO `member` (`id`, `age`, `passport_id`) VALUES (11, 2023,  '6534545342');




DROP TABLE IF EXISTS `passport`;
CREATE TABLE `passport` (
id INT primary key NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
nation VARCHAR(45) NOT NULL,
gender VARCHAR(10) NOT NULL,
birthday VARCHAR(10) NOT NULL
);

INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (1, 'Angela Gonzalez', 'Zimbabwe', 'F', '2007-10-24');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (2, 'Douglas Ryan', 'Lebanon', 'M', '2007-03-18');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (3, 'John Parker', 'Wallis and Futuna', 'M', '1971-06-08');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (4, 'Maria Sullivan', 'Malvinas', 'F', '1998-07-13');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (5, 'Sherry Howell', 'British Virgin Islands', 'F', '2004-03-03');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (6, 'Milton Rivera', 'Canada', 'M', '2001-12-19');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (7, 'Jessie Jones', 'Netherlands Antilles', 'F', '2000-01-01');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (8, 'Frank Garcia', 'Nauru', 'M', '1999-09-10');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (9, 'Amy Edwards', 'Benin', 'F', '2005-04-13');
INSERT INTO `passport` (`id`, `name`, `nation`, `gender`, `birthday`) VALUES (10, 'Terry Sanchez', 'Nigeria', 'M', '1990-07-22');




drop table if exists `category`;
create table `category`(
id int primary key auto_increment,
title char(255) not null
);

INSERT INTO `category` (`id`,`title`) VALUES (1, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (2, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (3, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (4, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (5, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (6, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (7, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (8, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (9, 'horror');
INSERT INTO `category` (`id`,`title`) VALUES (10, 'horror');




drop table if exists `actors`;
create table `actors`(
id int primary key auto_increment,
name char(255) not null,
age int not null
);

INSERT INTO `actors` (`id`, `name`, `age`) VALUES (1, 'Jonh', 12);
INSERT INTO `actors` (`id`, `name`, `age`) VALUES (2, 'Maou', 16);
INSERT INTO `actors` (`id`, `name`, `age`) VALUES (3, 'Short', 18);
INSERT INTO `actors` (`id`, `name`, `age`) VALUES (4, 'Poetry', 23);
INSERT INTO `actors` (`id`, `name`, `age`) VALUES (5, 'Piter', 4);




drop table if exists `movie`;
create table `movie`(
id int primary key auto_increment,
title char(255) not null,
date_of_presentation date not null,
age_restriction char(3) not null,
director char(255) not null,
category_id int,
actors_id int,
foreign key (category_id) references `category`(id),
foreign key (actors_id) references `actors`(id)
);

INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (1, 'USA politic', 1988, 1, 'politics', '423432432423', '312321312312');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (2, 'How to create a business', 1999, 2, 'business', '432432423', '543543534534');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (3, 'Quick receipt of money', 2020, 3, 'finance', '4234234234', '5435345423424');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (4, 'Pushckin', 1972, 4, 'biography', '4324234234234', '423423423423');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (5, 'Autobiography of Elon Musk', 2001, 5, 'autobiography', '42353245234', '6564564564');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (6, 'Harry Potter', 2000, 6, 'fantasy', '524525254', '65464564564');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (7, 'Clown', 2021, 7, 'thriller', '76445654654645', '432423423');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (8, 'Love is war', 2021, 8, 'romance', '654654645', '767456464');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (9, 'Walking Dead', 1982, 9, 'fantasy', '645645645', '312312412');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (10, 'love forever', 1996, 10, 'romance', '423423234', '7657653464');
INSERT INTO `movie` (`id`, `title`, `date_of_presentation`, `age_restriction`, `director`, `category_id`, `actors_id`) VALUES (11, 'Deepwoken', 2023, 6, 'fantasy', '75675675675', '31231423423');




drop table if exists `watching_a_movie`;
create table `watching_a_movie`(
start_time time not null,
movie_id int,
member_id int,
foreign key (movie_id) references `movie`(id),
foreign key (member_id) references `member`(id)
);

INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (1, 1, 2);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (2, 2, 4);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (3, 3, 5);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (4, 4, 10);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (5, 5, 7);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (6, 5, 5);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (7, 4, 4);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (8, 2, 8);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (9, 2, 9);
INSERT INTO `watching_a_movie` (`start_time`, `movie_id`, `member_id`) VALUES (10, 3, 1);



