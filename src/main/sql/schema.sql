-- 数据库初始化脚本
--创建数据库
CREATE DATABASE seckill;
--使用数据库
use seckill;
--创建秒杀库存表
CREATE TABLE seckill(
'seckill_id' bigint NOT NULL AUTO_INCREMENT,
'name' varchar(120) NOT NULL,
'number' int NOT NULL,
'start_time' TIMESTAMP NOT NULL,
'end_time' TIMESTAMP NOT NULL,
'create_time' TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (seckill_id),
key idx_start_time(start_time),
key idx_end_time(end_time),
key idx_create_time(create_time)
)ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=uft8 COMMENT='秒杀库存表')

-- 初始化数据