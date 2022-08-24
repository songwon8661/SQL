create table `User4`(
`seq` int AUTO_INCREMENT primary key,
`name` varchar(10),
`gender` tinyint,
`age` int,
`addr` varchar(255)

);


create table `User5`(
`name` varchar(10) NOT NULL,
`gender` tinyint,
`age` int default 1,
`addr` varchar(10)

);
alter table `user5` add `hp` varchar(20);
alter table `user5`add `age` char(10) default '0000-00-00' after `name`;
alter table `user5` add `uid` varchar(10) primary key first;

alter table `user5` modify `hp` char(13);
alter table `user5` modify `age` tinyint;

alter table `user5` change column `addr` `address` varchar(100);

alter table `user5` drop `gender`;

create table `user6` like `user5`;


insert into `user6` select * from `user5`;

