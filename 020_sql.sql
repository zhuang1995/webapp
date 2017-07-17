#生活服务分类表 o2o_category
#id int 11 unsigned(无符号类型)
#name varchar 50  '' 名称
#parent_id int 10 unsigned 0 子类
#listorder int 8 unsigned 0   排序
#status tinyint 1 0 状态
#create_time int 11 unsigned 0创建时间
#update_time int 11 unsigned 0更新时间
#PRIMARY KEY (`id`) 设置主键id
#KEY parent_id(`parent_id`) 设置普通索引
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_category`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`name` varchar(50)  NOT NULL DEFAULT '',
	`parent_id` int(10) unsigned NOT NULL DEFAULT 0,
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	KEY parent_id(`parent_id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



#城市表 o2o_city
#id int 11 unsigned(无符号类型)
#name varchar 50  '' 名称
#uname varchar 50  '' 英文名 
#parent_id int 10 unsigned 0 子类
#is_default tinyint 1 0 默认城市
#listorder int 8 unsigned 0   排序
#status tinyint 1 0 状态
#create_time int 11 unsigned 0创建时间
#update_time int 11 unsigned 0更新时间
#PRIMARY KEY (`id`) 设置主键id
#KEY parent_id(`parent_id`) 设置普通索引
#UNIQUE KEY uname(`uname`) 设置唯一索引
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_city`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`name` varchar(50) NOT NULL DEFAULT '',
	`uname` varchar(50) NOT NULL DEFAULT '',
	`parent_id` int(10) unsigned NOT NULL DEFAULT 0,
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	KEY parent_id(`parent_id`),
	UNIQUE KEY uname(`uname`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into o2o_city(name,uname,parent_id,listorder,status,create_time,update_time) values('北京','beijing',0,0,'1',0,0); 
insert into o2o_city(name,uname,parent_id,listorder,status,create_time,update_time) values('北京','beijing1',1,0,'1',0,0); 
insert into o2o_city(name,uname,parent_id,listorder,status,create_time,update_time) values('江西','jiangxi',0,0,'1',0,0); 
insert into o2o_city(name,uname,parent_id,listorder,status,create_time,update_time) values('南昌','nanchang',6,0,'1',0,0); 
insert into o2o_city(name,uname,parent_id,listorder,status,create_time,update_time) values('上饶','shangrao',6,0,'1',0,0); 

#商圈表 o2o_area
#id int 11 unsigned(无符号类型)
#name varchar 50  '' 名称
#city_id int 11 unsigned 0 城市字段
#parent_id int 10 unsigned 0 子类
#listorder int 8 unsigned 0   排序
#status tinyint 1 0 状态
#create_time int 11 unsigned 0创建时间
#update_time int 11 unsigned 0更新时间
#PRIMARY KEY (`id`) 设置主键id
#KEY parent_id(`parent_id`) 设置普通索引
#KEY city_id(`city_id`) 设置普通索引
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_area`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`name` varchar(50) NOT NULL DEFAULT '',
	`city_id` int(11) unsigned NOT NULL DEFAULT 0,
	`parent_id` int(10) unsigned NOT NULL DEFAULT 0,
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	KEY parent_id(`parent_id`),
	KEY city_id(`city_id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


#商户表 o2o_bis
#id int 11 unsigned(无符号类型)
#name varchar 50  '' 名称
#email varchar 50 ''  邮箱
#logo varchar 255 ''  logo
#licence_logo varchar 255 ''  营养执照
#description text not null 描述
#city_id int 11 unsigned 0 城市字段
#city_path varchar 50 ''  城市
#bank_info varchar 50 ''  银行信息
#money decimal 20,2 '0.00'  金钱
#bank_name varchar 50 ''  银行户行名称
#bank_user varchar 50 ''  银行用户名称
#faren varchar 20 ''  法人
#faren_tel varchar 20 ''  法人联系方式
#listorder int 8 unsigned 0   排序
#status tinyint 1 0 状态
#create_time int 11 unsigned 0创建时间
#update_time int 11 unsigned 0更新时间
#PRIMARY KEY (`id`) 设置主键id
#KEY city_id(`city_id`) 设置普通索引
#KEY name(`name`) 设置普通索引
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_bis`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`name` varchar(50) NOT NULL DEFAULT '',
	`email` varchar(50) NOT NULL DEFAULT '',
	`logo` varchar(255) NOT NULL DEFAULT '',
	`licence_logo` varchar(255) DEFAULT '',
	`description` text NOT NULL,
	`city_id` int(11) unsigned NOT NULL DEFAULT 0,
	`city_path` varchar(50) NOT NULL DEFAULT '',
	`bank_info` varchar(50) NOT NULL DEFAULT '',
	`money` decimal(20,2) NOT NULL DEFAULT '0.00',
	`bank_name` varchar(50) NOT NULL DEFAULT '',
	`bank_user` varchar(50) NOT NULL DEFAULT '',
	`faren` varchar(20) NOT NULL DEFAULT '',
	`faren_tel` varchar(20) NOT NULL DEFAULT '',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	KEY city_id(`city_id`),
	KEY name(`name`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



#商户账号表 o2o_bis_account
#id int 11 unsigned(无符号类型)
#username varchar 50  '' 账户
#password char 32  '' 密码
#code varchar 10  '' 随机数 
#bis_id int 11 unsigned 0 所属商户id
#last_login_ip varchar 20 '' 最后登录ip
#last_login_time int 11 '' 最后登录时间
#is_main tinyint 1 unsigned 0 是否默认为总管理员
#listorder int 8 unsigned 0   排序
#status tinyint 1 0 状态       //1是通过  2是不通过  0是待审核   删除是-1
#create_time int 11 unsigned 0创建时间
#update_time int 11 unsigned 0更新时间
#PRIMARY KEY (`id`) 设置主键id
#KEY bis_id(`bis_id`) 设置普通索引
#KEY username(`username`) 设置普通索引
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_bis_account`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`username` varchar(50) NOT NULL DEFAULT '',
	`password` char(32) NOT NULL DEFAULT '',
	`code` varchar(10) NOT NULL DEFAULT '',
	`bis_id` int(11) unsigned NOT NULL DEFAULT 0,
	`last_login_ip` varchar(20) NOT NULL DEFAULT '',
	`last_login_time` int(11) NOT NULL DEFAULT 0,
	`is_main` tinyint(1) unsigned NOT NULL DEFAULT 0,
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	KEY bis_id(`bis_id`),
	KEY username(`username`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


#商户门店表 o2o_bis_location
#id int 11 unsigned(无符号类型)
#name varchar 50  '' 名称
#logo varchar 255 ''  logo
#address varchar 255 ''  门店地址
#tel varchar 20  '' 电话
#contact varchar 20  '' 联系人
#xpoint varchar 20  '' 经度
#ypoint varchar 20  '' 纬度
#bis_id int 11 unsigned  0 纬度
#open_time int 11 unsigned  0 门店经营时间
#content text   介绍
#is_main tinyint 1 unsigned 0 是否默认为总管理员
#api_address varchar 255 ''  门店地址
#city_id int 11 unsigned 0 城市字段
#city_path varchar 50 ''  城市
#category_id int 11 unsigned 0 分类
#category_path varchar 50 ''  栏目分类
#bank_info varchar 50 ''  银行信息
#listorder int 8 unsigned 0   排序
#status tinyint 1 0 状态
#create_time int 11 unsigned 0创建时间
#update_time int 11 unsigned 0更新时间
#PRIMARY KEY (`id`) 设置主键id
#KEY city_id(`city_id`) 设置普通索引
#KEY bis_id(`bis_id`) 设置普通索引
#KEY category_id(`category_id`) 设置普通索引
#KEY name(`name`) 设置普通索引
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_bis_location`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`name` varchar(50) NOT NULL DEFAULT '',
	`logo` varchar(255) NOT NULL DEFAULT '',
	`address` varchar(255) NOT NULL DEFAULt '',
	`tel` varchar(20) NOT NULL DEFAULT '',
	`contact` varchar(20) NOT NULL DEFAULT '',
	`xpoint` varchar(20) NOT NULL DEFAULT '',
	`ypoint` varchar(20) NOT NULL DEFAULT '',
	`bis_id` int(11) unsigned NOT NULL DEFAULT 0,
	`open_time` int(11) unsigned NOT NULL DEFAULT 0,
	`content` text NOT NULL,
	`is_main` tinyint(1) unsigned NOT NULL DEFAULT 0,
	`api_address` varchar(255) NOT NULL DEFAULT '',
	`city_id` int(11) unsigned NOT NULL DEFAULT 0,
	`city_path` varchar(50) NOT NULL DEFAULT '',
	`category_id` int(11) unsigned NOT NULL DEFAULT 0,
	`category_path` varchar(50) NOT NULL DEFAULT '',
	`bank_info` varchar(50) NOT NULL DEFAULT '',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	KEY city_id(`city_id`),
	KEY bis_id(`bis_id`),
	KEY category_id(`category_id`), 
	KEY name(`name`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



#团购商品表 o2o_deal 
#id int 11 unsigned 
#name varchar 100  ''
#category_id int 11 0 栏目id
#se_category_id int 11  0  二级栏目
#bis_id int 11  0 商户ID
#location_ids varchar 100  '' 所属店面ID
#image varchar 200  '' 商品图片
#description text   '' 商品描述
#start_time int 11 0 团购开始时间
#end_time int 11 0  商品结束时间
#origin_price decimal 20,2  '0.00' 商品原价
#current_price decimal 20,2  '0.00'当前售价
#city_id int 11 0 商品属于哪个城市下
#buy_count int 11 0  商品购买数量
#total_count int 11 0   商品总量
#coupons_begin_time int 11 0 团购劵开始时间
#coupons_end_time int 11 0 团购劵结束时间
#xpoint varchar 20 '' 经度
#ypoint varchar 20 '' 纬度
#bis_account_id int 10 0 哪个商家账号提交
#balance_price decimal 20,2 0.00   平台商家的提佣价
#notes text 商品提示
#listorder int 8 unsigned 0 排序
#status tinyint1 0						 //1是通过  2是不通过  0是待审核   删除是-1
#create_time int 11 unsigned 0
#update_time int 11 unsigned 0
#PRIMARY KEY (`id`)
#KEY caregory_id(`category_id`)
#KEY se_caregory_id(`se_caregory_id`)
#KEY city_id(`se_caregory_id`)
#KEY start_time(`start_time`)
#KEY end_time(`end_time`)
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_deal`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`name` varchar(100) NOT NULL DEFAULT '',
	`category_id` int(11) NOT NULL DEFAULT 0,
	`se_category_id` int(11) NOT NULL DEFAULT 0,
	`bis_id` int(11) NOT NULL DEFAULT 0,
	`location_ids` varchar(100) NOT NULL DEFAULT '',
	`image` varchar(200) NOT NULL DEFAULT '',
	`description` text NOT NULL,
	`start_time` int(11) NOT NULL DEFAULT 0,
	`end_time` int(11) NOT NULL DEFAULT 0,
	`origin_price` decimal(20,2) NOT NULL DEFAULT '0.00',
	`current_price`	decimal(20,2) NOT NULL DEFAULT '0.00',
	`city_id` int(11) NOT NULL DEFAULT 0,
	`buy_count` int(11) NOT NULL DEFAULT 0,
	`total_count` int(11) NOT NULL DEFAULT 0,
	`coupons_begin_time` int(11) NOT NULL DEFAULT 0,
	`coupons_end_time` int(11) NOT NULL DEFAULT 0,
	`xpoint` varchar(20) NOT NULL DEFAULT '',
	`ypoint` varchar(20) NOT NULL DEFAULT '',
	`bis_account_id` int(10) NOT NULL DEFAULT 0,
	`balance_price` decimal(20,2) NOT NULL DEFAULT '0.00',
	`notes` text NOT NULL,
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	KEY caregory_id(`category_id`),
	KEY se_category_id(`se_category_id`),
	KEY city_id(`city_id`),
	KEY start_time(`start_time`),
	KEY end_time(`end_time`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

#用户表 o2o_user
#id int 11 unsigned 
#username varchar 20  ''
#password char(32) ''
#code varchar 10 ''
#last_login_ip varchar 20 ''
#last_login_time int 11 unsigned 0
#email varchar 30 ''
#mobile varchar 20 ''  电话号码
#listorder int 8 unsigned 0 排序
#status tinyint1 0
#create_time int 11 unsigned 0
#update_time int 11 unsigned 0
#PRIMARY KEY (`id`)
#UNIQUE KEY username(`username`)
#UNIQUE KEY email(`email`)
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_user`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`username` varchar(20) NOT NULL DEFAULT '',
	`password` char(32) NOT NULL DEFAULT '',
	`code` varchar(10) NOT NULL DEFAULT '',
	`last_login_ip` varchar(20) NOT NULL DEFAULT '',
	`last_login_time` int(11) unsigned NOT NULL DEFAULT 0,
	`email` varchar(30) NOT NULL DEFAULT '',
	`mobile` varchar(20) NOT NULL DEFAULT '',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`),
	UNIQUE KEY username(`username`),
	UNIQUE KEY email(`email`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


#推荐位表 o2o_featured
#id int 11 unsigned 
#type tinyint 1 0 分类
#title varchar 30 ''标题
#image varchar 255 ''图片
#url varchar 255 ''url
#description varchar 255 ''描述
#listorder int 8 unsigned 0 排序
#status tinyint1 0
#create_time int 11 unsigned 0
#update_time int 11 unsigned 0
#PRIMARY KEY (`id`)
#ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE `o2o_featured`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`type` tinyint(1) NOT NULL DEFAULT 0,
	`title` varchar(30) NOT NULL DEFAULT '',
	`image` varchar(255) NOT NULL DEFAULT '',
	`url` varchar(255) NOT NULL DEFAULT '',
	`description` varchar(255) NOT NULL DEFAULT '',
	`listorder` int(8) unsigned NOT NULL DEFAULT 0,
	`status` tinyint(1) NOT NULL DEFAULT 0,
	`create_time` int(11) unsigned NOT NULL DEFAULT 0,
	`update_time` int(11) unsigned NOT NULL DEFAULT 0,
	PRIMARY KEY (`id`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



#订单表 o2o_order
#id int 11 unsigned 
#outus_trade_no varchar 100 ''订单编号
#transaction_id varchar 100 ''微信支付订单编号
#user_id int 11 0 用户id
#username varchar 50 ''用户名称
#pay_time varchar 20 ''微信支付时间
#payment_id tinyint(1)  1 支付方式 
#deal_id int 11 0 商品id
#deal_count int 11 0 下单数量
#pay_status tinyint(1) 0 1 支付状态 0:未支付 1已经支付222支付失败 3
#total_price decimal(20,2) 0.00 订单总额
#pay_amount decimal(20,2) 0.00 微信返回
#referer varchar 255 ''订单来路url
#status tinyint1 1
#create_time int 11 unsigned 0
#update_time int 11 unsigned 0
PRIMARY KEY (`id`),
UNIQUE `out_trade_no`(`out_trade_no`),
KEY user_id(`user_id `),
KEY create_time(`create_time `)
ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
CREATE TABLE `o2o_order`(
	`id` int(11) unsigned NOT NULL auto_increment,
	`outus_trade_no` varchar(100) NOT NULL DEFAULT '' COMMENT '订单编号',
	`transaction_id` varchar(100) NOT NULL DEFAULT '' COMMENT '微信订单编号',
	`user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
	`username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
	`pay_time` varchar(20) NOT NULL DEFAULT '' COMMENT '微信支付时间',
	`payment_id` tinyint(1) NOT NULL DEFAULT 0 COMMENT '支付方式',
	`deal_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品id',
	`deal_count` int(11) NOT NULL DEFAULT 0 COMMENT '下单数量'
	`pay_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '支付状态',
	`total_price` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '订单总额',
	`pay_amount` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '返回金额',
	`referer` varchar(255) NOT NULL DEFAULT '' COMMENT '来路URL',
	`status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
	`create_time` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '创建时间',
	`update_time` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '更新时间',
	PRIMARY KEY (`id`),
	UNIQUE `outus_trade_no`(`outus_trade_no`),
	KEY user_id(`user_id`),
	KEY create_time(`create_time`)
)ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
修改一点点
















