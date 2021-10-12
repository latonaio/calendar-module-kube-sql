create database if not exists omotebako_calendar default character set utf8 collate utf8_general_ci;
drop table if exists omotebako_calendar.schedule;
drop table if exists omotebako_calendar.tag_master;
drop table if exists omotebako_calendar.schedule_to_tag;
create table omotebako_calendar.schedule (
    schedule_id int(10) unsigned auto_increment not null primary key,
    start_date timestamp null default null,
    end_date timestamp null default null,
    title varchar(128) not null,
    description varchar(1024),
    user_id int(10) unsigned,
    user_name varchar(32));
create table omotebako_calendar.tag_master (
    tag_id int(10) unsigned auto_increment not null primary key,
    tag_name varchar(64) not null);
create table omotebako_calendar.schedule_to_tag (
    schedule_id int(10) unsigned not null,
    tag_id int(10) unsigned not null);
