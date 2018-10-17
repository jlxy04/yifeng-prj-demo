CREATE TABLE `demo_user` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `user_code` varchar(50) NOT NULL COMMENT '用户编码',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `birthday` timestamp NULL DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

CREATE TABLE `demo_order` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `order_code` varchar(40) NOT NULL COMMENT '订单编码',
  `channel_code` varchar(20) NOT NULL COMMENT '渠道编码',
  `warehouse_code` varchar(20) NOT NULL COMMENT '仓库编码',
  `status` varchar(10) NOT NULL COMMENT '状态',
  `need_receive_amount` decimal(13,2) NOT NULL COMMENT '应收金额',
  `customer_need_pay_amount` decimal(13,2) NOT NULL COMMENT '客户应付金额',
  `goods_total_amount` decimal(13,2) NOT NULL COMMENT '商品总金额',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_order_code` (`order_code`) USING BTREE,
  KEY `idx_create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表';

