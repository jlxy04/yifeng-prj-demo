/*
Navicat MySQL Data Transfer
Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : zt_goods

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-03-23 17:20:17
*/
-- ----------------------------
-- Table structure for zt_goods_group
-- 商品信息(集团级) POS表（BASE_GOODSGROUP）
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_group`;
CREATE TABLE `zt_goods_group` (
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `goods_name` varchar(40) NOT NULL COMMENT '商品名称',
  `common_name` varchar(50) NOT NULL COMMENT '通用名称',
  `goods_status` varchar(8) DEFAULT NULL COMMENT '商品状态',
  `main_barcode` varchar(20) NOT NULL COMMENT '主条形码',
  `standard` varchar(30) NOT NULL COMMENT '规格',
  `usagetxt` varchar(100) DEFAULT NULL COMMENT '用法用量',
  `manufacturer_code` varchar(40) NOT NULL COMMENT '生产厂家编码',
  `measure_unit` varchar(3) NOT NULL COMMENT '计量单位',
  `trademark` varchar(5) DEFAULT NULL COMMENT '商标',
  `approved_number` varchar(40) DEFAULT NULL COMMENT '批准文号',
  `approved_number_expirydate` date DEFAULT NULL COMMENT '批准文号有效期',
  `import_license` varchar(40) DEFAULT NULL COMMENT '进口注册证号',
  `import_license_expirydate` date DEFAULT NULL COMMENT '进口注册证号有效期',
  `category_code` varchar(20) NOT NULL COMMENT '品类码',
  `chinese_medicine_18_19_fear_at` varchar(20) DEFAULT NULL COMMENT '中药十八反十九畏属性(字典)',
  `customer_can_use_days` decimal(5,0) NOT NULL COMMENT '顾客使用天数',
  `functions_indicated` varchar(300) DEFAULT NULL COMMENT '功能主治',
  `mnemonics` varchar(80) NOT NULL COMMENT '助记码',
  `input_tax` varchar(20) DEFAULT NULL COMMENT '进项税(公)',
  `output_tax` varchar(20) NOT NULL COMMENT '销项税(公)',
  `account_group` varchar(20) NOT NULL COMMENT '字典项',
  `store_good_guid` varchar(40) NOT NULL COMMENT '门店商品GUID',
  `storage_life` decimal(4,0) DEFAULT NULL COMMENT '商品保质期',
  `is_arechinaese` varchar(1) DEFAULT '0' COMMENT '是否中药0否1是 POS自已用',
  `xgchp` varchar(1) DEFAULT '1' COMMENT '是否管理批号',
  `instrument_code` varchar(4) DEFAULT NULL COMMENT '器械分类编码',
  `instrument_desc` varchar(29) DEFAULT NULL COMMENT '器械分类描述',
  `eq_pro_license` varchar(30) DEFAULT NULL COMMENT '医疗器械生产许可证',
  `business_arrange_code` varchar(8) DEFAULT NULL COMMENT '经营范围编码',
  `business_arrange_desc` varchar(20) DEFAULT NULL COMMENT '经营范围描述',
  `is_electron_supervise_code` varchar(1) NOT NULL COMMENT 'Y/N；字典项',
  `is_easy_odour` varchar(1) DEFAULT NULL COMMENT 'Y/N；字典项',
  `the_form_of_a_drug` varchar(20) DEFAULT NULL COMMENT '字典项',
  `the_form_of_a_drugname` varchar(40) DEFAULT NULL COMMENT '存字典中文',
  `pack_material` varchar(20) DEFAULT NULL COMMENT '字典项',
  `pack_materialname` varchar(40) DEFAULT NULL COMMENT '存字典中文',
  `is_disabled_women_drug` varchar(1) DEFAULT NULL COMMENT 'Y/N；字典项',
  `storage_condition` varchar(40) DEFAULT NULL COMMENT '字典项',
  `storage_conditionname` varchar(60) DEFAULT NULL COMMENT '存字典中文',
  `prescription_kind` varchar(20) DEFAULT NULL COMMENT '字典项',
  `prescription_kindname` varchar(40) DEFAULT NULL COMMENT '存字典中文',
  `drug_type` varchar(20) DEFAULT NULL COMMENT '字典项',
  `drug_typename` varchar(40) DEFAULT NULL COMMENT '存字典中文',
  `goods_type` varchar(20) NOT NULL COMMENT '字典项；主要用于标识“赠品与“服务性物料Z002标识中药；',
  `goods_typename` varchar(40) NOT NULL COMMENT '存字典中文',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`goods_code`),
  KEY `index_group_goods_name` (`goods_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品(集团级)';

-- ----------------------------
-- Table structure for zt_goods_company
-- 商品信息(公司级) POS表（BASE_GOODSCOMPANY）
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_company`;
CREATE TABLE `zt_goods_company` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `company_code` varchar(6) NOT NULL COMMENT '公司编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `goods_status` varchar(1) NOT NULL COMMENT '商品状态',
  `maintenance` varchar(20) DEFAULT NULL COMMENT '养护属性(公)',
  `maintenance_cycle` varchar(20) DEFAULT NULL COMMENT '养护周期(公)',
  `offer_price` decimal(11,2) NOT NULL COMMENT '建议零售价(公)',
  `top_limit_price` decimal(11,2) NOT NULL COMMENT '公司级限价，为0无限制',
  `offer_member_price` decimal(11,2) NOT NULL COMMENT '用于会员价定价参考，待定',
  `new_goods_sign` varchar(1) NOT NULL COMMENT 'Y/N；字典项',
  `note` varchar(50) DEFAULT NULL COMMENT '备注(公)',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_company_code` (`company_code`),
  KEY `index_company_goods` (`company_code`,`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品(公司级)';

-- ----------------------------
-- Table structure for zt_goods_store
-- 商品信息(门店级) POS表（BASE_GOODSSTORE）
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_store`;
CREATE TABLE `zt_goods_store` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `address_code` varchar(8) NOT NULL COMMENT '地点编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `goods_status` varchar(1) NOT NULL DEFAULT '0' COMMENT '商品状态',
  `cost_price` decimal(11,2) NOT NULL COMMENT '成本价',
  `retail_price` decimal(11,2) NOT NULL COMMENT '零售价',
  `member_price` decimal(11,2) NOT NULL COMMENT '会员价',
  `top_limit_price` decimal(11,2) DEFAULT NULL COMMENT '最高限价',
  `stock_qty` decimal(13,3) NOT NULL COMMENT '库存数量',
  `occupy_stock_qty` decimal(13,3) NOT NULL DEFAULT 0 COMMENT '预约库存数量',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_store_code` (`address_code`),
  KEY `index_store_goods` (`address_code`,`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品(门店级)';

-- ----------------------------
-- Table structure for zt_goods_lot_depot
-- 商品库存(批次)POS表（BASE_LOTNUMMASTERDATA）
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_lot_depot`;
CREATE TABLE `zt_goods_lot_depot` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `warehouse_code` varchar(8) NOT NULL COMMENT '中心仓库地点编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `lot_number` varchar(25) NOT NULL COMMENT '批号',
  `lot_status` varchar(1) NOT NULL COMMENT '用于批次状态控制，如禁用、冻结',
  `production_date` date NOT NULL COMMENT '生产日期',
  `expirydate_to` date NOT NULL COMMENT '有效期至',
  `chinese_medicine_locality` varchar(40) DEFAULT NULL COMMENT '中药产地',
  `chinese_medicine_manufacturer` varchar(60) DEFAULT NULL COMMENT '中药厂家',
  `sterilization_lot_number` varchar(40) DEFAULT NULL COMMENT '灭菌批号',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_lot_depot_code` (`warehouse_code`),
  KEY `index_lot_depot_code_goods` (`warehouse_code`,`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_批次主数据(仓库)';

-- ----------------------------
-- Table structure for zt_goods_lot_store
-- 商品库存(门店) POS表（BASE_LOTNUMSTOCK）
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_lot_store`;
CREATE TABLE `zt_goods_lot_store` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `store_code` varchar(8) NOT NULL COMMENT '门店编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `lot_number` varchar(25) NOT NULL COMMENT '批号',
  `production_date` date NOT NULL COMMENT '生产日期',
  `expirydate_to` date NOT NULL COMMENT '有效期至',
  `chinese_medicine_locality` varchar(40) DEFAULT NULL COMMENT '中药产地',
  `chinese_medicine_manufacturer` varchar(60) DEFAULT NULL COMMENT '中药厂家',
  `sterilization_lot_number` varchar(40) DEFAULT NULL COMMENT '灭菌批号',
  `stock_qty` decimal(13,3) NOT NULL COMMENT '库存数量',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_lot_store_code` (`store_code`),
  KEY `index_lot_store_code_goods` (`store_code`,`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_门店批次库存表';

-- ----------------------------
-- Table structure for zt_goods_lot_store_detail
-- 商品库存明细(门店)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_lot_store_detail`;
CREATE TABLE `zt_goods_lot_store_detail` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `store_code` varchar(8) not null comment '门店编码',
  `goods_code` varchar(20) not null comment '商品编码',
  `lot_number` varchar(25) NOT NULL COMMENT '批号',
  `trade_code` varchar(25) not null comment '交易编号',
  `platform` varchar(10) COMMENT '平台：PASS,O2O',
  `stock_qty` decimal(13,3) COMMENT '库存数量',
  `stock_type` int comment '库存类型：（1:增加库存, -1:消耗库存）',
  `explanation` varchar(255) COMMENT '库存消耗说明',
  `remarks` national varchar(256) comment '备注信息',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  primary key (id),
  KEY `index_lot_store_detail_goods` (`store_code`,`goods_code`,`lot_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品库存明细(门店)';

-- ----------------------------
-- Table structure for zt_goods_barcode
-- 商品条码信息 POS表（BASE_BARCODE）
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_barcode`;
CREATE TABLE `zt_goods_barcode` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `measure_unit_for_show` varchar(3) NOT NULL COMMENT '用于显示的计量单位',
  `series_number` varchar(20) NOT NULL COMMENT '连续号码',
  `the_file_number` varchar(20) NOT NULL COMMENT '国际文件号(GTIN)',
  `international_commodity_code` varchar(20) NOT NULL COMMENT '国际商品编码的类别 (GTIN)非字典',
  `signlable` varchar(1) NOT NULL COMMENT '主条码标识',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_barcode_code` (`the_file_number`),
  KEY `index_barcode_code_goods` (`goods_code`,`the_file_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品条码信息';

-- ----------------------------
-- Table structure for zt_goods_manufacturer
-- 商品生产厂家 POS表(BASE_MANUFACTURER)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_manufacturer`;
CREATE TABLE `zt_goods_manufacturer` (
  `manufacturer_code` varchar(20) NOT NULL COMMENT '生产厂家编号',
  `manufacturer_name` varchar(40) NOT NULL COMMENT '生产厂家名称',
  `mnemonics` varchar(40) NOT NULL COMMENT '助记码(拼音码)',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`manufacturer_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_生产厂家';

-- ----------------------------
-- Table structure for zt_goods_white_list
-- 商品白名单 POS表(BBASE_WHITELIST)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_white_list`;
CREATE TABLE `zt_goods_white_list` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `address_code` varchar(8) NOT NULL COMMENT '地址编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_white_list_goods` (`address_code`,`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品白名单';

-- ----------------------------
-- Table structure for zt_goods_ban_sale
-- 商品质管限售(分类) POS表(GOODS_QUALIMITSORT)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_ban_sale`;
CREATE TABLE `zt_goods_ban_sale` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `company_code` varchar(6) NOT NULL COMMENT '公司编码',
  `sort_code` varchar(32) NOT NULL COMMENT '质管分类编码',
  `sort_name` varchar(40) NOT NULL COMMENT '质管分类名称',
  `limit_number` decimal(8,0) NOT NULL COMMENT '整单限购数量',
  `prompt_type` varchar(20) NOT NULL COMMENT '（超量提示、销售提示）',
  `screen_txt` varchar(255) DEFAULT NULL COMMENT '屏幕提示文本',
  `print_txt` varchar(255) DEFAULT NULL COMMENT '打印提示文本',
  `explanation` varchar(255) DEFAULT NULL COMMENT '说明',
  `begin_time` date NOT NULL COMMENT '开始时间',
  `end_time` date NOT NULL COMMENT '结束时间',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_ban_sale_code` (`sort_code`),
  KEY `index_ban_sale_code_company` (`sort_code`,`company_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品质管限售分类表';

-- ----------------------------
-- Table structure for zt_goods_ban_sale_detail
-- 商品质管限售(商品) POS表(GOODS_QUALIMITDETAILS)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_ban_sale_detail`;
CREATE TABLE `zt_goods_ban_sale_detail` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `id_sort` varchar(40) NOT NULL COMMENT '限售id',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `limit_number` decimal(8,0) NOT NULL COMMENT '整单限购数量',
  `screen_txt` varchar(255) DEFAULT NULL COMMENT '屏幕提示文本',
  `print_txt` varchar(255) DEFAULT NULL COMMENT '打印提示文本',
  `explanation` varchar(255) DEFAULT NULL COMMENT '说明',
  `begin_time` date NOT NULL COMMENT '开始时间',
  `end_time` date NOT NULL COMMENT '结束时间',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_ban_sale_detail_goods` (`id_sort`,`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品质管限售商品表';

-- ----------------------------
-- Table structure for zt_goods_expand
-- 商品扩展属性
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_expand`;
CREATE TABLE `zt_goods_expand` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `common_name` varchar(50) DEFAULT '' COMMENT '通用名称',
  `main_barcode` varchar(20) DEFAULT '' COMMENT '主条形码',
  `manufacturer_name` varchar(200) DEFAULT '' COMMENT '生产厂家编码',
  `standard` varchar(30) DEFAULT '' COMMENT '规格',
  `prescription_name` varchar(40) DEFAULT '' COMMENT '处方分类',
  `approved_number` varchar(40) DEFAULT '' COMMENT '批准文号',
  `goods_class` varchar(20) DEFAULT '' COMMENT '商品等级',
  `durg_component` text DEFAULT '' COMMENT '药品成分',
  `durg_characters` text DEFAULT '' COMMENT '药品性状',
  `bad_reaction` text DEFAULT '' COMMENT '不良反应',
  `durg_toboo` text DEFAULT '' COMMENT '禁忌',
  `attention_item` text DEFAULT '' COMMENT '注意事项',
  `durg_interaction` text DEFAULT '' COMMENT '药物相互作用',
  `durg_attending` text DEFAULT '' COMMENT '功能主治',
  `durg_dosage` text DEFAULT '' COMMENT '用法用量',
  `brand_degree` varchar(10) DEFAULT '' COMMENT '品牌度(一线, 二线, 区域, 非品牌)',
  `recommend_staff` text DEFAULT '' COMMENT '推荐理由(员工)',
  `recommend_buyer` text DEFAULT '' COMMENT '推荐理由(顾客)',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '1900-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_expand_goods` (`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_商品扩展属性';

-- ----------------------------
-- Table structure for zt_goods_expand_temp
-- 商品扩展属性(批量导入临时表)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_expand_temp`;
CREATE TABLE `zt_goods_expand_temp` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `common_name` varchar(50) DEFAULT '' COMMENT '通用名称',
  `main_barcode` varchar(20) DEFAULT '' COMMENT '主条形码',
  `manufacturer_name` varchar(200) DEFAULT '' COMMENT '生产厂家编码',
  `standard` varchar(30) DEFAULT '' COMMENT '规格',
  `prescription_name` varchar(40) DEFAULT '' COMMENT '处方分类',
  `approved_number` varchar(40) DEFAULT '' COMMENT '批准文号',
  `goods_class` varchar(20) DEFAULT '' COMMENT '商品等级',
  `durg_component` text DEFAULT '' COMMENT '药品成分',
  `durg_characters` text DEFAULT '' COMMENT '药品性状',
  `bad_reaction` text DEFAULT '' COMMENT '不良反应',
  `durg_toboo` text DEFAULT '' COMMENT '禁忌',
  `attention_item` text DEFAULT '' COMMENT '注意事项',
  `durg_interaction` text DEFAULT '' COMMENT '药物相互作用',
  `durg_attending` text DEFAULT '' COMMENT '功能主治',
  `durg_dosage` text DEFAULT '' COMMENT '用法用量',
  `brand_degree` varchar(10) DEFAULT '' COMMENT '品牌度(一线, 二线, 区域, 非品牌)',
  `recommend_staff` text DEFAULT '' COMMENT '推荐理由(员工)',
  `recommend_buyer` text DEFAULT '' COMMENT '推荐理由(顾客)',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '1900-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_expand_goods` (`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品扩展属性(批量导入临时表)';

-- ----------------------------
-- Table structure for zt_goods_category
-- 商品品类 POS表(BASE_CATEGORY)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_category`;
CREATE TABLE `zt_goods_category` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `grade_structure` varchar(2) NOT NULL  COMMENT '根节点编码',
  `grade_structure_node` varchar(20) NOT NULL  COMMENT '节点编码',
  `grade_structure_desc` varchar(40) NOT NULL  COMMENT '根节点描述',
  `grade_structure_node_desc` varchar(40) NOT NULL  COMMENT '节点描述',
  `grade_structure_level` varchar(2) DEFAULT NULL  COMMENT '节点层级',
  `parent_node` varchar(20) NOT NULL DEFAULT '0'  COMMENT '上级节点编码',
  `big_class_code` varchar(8) DEFAULT NULL  COMMENT '经营范围大类编码',
  `big_class_desc` varchar(32) DEFAULT NULL  COMMENT '经营范围大类描述',
  `small_class_code` varchar(8) DEFAULT NULL  COMMENT '经营范围细类编码',
  `small_class_desc` varchar(32) DEFAULT NULL  COMMENT '经营范围细类描述',
  `begin_time` date NOT NULL  COMMENT '商品层次结构中分配的有效期开始日期',
  `end_time` date DEFAULT NULL  COMMENT '商品层次结构中分配的有效期结束日期',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_category_node` (`grade_structure_node`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_品类SAP';

-- ----------------------------
-- Table structure for zt_goods_classify
-- 商品采购分类 POS表(BASE_PTCN)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_classify`;
CREATE TABLE `zt_goods_classify` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `company_code` varchar(6) NOT NULL  COMMENT '公司编码',
  `grade_structure` varchar(2) NOT NULL  COMMENT '根节点编码',
  `grade_structure_node` varchar(20) NOT NULL  COMMENT '节点编码',
  `grade_structure_desc` varchar(40) NOT NULL  COMMENT '根节点描述',
  `grade_structure_node_desc` varchar(40) NOT NULL  COMMENT '节点描述',
  `grade_structure_level` varchar(2) DEFAULT NULL  COMMENT '节点层级',
  `parent_node` varchar(20) NOT NULL DEFAULT '0'  COMMENT '上级节点编码',
  `air_code` varchar(2) DEFAULT NULL COMMENT '用于标签空管码打印',
  `begin_time` date NOT NULL  COMMENT '商品层次结构中分配的有效期开始日期',
  `end_time` date DEFAULT NULL  COMMENT '商品层次结构中分配的有效期结束日期',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_classify_node_company` (`company_code`,`grade_structure_node`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '基础_采购分类';

-- ----------------------------
-- Table structure for zt_goods_classify_detail
-- 商品采购分类分配 POS表(BASE_PTCNDIS)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_classify_detail`;
CREATE TABLE `zt_goods_classify_detail` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `company_code` varchar(6) NOT NULL  COMMENT '公司编码',
  `goods_code` varchar(20) NOT NULL  COMMENT '商品编码',
  `grade_structure` varchar(2) NOT NULL  COMMENT '根节点编码',
  `grade_structure_node` varchar(20) NOT NULL  COMMENT '节点编码',
  `main_allocation_sign` varchar(1) NOT NULL COMMENT '主分配标记',
  `begin_time` date NOT NULL  COMMENT '商品层次结构中分配的有效期开始日期',
  `end_time` date DEFAULT NULL  COMMENT '商品层次结构中分配的有效期结束日期',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_classify_detail_company` (`company_code`,`grade_structure_node`, `goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_采购分类分配';

-- ----------------------------
-- Table structure for zt_goods_recipe
-- 公司处方类型关系表 POS表(GSP_COMPRESTYPE)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_recipe`;
CREATE TABLE `zt_goods_recipe` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `company_code` varchar(6) NOT NULL  COMMENT '公司编码',
  `store_code` varchar(8) NOT NULL COMMENT '门店编号',
  `prestype_code` varchar(20) NOT NULL COMMENT '处方类型编号',
  `is_store_examine` CHAR(1) NULL COMMENT '是否可以门店审核',
  `prestype_kind` varchar(20) DEFAULT '0'  NOT NULL COMMENT '0简易 1远程',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_recipe_code` (`prestype_code`),
  KEY `index_recipe_company` (`prestype_code`, `company_code`),
  KEY `index_recipe_company_store` (`prestype_code`,`company_code`,`store_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_公司处方类型关系表';

-- ----------------------------
-- Table structure for zt_goods_unfree_info
-- 不让利商品 POS表(GOODS_NOBENEFITS)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_unfree_info`;
CREATE TABLE `zt_goods_unfree_info` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `store_code` varchar(8) NOT NULL COMMENT '门店编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `exe_status` varchar(1) DEFAULT '0' COMMENT '执行状态',
  `explanation` varchar(255) DEFAULT NULL COMMENT '说明',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_unfree_goods` (`store_code`, `goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_不让利商品';

-- ----------------------------
-- Table structure for zt_goods_unfree_bill
-- 不让利商品调整单 POS表(GOODS_UNFREEBILL)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_unfree_bill`;
CREATE TABLE `zt_goods_unfree_bill` (
  `store_code` varchar(8) NOT NULL COMMENT '门店编号',
  `bill_code` varchar(40) NOT NULL COMMENT '单据号',
  `bill_type` varchar(20) NOT NULL COMMENT '默认"NORL"，备用不显示',
  `bill_status` varchar(20) NOT NULL COMMENT '单据状态',
  `head_text` varchar(255) NOT NULL COMMENT '抬头文本',
  `exe_status` varchar(1) DEFAULT NULL COMMENT '执行状态',
  `serial_num` varchar(20) DEFAULT NULL COMMENT '流水号',
  `flow_id` varchar(40) DEFAULT NULL COMMENT '流程ID',
  `submiter` varchar(20) DEFAULT NULL COMMENT '提交人',
  `submiter_name` varchar(20) DEFAULT NULL COMMENT '提交人姓名',
  `submit_time` date DEFAULT NULL COMMENT '提交时间',
  `examiner` varchar(20) DEFAULT NULL COMMENT '审核人',
  `examiner_name` varchar(20) DEFAULT NULL COMMENT '审核人姓名',
  `examine_time` date DEFAULT NULL COMMENT '审核时间',
  `examine_desc` varchar(40) DEFAULT NULL COMMENT '审核说明',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`store_code`,`bill_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_不让利商品调整单';

-- ----------------------------
-- Table structure for zt_goods_unfree_bill_detail
-- 不让利商品调整单明细 POS表(GOODS_UNFREEBILLDETAIL)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_unfree_bill_detail`;
CREATE TABLE `zt_goods_unfree_bill_detail` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `store_code` varchar(8) NOT NULL COMMENT '门店编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `bill_code` varchar(40) NOT NULL COMMENT '单据号',
  `row_num` varchar(10) NOT NULL COMMENT '行项目号',
  `item_text` varchar(255) DEFAULT NULL COMMENT '项目文本',
  `item_status` varchar(20) DEFAULT NULL COMMENT '项目状态',
  `inputer` varchar(20) NOT NULL COMMENT '录入人',
  `inputer_name` varchar(20) DEFAULT NULL COMMENT '录入人姓名',
  `input_time` date NOT NULL COMMENT '录入时间',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_unfree_bill_detail` (`store_code`, `goods_code`, `bill_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='不让利商品调整单明细';

-- ----------------------------
-- Table structure for zt_goods_limit_sell
-- 商品促销限售 POS表（GOODS_LIMITSELL）
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_limit_sell`;
CREATE TABLE `zt_goods_limit_sell` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `store_code` varchar(8) NOT NULL COMMENT '门店编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `daylimit_num` decimal(5,0) COMMENT '日限购数量',
  `special_num` decimal(5,0) COMMENT '单限购特价数量',
  `member_num` decimal(5,0) COMMENT '单限购会员价数量',
  `is_special_limit` varchar(1) DEFAULT '0' COMMENT '特价限购开关',
  `is_member_limit` varchar(1) DEFAULT '0' COMMENT '会员价限购开关',
  `explanation` varchar(255) DEFAULT NULL COMMENT '说明',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_limit_sell_goods` (`store_code`, `goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品_促销限售';

-- ----------------------------
-- Table structure for zt_goods_lock_sell
-- 商品_禁售表 POS表（GOODS_LOCKSELL）
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_lock_sell`;
CREATE TABLE `zt_goods_lock_sell` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `store_code` varchar(8) NOT NULL COMMENT '门店代码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品代码',
  `lot_number` varchar(25) DEFAULT NULL COMMENT '批次',
  `lock_number` decimal(8,0) DEFAULT NULL COMMENT '禁售数量',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_lock_sell_goods` (`store_code`, `goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品_禁售表';

-- ----------------------------
-- Table structure for zt_goods_nomember
-- 商品_非会员商品 POS表(GOODS_NOMEMBER)
-- ----------------------------
DROP TABLE IF EXISTS `zt_goods_nomember`;
CREATE TABLE `zt_goods_nomember` (
  `id` varchar(40) NOT NULL COMMENT '主键',
  `store_code` varchar(8) NOT NULL COMMENT '门店编码',
  `goods_code` varchar(20) NOT NULL COMMENT '商品编码',
  `type_value` varchar(20) NOT NULL COMMENT '非会员类型（普通、特例）',
  `explanation` varchar(255) DEFAULT NULL COMMENT '说明',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`id`),
  KEY `index_nomember_store_goods` (`store_code`,`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '商品_非会员商品';


-- ----------------------------
-- Table structure for zt_base_store
-- 门店信息 POS表（BASE_STORE）
-- ----------------------------
DROP TABLE IF EXISTS `zt_base_store`;
CREATE TABLE `zt_base_store` (
  `address_code` varchar(8) NOT NULL COMMENT '包括仓库与门店',
  `company_code` varchar(6) NOT NULL COMMENT 'POS公司编码',
  `company_code4` varchar(6) NOT NULL COMMENT '公司编码',
  `store_fullname` varchar(30) DEFAULT NULL COMMENT '门店全称',
  `pinyin_code` varchar(20) DEFAULT NULL COMMENT '简称拼音码',
  `sale_organ` varchar(4) DEFAULT NULL COMMENT '销售组织',
  `distribution_channel` varchar(2) DEFAULT NULL COMMENT '分销渠道',
  `produce_group` varchar(2) DEFAULT NULL COMMENT '产品组',
  `sale_region` varchar(6) DEFAULT NULL COMMENT '销售地区',
  `sale_office` varchar(4) DEFAULT NULL COMMENT '销售办公室',
  `medical_insurance_explain` varchar(30) DEFAULT NULL COMMENT '描述该店开通的医保列表',
  `store_abbreviation` varchar(25) DEFAULT NULL COMMENT '门店简称',
  `filiale_address_code` varchar(10) DEFAULT NULL COMMENT '原POS系统门店编号' ,
  `store_address` varchar(64) DEFAULT NULL COMMENT '门店地址',
  `store_address_2` varchar(40) DEFAULT NULL COMMENT '门店地址2',
  `postalcode` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `city` varchar(40) DEFAULT NULL COMMENT '所在城市',
  `province` varchar(20) DEFAULT NULL COMMENT '所在省份',
  `linkage_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `circletype` varchar(40) DEFAULT NULL COMMENT '商圈类型 SAP下发文字',
  `totallength_shelf` varchar(10) DEFAULT NULL COMMENT '货架总长度',
  `express_station` varchar(20) DEFAULT NULL COMMENT '快运车站',
  `does_medicare` char(1) DEFAULT NULL COMMENT '是否医保',
  `medicare_opentime` date DEFAULT NULL COMMENT '医保开通时间',
  `totalarea` decimal(13,3) DEFAULT NULL COMMENT '总租凭面积',
  `floor_area` decimal(13,3) DEFAULT NULL COMMENT '占地面积',
  `longitude` decimal(13,4) DEFAULT NULL COMMENT '经度',
  `latitude` decimal(13,4) DEFAULT NULL COMMENT '纬度',
  `ip` varchar(20) NOT NULL COMMENT 'IP地址',
  `is_flagship_shop` char(1) NOT NULL COMMENT '用于补货对中心门店做补货修正',
  `refer_shop` varchar(8) DEFAULT NULL COMMENT '用于补货参考同类型门店销售',
  `store_status` char(1) NOT NULL COMMENT '正常/关店/冻结等',
  `store_air` varchar(40) DEFAULT NULL COMMENT '门店对应天气编码',
  `raw_source_code` varchar(10) DEFAULT NULL COMMENT '原系统代码',
  `opening_day` date NOT NULL COMMENT '开业时间',
  `target_server` varchar(4) DEFAULT NULL COMMENT '对应服务器',
  `is_training_base` char(1) DEFAULT NULL COMMENT '是否培训基地',
  `training_base_type` varchar(20) DEFAULT NULL COMMENT '培训基地类型',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`address_code`),
  KEY `index_base_store_company` (`address_code`, `company_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_门店';

-- ----------------------------
-- Table structure for zt_base_company
-- 公司信息 POS表（BASE_COMPANY）
-- ----------------------------
DROP TABLE IF EXISTS `zt_base_company`;
CREATE TABLE `zt_base_company` (
  `pos_com_code` varchar(6) NOT NULL COMMENT 'POS公司编码',
  `company_full_name` varchar(40) NOT NULL COMMENT '用于显示用户登录所在公司',
  `company_abbreviation` varchar(20) NOT NULL COMMENT '用于显示用户登录所在公司',
  `center_warehouse_code` varchar(8) NOT NULL COMMENT '指定该公司对应的中心仓库',
  `creator` varchar(40) DEFAULT '' COMMENT '创建人',
  `creator_name` varchar(20) DEFAULT '' COMMENT '创建人姓名',
  `create_time` timestamp DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `modifier` varchar(64) DEFAULT '' COMMENT '修改人',
  `modifier_name` varchar(20) DEFAULT '' COMMENT '修改人姓名',
  `modify_time` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `del_flag` varchar(1) DEFAULT '0' COMMENT '删除标识:0否 1是',
  PRIMARY KEY (`pos_com_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='基础_公司';

-- select * from base_companyquantity



