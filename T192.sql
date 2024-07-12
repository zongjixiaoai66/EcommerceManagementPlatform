/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t192`;
CREATE DATABASE IF NOT EXISTS `t192` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t192`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 3, '收货人1', '17703786901', '地址1', 1, '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51'),
	(2, 1, '收货人2', '17703786902', '地址2', 1, '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51'),
	(3, 1, '收货人3', '17703786903', '地址3', 2, '2022-03-15 11:48:51', '2022-03-15 11:58:03', '2022-03-15 11:48:51'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51'),
	(5, 2, '收货人5', '17703786905', '地址5', 1, '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/dianshangpingtai/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/dianshangpingtai/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/dianshangpingtai/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-15 11:48:43'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-15 11:48:43'),
	(3, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-15 11:48:43'),
	(4, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-15 11:48:43'),
	(5, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-15 11:48:43'),
	(6, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-15 11:48:43'),
	(7, 'goods_types', '商品类型', 1, '商品类型1', NULL, NULL, '2022-03-15 11:48:43'),
	(8, 'goods_types', '商品类型', 2, '商品类型2', NULL, NULL, '2022-03-15 11:48:43'),
	(9, 'goods_types', '商品类型', 3, '商品类型3', NULL, NULL, '2022-03-15 11:48:43'),
	(10, 'goods_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-03-15 11:48:43'),
	(11, 'goods_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-15 11:48:43'),
	(12, 'goods_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-15 11:48:43'),
	(13, 'goods_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-15 11:48:43'),
	(14, 'goods_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-15 11:48:43'),
	(15, 'goods_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-15 11:48:43'),
	(16, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-15 11:48:43'),
	(17, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-15 11:48:43'),
	(18, 'shangjia_xingji_types', '商家星级类型', 1, '一级', NULL, NULL, '2022-03-15 11:48:43'),
	(19, 'shangjia_xingji_types', '商家星级类型', 2, '二级', NULL, NULL, '2022-03-15 11:48:43'),
	(20, 'shangjia_xingji_types', '商家星级类型', 3, '三级', NULL, NULL, '2022-03-15 11:48:43');

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int DEFAULT NULL COMMENT '商家',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `goods_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `goods_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `goods_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `goods_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `goods`;
INSERT INTO `goods` (`id`, `shangjia_id`, `goods_name`, `goods_photo`, `goods_types`, `goods_kucun_number`, `goods_old_money`, `goods_new_money`, `goods_clicknum`, `shangxia_types`, `goods_delete`, `goods_content`, `create_time`) VALUES
	(1, 3, '商品名称1', 'http://localhost:8080/dianshangpingtai/upload/goods1.jpg', 3, 101, 603.87, 191.17, 336, 1, 1, '商品简介1', '2022-03-15 11:48:51'),
	(2, 1, '商品名称2', 'http://localhost:8080/dianshangpingtai/upload/goods2.jpg', 2, 96, 818.04, 69.02, 80, 1, 1, '商品简介2', '2022-03-15 11:48:51'),
	(3, 2, '商品名称3', 'http://localhost:8080/dianshangpingtai/upload/goods3.jpg', 2, 99, 965.62, 93.53, 184, 1, 1, '商品简介3', '2022-03-15 11:48:51'),
	(4, 1, '商品名称4', 'http://localhost:8080/dianshangpingtai/upload/goods4.jpg', 3, 104, 514.26, 396.33, 38, 1, 1, '商品简介4', '2022-03-15 11:48:51'),
	(5, 1, '商品名称5', 'http://localhost:8080/dianshangpingtai/upload/goods5.jpg', 2, 102, 661.45, 161.77, 168, 2, 1, '商品简介5', '2022-03-15 11:48:51');

DROP TABLE IF EXISTS `goods_commentback`;
CREATE TABLE IF NOT EXISTS `goods_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `goods_commentback`;
INSERT INTO `goods_commentback` (`id`, `goods_id`, `yonghu_id`, `goods_commentback_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '回复信息1', '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51'),
	(2, 2, 3, '评价内容2', '回复信息2', '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51'),
	(3, 3, 3, '评价内容3', '回复信息3', '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51'),
	(4, 4, 2, '评价内容4', '回复信息4', '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51'),
	(5, 5, 3, '评价内容5', '回复信息5', '2022-03-15 11:48:51', '2022-03-15 11:48:51', '2022-03-15 11:48:51'),
	(6, 5, 1, '购买完成后的评价', '商家的评论', '2022-03-15 11:59:18', '2022-03-15 11:59:34', '2022-03-15 11:59:18');

DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE IF NOT EXISTS `goods_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '送货地址 ',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `goods_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `goods_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `goods_order_types` int DEFAULT NULL COMMENT '订单类型',
  `goods_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `goods_order`;
INSERT INTO `goods_order` (`id`, `goods_order_uuid_number`, `address_id`, `goods_id`, `yonghu_id`, `buy_number`, `goods_order_courier_number`, `goods_order_courier_name`, `goods_order_true_price`, `goods_order_types`, `goods_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1647345475481', 3, 3, 1, 4, NULL, NULL, 374.12, 3, 1, '2022-03-15 11:57:56', '2022-03-15 11:57:56'),
	(2, '1647345475481', 3, 2, 1, 5, NULL, NULL, 345.10, 3, 1, '2022-03-15 11:57:56', '2022-03-15 11:57:56'),
	(3, '1647345475481', 3, 5, 1, 5, 'JD 112233445566', '京东', 808.85, 1, 1, '2022-03-15 11:57:56', '2022-03-15 11:57:56'),
	(4, '1715677021664', 3, 2, 1, 1, NULL, NULL, 69.02, 3, 1, '2024-05-14 08:57:02', '2024-05-14 08:57:02');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int NOT NULL COMMENT '公告类型 Search111',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 'http://localhost:8080/dianshangpingtai/upload/news1.jpg', 1, '公告详情1', '2022-03-15 11:48:51'),
	(2, '公告标题2', 'http://localhost:8080/dianshangpingtai/upload/news2.jpg', 2, '公告详情2', '2022-03-15 11:48:51'),
	(3, '公告标题3', 'http://localhost:8080/dianshangpingtai/upload/news3.jpg', 2, '公告详情3', '2022-03-15 11:48:51'),
	(4, '公告标题4', 'http://localhost:8080/dianshangpingtai/upload/news4.jpg', 1, '公告详情4', '2022-03-15 11:48:51'),
	(5, '公告标题5', 'http://localhost:8080/dianshangpingtai/upload/news5.jpg', 1, '公告详情5', '2022-03-15 11:48:51');

DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE IF NOT EXISTS `shangjia` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int DEFAULT NULL COMMENT '商家星级类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家简介 ',
  `shangjia_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

DELETE FROM `shangjia`;
INSERT INTO `shangjia` (`id`, `username`, `password`, `shangjia_name`, `shangjia_phone`, `shangjia_email`, `shangjia_photo`, `shangjia_xingji_types`, `new_money`, `shangjia_content`, `shangjia_delete`, `create_time`) VALUES
	(1, '商家1', '123456', '商家名称1', '17703786901', '1@qq.com', 'http://localhost:8080/dianshangpingtai/upload/shangjia1.jpg', 3, 1358.93, '商家简介1', 1, '2022-03-15 11:48:51'),
	(2, '商家2', '123456', '商家名称2', '17703786902', '2@qq.com', 'http://localhost:8080/dianshangpingtai/upload/shangjia2.jpg', 2, 932.38, '商家简介2', 1, '2022-03-15 11:48:51'),
	(3, '商家3', '123456', '商家名称3', '17703786903', '3@qq.com', 'http://localhost:8080/dianshangpingtai/upload/shangjia3.jpg', 2, 514.40, '商家简介3', 1, '2022-03-15 11:48:51');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'pqti9vkaha4k82o32haxuj9qpdrhp7ii', '2022-03-15 11:35:09', '2024-05-14 09:55:06'),
	(2, 1, 'a1', 'yonghu', '用户', '643l4es3eone5340ztqe52hczfw1qp5i', '2022-03-15 11:37:27', '2024-05-14 09:56:30'),
	(3, 1, 'a1', 'shangjia', '商家', 'c80gde40jz5dg1rnz5vifjybcrbzlkk3', '2022-03-15 11:58:28', '2024-05-14 09:56:02');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/dianshangpingtai/upload/yonghu1.jpg', 2, '1@qq.com', 9899.10, '2022-03-15 11:48:51'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/dianshangpingtai/upload/yonghu2.jpg', 2, '2@qq.com', 587.86, '2022-03-15 11:48:51'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/dianshangpingtai/upload/yonghu3.jpg', 2, '3@qq.com', 246.13, '2022-03-15 11:48:51');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
