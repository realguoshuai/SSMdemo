/*创建数据库*/
create database if not exists`video`;
/*使用数据库*/
use `video`;
/*创建表*/
create table if not exists`users`(
`id` int(10) not null auto_increment,
`name` varchar(10),
`gender` bit(1) default 0,
`birthday` date,
`address` varchar(40),
`mobile` varchar(20),
`pwd` varchar(20),
`code` varchar(10),
`email` varchar(40),
`imgUrl` varchar(100),
`createTime` datetime,
primary key(`id`)
) engine=innodb default charset=utf8;