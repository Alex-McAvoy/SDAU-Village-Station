/*
 Navicat Premium Data Transfer

 Source Server         : mysql8.0.13
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : village_station_app

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 26/01/2024 14:25:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'tb_ask_expert', '问专家', NULL, NULL, 'TbAskExpert', 'crud', 'com.ruoyi.system', 'system', 'expert', '问专家', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-01 21:25:06', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (7, 'tb_ask_free', '随时问', NULL, NULL, 'TbAskFree', 'crud', 'com.ruoyi.system', 'system', 'free', '随时问', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-01 21:56:52', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (8, 'tb_file_server', '文件服务器', NULL, NULL, 'TbFileServer', 'crud', 'com.ruoyi.system', 'system', 'server', '文件服务器', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-01 21:56:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (9, 'tb_question', '评论/问答', NULL, NULL, 'TbQuestion', 'crud', 'com.ruoyi.system', 'system', 'question', '评论/问答', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-01 21:57:02', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'tb_news', '其它栏目\r\n       一级栏目              二级栏目 （在字典中设置）\r\n         学农技：            水稻、小麦..\r\n         买农资：           节肥增效、虫害防治..\r\n         找渠道：           供应、求购..\r\n         推优品：           我的优品、品牌展示..\r\n         新品种：\r\n         培训：              园艺培训、粮食种植..\r\n         热销农产：       \r\n', NULL, NULL, 'TbOtherColumns', 'crud', 'com.ruoyi.system', 'system', 'columns', '其它栏目\r\n       一级栏目              二级栏目 （在字典中设置）\r\n         学农技：            水稻、小麦..\r\n         买农资：           节肥增效、虫害防治..\r\n         找渠道：           供应、求购..\r\n         推优品：           我的优品、品牌展示..\r\n         新品种：\r\n         培训：              园艺培训、粮食种植..\r\n         热销农产：', 'ruoyi', '0', '/', '{}', 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41', NULL);
INSERT INTO `gen_table` VALUES (11, 'tb_recommend_products', '推优品', NULL, NULL, 'TbRecommendProducts', 'crud', 'com.ruoyi.system', 'system', 'products', '推优品', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-04 14:38:48', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (12, 'tb_find_channel', '找渠道', NULL, NULL, 'TbFindChannel', 'crud', 'com.ruoyi.system', 'system', 'channel', '找渠道', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-05 16:44:24', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (13, 'tb_new_species', '新品种', NULL, NULL, 'TbNewSpecies', 'crud', 'com.ruoyi.system', 'system', 'species', '新品种', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-05 16:44:25', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (14, 'tb_learn_tech', '学农技', NULL, NULL, 'TbLearnTech', 'crud', 'com.ruoyi.system', 'system', 'tech', '学农技', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-05 20:49:14', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (16, 'tb_purchase_farm', '买农资', NULL, NULL, 'TbPurchaseFarm', 'crud', 'com.ruoyi.system', 'system', 'farm', '买农资', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-06 12:16:58', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (19, 'tb_finance', '金融', NULL, NULL, 'TbFinance', 'crud', 'com.ruoyi.system', 'system', 'finance', '金融', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-09 09:22:23', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (20, 'tb_station_info', '驿站信息', NULL, NULL, 'TbStationInfo', 'crud', 'com.ruoyi.system', 'system', 'info', '驿站信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-09 17:35:52', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (21, 'tb_offline_training', '线下培训', NULL, NULL, 'TbOfflineTraining', 'crud', 'com.ruoyi.system', 'system', 'training', '线下培训', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-09 21:50:48', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (22, 'tb_online_training', '线上培训', NULL, NULL, 'TbOnlineTraining', 'crud', 'com.ruoyi.system', 'system', 'training', '线上培训', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-11 16:49:04', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (23, 'tb_collect', '收藏', NULL, NULL, 'TbCollect', 'crud', 'com.ruoyi.system', 'system', 'collect', '收藏', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-13 19:09:23', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (24, 'tb_likes', '点赞', NULL, NULL, 'TbLikes', 'crud', 'com.ruoyi.system', 'system', 'likes', '点赞', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-14 19:36:51', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (25, 'tb_user_station', '用户-驿站', NULL, NULL, 'TbUserStation', 'crud', 'com.ruoyi.system', 'system', 'station', '用户-驿站', 'ruoyi', '0', '/', NULL, 'admin', '2023-10-14 21:11:12', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 278 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (34, 4, 'ask_experts_id', 'ID', 'bigint(20)', 'Long', 'askExpertsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, 4, 'expert_name', '专家姓名', 'varchar(30)', 'String', 'expertName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, 4, 'introduction', '简介', 'varchar(1000)', 'String', 'introduction', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (37, 4, 'dict_value', '专家类型 （新建专家类型字典   对应 sys_dict_data中dict_value）', 'varchar(100)', 'String', 'dictValue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, 4, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, 4, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, 4, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, 4, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (42, 4, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (43, 4, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 10, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (44, 4, 'user_id', '用于绑定专家账号', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-01 21:25:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (69, 7, 'ask_free_id', 'ID', 'bigint(20)', 'Long', 'askFreeId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (70, 7, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (71, 7, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (72, 7, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (73, 7, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (74, 7, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (75, 7, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (76, 7, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (77, 7, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-01 21:56:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (78, 8, 'file_id', 'ID', 'bigint(20)', 'Long', 'fileId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (79, 8, 'file_type', '文件类型  （文件名后缀）', 'varchar(100)', 'String', 'fileType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (80, 8, 'file_name', '文件名', 'varchar(100)', 'String', 'fileName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (81, 8, 'original', '原始文件名', 'varchar(100)', 'String', 'original', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (82, 8, 'bucket_name', '存储桶名称', 'varchar(200)', 'String', 'bucketName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (83, 8, 'file_url', '文件地址', 'varchar(500)', 'String', 'fileUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 6, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (84, 8, 'file_size', '文件大小（单位:k）', 'decimal(10,0)', 'Long', 'fileSize', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (85, 8, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (86, 8, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (87, 8, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (88, 8, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (89, 8, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (90, 8, 'table_name', '表名称', 'varchar(255)', 'String', 'tableName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 13, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (91, 8, 'table_id', '表id', 'bigint(20)', 'Long', 'tableId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (92, 8, 'sort', '排序', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2023-10-01 21:56:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (93, 9, 'question_id', '用户ID', 'bigint(20)', 'Long', 'questionId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-01 21:57:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (94, 9, 'question', '问题/评论', 'varchar(1000)', 'String', 'question', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-01 21:57:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (95, 9, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 3, 'admin', '2023-10-01 21:57:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (96, 9, 'create_by', '创建者/用户id', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-01 21:57:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (97, 9, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2023-10-01 21:57:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, 9, 'table_name', '表名', 'varchar(255)', 'String', 'tableName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2023-10-01 21:57:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (99, 9, 'parent_id', '父ID', 'bigint(20)', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-10-01 21:57:02', '', NULL);
INSERT INTO `gen_table_column` VALUES (100, 10, 'news_id', 'ID', 'bigint(20)', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41');
INSERT INTO `gen_table_column` VALUES (101, 10, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41');
INSERT INTO `gen_table_column` VALUES (102, 10, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41');
INSERT INTO `gen_table_column` VALUES (103, 10, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41');
INSERT INTO `gen_table_column` VALUES (104, 10, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41');
INSERT INTO `gen_table_column` VALUES (105, 10, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41');
INSERT INTO `gen_table_column` VALUES (106, 10, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41');
INSERT INTO `gen_table_column` VALUES (107, 10, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:41');
INSERT INTO `gen_table_column` VALUES (108, 10, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:42');
INSERT INTO `gen_table_column` VALUES (109, 10, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:42');
INSERT INTO `gen_table_column` VALUES (110, 10, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:42');
INSERT INTO `gen_table_column` VALUES (111, 10, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-01 22:00:26', '', '2023-10-05 10:47:42');
INSERT INTO `gen_table_column` VALUES (112, 11, 'news_id', 'ID', 'bigint(20)', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-04 14:38:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (113, 11, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-04 14:38:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (114, 11, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-04 14:38:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (115, 11, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-04 14:38:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (116, 11, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-04 14:38:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (117, 11, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-04 14:38:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (118, 11, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-04 14:38:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (119, 11, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-04 14:38:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (120, 11, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-04 14:38:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (121, 11, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-04 14:38:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (122, 11, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-04 14:38:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (123, 11, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-04 14:38:50', '', NULL);
INSERT INTO `gen_table_column` VALUES (124, 12, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-05 16:44:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (125, 12, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-05 16:44:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (126, 12, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-05 16:44:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (127, 12, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-05 16:44:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (128, 12, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-05 16:44:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (129, 12, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-05 16:44:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (130, 12, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-05 16:44:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (131, 12, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (132, 12, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (133, 12, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (134, 12, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (135, 12, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (136, 13, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (137, 13, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (138, 13, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (139, 13, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (140, 13, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (141, 13, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (142, 13, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, 13, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-05 16:44:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, 13, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-05 16:44:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, 13, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-05 16:44:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, 13, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-05 16:44:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, 13, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-05 16:44:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, 14, 'article_id', 'ID', 'bigint', 'Long', 'articleId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-05 20:49:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, 14, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-05 20:49:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, 14, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-05 20:49:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, 14, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-05 20:49:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, 14, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-05 20:49:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (153, 14, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-05 20:49:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (154, 14, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-05 20:49:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (155, 14, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-05 20:49:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (156, 14, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-05 20:49:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (157, 14, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-05 20:49:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (158, 14, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-05 20:49:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (159, 14, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-05 20:49:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (160, 14, 'source', '来源', 'varchar(500)', 'String', 'source', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 13, 'admin', '2023-10-05 20:49:15', '', NULL);
INSERT INTO `gen_table_column` VALUES (173, 16, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-06 12:16:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (174, 16, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-06 12:16:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (175, 16, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-06 12:16:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (176, 16, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-06 12:16:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (177, 16, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-06 12:16:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (178, 16, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-06 12:16:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (179, 16, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-06 12:16:58', '', NULL);
INSERT INTO `gen_table_column` VALUES (180, 16, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-06 12:16:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (181, 16, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-06 12:16:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (182, 16, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-06 12:16:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (183, 16, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-06 12:16:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (184, 16, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-06 12:16:59', '', NULL);
INSERT INTO `gen_table_column` VALUES (208, 19, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-09 09:22:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (209, 19, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-09 09:22:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (210, 19, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (211, 19, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (212, 19, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (213, 19, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (214, 19, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (215, 19, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (216, 19, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (217, 19, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (218, 19, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (219, 19, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-09 09:22:24', '', NULL);
INSERT INTO `gen_table_column` VALUES (220, 20, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (221, 20, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (222, 20, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (223, 20, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (224, 20, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (225, 20, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (226, 20, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (227, 20, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (228, 20, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (229, 20, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (230, 20, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-09 17:35:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (231, 20, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-09 17:35:53', '', NULL);
INSERT INTO `gen_table_column` VALUES (232, 21, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-09 21:50:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (233, 21, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-09 21:50:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (234, 21, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-09 21:50:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (235, 21, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-09 21:50:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (236, 21, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-09 21:50:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (237, 21, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-09 21:50:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (238, 21, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-09 21:50:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (239, 21, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-09 21:50:48', '', NULL);
INSERT INTO `gen_table_column` VALUES (240, 21, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-09 21:50:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (241, 21, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-09 21:50:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (242, 21, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-09 21:50:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (243, 21, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-09 21:50:49', '', NULL);
INSERT INTO `gen_table_column` VALUES (244, 22, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-11 16:49:04', '', NULL);
INSERT INTO `gen_table_column` VALUES (245, 22, 'title', '标题', 'varchar(500)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 2, 'admin', '2023-10-11 16:49:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (246, 22, 'content', '内容', 'text', 'String', 'content', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 3, 'admin', '2023-10-11 16:49:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (247, 22, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2023-10-11 16:49:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (248, 22, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-10-11 16:49:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (249, 22, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-10-11 16:49:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (250, 22, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-10-11 16:49:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (251, 22, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-10-11 16:49:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (252, 22, 'remark', '封面', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-10-11 16:49:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (253, 22, 'first_column', '一级栏目编码', 'varchar(255)', 'String', 'firstColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-10-11 16:49:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (254, 22, 'second_column', '二级栏目编码', 'varchar(255)', 'String', 'secondColumn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-10-11 16:49:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (255, 22, 'sort', '排序（可用于是否推荐）', 'varchar(32)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-10-11 16:49:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (256, 22, 'video', '视频地址', 'varchar(1000)', 'String', 'video', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 13, 'admin', '2023-10-11 16:49:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (257, 23, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (258, 23, 'user_id', '用户ID\r\n', 'bigint', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (259, 23, 'table_name', '表名', 'varchar(500)', 'String', 'tableName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 3, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (260, 23, 'article_id', '文章ID', 'bigint', 'Long', 'articleId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (261, 23, 'status', '点赞状态，1为点赞，0为不点赞', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (262, 23, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (263, 23, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (264, 23, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (265, 23, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-10-13 19:09:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (266, 24, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (267, 24, 'user_id', '用户ID\r\n', 'bigint', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (268, 24, 'table_name', '表名', 'varchar(500)', 'String', 'tableName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 3, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (269, 24, 'article_id', '文章ID', 'bigint', 'Long', 'articleId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (270, 24, 'status', '点赞状态，1为点赞，0为不点赞', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (271, 24, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (272, 24, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (273, 24, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (274, 24, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-10-14 19:36:51', '', NULL);
INSERT INTO `gen_table_column` VALUES (275, 25, 'news_id', 'ID', 'bigint', 'Long', 'newsId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-10-14 21:11:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (276, 25, 'user_id', '用户ID', 'bigint', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-10-14 21:11:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (277, 25, 'station_id', '驿站ID', 'bigint', 'Long', 'stationId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-10-14 21:11:12', '', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-09-29 18:23:04', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-09-29 18:23:04', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-09-29 18:23:04', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-09-29 18:23:04', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2023-09-29 18:23:04', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-09-29 18:23:04', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4650 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '乡村驿站', 0, '', '', '', '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-10 21:41:49');
INSERT INTO `sys_dept` VALUES (101, 279, '0,100,279', '济南市', 1, '', '', '', '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-10 21:44:39');
INSERT INTO `sys_dept` VALUES (102, 279, '0,100,279', '青岛市', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-10 21:44:52');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,279,101', '历下区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-08 16:50:17');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,279,101', '市中区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-08 16:50:51');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,279,101', '槐荫区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-08 16:50:59');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,279,101', '天桥区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-08 16:51:21');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,279,101', '历城区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-08 16:51:31');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,279,102', '市南区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-08 17:22:24');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,279,102', '市北区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-08 17:22:38');
INSERT INTO `sys_dept` VALUES (200, 279, '0,100,279', '淄博市', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:34:28', 'admin', '2023-10-10 21:45:37');
INSERT INTO `sys_dept` VALUES (201, 279, '0,100,279', '枣庄市', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:35:03', 'admin', '2023-10-10 21:46:07');
INSERT INTO `sys_dept` VALUES (202, 279, '0,100,279', '东营市', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:35:22', 'admin', '2023-10-10 21:46:17');
INSERT INTO `sys_dept` VALUES (203, 279, '0,100,279', '烟台市', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:35:42', 'admin', '2023-10-10 21:47:18');
INSERT INTO `sys_dept` VALUES (204, 279, '0,100,279', '潍坊市', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:35:56', 'admin', '2023-10-10 21:47:25');
INSERT INTO `sys_dept` VALUES (205, 279, '0,100,279', '济宁市', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:36:26', 'admin', '2023-10-10 21:47:02');
INSERT INTO `sys_dept` VALUES (206, 279, '0,100,279', '泰安市', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:36:41', 'admin', '2023-10-10 21:46:53');
INSERT INTO `sys_dept` VALUES (207, 279, '0,100,279', '威海市', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:37:01', 'admin', '2023-10-10 21:46:58');
INSERT INTO `sys_dept` VALUES (208, 279, '0,100,279', '日照市', 11, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:37:13', 'admin', '2023-10-10 21:46:48');
INSERT INTO `sys_dept` VALUES (209, 279, '0,100,279', '临沂市', 12, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:37:29', 'admin', '2023-10-10 21:46:44');
INSERT INTO `sys_dept` VALUES (210, 279, '0,100,279', '德州市', 13, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:37:50', 'admin', '2023-10-10 21:46:40');
INSERT INTO `sys_dept` VALUES (211, 279, '0,100,279', '聊城市', 14, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:38:10', 'admin', '2023-10-10 21:46:35');
INSERT INTO `sys_dept` VALUES (212, 279, '0,100,279', '滨州市', 15, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:41:52', 'admin', '2023-10-10 21:46:31');
INSERT INTO `sys_dept` VALUES (213, 279, '0,100,279', '菏泽市', 16, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:42:17', 'admin', '2023-10-10 21:46:26');
INSERT INTO `sys_dept` VALUES (214, 101, '0,100,279,101', '长清区', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:51:43', '', NULL);
INSERT INTO `sys_dept` VALUES (215, 101, '0,100,279,101', '章丘区', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:51:54', '', NULL);
INSERT INTO `sys_dept` VALUES (216, 101, '0,100,279,101', '济阳区', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:52:10', '', NULL);
INSERT INTO `sys_dept` VALUES (217, 101, '0,100,279,101', '莱芜区', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:52:27', '', NULL);
INSERT INTO `sys_dept` VALUES (218, 101, '0,100,279,101', '钢城区', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:52:48', '', NULL);
INSERT INTO `sys_dept` VALUES (219, 101, '0,100,279,101', '平阴区', 11, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:53:05', '', NULL);
INSERT INTO `sys_dept` VALUES (220, 101, '0,100,279,101', '商河县', 12, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:53:34', '', NULL);
INSERT INTO `sys_dept` VALUES (221, 101, '0,100,279,101', '济南高新技术产业开发区', 13, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 16:53:55', '', NULL);
INSERT INTO `sys_dept` VALUES (222, 102, '0,100,279,102', '黄岛区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:25:34', '', NULL);
INSERT INTO `sys_dept` VALUES (223, 102, '0,100,279,102', '崂山区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:30:58', '', NULL);
INSERT INTO `sys_dept` VALUES (224, 102, '0,100,279,102', '李沧区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:31:13', '', NULL);
INSERT INTO `sys_dept` VALUES (225, 102, '0,100,279,102', '城阳区', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:31:25', '', NULL);
INSERT INTO `sys_dept` VALUES (226, 102, '0,100,279,102', '即墨区', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:31:35', '', NULL);
INSERT INTO `sys_dept` VALUES (227, 102, '0,100,279,102', '青岛高新技术产业开发区', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:31:50', '', NULL);
INSERT INTO `sys_dept` VALUES (228, 102, '0,100,279,102', '胶州市', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:32:13', '', NULL);
INSERT INTO `sys_dept` VALUES (229, 102, '0,100,279,102', '平度市', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:32:34', '', NULL);
INSERT INTO `sys_dept` VALUES (230, 102, '0,100,279,102', '莱西市', 11, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:32:45', '', NULL);
INSERT INTO `sys_dept` VALUES (231, 200, '0,100,279,200', '淄川区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:34:31', 'admin', '2023-10-08 17:34:42');
INSERT INTO `sys_dept` VALUES (232, 200, '0,100,279,200', '张店区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:36:24', '', NULL);
INSERT INTO `sys_dept` VALUES (233, 200, '0,100,279,200', '博山区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:36:41', '', NULL);
INSERT INTO `sys_dept` VALUES (234, 200, '0,100,279,200', '临淄区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:38:50', '', NULL);
INSERT INTO `sys_dept` VALUES (235, 200, '0,100,279,200', '周村区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:39:04', '', NULL);
INSERT INTO `sys_dept` VALUES (236, 200, '0,100,279,200', '桓台县', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:39:17', '', NULL);
INSERT INTO `sys_dept` VALUES (237, 200, '0,100,279,200', '高青县', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:39:32', '', NULL);
INSERT INTO `sys_dept` VALUES (238, 200, '0,100,279,200', '沂源县', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:39:42', '', NULL);
INSERT INTO `sys_dept` VALUES (239, 201, '0,100,279,201', '市中区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:41:04', '', NULL);
INSERT INTO `sys_dept` VALUES (240, 201, '0,100,279,201', '薛城区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:41:13', '', NULL);
INSERT INTO `sys_dept` VALUES (241, 201, '0,100,279,201', '峄城区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:41:23', '', NULL);
INSERT INTO `sys_dept` VALUES (242, 201, '0,100,279,201', '台儿庄区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:41:32', '', NULL);
INSERT INTO `sys_dept` VALUES (243, 201, '0,100,279,201', '山亭区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:41:43', '', NULL);
INSERT INTO `sys_dept` VALUES (244, 201, '0,100,279,201', '滕州市', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:41:53', '', NULL);
INSERT INTO `sys_dept` VALUES (245, 202, '0,100,279,202', '东营区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:47:35', '', NULL);
INSERT INTO `sys_dept` VALUES (246, 202, '0,100,279,202', '河口区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:47:48', '', NULL);
INSERT INTO `sys_dept` VALUES (247, 202, '0,100,279,202', '垦利区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:48:01', '', NULL);
INSERT INTO `sys_dept` VALUES (248, 202, '0,100,279,202', '利津县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:48:18', '', NULL);
INSERT INTO `sys_dept` VALUES (249, 202, '0,100,279,202', '广饶县', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:48:29', '', NULL);
INSERT INTO `sys_dept` VALUES (250, 202, '0,100,279,202', '东营经济技术开发区', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:48:44', '', NULL);
INSERT INTO `sys_dept` VALUES (251, 202, '0,100,279,202', '东营港经济开发区', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:49:03', '', NULL);
INSERT INTO `sys_dept` VALUES (252, 203, '0,100,279,203', '芝罘区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:49:31', '', NULL);
INSERT INTO `sys_dept` VALUES (253, 203, '0,100,279,203', '福山区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:49:42', '', NULL);
INSERT INTO `sys_dept` VALUES (254, 203, '0,100,279,203', '牟平区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:49:53', '', NULL);
INSERT INTO `sys_dept` VALUES (255, 203, '0,100,279,203', '莱山区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:50:12', '', NULL);
INSERT INTO `sys_dept` VALUES (256, 203, '0,100,279,203', '蓬莱区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:50:21', '', NULL);
INSERT INTO `sys_dept` VALUES (257, 203, '0,100,279,203', '烟台高新技术产业开发区', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:50:33', '', NULL);
INSERT INTO `sys_dept` VALUES (258, 203, '0,100,279,203', '烟台经济技术开发区', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:50:45', '', NULL);
INSERT INTO `sys_dept` VALUES (259, 203, '0,100,279,203', '龙口市', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:50:57', '', NULL);
INSERT INTO `sys_dept` VALUES (260, 203, '0,100,279,203', '莱阳市', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:51:08', '', NULL);
INSERT INTO `sys_dept` VALUES (261, 203, '0,100,279,203', '莱州市', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:51:22', '', NULL);
INSERT INTO `sys_dept` VALUES (262, 203, '0,100,279,203', '招远市', 11, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:51:35', '', NULL);
INSERT INTO `sys_dept` VALUES (263, 203, '0,100,279,203', '栖霞市', 12, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:51:51', '', NULL);
INSERT INTO `sys_dept` VALUES (264, 203, '0,100,279,203', '海阳市', 13, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:52:04', '', NULL);
INSERT INTO `sys_dept` VALUES (265, 204, '0,100,279,204', '潍城区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:52:26', '', NULL);
INSERT INTO `sys_dept` VALUES (266, 204, '0,100,279,204', '寒亭区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:52:35', '', NULL);
INSERT INTO `sys_dept` VALUES (267, 204, '0,100,279,204', '坊子区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:52:49', '', NULL);
INSERT INTO `sys_dept` VALUES (268, 204, '0,100,279,204', '奎文区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:52:58', '', NULL);
INSERT INTO `sys_dept` VALUES (269, 204, '0,100,279,204', '临朐县', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:53:12', '', NULL);
INSERT INTO `sys_dept` VALUES (270, 204, '0,100,279,204', '昌乐县', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:53:52', '', NULL);
INSERT INTO `sys_dept` VALUES (271, 204, '0,100,279,204', '潍坊滨海经济技术开发区', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:54:09', '', NULL);
INSERT INTO `sys_dept` VALUES (272, 204, '0,100,279,204', '青州市', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:54:20', '', NULL);
INSERT INTO `sys_dept` VALUES (273, 204, '0,100,279,204', '诸城市', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:54:34', '', NULL);
INSERT INTO `sys_dept` VALUES (274, 204, '0,100,279,204', '寿光市', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:54:45', '', NULL);
INSERT INTO `sys_dept` VALUES (275, 204, '0,100,279,204', '安丘市', 11, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:54:56', '', NULL);
INSERT INTO `sys_dept` VALUES (276, 204, '0,100,279,204', '高密市', 12, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:55:07', '', NULL);
INSERT INTO `sys_dept` VALUES (277, 204, '0,100,279,204', '昌邑市', 13, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (278, 205, '0,100,279,205', '任城区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-08 17:59:50', '', NULL);
INSERT INTO `sys_dept` VALUES (279, 100, '0,100', '驿站用户', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-10 21:44:01', 'admin', '2023-10-22 15:58:45');
INSERT INTO `sys_dept` VALUES (280, 100, '0,100', '管理员用户', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-10 21:48:00', 'admin', '2023-10-10 21:50:19');
INSERT INTO `sys_dept` VALUES (281, 280, '0,100,280', '信息发布管理员', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-10 21:48:55', 'admin', '2023-10-20 23:43:48');
INSERT INTO `sys_dept` VALUES (282, 280, '0,100,280', '信息审核管理员', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-10 21:49:11', 'admin', '2024-01-18 09:19:19');
INSERT INTO `sys_dept` VALUES (283, 280, '0,100,280', '普通管理员', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-10 21:49:49', '', NULL);
INSERT INTO `sys_dept` VALUES (288, 206, '0,100,279,206', '泰山区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:35:50', '', NULL);
INSERT INTO `sys_dept` VALUES (289, 205, '0,100,279,205', '兖州区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:37:45', '', NULL);
INSERT INTO `sys_dept` VALUES (290, 205, '0,100,279,205', '微山县', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (291, 205, '0,100,279,205', '鱼台县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:38:39', '', NULL);
INSERT INTO `sys_dept` VALUES (292, 205, '0,100,279,205', '金乡县', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:38:58', '', NULL);
INSERT INTO `sys_dept` VALUES (293, 205, '0,100,279,205', '嘉祥县', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:39:22', '', NULL);
INSERT INTO `sys_dept` VALUES (294, 205, '0,100,279,205', '汶上县', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:39:43', '', NULL);
INSERT INTO `sys_dept` VALUES (295, 205, '0,100,279,205', '泗水县', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:40:13', '', NULL);
INSERT INTO `sys_dept` VALUES (296, 205, '0,100,279,205', '梁山县', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:40:36', '', NULL);
INSERT INTO `sys_dept` VALUES (297, 205, '0,100,279,205', '济宁高新技术产业开发区', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:41:36', 'admin', '2024-01-21 20:57:08');
INSERT INTO `sys_dept` VALUES (298, 205, '0,100,279,205', '曲阜市', 11, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:41:57', '', NULL);
INSERT INTO `sys_dept` VALUES (299, 205, '0,100,279,205', '邹城市', 12, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:42:20', '', NULL);
INSERT INTO `sys_dept` VALUES (300, 206, '0,100,279,206', '岱岳区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:43:15', '', NULL);
INSERT INTO `sys_dept` VALUES (301, 206, '0,100,279,206', '宁阳县', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:43:41', '', NULL);
INSERT INTO `sys_dept` VALUES (302, 206, '0,100,279,206', '东平县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:44:05', '', NULL);
INSERT INTO `sys_dept` VALUES (303, 206, '0,100,279,206', '新泰市', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:44:25', '', NULL);
INSERT INTO `sys_dept` VALUES (304, 206, '0,100,279,206', '肥城市', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:44:48', '', NULL);
INSERT INTO `sys_dept` VALUES (305, 207, '0,100,279,207', '环翠区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:46:04', '', NULL);
INSERT INTO `sys_dept` VALUES (306, 207, '0,100,279,207', '文登区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:46:26', '', NULL);
INSERT INTO `sys_dept` VALUES (307, 207, '0,100,279,207', '威海火炬高技术产业开发区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:47:32', '', NULL);
INSERT INTO `sys_dept` VALUES (308, 207, '0,100,279,207', '威海经济技术开发区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:48:37', '', NULL);
INSERT INTO `sys_dept` VALUES (309, 207, '0,100,279,207', '威海临港经济技术开发区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:49:16', '', NULL);
INSERT INTO `sys_dept` VALUES (310, 207, '0,100,279,207', '荣成市', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:49:35', '', NULL);
INSERT INTO `sys_dept` VALUES (311, 207, '0,100,279,207', '乳山市', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:49:53', '', NULL);
INSERT INTO `sys_dept` VALUES (312, 208, '0,100,279,208', '东港区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:50:54', '', NULL);
INSERT INTO `sys_dept` VALUES (313, 208, '0,100,279,208', '岚山区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:51:10', '', NULL);
INSERT INTO `sys_dept` VALUES (314, 208, '0,100,279,208', '五莲县', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:51:28', '', NULL);
INSERT INTO `sys_dept` VALUES (315, 208, '0,100,279,208', '莒县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:51:46', '', NULL);
INSERT INTO `sys_dept` VALUES (316, 208, '0,100,279,208', '日照经济技术开发区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:52:08', '', NULL);
INSERT INTO `sys_dept` VALUES (317, 209, '0,100,279,209', '兰山区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:52:31', '', NULL);
INSERT INTO `sys_dept` VALUES (318, 209, '0,100,279,209', '罗庄区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:52:45', '', NULL);
INSERT INTO `sys_dept` VALUES (319, 209, '0,100,279,209', '河东区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:52:56', '', NULL);
INSERT INTO `sys_dept` VALUES (320, 209, '0,100,279,209', '沂南县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:53:09', '', NULL);
INSERT INTO `sys_dept` VALUES (321, 209, '0,100,279,209', '郯城县', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:53:27', '', NULL);
INSERT INTO `sys_dept` VALUES (322, 209, '0,100,279,209', '沂水县', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:54:13', '', NULL);
INSERT INTO `sys_dept` VALUES (323, 209, '0,100,279,209', '兰陵县', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:54:25', '', NULL);
INSERT INTO `sys_dept` VALUES (324, 209, '0,100,279,209', '费县', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:54:35', '', NULL);
INSERT INTO `sys_dept` VALUES (325, 209, '0,100,279,209', '平邑县', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:54:52', '', NULL);
INSERT INTO `sys_dept` VALUES (326, 209, '0,100,279,209', '莒南县', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:55:04', '', NULL);
INSERT INTO `sys_dept` VALUES (327, 209, '0,100,279,209', '蒙阴县', 11, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:55:15', '', NULL);
INSERT INTO `sys_dept` VALUES (328, 209, '0,100,279,209', '临沭县', 12, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:55:32', '', NULL);
INSERT INTO `sys_dept` VALUES (329, 209, '0,100,279,209', '临沂高新技术产业开发区', 13, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 17:56:08', '', NULL);
INSERT INTO `sys_dept` VALUES (332, 210, '0,100,279,210', '德城区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:03:23', '', NULL);
INSERT INTO `sys_dept` VALUES (333, 210, '0,100,279,210', '陵城区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:03:34', '', NULL);
INSERT INTO `sys_dept` VALUES (334, 210, '0,100,279,210', '宁津县', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:03:42', '', NULL);
INSERT INTO `sys_dept` VALUES (335, 210, '0,100,279,210', '庆云县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:04:18', '', NULL);
INSERT INTO `sys_dept` VALUES (336, 210, '0,100,279,210', '临邑县', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:04:32', '', NULL);
INSERT INTO `sys_dept` VALUES (337, 210, '0,100,279,210', '齐河县', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:04:42', '', NULL);
INSERT INTO `sys_dept` VALUES (338, 210, '0,100,279,210', '平原县', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:04:56', '', NULL);
INSERT INTO `sys_dept` VALUES (339, 210, '0,100,279,210', '夏津县', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:05:21', '', NULL);
INSERT INTO `sys_dept` VALUES (340, 210, '0,100,279,210', '武城县', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:05:31', '', NULL);
INSERT INTO `sys_dept` VALUES (341, 210, '0,100,279,210', '天衢新区', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:05:57', 'admin', '2024-01-22 19:08:19');
INSERT INTO `sys_dept` VALUES (342, 210, '0,100,279,210', '乐陵市', 11, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 18:06:33', '', NULL);
INSERT INTO `sys_dept` VALUES (373, 211, '0,100,279,211', '东昌府区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:39:26', '', NULL);
INSERT INTO `sys_dept` VALUES (374, 211, '0,100,279,211', '茌平区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:39:51', '', NULL);
INSERT INTO `sys_dept` VALUES (375, 211, '0,100,279,211', '阳谷县', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:40:15', '', NULL);
INSERT INTO `sys_dept` VALUES (376, 211, '0,100,279,211', '莘县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:40:43', '', NULL);
INSERT INTO `sys_dept` VALUES (377, 211, '0,100,279,211', '东阿县', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:41:00', '', NULL);
INSERT INTO `sys_dept` VALUES (378, 211, '0,100,279,211', '冠县', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:41:20', '', NULL);
INSERT INTO `sys_dept` VALUES (379, 211, '0,100,279,211', '高唐县', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:41:40', '', NULL);
INSERT INTO `sys_dept` VALUES (380, 211, '0,100,279,211', '临清市', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:56:53', '', NULL);
INSERT INTO `sys_dept` VALUES (381, 212, '0,100,279,212', '滨城区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:57:30', '', NULL);
INSERT INTO `sys_dept` VALUES (382, 212, '0,100,279,212', '沾化区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:57:47', '', NULL);
INSERT INTO `sys_dept` VALUES (383, 212, '0,100,279,212', '惠民县', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:58:02', '', NULL);
INSERT INTO `sys_dept` VALUES (384, 212, '0,100,279,212', '阳信县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:58:15', '', NULL);
INSERT INTO `sys_dept` VALUES (385, 212, '0,100,279,212', '无棣县', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:58:31', '', NULL);
INSERT INTO `sys_dept` VALUES (386, 212, '0,100,279,212', '博兴县', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:58:53', '', NULL);
INSERT INTO `sys_dept` VALUES (387, 212, '0,100,279,212', '邹平市', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:59:07', '', NULL);
INSERT INTO `sys_dept` VALUES (388, 213, '0,100,279,213', '牡丹区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:59:34', '', NULL);
INSERT INTO `sys_dept` VALUES (389, 213, '0,100,279,213', '定陶区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 20:59:48', '', NULL);
INSERT INTO `sys_dept` VALUES (390, 213, '0,100,279,213', '曹县', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 21:00:00', '', NULL);
INSERT INTO `sys_dept` VALUES (391, 213, '0,100,279,213', '单县', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 21:00:14', '', NULL);
INSERT INTO `sys_dept` VALUES (393, 213, '0,100,279,213', '巨野县', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 21:00:50', '', NULL);
INSERT INTO `sys_dept` VALUES (394, 213, '0,100,279,213', '郓城县', 6, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 21:01:16', '', NULL);
INSERT INTO `sys_dept` VALUES (396, 213, '0,100,279,213', '东明县', 7, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 21:01:51', 'admin', '2023-10-12 21:02:13');
INSERT INTO `sys_dept` VALUES (397, 213, '0,100,279,213', '菏泽经济技术开发区', 8, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 21:02:06', 'admin', '2023-10-12 21:02:19');
INSERT INTO `sys_dept` VALUES (398, 213, '0,100,279,213', '成武县', 9, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 21:04:09', '', NULL);
INSERT INTO `sys_dept` VALUES (399, 213, '0,100,279,213', '鄄城县', 10, NULL, NULL, NULL, '0', '0', 'admin', '2023-10-12 21:04:45', '', NULL);
INSERT INTO `sys_dept` VALUES (607, 229, '0,100,279,102,229', '店子镇柳安新村村民委员会', 1, '曹桂花', '13863962232', NULL, '0', '0', 'admin', '2023-10-22 16:16:44', 'admin', '2024-01-22 20:56:19');
INSERT INTO `sys_dept` VALUES (608, 226, '0,100,279,102,226', '龙泉街道办事处鑫泉村村民委员会', 1, '周江涛', '13573841208', NULL, '0', '0', 'admin', '2023-10-22 16:22:05', 'admin', '2024-01-22 00:49:03');
INSERT INTO `sys_dept` VALUES (609, 340, '0,100,279,210,340', '郝王庄镇草屯村', 1, '李书峰', '13395449544', NULL, '0', '0', 'admin', '2023-10-22 16:24:36', '', NULL);
INSERT INTO `sys_dept` VALUES (610, 337, '0,100,279,210,337', '刘桥镇西杨村', 1, '李化庄', '13562493325', NULL, '0', '0', 'admin', '2023-10-22 16:25:35', '', NULL);
INSERT INTO `sys_dept` VALUES (611, 260, '0,100,279,203,260', '龙旺庄镇北龙旺庄村', 1, '宫建泉', '18953534999', NULL, '0', '0', 'admin', '2023-10-22 16:26:27', '', NULL);
INSERT INTO `sys_dept` VALUES (612, 253, '0,100,279,203,253', '张格庄镇文家村', 1, '张格庄镇文家村', '13583588068', NULL, '0', '0', 'admin', '2023-10-22 16:27:44', '', NULL);
INSERT INTO `sys_dept` VALUES (613, 262, '0,100,279,203,262', '大秦家街道原家村', 1, '王笑宾', '18853502200', NULL, '0', '0', 'admin', '2023-10-22 16:28:26', '', NULL);
INSERT INTO `sys_dept` VALUES (614, 301, '0,100,279,206,301', '泗店镇罗河厂村', 1, '曹玉华', '18769836999', NULL, '0', '0', 'admin', '2023-10-22 16:29:16', '', NULL);
INSERT INTO `sys_dept` VALUES (615, 302, '0,100,279,206,302', '银山镇耿山口村', 1, '耿进周', '17854896555', NULL, '0', '0', 'admin', '2023-10-22 16:29:57', '', NULL);
INSERT INTO `sys_dept` VALUES (616, 295, '0,100,279,205,295', '杨柳镇后琴柏村', 1, '李新征', '13325193918', NULL, '0', '0', 'admin', '2023-10-22 16:30:41', '', NULL);
INSERT INTO `sys_dept` VALUES (617, 295, '0,100,279,205,295', '金庄镇卞家庄村', 2, '孔庆亮', '13854748867', NULL, '0', '0', 'admin', '2023-10-22 16:31:21', '', NULL);
INSERT INTO `sys_dept` VALUES (618, 314, '0,100,279,208,314', '汪湖镇大湖村', 1, '魏顺志', '15953396555', NULL, '0', '0', 'admin', '2023-10-22 16:32:32', '', NULL);
INSERT INTO `sys_dept` VALUES (619, 314, '0,100,279,208,314', '户部乡杨家峪村', 2, '赵百明', '13562389917', NULL, '0', '0', 'admin', '2023-10-22 16:33:17', '', NULL);
INSERT INTO `sys_dept` VALUES (620, 217, '0,100,279,101,217', '张家洼街道办事处曹东村委会', 1, '吕慧', '17563422889', NULL, '0', '0', 'admin', '2023-10-22 16:34:06', 'admin', '2024-01-22 19:18:20');
INSERT INTO `sys_dept` VALUES (621, 105, '0,100,279,101,105', '玉清湖街道新庞村', 1, '耿广波', '15854166366', NULL, '0', '0', 'admin', '2023-10-22 16:34:39', '', NULL);
INSERT INTO `sys_dept` VALUES (622, 386, '0,100,279,212,386', '庞家镇张庄村', 1, '刘建波', '13854337333', NULL, '0', '0', 'admin', '2023-10-22 16:35:38', '', NULL);
INSERT INTO `sys_dept` VALUES (623, 387, '0,100,279,212,387', '西董街道白云涧村', 1, '杨永吉', '15954351588', NULL, '0', '0', 'admin', '2023-10-22 16:36:31', '', NULL);
INSERT INTO `sys_dept` VALUES (624, 310, '0,100,279,207,310', '上庄镇大李家村', 1, '常大军', '13963117473', NULL, '0', '0', 'admin', '2023-10-22 16:37:13', '', NULL);
INSERT INTO `sys_dept` VALUES (625, 310, '0,100,279,207,310', '夏庄镇甲夼曲家村', 2, '张志强', '13561899888', NULL, '0', '0', 'admin', '2023-10-22 16:37:48', '', NULL);
INSERT INTO `sys_dept` VALUES (626, 389, '0,100,279,213,389', '陈集镇罗庄村', 1, '常静', '18354068589', NULL, '0', '0', 'admin', '2023-10-22 16:38:38', '', NULL);
INSERT INTO `sys_dept` VALUES (627, 394, '0,100,279,213,394', '南赵楼镇甄庄村', 1, '张庆涛', '15550155678', NULL, '0', '0', 'admin', '2023-10-22 16:39:13', '', NULL);
INSERT INTO `sys_dept` VALUES (628, 397, '0,100,279,213,397', '山东狮克现代农业投资有限公司', 1, '孟伦', '15315309090', NULL, '0', '0', 'admin', '2023-10-22 16:40:42', '', NULL);
INSERT INTO `sys_dept` VALUES (629, 320, '0,100,279,209,320', '马牧池乡双泉峪子村村民委员会', 1, '祖培庆', '13615492024', NULL, '0', '0', 'admin', '2023-10-22 16:41:50', 'admin', '2024-01-22 20:55:51');
INSERT INTO `sys_dept` VALUES (630, 328, '0,100,279,209,328', '石门镇棠梨新村', 1, '王庆红', '13455977646', NULL, '0', '0', 'admin', '2023-10-22 16:42:26', '', NULL);
INSERT INTO `sys_dept` VALUES (633, 244, '0,100,279,201,244', '界河镇化里村委会', 1, '冯恰恰', '18606422899', NULL, '0', '0', 'admin', '2023-10-22 16:44:34', 'admin', '2024-01-22 20:57:24');
INSERT INTO `sys_dept` VALUES (634, 241, '0,100,279,201,241', '古邵镇万年闸村', 1, '种传军', '18866690808', NULL, '0', '0', 'admin', '2023-10-22 16:45:04', '', NULL);
INSERT INTO `sys_dept` VALUES (635, 376, '0,100,279,211,376', '董杜庄镇董杜庄村', 1, '韩新荣', '15206528000', NULL, '0', '0', 'admin', '2023-10-22 16:45:50', '', NULL);
INSERT INTO `sys_dept` VALUES (636, 374, '0,100,279,211,374', '博平镇大桑村', 1, '桑学洋', '13561278868', NULL, '0', '0', 'admin', '2023-10-22 16:46:28', '', NULL);
INSERT INTO `sys_dept` VALUES (637, 270, '0,100,279,204,270', '乔官镇高家阳阜村民委员会', 1, '高霞', '15064689886', NULL, '0', '0', 'admin', '2023-10-22 16:47:25', 'admin', '2024-01-21 22:13:14');
INSERT INTO `sys_dept` VALUES (638, 249, '0,100,279,202,249', '大王镇吴家村', 1, '李秀珍', '13954699458', NULL, '0', '0', 'admin', '2023-10-22 16:48:09', '', NULL);
INSERT INTO `sys_dept` VALUES (639, 245, '0,100,279,202,245', '牛庄镇西庞村', 1, '庞增华', '15552763777', NULL, '0', '0', 'admin', '2023-10-22 16:48:49', '', NULL);
INSERT INTO `sys_dept` VALUES (640, 280, '0,100,280', '金融发布管理员', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-18 09:19:39', '', NULL);
INSERT INTO `sys_dept` VALUES (641, 280, '0,100,280', '金融审核管理员', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-18 09:19:55', '', NULL);
INSERT INTO `sys_dept` VALUES (642, 381, '0,100,279,212,381', '滨北街道办事处城关新二村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:34:07', '', NULL);
INSERT INTO `sys_dept` VALUES (643, 381, '0,100,279,212,381', '里则街道办事处滨盛新村村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:35:32', '', NULL);
INSERT INTO `sys_dept` VALUES (644, 381, '0,100,279,212,381', '里则街道办事处里则街村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:35:47', '', NULL);
INSERT INTO `sys_dept` VALUES (645, 381, '0,100,279,212,381', '里则街道办事处红和新村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:36:04', '', NULL);
INSERT INTO `sys_dept` VALUES (646, 381, '0,100,279,212,381', '里则街道办事处里信新村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:36:10', '', NULL);
INSERT INTO `sys_dept` VALUES (647, 381, '0,100,279,212,381', '梁才街道办事处祥虹新二村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:36:18', '', NULL);
INSERT INTO `sys_dept` VALUES (648, 381, '0,100,279,212,381', '秦皇台乡鑫隆新村村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:36:25', '', NULL);
INSERT INTO `sys_dept` VALUES (649, 381, '0,100,279,212,381', '三河湖镇后苏村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:36:34', '', NULL);
INSERT INTO `sys_dept` VALUES (650, 381, '0,100,279,212,381', '三河湖镇高北营村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:36:41', '', NULL);
INSERT INTO `sys_dept` VALUES (651, 381, '0,100,279,212,381', '小营街道办事处小营新村村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:36:50', '', NULL);
INSERT INTO `sys_dept` VALUES (652, 381, '0,100,279,212,381', '杨柳雪镇纪家新村村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:37:03', '', NULL);
INSERT INTO `sys_dept` VALUES (653, 381, '0,100,279,212,381', '杨柳雪镇改革新村村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (654, 381, '0,100,279,212,381', '杨柳雪镇华滨新村村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:37:17', '', NULL);
INSERT INTO `sys_dept` VALUES (656, 386, '0,100,279,212,386', '曹王镇张家村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:38:11', '', NULL);
INSERT INTO `sys_dept` VALUES (657, 386, '0,100,279,212,386', '陈户镇官闫村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:38:18', '', NULL);
INSERT INTO `sys_dept` VALUES (658, 386, '0,100,279,212,386', '湖滨镇东顺河二村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:38:24', '', NULL);
INSERT INTO `sys_dept` VALUES (659, 386, '0,100,279,212,386', '锦秋街道办事处王家桥村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:38:30', '', NULL);
INSERT INTO `sys_dept` VALUES (660, 386, '0,100,279,212,386', '吕艺镇王浩村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:38:36', '', NULL);
INSERT INTO `sys_dept` VALUES (661, 386, '0,100,279,212,386', '庞家镇郝家村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:38:43', '', NULL);
INSERT INTO `sys_dept` VALUES (662, 386, '0,100,279,212,386', '乔庄镇刘古村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:38:49', '', NULL);
INSERT INTO `sys_dept` VALUES (663, 386, '0,100,279,212,386', '兴福镇官厂村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:39:00', '', NULL);
INSERT INTO `sys_dept` VALUES (664, 383, '0,100,279,212,383', '大年陈镇商家联村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:39:30', '', NULL);
INSERT INTO `sys_dept` VALUES (665, 383, '0,100,279,212,383', '大年陈镇孙家联村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:39:37', '', NULL);
INSERT INTO `sys_dept` VALUES (666, 383, '0,100,279,212,383', '大年陈镇大年陈联村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:39:43', '', NULL);
INSERT INTO `sys_dept` VALUES (667, 383, '0,100,279,212,383', '姜楼镇联伍新村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:39:50', '', NULL);
INSERT INTO `sys_dept` VALUES (668, 383, '0,100,279,212,383', '姜楼镇季庄联村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:39:59', '', NULL);
INSERT INTO `sys_dept` VALUES (669, 383, '0,100,279,212,383', '李庄镇华李新村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:40:09', '', NULL);
INSERT INTO `sys_dept` VALUES (670, 383, '0,100,279,212,383', '李庄镇蔡冯新村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:40:17', '', NULL);
INSERT INTO `sys_dept` VALUES (671, 383, '0,100,279,212,383', '石庙镇九龙联村村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:40:25', '', NULL);
INSERT INTO `sys_dept` VALUES (672, 383, '0,100,279,212,383', '辛店镇辛店联村村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:40:32', '', NULL);
INSERT INTO `sys_dept` VALUES (673, 383, '0,100,279,212,383', '皂户李镇伙龙聚联村村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:40:41', '', NULL);
INSERT INTO `sys_dept` VALUES (674, 383, '0,100,279,212,383', '淄角镇马店村村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:40:47', '', NULL);
INSERT INTO `sys_dept` VALUES (675, 385, '0,100,279,212,385', '埕口镇黄瓜岭村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:41:13', '', NULL);
INSERT INTO `sys_dept` VALUES (676, 385, '0,100,279,212,385', '海丰街道办事处大齐村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:41:20', '', NULL);
INSERT INTO `sys_dept` VALUES (677, 385, '0,100,279,212,385', '柳堡镇黎敬东村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:41:33', '', NULL);
INSERT INTO `sys_dept` VALUES (678, 385, '0,100,279,212,385', '柳堡镇黎敬北村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:41:43', '', NULL);
INSERT INTO `sys_dept` VALUES (679, 385, '0,100,279,212,385', '水湾镇前坡徐村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (680, 385, '0,100,279,212,385', '水湾镇董家村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:41:59', '', NULL);
INSERT INTO `sys_dept` VALUES (681, 385, '0,100,279,212,385', '水湾镇逯家庙村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:42:07', '', NULL);
INSERT INTO `sys_dept` VALUES (682, 385, '0,100,279,212,385', '水湾镇鞠家村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:42:14', '', NULL);
INSERT INTO `sys_dept` VALUES (683, 385, '0,100,279,212,385', '信阳镇城后王村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:42:22', '', NULL);
INSERT INTO `sys_dept` VALUES (684, 384, '0,100,279,212,384', '河流镇三孟联村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:42:46', '', NULL);
INSERT INTO `sys_dept` VALUES (685, 384, '0,100,279,212,384', '河流镇大庙联村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:42:52', '', NULL);
INSERT INTO `sys_dept` VALUES (686, 384, '0,100,279,212,384', '金阳街道办事处蔡王店村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:43:02', '', NULL);
INSERT INTO `sys_dept` VALUES (687, 384, '0,100,279,212,384', '劳店镇北朱村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:43:09', '', NULL);
INSERT INTO `sys_dept` VALUES (688, 384, '0,100,279,212,384', '流坡坞镇义和新村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:43:16', '', NULL);
INSERT INTO `sys_dept` VALUES (689, 384, '0,100,279,212,384', '商店镇官殷新村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:43:23', '', NULL);
INSERT INTO `sys_dept` VALUES (690, 384, '0,100,279,212,384', '水落坡镇王马社区村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:43:30', '', NULL);
INSERT INTO `sys_dept` VALUES (691, 384, '0,100,279,212,384', '温店镇徐堡村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:43:43', '', NULL);
INSERT INTO `sys_dept` VALUES (692, 384, '0,100,279,212,384', '翟王镇周刘新村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:43:50', '', NULL);
INSERT INTO `sys_dept` VALUES (693, 384, '0,100,279,212,384', '汇富康农作物种植专业合作社', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:43:57', '', NULL);
INSERT INTO `sys_dept` VALUES (694, 382, '0,100,279,212,382', '冯家镇李雅庄村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:44:22', '', NULL);
INSERT INTO `sys_dept` VALUES (695, 382, '0,100,279,212,382', '冯家镇东山后村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:44:27', '', NULL);
INSERT INTO `sys_dept` VALUES (696, 382, '0,100,279,212,382', '富源街道办事处东魏村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:44:35', '', NULL);
INSERT INTO `sys_dept` VALUES (697, 382, '0,100,279,212,382', '古城镇大沙洼四村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:44:41', '', NULL);
INSERT INTO `sys_dept` VALUES (698, 382, '0,100,279,212,382', '黄升镇黄三村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:44:47', '', NULL);
INSERT INTO `sys_dept` VALUES (699, 382, '0,100,279,212,382', '下洼镇张家村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:44:59', '', NULL);
INSERT INTO `sys_dept` VALUES (700, 387, '0,100,279,212,387', '黛溪街道办事处代一村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:45:57', '', NULL);
INSERT INTO `sys_dept` VALUES (701, 387, '0,100,279,212,387', '焦桥镇李套村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:46:07', '', NULL);
INSERT INTO `sys_dept` VALUES (702, 387, '0,100,279,212,387', '焦桥镇四马村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:46:14', '', NULL);
INSERT INTO `sys_dept` VALUES (703, 387, '0,100,279,212,387', '码头镇归苏村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:46:19', '', NULL);
INSERT INTO `sys_dept` VALUES (704, 387, '0,100,279,212,387', '明集镇明集村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:46:33', '', NULL);
INSERT INTO `sys_dept` VALUES (705, 387, '0,100,279,212,387', '明集镇颜集村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:46:48', '', NULL);
INSERT INTO `sys_dept` VALUES (706, 387, '0,100,279,212,387', '台子镇刘先生村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:46:55', '', NULL);
INSERT INTO `sys_dept` VALUES (707, 387, '0,100,279,212,387', '魏桥镇大坡村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:47:03', '', NULL);
INSERT INTO `sys_dept` VALUES (708, 387, '0,100,279,212,387', '魏桥镇张家村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:47:32', '', NULL);
INSERT INTO `sys_dept` VALUES (709, 382, '0,100,279,212,382', '冯家镇傅家村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:47:59', '', NULL);
INSERT INTO `sys_dept` VALUES (710, 381, '0,100,279,212,381', '梁才街道东大王村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:48:22', '', NULL);
INSERT INTO `sys_dept` VALUES (711, 381, '0,100,279,212,381', '梁才街道东玉村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:48:29', '', NULL);
INSERT INTO `sys_dept` VALUES (712, 381, '0,100,279,212,381', '梁才街道马店新四村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:48:34', '', NULL);
INSERT INTO `sys_dept` VALUES (713, 381, '0,100,279,212,381', '里则街道仁合新村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:48:43', '', NULL);
INSERT INTO `sys_dept` VALUES (714, 381, '0,100,279,212,381', '里则街道王家新村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:48:50', '', NULL);
INSERT INTO `sys_dept` VALUES (715, 381, '0,100,279,212,381', '里则街道西李扎根村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:02', '', NULL);
INSERT INTO `sys_dept` VALUES (716, 381, '0,100,279,212,381', '梁才街道祥虹新四村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:07', '', NULL);
INSERT INTO `sys_dept` VALUES (717, 381, '0,100,279,212,381', '滨北街道兴业新一村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:12', '', NULL);
INSERT INTO `sys_dept` VALUES (718, 381, '0,100,279,212,381', '滨北街道徐家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:19', '', NULL);
INSERT INTO `sys_dept` VALUES (719, 381, '0,100,279,212,381', '里则街道堰头新村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:25', '', NULL);
INSERT INTO `sys_dept` VALUES (720, 381, '0,100,279,212,381', '滨北街道英才新三村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:31', '', NULL);
INSERT INTO `sys_dept` VALUES (721, 381, '0,100,279,212,381', '秦皇台乡秦台新村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:36', '', NULL);
INSERT INTO `sys_dept` VALUES (722, 381, '0,100,279,212,381', '青田街道贺家新村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:42', '', NULL);
INSERT INTO `sys_dept` VALUES (723, 381, '0,100,279,212,381', '青田街道旧镇村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:49', '', NULL);
INSERT INTO `sys_dept` VALUES (724, 381, '0,100,279,212,381', '三河湖镇王立平村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:49:57', '', NULL);
INSERT INTO `sys_dept` VALUES (725, 381, '0,100,279,212,381', '三河湖镇永兴新村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:50:04', '', NULL);
INSERT INTO `sys_dept` VALUES (726, 381, '0,100,279,212,381', '沙河街道何家集村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:50:11', '', NULL);
INSERT INTO `sys_dept` VALUES (727, 381, '0,100,279,212,381', '沙河街道后游村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:50:20', '', NULL);
INSERT INTO `sys_dept` VALUES (728, 381, '0,100,279,212,381', '沙河街道沙洼郭村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:50:25', '', NULL);
INSERT INTO `sys_dept` VALUES (729, 381, '0,100,279,212,381', '沙河街道沙洼韩村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:50:32', '', NULL);
INSERT INTO `sys_dept` VALUES (730, 381, '0,100,279,212,381', '杨柳雪镇明德新村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:50:37', '', NULL);
INSERT INTO `sys_dept` VALUES (731, 381, '0,100,279,212,381', '杨柳雪镇幸福新村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:51:27', '', NULL);
INSERT INTO `sys_dept` VALUES (732, 381, '0,100,279,212,381', '杨柳雪镇游家庄子村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:51:34', '', NULL);
INSERT INTO `sys_dept` VALUES (733, 381, '0,100,279,212,381', '杨柳雪镇中五新村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:51:40', '', NULL);
INSERT INTO `sys_dept` VALUES (734, 386, '0,100,279,212,386', '曹王镇曹一村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:52:12', '', NULL);
INSERT INTO `sys_dept` VALUES (735, 386, '0,100,279,212,386', '曹王镇东鲁村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:52:27', '', NULL);
INSERT INTO `sys_dept` VALUES (736, 386, '0,100,279,212,386', '曹王镇东赵冯村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:52:32', '', NULL);
INSERT INTO `sys_dept` VALUES (737, 386, '0,100,279,212,386', '曹王镇前唐村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:52:37', '', NULL);
INSERT INTO `sys_dept` VALUES (738, 386, '0,100,279,212,386', '城东街道鲍庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:52:43', '', NULL);
INSERT INTO `sys_dept` VALUES (739, 386, '0,100,279,212,386', '城东街道霍家村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:52:49', '', NULL);
INSERT INTO `sys_dept` VALUES (740, 386, '0,100,279,212,386', '纯化镇东王文村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:52:58', '', NULL);
INSERT INTO `sys_dept` VALUES (741, 386, '0,100,279,212,386', '纯化镇刘前村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:53:04', '', NULL);
INSERT INTO `sys_dept` VALUES (742, 386, '0,100,279,212,386', '纯化镇裴家村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:53:10', '', NULL);
INSERT INTO `sys_dept` VALUES (743, 386, '0,100,279,212,386', '纯化镇前王文村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:53:17', '', NULL);
INSERT INTO `sys_dept` VALUES (744, 386, '0,100,279,212,386', '纯化镇周刘村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:53:25', '', NULL);
INSERT INTO `sys_dept` VALUES (745, 386, '0,100,279,212,386', '店子镇刘耿村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:53:32', '', NULL);
INSERT INTO `sys_dept` VALUES (746, 386, '0,100,279,212,386', '湖滨镇鲁吴村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:53:39', '', NULL);
INSERT INTO `sys_dept` VALUES (747, 386, '0,100,279,212,386', '湖滨镇西门村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:53:45', '', NULL);
INSERT INTO `sys_dept` VALUES (748, 386, '0,100,279,212,386', '锦秋街道曹一村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:53:55', '', NULL);
INSERT INTO `sys_dept` VALUES (749, 386, '0,100,279,212,386', '锦秋街道苗集村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:54:04', '', NULL);
INSERT INTO `sys_dept` VALUES (750, 386, '0,100,279,212,386', '锦秋街道西隅社区', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:54:11', '', NULL);
INSERT INTO `sys_dept` VALUES (751, 386, '0,100,279,212,386', '锦秋街道新贾村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:54:17', '', NULL);
INSERT INTO `sys_dept` VALUES (752, 386, '0,100,279,212,386', '吕艺镇龙四村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:54:23', '', NULL);
INSERT INTO `sys_dept` VALUES (753, 386, '0,100,279,212,386', '吕艺镇寨马村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:54:29', '', NULL);
INSERT INTO `sys_dept` VALUES (754, 386, '0,100,279,212,386', '庞家镇通滨村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:54:59', '', NULL);
INSERT INTO `sys_dept` VALUES (755, 386, '0,100,279,212,386', '庞家镇杨集村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:08', '', NULL);
INSERT INTO `sys_dept` VALUES (756, 386, '0,100,279,212,386', '乔庄镇乔庄村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:14', '', NULL);
INSERT INTO `sys_dept` VALUES (757, 386, '0,100,279,212,386', '乔庄镇西小村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:19', '', NULL);
INSERT INTO `sys_dept` VALUES (758, 386, '0,100,279,212,386', '乔庄镇辛店村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:26', '', NULL);
INSERT INTO `sys_dept` VALUES (759, 386, '0,100,279,212,386', '兴福镇汾王村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:33', '', NULL);
INSERT INTO `sys_dept` VALUES (760, 386, '0,100,279,212,386', '兴福镇付元村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:38', '', NULL);
INSERT INTO `sys_dept` VALUES (761, 386, '0,100,279,212,386', '兴福镇兴二村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:45', '', NULL);
INSERT INTO `sys_dept` VALUES (762, 386, '0,100,279,212,386', '兴福镇兴耿村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:52', '', NULL);
INSERT INTO `sys_dept` VALUES (763, 386, '0,100,279,212,386', '兴福镇兴益村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:55:58', '', NULL);
INSERT INTO `sys_dept` VALUES (764, 383, '0,100,279,212,383', '姜楼镇王判联村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:56:34', '', NULL);
INSERT INTO `sys_dept` VALUES (765, 383, '0,100,279,212,383', '清河镇林樊联村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:56:41', '', NULL);
INSERT INTO `sys_dept` VALUES (766, 383, '0,100,279,212,383', '清河镇中五联村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:56:47', '', NULL);
INSERT INTO `sys_dept` VALUES (767, 383, '0,100,279,212,383', '桑落墅镇河北村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:56:53', '', NULL);
INSERT INTO `sys_dept` VALUES (768, 383, '0,100,279,212,383', '石庙镇孟家联村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:57:02', '', NULL);
INSERT INTO `sys_dept` VALUES (769, 383, '0,100,279,212,383', '孙武街道邓家社区', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:57:09', '', NULL);
INSERT INTO `sys_dept` VALUES (770, 383, '0,100,279,212,383', '孙武街道后齐联村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:57:15', '', NULL);
INSERT INTO `sys_dept` VALUES (771, 383, '0,100,279,212,383', '孙武街道西信村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:57:22', '', NULL);
INSERT INTO `sys_dept` VALUES (772, 383, '0,100,279,212,383', '孙武街道朱老虎联村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:57:30', '', NULL);
INSERT INTO `sys_dept` VALUES (773, 383, '0,100,279,212,383', '魏集镇河套崔村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:57:36', '', NULL);
INSERT INTO `sys_dept` VALUES (774, 383, '0,100,279,212,383', '辛店镇成王庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:57:42', '', NULL);
INSERT INTO `sys_dept` VALUES (775, 383, '0,100,279,212,383', '辛店镇钟营联村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:58:00', '', NULL);
INSERT INTO `sys_dept` VALUES (776, 383, '0,100,279,212,383', '淄角镇淄角南街村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:58:07', '', NULL);
INSERT INTO `sys_dept` VALUES (777, 385, '0,100,279,212,385', '车王镇大王庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:58:27', '', NULL);
INSERT INTO `sys_dept` VALUES (778, 385, '0,100,279,212,385', '车王镇贾家村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:58:33', '', NULL);
INSERT INTO `sys_dept` VALUES (779, 385, '0,100,279,212,385', '车王镇芦郭村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:58:38', '', NULL);
INSERT INTO `sys_dept` VALUES (780, 385, '0,100,279,212,385', '车王镇五营张家村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:58:47', '', NULL);
INSERT INTO `sys_dept` VALUES (781, 385, '0,100,279,212,385', '车王镇信家村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:58:53', '', NULL);
INSERT INTO `sys_dept` VALUES (782, 385, '0,100,279,212,385', '车王镇中村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:59:02', '', NULL);
INSERT INTO `sys_dept` VALUES (783, 385, '0,100,279,212,385', '棣丰街道解家村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:59:08', '', NULL);
INSERT INTO `sys_dept` VALUES (784, 385, '0,100,279,212,385', '棣丰街道李八里村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:59:17', '', NULL);
INSERT INTO `sys_dept` VALUES (785, 385, '0,100,279,212,385', '棣丰街道王白杨村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:59:23', '', NULL);
INSERT INTO `sys_dept` VALUES (786, 385, '0,100,279,212,385', '棣丰街道小齐村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:59:30', '', NULL);
INSERT INTO `sys_dept` VALUES (787, 385, '0,100,279,212,385', '棣丰街道中河西营村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:59:36', '', NULL);
INSERT INTO `sys_dept` VALUES (788, 385, '0,100,279,212,385', '碣石山镇古家村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 15:59:42', '', NULL);
INSERT INTO `sys_dept` VALUES (789, 385, '0,100,279,212,385', '碣石山镇邱二村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:00:13', '', NULL);
INSERT INTO `sys_dept` VALUES (790, 385, '0,100,279,212,385', '柳堡镇常南村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:00:23', '', NULL);
INSERT INTO `sys_dept` VALUES (791, 385, '0,100,279,212,385', '柳堡镇东岳里村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:01:27', '', NULL);
INSERT INTO `sys_dept` VALUES (792, 385, '0,100,279,212,385', '柳堡镇傅瞿阝王家村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:02:24', '', NULL);
INSERT INTO `sys_dept` VALUES (793, 385, '0,100,279,212,385', '柳堡镇赵王村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:02:31', '', NULL);
INSERT INTO `sys_dept` VALUES (794, 385, '0,100,279,212,385', '佘家镇后道口村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:02:37', '', NULL);
INSERT INTO `sys_dept` VALUES (795, 385, '0,100,279,212,385', '佘家镇马家仓村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:02:43', '', NULL);
INSERT INTO `sys_dept` VALUES (796, 385, '0,100,279,212,385', '佘家镇商家庄村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:02:49', '', NULL);
INSERT INTO `sys_dept` VALUES (797, 385, '0,100,279,212,385', '佘家镇通官村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:02:54', '', NULL);
INSERT INTO `sys_dept` VALUES (798, 385, '0,100,279,212,385', '水湾镇宗西村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:02', '', NULL);
INSERT INTO `sys_dept` VALUES (799, 385, '0,100,279,212,385', '西小王镇小屯河北村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:07', '', NULL);
INSERT INTO `sys_dept` VALUES (800, 385, '0,100,279,212,385', '小泊头镇程家村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:14', '', NULL);
INSERT INTO `sys_dept` VALUES (801, 385, '0,100,279,212,385', '信阳镇鲍家村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:19', '', NULL);
INSERT INTO `sys_dept` VALUES (802, 385, '0,100,279,212,385', '信阳镇车里西村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:25', '', NULL);
INSERT INTO `sys_dept` VALUES (803, 385, '0,100,279,212,385', '信阳镇店子村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:30', '', NULL);
INSERT INTO `sys_dept` VALUES (804, 385, '0,100,279,212,385', '信阳镇李家花园村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:38', '', NULL);
INSERT INTO `sys_dept` VALUES (805, 385, '0,100,279,212,385', '信阳镇田家村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:43', '', NULL);
INSERT INTO `sys_dept` VALUES (806, 385, '0,100,279,212,385', '信阳镇宣家村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:03:51', '', NULL);
INSERT INTO `sys_dept` VALUES (807, 384, '0,100,279,212,384', '金阳街道城西新村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:04:35', '', NULL);
INSERT INTO `sys_dept` VALUES (808, 384, '0,100,279,212,384', '金阳街道褚木匠村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:04:41', '', NULL);
INSERT INTO `sys_dept` VALUES (809, 384, '0,100,279,212,384', '金阳街道唯美梨醋（山东）食品科技有限公司', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:04:47', '', NULL);
INSERT INTO `sys_dept` VALUES (810, 384, '0,100,279,212,384', '劳店镇大庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:04:55', '', NULL);
INSERT INTO `sys_dept` VALUES (811, 384, '0,100,279,212,384', '劳店镇山东棣博农业服务有限公司', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:00', '', NULL);
INSERT INTO `sys_dept` VALUES (812, 384, '0,100,279,212,384', '劳店镇兴隆村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:07', '', NULL);
INSERT INTO `sys_dept` VALUES (813, 384, '0,100,279,212,384', '流坡坞镇东商村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:14', '', NULL);
INSERT INTO `sys_dept` VALUES (814, 384, '0,100,279,212,384', '流坡坞镇黄家井村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:21', '', NULL);
INSERT INTO `sys_dept` VALUES (815, 384, '0,100,279,212,384', '流坡坞镇李昂村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:26', '', NULL);
INSERT INTO `sys_dept` VALUES (816, 384, '0,100,279,212,384', '流坡坞镇四合新村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:33', '', NULL);
INSERT INTO `sys_dept` VALUES (817, 384, '0,100,279,212,384', '流坡坞镇西李昂村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:40', '', NULL);
INSERT INTO `sys_dept` VALUES (818, 384, '0,100,279,212,384', '商店镇司家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:47', '', NULL);
INSERT INTO `sys_dept` VALUES (819, 384, '0,100,279,212,384', '水落坡镇千和新村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:53', '', NULL);
INSERT INTO `sys_dept` VALUES (820, 384, '0,100,279,212,384', '水落坡镇水落坡村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:05:59', '', NULL);
INSERT INTO `sys_dept` VALUES (821, 384, '0,100,279,212,384', '水落坡镇顺和新村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:06:05', '', NULL);
INSERT INTO `sys_dept` VALUES (822, 384, '0,100,279,212,384', '水落坡镇祥和新村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:06:11', '', NULL);
INSERT INTO `sys_dept` VALUES (823, 384, '0,100,279,212,384', '温店镇蔡王村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:06:20', '', NULL);
INSERT INTO `sys_dept` VALUES (824, 384, '0,100,279,212,384', '温店镇车家村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:06:26', '', NULL);
INSERT INTO `sys_dept` VALUES (825, 384, '0,100,279,212,384', '温店镇何家村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:06:33', '', NULL);
INSERT INTO `sys_dept` VALUES (826, 384, '0,100,279,212,384', '温店镇后吴店村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:06:40', '', NULL);
INSERT INTO `sys_dept` VALUES (827, 384, '0,100,279,212,384', '温店镇齐家村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:03', '', NULL);
INSERT INTO `sys_dept` VALUES (828, 384, '0,100,279,212,384', '信城街道幸福村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:11', '', NULL);
INSERT INTO `sys_dept` VALUES (829, 384, '0,100,279,212,384', '洋湖乡范郑孟新村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:16', '', NULL);
INSERT INTO `sys_dept` VALUES (830, 384, '0,100,279,212,384', '洋湖乡古佛镇村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:23', '', NULL);
INSERT INTO `sys_dept` VALUES (831, 384, '0,100,279,212,384', '洋湖乡郝张村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:31', '', NULL);
INSERT INTO `sys_dept` VALUES (832, 384, '0,100,279,212,384', '洋湖乡前高村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:37', '', NULL);
INSERT INTO `sys_dept` VALUES (833, 384, '0,100,279,212,384', '洋湖乡张樱桃专业种植合作社', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:43', '', NULL);
INSERT INTO `sys_dept` VALUES (834, 384, '0,100,279,212,384', '洋湖乡众和庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:50', '', NULL);
INSERT INTO `sys_dept` VALUES (835, 384, '0,100,279,212,384', '翟王镇西环新村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:07:57', '', NULL);
INSERT INTO `sys_dept` VALUES (836, 382, '0,100,279,212,382', '滨海镇河西村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:09:22', '', NULL);
INSERT INTO `sys_dept` VALUES (837, 382, '0,100,279,212,382', '泊头镇屈牟村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:09:29', '', NULL);
INSERT INTO `sys_dept` VALUES (838, 382, '0,100,279,212,382', '泊头镇屈牟家村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:09:35', '', NULL);
INSERT INTO `sys_dept` VALUES (839, 382, '0,100,279,212,382', '大高镇河东韩家村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:10:13', '', NULL);
INSERT INTO `sys_dept` VALUES (840, 382, '0,100,279,212,382', '大高镇刘家村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:10:19', '', NULL);
INSERT INTO `sys_dept` VALUES (841, 382, '0,100,279,212,382', '大高镇沙洼村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:10:26', '', NULL);
INSERT INTO `sys_dept` VALUES (842, 382, '0,100,279,212,382', '大高镇台宋村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:10:31', '', NULL);
INSERT INTO `sys_dept` VALUES (843, 382, '0,100,279,212,382', '大高镇台一村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:10:38', '', NULL);
INSERT INTO `sys_dept` VALUES (844, 382, '0,100,279,212,382', '大高镇甜水井村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:10:43', '', NULL);
INSERT INTO `sys_dept` VALUES (845, 382, '0,100,279,212,382', '大高镇薛家村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:10:48', '', NULL);
INSERT INTO `sys_dept` VALUES (846, 382, '0,100,279,212,382', '冯家镇沾化区支农农机服务专业合作社', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:10:53', '', NULL);
INSERT INTO `sys_dept` VALUES (847, 382, '0,100,279,212,382', '冯家镇温家村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:00', '', NULL);
INSERT INTO `sys_dept` VALUES (848, 382, '0,100,279,212,382', '冯家镇小寨村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:07', '', NULL);
INSERT INTO `sys_dept` VALUES (849, 382, '0,100,279,212,382', '冯家镇赵家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:13', '', NULL);
INSERT INTO `sys_dept` VALUES (850, 382, '0,100,279,212,382', '冯家镇庄科村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:19', '', NULL);
INSERT INTO `sys_dept` VALUES (851, 382, '0,100,279,212,382', '富国街道黑龙村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:26', '', NULL);
INSERT INTO `sys_dept` VALUES (852, 382, '0,100,279,212,382', '富源街道罗家村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:36', '', NULL);
INSERT INTO `sys_dept` VALUES (853, 382, '0,100,279,212,382', '古城镇东崔村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:44', '', NULL);
INSERT INTO `sys_dept` VALUES (854, 382, '0,100,279,212,382', '古城镇王见南村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:50', '', NULL);
INSERT INTO `sys_dept` VALUES (855, 382, '0,100,279,212,382', '古城镇西五里村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:11:57', '', NULL);
INSERT INTO `sys_dept` VALUES (856, 382, '0,100,279,212,382', '黄升镇黄四村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:12:04', '', NULL);
INSERT INTO `sys_dept` VALUES (857, 382, '0,100,279,212,382', '利国乡利国三村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:12:11', '', NULL);
INSERT INTO `sys_dept` VALUES (858, 382, '0,100,279,212,382', '利国乡利国四村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:12:22', '', NULL);
INSERT INTO `sys_dept` VALUES (859, 382, '0,100,279,212,382', '利国乡马营三村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:12:27', '', NULL);
INSERT INTO `sys_dept` VALUES (860, 382, '0,100,279,212,382', '下河乡流口村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:12:32', '', NULL);
INSERT INTO `sys_dept` VALUES (861, 382, '0,100,279,212,382', '下洼镇东下洼村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:12:37', '', NULL);
INSERT INTO `sys_dept` VALUES (862, 382, '0,100,279,212,382', '下洼镇哈喇村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:12:42', '', NULL);
INSERT INTO `sys_dept` VALUES (863, 382, '0,100,279,212,382', '下洼镇卢家村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:19:38', '', NULL);
INSERT INTO `sys_dept` VALUES (864, 387, '0,100,279,212,387', '黛溪街道郭庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:19:50', '', NULL);
INSERT INTO `sys_dept` VALUES (865, 387, '0,100,279,212,387', '韩店镇崔韩村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:19:57', '', NULL);
INSERT INTO `sys_dept` VALUES (866, 387, '0,100,279,212,387', '韩店镇南冯家村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:04', '', NULL);
INSERT INTO `sys_dept` VALUES (867, 387, '0,100,279,212,387', '韩店镇实户村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:09', '', NULL);
INSERT INTO `sys_dept` VALUES (868, 387, '0,100,279,212,387', '韩店镇西韦村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:17', '', NULL);
INSERT INTO `sys_dept` VALUES (869, 387, '0,100,279,212,387', '韩店镇颜桥村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:22', '', NULL);
INSERT INTO `sys_dept` VALUES (870, 387, '0,100,279,212,387', '好生街道东代村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:28', '', NULL);
INSERT INTO `sys_dept` VALUES (871, 387, '0,100,279,212,387', '焦桥镇韩套村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:35', '', NULL);
INSERT INTO `sys_dept` VALUES (872, 387, '0,100,279,212,387', '焦桥镇刘套村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:40', '', NULL);
INSERT INTO `sys_dept` VALUES (873, 387, '0,100,279,212,387', '焦桥镇小杜村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:48', '', NULL);
INSERT INTO `sys_dept` VALUES (874, 387, '0,100,279,212,387', '码头镇草庙村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:20:55', '', NULL);
INSERT INTO `sys_dept` VALUES (875, 387, '0,100,279,212,387', '码头镇大王村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:02', '', NULL);
INSERT INTO `sys_dept` VALUES (876, 387, '0,100,279,212,387', '孙镇蔡家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:07', '', NULL);
INSERT INTO `sys_dept` VALUES (877, 387, '0,100,279,212,387', '魏桥镇北于家村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:15', '', NULL);
INSERT INTO `sys_dept` VALUES (878, 387, '0,100,279,212,387', '魏桥镇东刘村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:25', '', NULL);
INSERT INTO `sys_dept` VALUES (879, 387, '0,100,279,212,387', '魏桥镇范家村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:30', '', NULL);
INSERT INTO `sys_dept` VALUES (880, 387, '0,100,279,212,387', '魏桥镇粉张村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:36', '', NULL);
INSERT INTO `sys_dept` VALUES (881, 387, '0,100,279,212,387', '魏桥镇甜水村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:42', '', NULL);
INSERT INTO `sys_dept` VALUES (882, 387, '0,100,279,212,387', '魏桥镇西码头村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:48', '', NULL);
INSERT INTO `sys_dept` VALUES (883, 387, '0,100,279,212,387', '魏桥镇张家寨村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:21:56', '', NULL);
INSERT INTO `sys_dept` VALUES (884, 387, '0,100,279,212,387', '西董街道南洞村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:22:01', '', NULL);
INSERT INTO `sys_dept` VALUES (885, 387, '0,100,279,212,387', '长山镇高旺村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:22:08', '', NULL);
INSERT INTO `sys_dept` VALUES (886, 387, '0,100,279,212,387', '长山镇长韩村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:22:14', '', NULL);
INSERT INTO `sys_dept` VALUES (887, 383, '0,100,279,212,383', '姜楼镇鲁麦良种有限公司', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:23:34', '', NULL);
INSERT INTO `sys_dept` VALUES (888, 383, '0,100,279,212,383', '清河镇清河联村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:23:40', '', NULL);
INSERT INTO `sys_dept` VALUES (889, 383, '0,100,279,212,383', '淄角镇淄角村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:23:46', '', NULL);
INSERT INTO `sys_dept` VALUES (890, 383, '0,100,279,212,383', '姜楼镇姜城新村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:23:52', '', NULL);
INSERT INTO `sys_dept` VALUES (893, 385, '0,100,279,212,385', '柳堡镇傅瞿阝段家村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:24:48', '', NULL);
INSERT INTO `sys_dept` VALUES (894, 385, '0,100,279,212,385', '水湾镇崔家庄', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:24:54', '', NULL);
INSERT INTO `sys_dept` VALUES (895, 384, '0,100,279,212,384', '金阳街道陈词林村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:26:46', '', NULL);
INSERT INTO `sys_dept` VALUES (896, 384, '0,100,279,212,384', '劳店镇劳店新村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:26:54', '', NULL);
INSERT INTO `sys_dept` VALUES (897, 384, '0,100,279,212,384', '温店镇宁王村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:26:59', '', NULL);
INSERT INTO `sys_dept` VALUES (898, 386, '0,100,279,212,386', '曹王镇曹营村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:27:14', '', NULL);
INSERT INTO `sys_dept` VALUES (899, 386, '0,100,279,212,386', '湖滨镇柳舒村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:27:21', '', NULL);
INSERT INTO `sys_dept` VALUES (900, 386, '0,100,279,212,386', '水湾镇李刘村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:27:27', '', NULL);
INSERT INTO `sys_dept` VALUES (901, 384, '0,100,279,212,384', '河流镇王大联村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:29:05', '', NULL);
INSERT INTO `sys_dept` VALUES (902, 332, '0,100,279,210,332', '黄河涯镇王程寨村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:30:31', '', NULL);
INSERT INTO `sys_dept` VALUES (903, 332, '0,100,279,210,332', '天衢街道办事处御园村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:30:39', '', NULL);
INSERT INTO `sys_dept` VALUES (904, 341, '0,100,279,210,341', '抬头寺镇罗李村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:30:48', 'admin', '2024-01-22 19:05:19');
INSERT INTO `sys_dept` VALUES (905, 342, '0,100,279,210,342', '胡家街道办事处芦店新村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:31:01', '', NULL);
INSERT INTO `sys_dept` VALUES (906, 342, '0,100,279,210,342', '市中街道办事处渤海村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:31:07', '', NULL);
INSERT INTO `sys_dept` VALUES (907, 342, '0,100,279,210,342', '杨安镇百味佳新村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:31:14', '', NULL);
INSERT INTO `sys_dept` VALUES (908, 342, '0,100,279,210,342', '朱集镇席家村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:31:21', '', NULL);
INSERT INTO `sys_dept` VALUES (909, 342, '0,100,279,210,342', '朱集镇六寨村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:31:27', '', NULL);
INSERT INTO `sys_dept` VALUES (910, 336, '0,100,279,210,336', '德平镇振兴联村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:31:58', '', NULL);
INSERT INTO `sys_dept` VALUES (911, 336, '0,100,279,210,336', '理合务镇理合务街联村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:04', '', NULL);
INSERT INTO `sys_dept` VALUES (912, 336, '0,100,279,210,336', '理合务镇孙镇村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:10', '', NULL);
INSERT INTO `sys_dept` VALUES (913, 336, '0,100,279,210,336', '临南镇韩家村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:15', '', NULL);
INSERT INTO `sys_dept` VALUES (914, 336, '0,100,279,210,336', '临南镇宋洼庄村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:21', '', NULL);
INSERT INTO `sys_dept` VALUES (915, 336, '0,100,279,210,336', '临盘街道办事处崔大新村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:26', '', NULL);
INSERT INTO `sys_dept` VALUES (916, 336, '0,100,279,210,336', '临邑镇靳家村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:31', '', NULL);
INSERT INTO `sys_dept` VALUES (917, 336, '0,100,279,210,336', '孟寺镇中店村村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:37', '', NULL);
INSERT INTO `sys_dept` VALUES (918, 336, '0,100,279,210,336', '邢侗街道办事处开元新村村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:42', '', NULL);
INSERT INTO `sys_dept` VALUES (919, 336, '0,100,279,210,336', '宿安乡高徐村村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:48', '', NULL);
INSERT INTO `sys_dept` VALUES (920, 336, '0,100,279,210,336', '宿安乡坯子张村村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:32:54', '', NULL);
INSERT INTO `sys_dept` VALUES (921, 336, '0,100,279,210,336', '翟家镇黄集村村民委员会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:33:00', '', NULL);
INSERT INTO `sys_dept` VALUES (922, 333, '0,100,279,210,333', '徽王庄镇牛王堂村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:33:19', '', NULL);
INSERT INTO `sys_dept` VALUES (923, 333, '0,100,279,210,333', '临齐街道办事处城后前王村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:33:25', '', NULL);
INSERT INTO `sys_dept` VALUES (924, 333, '0,100,279,210,333', '临齐街道办事处穆家村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:33:35', '', NULL);
INSERT INTO `sys_dept` VALUES (925, 333, '0,100,279,210,333', '糜镇大陈家村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:33:40', '', NULL);
INSERT INTO `sys_dept` VALUES (926, 333, '0,100,279,210,333', '神头镇东李家村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:33:46', '', NULL);
INSERT INTO `sys_dept` VALUES (927, 333, '0,100,279,210,333', '义渡口镇赵店新村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:33:52', '', NULL);
INSERT INTO `sys_dept` VALUES (928, 333, '0,100,279,210,333', '郑家寨镇李姚新村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:33:57', '', NULL);
INSERT INTO `sys_dept` VALUES (929, 333, '0,100,279,210,333', '郑家寨镇小葛家村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:34:03', '', NULL);
INSERT INTO `sys_dept` VALUES (930, 333, '0,100,279,210,333', '郑家寨镇久久新村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:34:09', '', NULL);
INSERT INTO `sys_dept` VALUES (931, 333, '0,100,279,210,333', '郑家寨镇大宗魏家村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:34:22', '', NULL);
INSERT INTO `sys_dept` VALUES (932, 334, '0,100,279,210,334', '柴胡店镇新河北村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:34:40', '', NULL);
INSERT INTO `sys_dept` VALUES (933, 334, '0,100,279,210,334', '柴胡店镇张集村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:34:48', '', NULL);
INSERT INTO `sys_dept` VALUES (934, 334, '0,100,279,210,334', '大曹镇高官村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:34:55', '', NULL);
INSERT INTO `sys_dept` VALUES (935, 334, '0,100,279,210,334', '大柳镇鄄子村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:35:08', '', NULL);
INSERT INTO `sys_dept` VALUES (936, 334, '0,100,279,210,334', '杜集镇张端村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:35:15', '', NULL);
INSERT INTO `sys_dept` VALUES (937, 334, '0,100,279,210,334', '时集镇时集王庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:35:21', '', NULL);
INSERT INTO `sys_dept` VALUES (938, 338, '0,100,279,210,338', '恩城镇河东社区银王庄村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:35:30', '', NULL);
INSERT INTO `sys_dept` VALUES (939, 338, '0,100,279,210,338', '王杲铺镇五博杨社区杨诗庄村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:35:35', '', NULL);
INSERT INTO `sys_dept` VALUES (940, 338, '0,100,279,210,338', '王杲铺镇栾庄社区小胥村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:35:42', '', NULL);
INSERT INTO `sys_dept` VALUES (941, 338, '0,100,279,210,338', '王庙镇前刘村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:35:48', '', NULL);
INSERT INTO `sys_dept` VALUES (942, 337, '0,100,279,210,337', '表白寺镇后门村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:35:56', '', NULL);
INSERT INTO `sys_dept` VALUES (943, 337, '0,100,279,210,337', '华店镇史庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:36:02', '', NULL);
INSERT INTO `sys_dept` VALUES (944, 337, '0,100,279,210,337', '华店镇范楼村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:36:08', '', NULL);
INSERT INTO `sys_dept` VALUES (945, 337, '0,100,279,210,337', '焦庙镇谯庄村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:36:15', '', NULL);
INSERT INTO `sys_dept` VALUES (946, 337, '0,100,279,210,337', '刘桥镇大刘村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:36:21', '', NULL);
INSERT INTO `sys_dept` VALUES (947, 337, '0,100,279,210,337', '马集镇大辛村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:36:27', '', NULL);
INSERT INTO `sys_dept` VALUES (948, 337, '0,100,279,210,337', '宣章屯镇甘东村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:36:37', '', NULL);
INSERT INTO `sys_dept` VALUES (949, 337, '0,100,279,210,337', '晏北街道办事处焦斌村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:36:45', '', NULL);
INSERT INTO `sys_dept` VALUES (950, 337, '0,100,279,210,337', '赵官镇北二村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:36:51', '', NULL);
INSERT INTO `sys_dept` VALUES (951, 335, '0,100,279,210,335', '常家镇大高村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:37:16', '', NULL);
INSERT INTO `sys_dept` VALUES (952, 335, '0,100,279,210,335', '常家镇西张村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:37:21', '', NULL);
INSERT INTO `sys_dept` VALUES (953, 335, '0,100,279,210,335', '常家镇二十里铺村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:37:27', '', NULL);
INSERT INTO `sys_dept` VALUES (954, 335, '0,100,279,210,335', '东辛店镇前邓村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:37:32', '', NULL);
INSERT INTO `sys_dept` VALUES (955, 335, '0,100,279,210,335', '中丁乡东苗村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:37:37', '', NULL);
INSERT INTO `sys_dept` VALUES (956, 335, '0,100,279,210,335', '徐园子乡马古台村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:37:43', '', NULL);
INSERT INTO `sys_dept` VALUES (957, 340, '0,100,279,210,340', '甲马营镇后庙村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:38:08', '', NULL);
INSERT INTO `sys_dept` VALUES (958, 340, '0,100,279,210,340', '李家户镇郑官屯村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:38:16', '', NULL);
INSERT INTO `sys_dept` VALUES (959, 340, '0,100,279,210,340', '鲁权屯镇北郑庄村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:38:22', '', NULL);
INSERT INTO `sys_dept` VALUES (960, 340, '0,100,279,210,340', '鲁权屯镇邢庄村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:38:28', '', NULL);
INSERT INTO `sys_dept` VALUES (961, 340, '0,100,279,210,340', '四女寺镇大孙庄村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:38:34', '', NULL);
INSERT INTO `sys_dept` VALUES (962, 340, '0,100,279,210,340', '武城镇东肖河庄村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:38:40', '', NULL);
INSERT INTO `sys_dept` VALUES (963, 340, '0,100,279,210,340', '武城镇董王庄村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:38:46', '', NULL);
INSERT INTO `sys_dept` VALUES (964, 340, '0,100,279,210,340', '武城镇大屯村村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:38:52', '', NULL);
INSERT INTO `sys_dept` VALUES (965, 339, '0,100,279,210,339', '北城街道办事处唐堤村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:39:10', '', NULL);
INSERT INTO `sys_dept` VALUES (966, 339, '0,100,279,210,339', '北城街道办事处会盟社区居委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:39:16', '', NULL);
INSERT INTO `sys_dept` VALUES (967, 339, '0,100,279,210,339', '北城街道办事处苦水马庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:39:24', '', NULL);
INSERT INTO `sys_dept` VALUES (968, 339, '0,100,279,210,339', '南城镇翟庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:39:29', '', NULL);
INSERT INTO `sys_dept` VALUES (969, 339, '0,100,279,210,339', '南城镇小朱庄村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:39:35', '', NULL);
INSERT INTO `sys_dept` VALUES (970, 339, '0,100,279,210,339', '南城镇王仁庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:39:40', '', NULL);
INSERT INTO `sys_dept` VALUES (971, 339, '0,100,279,210,339', '双庙镇中鸭村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:39:50', '', NULL);
INSERT INTO `sys_dept` VALUES (972, 339, '0,100,279,210,339', '宋楼镇靳庄村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:39:56', '', NULL);
INSERT INTO `sys_dept` VALUES (973, 339, '0,100,279,210,339', '宋楼镇任堤村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:01', '', NULL);
INSERT INTO `sys_dept` VALUES (974, 339, '0,100,279,210,339', '香赵庄镇王寨村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:07', '', NULL);
INSERT INTO `sys_dept` VALUES (975, 339, '0,100,279,210,339', '新盛店镇西韩庄村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:12', '', NULL);
INSERT INTO `sys_dept` VALUES (976, 339, '0,100,279,210,339', '新盛店镇新盛店村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:19', '', NULL);
INSERT INTO `sys_dept` VALUES (977, 339, '0,100,279,210,339', '新盛店镇后堂村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:26', '', NULL);
INSERT INTO `sys_dept` VALUES (978, 339, '0,100,279,210,339', '新盛店镇张大屯村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:32', '', NULL);
INSERT INTO `sys_dept` VALUES (979, 339, '0,100,279,210,339', '新盛店镇北滕庄村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:38', '', NULL);
INSERT INTO `sys_dept` VALUES (980, 339, '0,100,279,210,339', '郑保屯镇郑保屯村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:46', '', NULL);
INSERT INTO `sys_dept` VALUES (981, 339, '0,100,279,210,339', '郑保屯镇八屯村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:52', '', NULL);
INSERT INTO `sys_dept` VALUES (982, 339, '0,100,279,210,339', '雷集镇大张庄村委会', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:40:58', '', NULL);
INSERT INTO `sys_dept` VALUES (983, 210, '0,100,279,210', '禹城市', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:42:10', '', NULL);
INSERT INTO `sys_dept` VALUES (984, 983, '0,100,279,210,983', '莒镇纸坊村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:42:26', '', NULL);
INSERT INTO `sys_dept` VALUES (985, 983, '0,100,279,210,983', '莒镇碱李村村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:42:33', '', NULL);
INSERT INTO `sys_dept` VALUES (986, 983, '0,100,279,210,983', '梁家镇武庄村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:42:40', '', NULL);
INSERT INTO `sys_dept` VALUES (987, 983, '0,100,279,210,983', '伦镇北选村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:42:45', '', NULL);
INSERT INTO `sys_dept` VALUES (988, 983, '0,100,279,210,983', '伦镇燕东村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:42:51', '', NULL);
INSERT INTO `sys_dept` VALUES (989, 983, '0,100,279,210,983', '伦镇西城子坡村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:42:57', '', NULL);
INSERT INTO `sys_dept` VALUES (990, 983, '0,100,279,210,983', '伦镇毛庄村村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:03', '', NULL);
INSERT INTO `sys_dept` VALUES (991, 983, '0,100,279,210,983', '伦镇李茂芝村村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:08', '', NULL);
INSERT INTO `sys_dept` VALUES (992, 983, '0,100,279,210,983', '十里望回族镇金庄村村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:15', '', NULL);
INSERT INTO `sys_dept` VALUES (993, 983, '0,100,279,210,983', '十里望回族镇大白村村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:23', '', NULL);
INSERT INTO `sys_dept` VALUES (994, 983, '0,100,279,210,983', '辛店镇大李村村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:30', '', NULL);
INSERT INTO `sys_dept` VALUES (995, 983, '0,100,279,210,983', '辛店镇张集村村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:36', '', NULL);
INSERT INTO `sys_dept` VALUES (996, 983, '0,100,279,210,983', '禹兴街道办事处廿里堡东街村村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:41', '', NULL);
INSERT INTO `sys_dept` VALUES (997, 983, '0,100,279,210,983', '禹兴街道办事处于庄村村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:47', '', NULL);
INSERT INTO `sys_dept` VALUES (998, 983, '0,100,279,210,983', '张庄镇张庄村村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:43:53', '', NULL);
INSERT INTO `sys_dept` VALUES (999, 340, '0,100,279,210,340', '郝王庄镇长屯村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:44:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1000, 332, '0,100,279,210,332', '黄河涯镇嘉和村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:44:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1001, 332, '0,100,279,210,332', '运河街道南陈庄村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:44:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1002, 342, '0,100,279,210,342', '丁坞镇华兴村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:44:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1003, 342, '0,100,279,210,342', '丁坞镇小孟村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:44:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1004, 342, '0,100,279,210,342', '郭家街道郭家新村郭家村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1005, 342, '0,100,279,210,342', '郭家街道郑家新村王家村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1006, 342, '0,100,279,210,342', '郭家街道中兴村潘东', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1007, 342, '0,100,279,210,342', '郭家街道中兴村邹家', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1008, 342, '0,100,279,210,342', '胡家街道名扬家具城', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1009, 342, '0,100,279,210,342', '花园镇杜店村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1010, 342, '0,100,279,210,342', '花园镇房家村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1011, 342, '0,100,279,210,342', '花园镇花园新村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1012, 342, '0,100,279,210,342', '花园镇刘武官新村王道元村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1013, 342, '0,100,279,210,342', '花园镇三鲁村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:45:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1014, 342, '0,100,279,210,342', '花园镇周家新村关家村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1015, 342, '0,100,279,210,342', '黄夹镇时代新村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1016, 342, '0,100,279,210,342', '孔镇镇田高村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1017, 342, '0,100,279,210,342', '刘武官乡刘武官新村刘武官村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1018, 342, '0,100,279,210,342', '市中街道康家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1019, 342, '0,100,279,210,342', '市中街道顺河村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1020, 342, '0,100,279,210,342', '市中街道顺源村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1021, 342, '0,100,279,210,342', '市中街道勇发二手汽车有限公司', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1022, 342, '0,100,279,210,342', '铁营镇东营村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1023, 342, '0,100,279,210,342', '铁营镇六星塬村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:46:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1024, 342, '0,100,279,210,342', '铁营镇铁营新村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:47:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1025, 342, '0,100,279,210,342', '铁营镇辛庄村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:47:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1026, 342, '0,100,279,210,342', '云红街道结义村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:47:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1027, 342, '0,100,279,210,342', '云红街道千红湖村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:47:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1028, 342, '0,100,279,210,342', '郑店镇张宝山村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:47:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1029, 342, '0,100,279,210,342', '朱集镇高厦檐村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:47:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1030, 342, '0,100,279,210,342', '朱集镇园艺村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1031, 342, '0,100,279,210,342', '朱集镇枣林村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:48:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1032, 342, '0,100,279,210,342', '朱集镇朱集村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:48:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1033, 342, '0,100,279,210,342', '希森马铃薯食品有限公司', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:48:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1034, 336, '0,100,279,210,336', '德平镇和谐新村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:49:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1035, 336, '0,100,279,210,336', '德平镇龙泉新村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:49:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1036, 336, '0,100,279,210,336', '恒源街道鸿运农作物种植专业合作社', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:49:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1037, 336, '0,100,279,210,336', '理合务镇林寨联村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:49:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1038, 336, '0,100,279,210,336', '理合务镇沙于村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1039, 336, '0,100,279,210,336', '理合务镇唐家村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1040, 336, '0,100,279,210,336', '理合务镇田寨村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1041, 336, '0,100,279,210,336', '林子镇大庞家村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1042, 336, '0,100,279,210,336', '林子镇李道士村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1043, 336, '0,100,279,210,336', '林子镇朱二歪村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1044, 336, '0,100,279,210,336', '临南镇边马新村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1045, 336, '0,100,279,210,336', '临南镇富源新村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1046, 336, '0,100,279,210,336', '临南镇广旺村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:50:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1047, 336, '0,100,279,210,336', '临南镇李庙村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1048, 336, '0,100,279,210,336', '临南镇王寨村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1049, 336, '0,100,279,210,336', '临盘街道集贤新村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1050, 336, '0,100,279,210,336', '临盘街道山东先禾汇欣果蔬家庭农场', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1051, 336, '0,100,279,210,336', '临邑镇五联新村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1052, 336, '0,100,279,210,336', '孟寺镇程家村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1053, 336, '0,100,279,210,336', '孟寺镇耿刘村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1054, 336, '0,100,279,210,336', '孟寺镇南梁村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1055, 336, '0,100,279,210,336', '孟寺镇前范村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:51:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1056, 336, '0,100,279,210,336', '兴隆镇苗屯村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:52:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1057, 336, '0,100,279,210,336', '兴隆镇王家村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:52:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1058, 336, '0,100,279,210,336', '宿安乡高辛村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:52:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1059, 336, '0,100,279,210,336', '宿安乡孟家村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:52:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1060, 336, '0,100,279,210,336', '翟家镇后党村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:52:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1061, 336, '0,100,279,210,336', '翟家镇徐理还村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:52:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1062, 333, '0,100,279,210,333', '安德街道菜园村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:53:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1063, 333, '0,100,279,210,333', '安德街道孙家洼村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:53:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1064, 333, '0,100,279,210,333', '徽王庄镇大官辛村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:53:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1065, 333, '0,100,279,210,333', '徽王庄镇东纸坊村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:53:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1066, 333, '0,100,279,210,333', '徽王庄镇高于新村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:53:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1067, 333, '0,100,279,210,333', '徽王庄镇孙世官村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:53:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1068, 333, '0,100,279,210,333', '临齐街道后刘泮村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:53:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1069, 333, '0,100,279,210,333', '临齐街道李百都村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1070, 333, '0,100,279,210,333', '临齐街道楼家庙村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1071, 333, '0,100,279,210,333', '临齐街道孙克明村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1072, 333, '0,100,279,210,333', '临齐街道西蔡庙村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1073, 333, '0,100,279,210,333', '临齐街道杨念佛村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1074, 333, '0,100,279,210,333', '临齐街道杨庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1075, 333, '0,100,279,210,333', '糜镇李韩家村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1076, 333, '0,100,279,210,333', '前孙镇新商庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1077, 333, '0,100,279,210,333', '宋家镇大李村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:54:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1078, 333, '0,100,279,210,333', '宋家镇厚家新村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:55:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1079, 333, '0,100,279,210,333', '宋家镇祁家村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:55:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1080, 333, '0,100,279,210,333', '宋家镇新楼村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:55:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1081, 333, '0,100,279,210,333', '郑家寨镇张丰池村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:55:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1082, 333, '0,100,279,210,333', '滋镇高家村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:55:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1083, 334, '0,100,279,210,334', '保店镇前阳东村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:55:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1084, 334, '0,100,279,210,334', '保店镇张宅村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:55:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1085, 334, '0,100,279,210,334', '柴胡店镇崔杨庄', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:56:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1086, 334, '0,100,279,210,334', '柴胡店镇郝家村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:56:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1087, 334, '0,100,279,210,334', '大曹镇兴业新村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:56:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1088, 334, '0,100,279,210,334', '杜集镇王庭府村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:56:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1089, 334, '0,100,279,210,334', '时集镇郭皋村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:56:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1090, 334, '0,100,279,210,334', '时集镇时集村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:56:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1091, 334, '0,100,279,210,334', '时集镇益仓村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:56:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1092, 334, '0,100,279,210,334', '时集镇张西村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:56:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1093, 334, '0,100,279,210,334', '相衙镇陈庞李村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:57:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1094, 334, '0,100,279,210,334', '相衙镇楼子李村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:57:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1095, 334, '0,100,279,210,334', '张大庄镇大郑村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:57:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1096, 338, '0,100,279,210,338', '德原街道崔庄社区后耿村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:57:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1097, 338, '0,100,279,210,338', '德原街道崔庄社区前耿村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:57:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1098, 338, '0,100,279,210,338', '德原街道坊子社区前坊子村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:58:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1099, 338, '0,100,279,210,338', '恩城镇河东社区大杨庄村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:58:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1100, 338, '0,100,279,210,338', '恩城镇周李社区周全庄村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:58:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1101, 338, '0,100,279,210,338', '龙门街道郭刘社区刘庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:58:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1102, 338, '0,100,279,210,338', '龙门街道郭刘社区郑庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:58:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1103, 338, '0,100,279,210,338', '龙门街道军仓新村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:58:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1104, 338, '0,100,279,210,338', '龙门街道友谊社区水坑王村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:58:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1105, 338, '0,100,279,210,338', '前曹镇万王社区毛孙村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1106, 338, '0,100,279,210,338', '前曹镇新雅苑村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1107, 338, '0,100,279,210,338', '三唐乡镇协和村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1108, 338, '0,100,279,210,338', '三唐乡镇袁家寨村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1109, 338, '0,100,279,210,338', '桃园街道魏中村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1110, 338, '0,100,279,210,338', '王打卦镇碧景新村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1111, 338, '0,100,279,210,338', '王打卦镇打渔李新村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1112, 338, '0,100,279,210,338', '王凤楼镇大刘社区南任庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1113, 338, '0,100,279,210,338', '王杲铺镇甜南社区甜南村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 16:59:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1114, 338, '0,100,279,210,338', '王杲铺镇王杲铺社区贾庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1115, 338, '0,100,279,210,338', '王杲铺镇五博杨社区张博泉村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1116, 338, '0,100,279,210,338', '王杲铺镇杨诗庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1117, 338, '0,100,279,210,338', '王庙镇双兴村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1118, 338, '0,100,279,210,338', '腰站镇郭庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1119, 338, '0,100,279,210,338', '张华镇朝阳社区大陈村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1120, 338, '0,100,279,210,338', '张华镇和西社区梨园村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1121, 338, '0,100,279,210,338', '张华镇顺和社区韩庄村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1122, 338, '0,100,279,210,338', '张华镇郑官屯村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:00:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1123, 337, '0,100,279,210,337', '大黄乡大张村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:01:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1124, 337, '0,100,279,210,337', '大黄乡河南孙村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:01:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1125, 337, '0,100,279,210,337', '大黄乡邵庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:01:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1126, 337, '0,100,279,210,337', '华店镇太平王村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:01:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1127, 337, '0,100,279,210,337', '焦庙镇黑马村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:01:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1128, 337, '0,100,279,210,337', '焦庙镇季西村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:01:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1129, 337, '0,100,279,210,337', '焦庙镇炮姜村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:02:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1130, 337, '0,100,279,210,337', '焦庙镇许庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:02:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1131, 337, '0,100,279,210,337', '焦庙镇钟庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:02:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1132, 337, '0,100,279,210,337', '刘桥镇蔡官屯村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:02:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1133, 337, '0,100,279,210,337', '刘桥镇高庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:02:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1134, 337, '0,100,279,210,337', '刘桥镇刘桥村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:02:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1135, 337, '0,100,279,210,337', '刘桥镇流北村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:02:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1136, 337, '0,100,279,210,337', '刘桥镇小李村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:02:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1137, 337, '0,100,279,210,337', '马集镇宋庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1138, 337, '0,100,279,210,337', '潘店镇陈屯村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1139, 337, '0,100,279,210,337', '潘店镇邱段村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1140, 337, '0,100,279,210,337', '潘店镇十里雾村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1141, 337, '0,100,279,210,337', '仁里集镇辛中村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1142, 337, '0,100,279,210,337', '宣章屯镇甘西村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1143, 337, '0,100,279,210,337', '宣章屯镇王井子村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1144, 337, '0,100,279,210,337', '宣章屯镇辛兴村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1145, 337, '0,100,279,210,337', '宣章屯镇宣章屯村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:03:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1146, 337, '0,100,279,210,337', '晏北街道安付村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:04:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1147, 337, '0,100,279,210,337', '晏北街道葛庄村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:04:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1148, 337, '0,100,279,210,337', '晏北街道柳东村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:04:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1149, 337, '0,100,279,210,337', '晏北街道唐庄村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:04:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1150, 337, '0,100,279,210,337', '晏北街道赵庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:04:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1151, 337, '0,100,279,210,337', '晏城街道兴隆村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:04:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1152, 337, '0,100,279,210,337', '祝阿镇后颜村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:04:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1153, 337, '0,100,279,210,337', '祝阿镇王小尼村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:04:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1154, 335, '0,100,279,210,335', '渤海路街道撒家村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:05:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1155, 335, '0,100,279,210,335', '渤海路街道小郑村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:05:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1156, 335, '0,100,279,210,335', '渤海路街道甄家村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:05:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1157, 335, '0,100,279,210,335', '渤海路街道中石官堂村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:05:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1158, 335, '0,100,279,210,335', '常家镇北板营村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:05:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1159, 335, '0,100,279,210,335', '常家镇前乔村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:05:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1160, 335, '0,100,279,210,335', '崔口镇崔口东北村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1161, 335, '0,100,279,210,335', '东辛店镇东兴新村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1162, 335, '0,100,279,210,335', '东辛店镇石高村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1163, 335, '0,100,279,210,335', '东辛店镇志门刘村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1164, 335, '0,100,279,210,335', '庆云镇慈家村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1165, 335, '0,100,279,210,335', '庆云镇贾代村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1166, 335, '0,100,279,210,335', '庆云镇前官庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1167, 335, '0,100,279,210,335', '庆云镇韦家村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1168, 335, '0,100,279,210,335', '尚堂镇大郝村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1169, 335, '0,100,279,210,335', '尚堂镇前王村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:06:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1170, 335, '0,100,279,210,335', '尚堂镇姚千村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:07:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1171, 335, '0,100,279,210,335', '尚堂镇枣王村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:07:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1172, 335, '0,100,279,210,335', '尚堂镇中仓村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:07:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1173, 335, '0,100,279,210,335', '徐园子乡大袁村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:07:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1174, 335, '0,100,279,210,335', '徐园子乡利华新村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:07:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1175, 335, '0,100,279,210,335', '严务乡姜屯村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:07:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1176, 335, '0,100,279,210,335', '中丁乡刘秦辛村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:07:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1177, 335, '0,100,279,210,335', '中丁乡郑庙村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:07:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1178, 341, '0,100,279,210,341', '抬头寺镇清源新村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:35:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1179, 341, '0,100,279,210,341', '赵虎镇大道孙村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:36:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1180, 341, '0,100,279,210,341', '赵虎镇姜庄村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:36:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1181, 341, '0,100,279,210,341', '赵虎镇吕庄村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:36:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1182, 341, '0,100,279,210,341', '赵虎镇前后梁平福芦村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:36:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1183, 341, '0,100,279,210,341', '赵虎镇双湾村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:36:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1184, 341, '0,100,279,210,341', '赵虎镇岳庄村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:36:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1185, 341, '0,100,279,210,341', '将军寨新村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:36:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1186, 340, '0,100,279,210,340', '郝王庄镇草二村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1187, 340, '0,100,279,210,340', '郝王庄镇高明庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1188, 340, '0,100,279,210,340', '郝王庄镇小王庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1189, 340, '0,100,279,210,340', '甲马营镇田庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1190, 340, '0,100,279,210,340', '甲马营镇魏村屯村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1191, 340, '0,100,279,210,340', '老城镇仓上村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1192, 340, '0,100,279,210,340', '老城镇东杨村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1193, 340, '0,100,279,210,340', '老城镇随庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1194, 340, '0,100,279,210,340', '老城镇小王庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:37:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1195, 340, '0,100,279,210,340', '李家户镇苑寨村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1196, 340, '0,100,279,210,340', '鲁权屯镇高官屯村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:38:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1197, 340, '0,100,279,210,340', '鲁权屯镇滕庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:38:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1198, 340, '0,100,279,210,340', '四女寺镇东礼义庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:40:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1199, 340, '0,100,279,210,340', '武城镇李善屯村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:40:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1200, 340, '0,100,279,210,340', '武城镇张王庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:40:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1203, 339, '0,100,279,210,339', '北城街道茶店屯村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:42:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1204, 339, '0,100,279,210,339', '东李官屯镇程庄村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:42:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1205, 339, '0,100,279,210,339', '东李官屯镇东靳庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:42:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1206, 339, '0,100,279,210,339', '东李官屯镇靳庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:42:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1207, 339, '0,100,279,210,339', '东李镇东街村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:42:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1208, 339, '0,100,279,210,339', '东李镇东肖官屯村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:43:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1209, 339, '0,100,279,210,339', '东李镇贺屯村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:43:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1210, 339, '0,100,279,210,339', '东李镇李楼村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:43:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1211, 339, '0,100,279,210,339', '东李镇张官屯村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:43:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1212, 339, '0,100,279,210,339', '渡口驿乡管新庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:43:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1213, 339, '0,100,279,210,339', '渡口驿乡西渡口驿村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:43:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1214, 339, '0,100,279,210,339', '渡口驿乡鹏昌家庭农场', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:43:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1215, 339, '0,100,279,210,339', '雷集镇古城村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:43:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1216, 339, '0,100,279,210,339', '雷集镇牟庄村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:44:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1217, 339, '0,100,279,210,339', '雷集镇杨庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:44:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1218, 339, '0,100,279,210,339', '南城镇王太来村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:44:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1219, 339, '0,100,279,210,339', '南城镇袁庄村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:44:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1220, 339, '0,100,279,210,339', '南城镇朱庙村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:44:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1221, 339, '0,100,279,210,339', '双庙镇西鸭村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:44:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1222, 339, '0,100,279,210,339', '宋楼镇东张官屯村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:44:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1223, 339, '0,100,279,210,339', '宋楼镇王楼村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:45:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1224, 339, '0,100,279,210,339', '苏留庄镇李刘庄', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:45:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1225, 339, '0,100,279,210,339', '苏留庄镇前屯村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:45:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1226, 339, '0,100,279,210,339', '苏留庄镇肖里官屯村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:45:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1227, 339, '0,100,279,210,339', '苏留庄镇尤王庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:45:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1228, 339, '0,100,279,210,339', '田庄乡露观寺村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:45:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1229, 339, '0,100,279,210,339', '田庄乡张堡村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:47:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1230, 339, '0,100,279,210,339', '香赵庄镇仉庄村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:48:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1231, 339, '0,100,279,210,339', '香赵庄镇宗庄村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:48:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1232, 339, '0,100,279,210,339', '新盛店镇毕庄村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:48:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1233, 339, '0,100,279,210,339', '新盛店镇东菜园村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:48:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1234, 339, '0,100,279,210,339', '新盛店镇前胡官屯村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:49:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1235, 339, '0,100,279,210,339', '新盛店镇孙小屯村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:49:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1236, 339, '0,100,279,210,339', '新盛店镇五安庄村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:49:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1237, 339, '0,100,279,210,339', '新盛店镇西菜园村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:49:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1238, 339, '0,100,279,210,339', '新盛店镇西张官寨村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:50:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1239, 339, '0,100,279,210,339', '新盛店镇新盛店村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:50:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1240, 339, '0,100,279,210,339', '新盛店镇岳集村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:50:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1241, 339, '0,100,279,210,339', '新盛店镇张堂村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:50:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1242, 339, '0,100,279,210,339', '郑保屯镇柳元庄村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:50:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1243, 339, '0,100,279,210,339', '郑保屯镇珠东村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:50:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1244, 983, '0,100,279,210,983', '安仁镇南街村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:55:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1245, 983, '0,100,279,210,983', '安仁镇武庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:55:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1246, 983, '0,100,279,210,983', '房寺镇白塔寺村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:55:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1247, 983, '0,100,279,210,983', '房寺镇福全村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:55:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1248, 983, '0,100,279,210,983', '房寺镇韩王庄村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:55:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1249, 983, '0,100,279,210,983', '房寺镇狮范村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:56:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1250, 983, '0,100,279,210,983', '莒镇姜庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:56:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1251, 983, '0,100,279,210,983', '莒镇李尚吴村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:56:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1252, 983, '0,100,279,210,983', '莒镇水寨寺村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:56:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1253, 983, '0,100,279,210,983', '莒镇徐桥村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:56:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1254, 983, '0,100,279,210,983', '莒镇杨集村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:56:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1255, 983, '0,100,279,210,983', '莒镇张段村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:56:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1256, 983, '0,100,279,210,983', '梁家镇来风村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:57:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1257, 983, '0,100,279,210,983', '梁家镇王杨村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:57:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1258, 983, '0,100,279,210,983', '伦镇安庄村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:57:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1259, 983, '0,100,279,210,983', '伦镇东杨村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:57:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1260, 983, '0,100,279,210,983', '伦镇堂子街村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:57:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1261, 983, '0,100,279,210,983', '伦镇张水坡村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:57:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1262, 983, '0,100,279,210,983', '十里望回族镇牛徐村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:57:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1263, 983, '0,100,279,210,983', '十里望回族镇前河套村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:57:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1264, 983, '0,100,279,210,983', '十里望回族镇桥西村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:58:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1265, 983, '0,100,279,210,983', '十里望回族镇十里望新村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:58:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1266, 983, '0,100,279,210,983', '十里望回族镇馨和村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:58:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1267, 983, '0,100,279,210,983', '市中街道东军张', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:58:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1268, 983, '0,100,279,210,983', '辛店镇郭庄新村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:58:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1269, 983, '0,100,279,210,983', '辛店镇双庙村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:58:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1270, 983, '0,100,279,210,983', '辛店镇王石村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:58:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1271, 983, '0,100,279,210,983', '辛店镇修庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:58:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1272, 983, '0,100,279,210,983', '辛寨镇安庄村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:59:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1273, 983, '0,100,279,210,983', '辛寨镇红星村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:59:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1274, 983, '0,100,279,210,983', '辛寨镇振兴村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:59:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1275, 983, '0,100,279,210,983', '禹兴街道后李村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:59:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1276, 983, '0,100,279,210,983', '张庄镇大洼王村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:59:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1277, 983, '0,100,279,210,983', '张庄镇大油坊村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:59:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1278, 983, '0,100,279,210,983', '张庄镇小油坊村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 17:59:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1279, 342, '0,100,279,210,342', '丁坞镇回归田园有机农场', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:00:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1280, 342, '0,100,279,210,342', '花园镇房家村土地股份专业合作社', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:00:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1281, 336, '0,100,279,210,336', '林子镇连四庄村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:00:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1282, 333, '0,100,279,210,333', '徽王庄镇前王奇村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:00:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1283, 333, '0,100,279,210,333', '义渡口镇果园新村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:01:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1284, 333, '0,100,279,210,333', '郑家寨镇韩马村村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:01:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1285, 334, '0,100,279,210,334', '大曹镇东武村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:01:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1286, 334, '0,100,279,210,334', '大柳镇小姚村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:01:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1287, 334, '0,100,279,210,334', '张大庄镇双碓村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:01:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1288, 337, '0,100,279,210,337', '马集镇雷屯村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:01:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1289, 337, '0,100,279,210,337', '宣章屯镇小曹村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:02:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1290, 340, '0,100,279,210,340', '甲马营镇前庙村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:02:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1291, 340, '0,100,279,210,340', '鲁权屯镇鲁权屯村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:02:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1292, 340, '0,100,279,210,340', '四女寺镇东蒋家佛堂村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:02:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1293, 340, '0,100,279,210,340', '四女寺镇头屯村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:02:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1294, 339, '0,100,279,210,339', '北城街道孔庄村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:03:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1295, 339, '0,100,279,210,339', '北城街道马辛庄村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:03:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1296, 339, '0,100,279,210,339', '渡口驿乡夏庄村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:03:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1297, 339, '0,100,279,210,339', '南城镇蒋寨村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:03:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1298, 339, '0,100,279,210,339', '南城镇银子王村', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1299, 339, '0,100,279,210,339', '苏留庄镇盛庄村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:04:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1300, 339, '0,100,279,210,339', '苏留庄镇西韩村', 66, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:04:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1301, 983, '0,100,279,210,983', '房寺镇瓜张村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:04:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1302, 983, '0,100,279,210,983', '辛店镇张寺村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:04:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1303, 983, '0,100,279,210,983', '张庄镇众惠种植专业合作社', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:04:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1304, 983, '0,100,279,210,983', '云泉家庭种植农场', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:04:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1305, 245, '0,100,279,202,245', '六户镇小许村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:12:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1306, 245, '0,100,279,202,245', '牛庄镇东武村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:12:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1307, 245, '0,100,279,202,245', '牛庄镇解家村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:12:40', 'admin', '2024-01-22 19:11:56');
INSERT INTO `sys_dept` VALUES (1308, 245, '0,100,279,202,245', '牛庄镇小杜村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:12:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1309, 245, '0,100,279,202,245', '史口镇五甲王村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:12:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1310, 245, '0,100,279,202,245', '史口镇曲家村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:13:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1311, 245, '0,100,279,202,245', '史口镇十一图村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:13:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1312, 245, '0,100,279,202,245', '史口镇东一村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:13:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1313, 249, '0,100,279,202,249', '陈官镇北赵村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:13:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1314, 249, '0,100,279,202,249', '陈官镇北户村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:13:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1315, 249, '0,100,279,202,249', '大码头镇北堤村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:13:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1316, 249, '0,100,279,202,249', '大码头镇央上一村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:14:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1317, 249, '0,100,279,202,249', '大王镇卧石西村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:14:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1318, 249, '0,100,279,202,249', '大王镇大张淡村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:14:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1319, 249, '0,100,279,202,249', '大王镇韩琚村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:14:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1320, 249, '0,100,279,202,249', '大王镇冯庄村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:14:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1321, 249, '0,100,279,202,249', '大王镇黄店村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:14:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1322, 249, '0,100,279,202,249', '大王镇东吕村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:14:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1323, 249, '0,100,279,202,249', '稻庄镇高庙村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:14:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1324, 249, '0,100,279,202,249', '稻庄镇刁炉村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:15:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1325, 249, '0,100,279,202,249', '稻庄镇段一村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:15:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1326, 249, '0,100,279,202,249', '稻庄镇南徐楼村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:15:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1327, 249, '0,100,279,202,249', '花官镇李楼村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:15:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1328, 249, '0,100,279,202,249', '花官镇生金李村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:15:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1329, 249, '0,100,279,202,249', '花官镇草南村委会', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:15:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1330, 249, '0,100,279,202,249', '花官镇花官村委会', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:15:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1331, 249, '0,100,279,202,249', '花官镇岳六村委会', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:16:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1332, 249, '0,100,279,202,249', '乐安街道办事处北朱耿村委会', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:16:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1333, 249, '0,100,279,202,249', '李鹊镇皮里村委会', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:16:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1334, 249, '0,100,279,202,249', '李鹊镇王庄村委会', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:16:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1335, 249, '0,100,279,202,249', '李鹊镇张郭三村委会', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:16:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1336, 246, '0,100,279,202,246', '河口街道办事处南旺村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:16:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1337, 247, '0,100,279,202,247', '董集镇南范村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:17:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1338, 247, '0,100,279,202,247', '郝家镇樊家村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:17:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1339, 247, '0,100,279,202,247', '郝家镇孟家村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:17:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1340, 247, '0,100,279,202,247', '黄河口镇七村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:17:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1341, 247, '0,100,279,202,247', '黄河口镇万尔村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:17:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1342, 247, '0,100,279,202,247', '黄河口镇十三村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:17:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1343, 247, '0,100,279,202,247', '永安镇李屋村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:27:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1344, 248, '0,100,279,202,248', '利津街道办事处前十四户村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:28:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1345, 248, '0,100,279,202,248', '利津街道办事处买河村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:28:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1346, 248, '0,100,279,202,248', '明集乡马镇广二村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:29:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1347, 248, '0,100,279,202,248', '明集乡谢家灶村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:29:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1348, 248, '0,100,279,202,248', '盐窝镇老台一村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:31:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1349, 245, '0,100,279,202,245', '牛庄镇曹家村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:31:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1350, 245, '0,100,279,202,245', '牛庄镇贾刘村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:32:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1351, 245, '0,100,279,202,245', '牛庄镇前邵村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:32:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1352, 245, '0,100,279,202,245', '牛庄镇小宋村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:32:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1353, 245, '0,100,279,202,245', '史口镇林家村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:32:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1354, 249, '0,100,279,202,249', '大码头镇大码头一村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:32:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1355, 249, '0,100,279,202,249', '大码头镇东河口村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:33:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1356, 249, '0,100,279,202,249', '大王镇耿集村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:33:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1357, 249, '0,100,279,202,249', '大王镇军屯村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:34:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1358, 249, '0,100,279,202,249', '大王镇吕庄村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:34:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1359, 249, '0,100,279,202,249', '稻庄镇北陈官村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:34:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1360, 249, '0,100,279,202,249', '稻庄镇西杜村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:34:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1361, 249, '0,100,279,202,249', '稻庄镇西家村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:34:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1362, 249, '0,100,279,202,249', '丁庄街道祝庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:34:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1363, 249, '0,100,279,202,249', '广饶街道杜疃东村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:35:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1364, 249, '0,100,279,202,249', '广饶街道阜城店村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:35:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1365, 249, '0,100,279,202,249', '广饶街道莲花村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:35:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1366, 249, '0,100,279,202,249', '广饶街道三角村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:35:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1367, 249, '0,100,279,202,249', '花官镇草刘村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:35:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1368, 249, '0,100,279,202,249', '花官镇门圈村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:35:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1369, 249, '0,100,279,202,249', '乐安街道韩疃村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:35:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1370, 249, '0,100,279,202,249', '乐安街道明王村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:35:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1371, 249, '0,100,279,202,249', '乐安街道前安德村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:36:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1372, 249, '0,100,279,202,249', '李鹊镇后里西村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:36:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1373, 249, '0,100,279,202,249', '李鹊镇梨园村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:36:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1374, 249, '0,100,279,202,249', '李鹊镇南十里堡村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:36:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1375, 249, '0,100,279,202,249', '李鹊镇西孙村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:36:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1376, 249, '0,100,279,202,249', '李鹊镇西杨庙村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:37:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1377, 249, '0,100,279,202,249', '李鹊镇小张村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:37:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1378, 246, '0,100,279,202,246', '新户镇临湖新村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:40:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1379, 246, '0,100,279,202,246', '新户镇长兴新村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:40:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1380, 247, '0,100,279,202,247', '郝家镇十八图村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:41:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1381, 247, '0,100,279,202,247', '黄河口镇油郭村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:41:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1382, 247, '0,100,279,202,247', '永安镇六村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:41:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1383, 248, '0,100,279,202,248', '北宋镇柳高村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:42:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1384, 248, '0,100,279,202,248', '北宋镇石门村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:42:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1385, 248, '0,100,279,202,248', '陈庄镇太阳升村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:42:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1386, 248, '0,100,279,202,248', '陈庄镇堐东村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:42:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1387, 248, '0,100,279,202,248', '凤凰城街道徐集村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:42:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1388, 248, '0,100,279,202,248', '利津街道菜园村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:42:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1389, 248, '0,100,279,202,248', '明集乡北董村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:42:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1390, 248, '0,100,279,202,248', '汀罗镇东王屋村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:42:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1391, 248, '0,100,279,202,248', '盐窝镇马村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:43:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1392, 248, '0,100,279,202,248', '盐窝镇南岭村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:43:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1393, 248, '0,100,279,202,248', '盐窝镇肖家村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:43:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1394, 248, '0,100,279,202,248', '盐窝镇盐中村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:43:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1395, 246, '0,100,279,202,246', '义和镇六顷五村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 18:44:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1396, 390, '0,100,279,213,390', '古营集镇许口村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:03:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1397, 390, '0,100,279,213,390', '韩集镇向庄村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1398, 390, '0,100,279,213,390', '楼庄镇东谢滩村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1399, 390, '0,100,279,213,390', '楼庄镇王堂村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1400, 390, '0,100,279,213,390', '楼庄镇葛徐庄村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1401, 390, '0,100,279,213,390', '青岗集镇李尚彬村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1402, 390, '0,100,279,213,390', '邵庄镇邵庄村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1403, 390, '0,100,279,213,390', '邵庄镇白场村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1404, 390, '0,100,279,213,390', '邵庄镇郑庄村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1405, 390, '0,100,279,213,390', '阎店楼镇陈楼寨村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1406, 390, '0,100,279,213,390', '朱洪庙镇任庄村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1407, 390, '0,100,279,213,390', '庄寨镇车寨村民委员会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1408, 398, '0,100,279,213,398', '成武县白浮图镇梁寨村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1409, 398, '0,100,279,213,398', '成武县白浮图镇丁庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1410, 398, '0,100,279,213,398', '成武县白浮图镇刘土城村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1411, 398, '0,100,279,213,398', '成武县大田集镇北李楼村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1412, 398, '0,100,279,213,398', '成武县大田集镇许花园村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1413, 398, '0,100,279,213,398', '成武县党集镇刘辛庄村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1414, 398, '0,100,279,213,398', '成武县九女集镇马庙村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1415, 398, '0,100,279,213,398', '成武县九女集镇智楼村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1416, 398, '0,100,279,213,398', '成武县孙寺镇郭集村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1417, 398, '0,100,279,213,398', '成武县天宫庙镇胡店村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1418, 398, '0,100,279,213,398', '永昌街道办事处后陈楼村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1419, 391, '0,100,279,213,391', '曹庄乡秦庄村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:08:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1420, 391, '0,100,279,213,391', '高韦庄镇仁集村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:08:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1421, 391, '0,100,279,213,391', '高韦庄镇高韦庄村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:08:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1422, 391, '0,100,279,213,391', '郭村镇李庄村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:08:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1423, 391, '0,100,279,213,391', '莱河镇许河村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:08:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1424, 391, '0,100,279,213,391', '龙王庙镇田庄村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:08:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1425, 391, '0,100,279,213,391', '南城街道办事处魏溜社区居民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:09:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1426, 391, '0,100,279,213,391', '徐寨镇毛庄村村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:09:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1427, 391, '0,100,279,213,391', '徐寨镇齐庄村村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:09:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1428, 391, '0,100,279,213,391', '杨楼镇孟新楼村村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:09:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1429, 391, '0,100,279,213,391', '杨楼镇尤庄村村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:09:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1430, 391, '0,100,279,213,391', '杨楼镇黄尔庄村村民委员会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:09:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1431, 391, '0,100,279,213,391', '杨楼镇刘寨村村民委员会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:09:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1432, 391, '0,100,279,213,391', '杨楼镇王呼庄村村民委员会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:09:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1433, 391, '0,100,279,213,391', '朱集镇朱集村村民委员会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:10:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1434, 389, '0,100,279,213,389', '仿山镇前董村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:10:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1435, 389, '0,100,279,213,389', '黄店镇仝庄村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:10:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1436, 389, '0,100,279,213,389', '马集镇马集村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:10:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1437, 389, '0,100,279,213,389', '冉固镇王先庄村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:10:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1438, 396, '0,100,279,213,396', '城关街道办事处江庄村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:11:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1439, 396, '0,100,279,213,396', '大屯镇南孟大夫村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:11:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1440, 396, '0,100,279,213,396', '东明集镇西葛村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:11:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1441, 396, '0,100,279,213,396', '焦园乡闫潭村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:11:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1442, 396, '0,100,279,213,396', '焦园乡于楼村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:11:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1443, 396, '0,100,279,213,396', '陆圈镇李千户寨村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:11:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1444, 393, '0,100,279,213,393', '大谢集镇马桥村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:12:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1445, 393, '0,100,279,213,393', '大义镇胡固堆村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:12:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1446, 393, '0,100,279,213,393', '陶庙镇前店子村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:12:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1447, 393, '0,100,279,213,393', '田庄镇东杨楼村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:12:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1448, 399, '0,100,279,213,399', '大埝镇石黄店村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:12:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1449, 399, '0,100,279,213,399', '董口镇宋楼村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:12:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1450, 399, '0,100,279,213,399', '凤凰镇老陈庄村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1451, 399, '0,100,279,213,399', '箕山镇刘南垓村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1452, 399, '0,100,279,213,399', '箕山镇连楼村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1453, 399, '0,100,279,213,399', '临濮镇李楼北街村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1454, 399, '0,100,279,213,399', '彭楼镇南高村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1455, 399, '0,100,279,213,399', '彭楼镇李庄村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1456, 399, '0,100,279,213,399', '什集镇王吴庄村村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1457, 399, '0,100,279,213,399', '闫什镇荣堂村村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1458, 399, '0,100,279,213,399', '左营镇史庄村村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1459, 388, '0,100,279,213,388', '安兴镇冯庙村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1460, 388, '0,100,279,213,388', '沙土镇房庄村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1461, 388, '0,100,279,213,388', '沙土镇木刘村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1462, 388, '0,100,279,213,388', '王浩屯镇许寺村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1463, 388, '0,100,279,213,388', '王浩屯镇李集村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1464, 388, '0,100,279,213,388', '王浩屯镇郭鲁村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1465, 394, '0,100,279,213,394', '程屯镇钱楼村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1466, 394, '0,100,279,213,394', '郭屯镇东张楼村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1467, 394, '0,100,279,213,394', '郭屯镇车楼村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1468, 394, '0,100,279,213,394', '侯咽集镇邢庄村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1469, 394, '0,100,279,213,394', '黄泥冈镇西杨村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1470, 394, '0,100,279,213,394', '李集镇张口村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1471, 394, '0,100,279,213,394', '南赵楼镇六合苑社区村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1472, 394, '0,100,279,213,394', '潘渡镇李楼村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1473, 394, '0,100,279,213,394', '随官屯镇辛庄集村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1474, 394, '0,100,279,213,394', '随官屯镇马尹村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1475, 394, '0,100,279,213,394', '唐塔街道办事处蝙刘社区居民委员会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1476, 394, '0,100,279,213,394', '杨庄集镇张康庄村民委员会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1477, 394, '0,100,279,213,394', '杨庄集镇陈屯村民委员会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1478, 394, '0,100,279,213,394', '玉皇庙镇史樊庄村民委员会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1479, 394, '0,100,279,213,394', '郓州街道办事处闫庄村民委员会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1480, 390, '0,100,279,213,390', '安蔡楼镇程楼村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1481, 390, '0,100,279,213,390', '安蔡楼镇李集村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1482, 390, '0,100,279,213,390', '安蔡楼镇王善庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1483, 390, '0,100,279,213,390', '曹城街道石庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1484, 390, '0,100,279,213,390', '常乐集镇常刘庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1485, 390, '0,100,279,213,390', '常乐集镇耿集村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1486, 390, '0,100,279,213,390', '常乐集镇刘楼村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1487, 390, '0,100,279,213,390', '常乐集镇三邱店村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1488, 390, '0,100,279,213,390', '大集镇东北街村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1489, 390, '0,100,279,213,390', '古营集镇大石楼村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1490, 390, '0,100,279,213,390', '古营集镇杜庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1491, 390, '0,100,279,213,390', '古营集镇李楼村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1492, 390, '0,100,279,213,390', '古营集镇立本屯村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1493, 390, '0,100,279,213,390', '古营集镇南唐庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1494, 390, '0,100,279,213,390', '古营集镇时庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1495, 390, '0,100,279,213,390', '古营集镇小石楼村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1496, 390, '0,100,279,213,390', '古营集镇朱庄寨村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1497, 390, '0,100,279,213,390', '韩集镇菜李村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1498, 390, '0,100,279,213,390', '侯集回族镇王花楼', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1499, 390, '0,100,279,213,390', '侯集镇东赵庄村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1500, 390, '0,100,279,213,390', '侯集镇侯集村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1501, 390, '0,100,279,213,390', '梁堤头镇夏庄村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1502, 390, '0,100,279,213,390', '楼庄镇黄口村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1503, 390, '0,100,279,213,390', '楼庄镇杨堂村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1504, 390, '0,100,279,213,390', '倪集街道高楼村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1505, 390, '0,100,279,213,390', '倪集街道王堂村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1506, 390, '0,100,279,213,390', '普连集镇管楼村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1507, 390, '0,100,279,213,390', '青岗集镇燕城集村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:18', 'admin', '2024-01-21 22:21:45');
INSERT INTO `sys_dept` VALUES (1508, 390, '0,100,279,213,390', '青堌集镇柴庄村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1509, 390, '0,100,279,213,390', '青堌集镇东张楼村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1510, 390, '0,100,279,213,390', '青堌集镇李元庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1511, 390, '0,100,279,213,390', '青堌集镇苗堤圈东村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1512, 390, '0,100,279,213,390', '青堌集镇姚庄村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1513, 390, '0,100,279,213,390', '青菏街道北邵居民委员会', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1514, 390, '0,100,279,213,390', '青菏街道岳楼村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1515, 390, '0,100,279,213,390', '青菏街道张泗庄村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1516, 390, '0,100,279,213,390', '邵庄镇程庄寨村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1517, 390, '0,100,279,213,390', '邵庄镇李寨村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1518, 390, '0,100,279,213,390', '邵庄镇刘堤头村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1519, 390, '0,100,279,213,390', '邵庄镇刘庄村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1520, 390, '0,100,279,213,390', '邵庄镇青南', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1521, 390, '0,100,279,213,390', '邵庄镇王厂（后厂）', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1522, 390, '0,100,279,213,390', '邵庄镇王厂村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1523, 390, '0,100,279,213,390', '邵庄镇王庄村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1524, 390, '0,100,279,213,390', '邵庄镇袁小楼', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1525, 390, '0,100,279,213,390', '邵庄镇张屋村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1526, 390, '0,100,279,213,390', '邵庄镇仲堤圈北街村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1527, 390, '0,100,279,213,390', '苏集镇东岩里村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1528, 390, '0,100,279,213,390', '苏集镇韩王楼村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1529, 390, '0,100,279,213,390', '苏集镇赵庄村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1530, 390, '0,100,279,213,390', '孙老家镇董庄村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1531, 390, '0,100,279,213,390', '孙老家镇黄庄村', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1532, 390, '0,100,279,213,390', '孙老家镇李庄村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1533, 390, '0,100,279,213,390', '孙老家镇柳河集村', 66, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1534, 390, '0,100,279,213,390', '孙老家镇潘庄村', 67, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1535, 390, '0,100,279,213,390', '孙老家镇王坤集村', 68, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1536, 390, '0,100,279,213,390', '王集镇刘菜园村', 69, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1537, 390, '0,100,279,213,390', '王集镇杨店村', 70, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1538, 390, '0,100,279,213,390', '魏湾镇大赵庄村', 71, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1539, 390, '0,100,279,213,390', '魏湾镇前汪楼村', 72, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1540, 390, '0,100,279,213,390', '魏湾镇任堂村', 73, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1541, 390, '0,100,279,213,390', '仵楼镇郭楼村', 74, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1542, 390, '0,100,279,213,390', '仵楼镇南园村', 75, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1543, 390, '0,100,279,213,390', '阎店楼镇赵庄村', 76, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1544, 390, '0,100,279,213,390', '郑庄街道马庄村', 77, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1545, 390, '0,100,279,213,390', '郑庄街道郑庄村', 78, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1546, 390, '0,100,279,213,390', '庄寨镇丁寨社区', 79, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1547, 390, '0,100,279,213,390', '庄寨镇东寺村', 80, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1548, 390, '0,100,279,213,390', '庄寨镇谷寨村', 81, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1549, 390, '0,100,279,213,390', '庄寨镇李寨东村', 82, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1550, 390, '0,100,279,213,390', '庄寨镇李寨西村', 83, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1551, 390, '0,100,279,213,390', '庄寨镇梁集村', 84, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1552, 390, '0,100,279,213,390', '庄寨镇娘南村', 85, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1553, 390, '0,100,279,213,390', '庄寨镇潘寨社区', 86, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1554, 390, '0,100,279,213,390', '庄寨镇前韩村', 87, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1555, 390, '0,100,279,213,390', '庄寨镇长庙南街村', 88, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1556, 398, '0,100,279,213,398', '白浮图镇侯寨村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1557, 398, '0,100,279,213,398', '白浮图镇张庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1558, 398, '0,100,279,213,398', '伯乐集镇李海村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1559, 398, '0,100,279,213,398', '伯乐集镇玉皇庙村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1560, 398, '0,100,279,213,398', '大田集镇陈胡同村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1561, 398, '0,100,279,213,398', '大田集镇袁海村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1562, 398, '0,100,279,213,398', '党集镇刘老家村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1563, 398, '0,100,279,213,398', '苟村集镇霍宋庄行政村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1564, 398, '0,100,279,213,398', '苟村集镇刘海村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1565, 398, '0,100,279,213,398', '九女集镇大张庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1566, 398, '0,100,279,213,398', '九女集镇东张楼村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1567, 398, '0,100,279,213,398', '九女集镇谷庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1568, 398, '0,100,279,213,398', '九女集镇九女集村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1569, 398, '0,100,279,213,398', '九女集镇李高堂村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1570, 398, '0,100,279,213,398', '九女集镇李庄寨村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1571, 398, '0,100,279,213,398', '九女集镇南章集村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1572, 398, '0,100,279,213,398', '九女集镇冉楼村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1573, 398, '0,100,279,213,398', '九女集镇申楼村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1574, 398, '0,100,279,213,398', '南鲁集镇大王店村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1575, 398, '0,100,279,213,398', '南鲁集镇大王庄村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1576, 398, '0,100,279,213,398', '南鲁集镇李堂村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1577, 398, '0,100,279,213,398', '南鲁集镇刘阁村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1578, 398, '0,100,279,213,398', '南鲁集镇秦楼村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1579, 398, '0,100,279,213,398', '南鲁集镇西李楼村民', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1580, 398, '0,100,279,213,398', '南鲁集镇小房庙村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1581, 398, '0,100,279,213,398', '孙寺镇单桥村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1582, 398, '0,100,279,213,398', '孙寺镇侯楼村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1583, 398, '0,100,279,213,398', '孙寺镇刘王庄村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1584, 398, '0,100,279,213,398', '孙寺镇前王庄村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1585, 398, '0,100,279,213,398', '孙寺镇盛海村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1586, 398, '0,100,279,213,398', '孙寺镇双楼村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1587, 398, '0,100,279,213,398', '孙寺镇谢楼村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1588, 398, '0,100,279,213,398', '孙寺镇闫庄村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1589, 398, '0,100,279,213,398', '孙寺镇晏堌堆村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1590, 398, '0,100,279,213,398', '天宫庙镇常楼村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1591, 398, '0,100,279,213,398', '天宫庙镇霍楼村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1592, 398, '0,100,279,213,398', '汶上集镇牛老家行政村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1593, 398, '0,100,279,213,398', '汶上集镇牛双楼村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1594, 398, '0,100,279,213,398', '汶上集镇史庄村后赵庄', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1595, 398, '0,100,279,213,398', '汶上集镇西周行政村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1596, 398, '0,100,279,213,398', '汶上集镇杨搂村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1597, 398, '0,100,279,213,398', '张楼镇苗楼村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1598, 391, '0,100,279,213,391', '北城街道三官庙村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1599, 391, '0,100,279,213,391', '蔡堂镇后刘村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1600, 391, '0,100,279,213,391', '蔡堂镇黄菜园村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1601, 391, '0,100,279,213,391', '蔡堂镇黄楼村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1602, 391, '0,100,279,213,391', '蔡堂镇辛羊庙村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1603, 391, '0,100,279,213,391', '曹庄乡谢寨村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1604, 391, '0,100,279,213,391', '浮岗镇聂付庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:51:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1605, 391, '0,100,279,213,391', '高老家乡董花园村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:51:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1606, 391, '0,100,279,213,391', '高老家乡董邵楼村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:52:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1607, 391, '0,100,279,213,391', '高老家乡张武楼村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:52:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1608, 391, '0,100,279,213,391', '高韦庄镇高刘庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:52:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1609, 391, '0,100,279,213,391', '郭村镇大马楼村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:52:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1610, 391, '0,100,279,213,391', '郭村镇葛庙村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:52:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1611, 391, '0,100,279,213,391', '郭村镇刘陈庄村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:52:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1612, 391, '0,100,279,213,391', '郭村镇小李海村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:52:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1613, 391, '0,100,279,213,391', '郭村镇朱楼村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:53:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1614, 391, '0,100,279,213,391', '黄岗镇段楼村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:53:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1615, 391, '0,100,279,213,391', '黄岗镇刘老家村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:53:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1616, 391, '0,100,279,213,391', '黄岗镇赵楼村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:53:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1617, 391, '0,100,279,213,391', '黄岗镇赵庙村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:53:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1618, 391, '0,100,279,213,391', '莱河镇丁楼村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:54:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1619, 391, '0,100,279,213,391', '莱河镇梁庄村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:54:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1620, 391, '0,100,279,213,391', '莱河镇文庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:54:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1621, 391, '0,100,279,213,391', '李田楼镇陈蛮庄村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:54:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1622, 391, '0,100,279,213,391', '李田楼镇丁庙村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:54:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1623, 391, '0,100,279,213,391', '李田楼镇马庄村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:54:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1624, 391, '0,100,279,213,391', '李田楼镇邵庄村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:54:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1625, 391, '0,100,279,213,391', '李新庄镇崔堂村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:55:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1626, 391, '0,100,279,213,391', '李新庄镇李楼村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:55:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1627, 391, '0,100,279,213,391', '李新庄镇张楼村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:55:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1628, 391, '0,100,279,213,391', '龙王庙镇山东省龙鑫食品有限责任公司', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:55:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1629, 391, '0,100,279,213,391', '时楼镇八小庄村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:55:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1630, 391, '0,100,279,213,391', '时楼镇关黄庄村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:55:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1631, 391, '0,100,279,213,391', '时楼镇时门楼村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:55:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1632, 391, '0,100,279,213,391', '时楼镇时油坊村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:56:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1633, 391, '0,100,279,213,391', '时楼镇张堂村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:56:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1634, 391, '0,100,279,213,391', '谢集镇史楼村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:16:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1635, 391, '0,100,279,213,391', '谢集镇王板桥村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:16:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1636, 391, '0,100,279,213,391', '徐寨镇芳桂村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:16:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1637, 391, '0,100,279,213,391', '徐寨镇火神庙村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:17:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1638, 391, '0,100,279,213,391', '徐寨镇刘寨村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:17:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1640, 391, '0,100,279,213,391', '徐寨镇魏庄村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:17:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1641, 391, '0,100,279,213,391', '徐寨镇宗庄村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:18:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1642, 391, '0,100,279,213,391', '杨楼镇崇福集村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:18:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1643, 391, '0,100,279,213,391', '杨楼镇杨楼东村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:18:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1644, 391, '0,100,279,213,391', '杨楼镇杨楼西村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:18:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1645, 391, '0,100,279,213,391', '杨楼镇赵庵村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:18:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1646, 391, '0,100,279,213,391', '杨楼镇朱寨村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:18:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1647, 391, '0,100,279,213,391', '园艺街道山东护田鹰农业科技有限公司', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:19:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1648, 391, '0,100,279,213,391', '张集镇李楼村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:19:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1649, 391, '0,100,279,213,391', '张集镇张集村', 66, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:19:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1650, 391, '0,100,279,213,391', '终兴镇刘寨村', 67, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:19:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1651, 391, '0,100,279,213,391', '终兴镇吴集村', 68, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:19:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1652, 391, '0,100,279,213,391', '朱集镇姜双楼村', 69, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:19:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1653, 391, '0,100,279,213,391', '朱集镇门庙村', 70, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:19:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1654, 391, '0,100,279,213,391', '朱集镇吴六村', 71, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:20:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1655, 389, '0,100,279,213,389', '半堤镇半堤集村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:21:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1656, 389, '0,100,279,213,389', '半堤镇薛庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:21:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1657, 389, '0,100,279,213,389', '半堤镇张楼村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:21:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1658, 389, '0,100,279,213,389', '滨河街道刘楼村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:21:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1659, 389, '0,100,279,213,389', '滨河街道石庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:21:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1660, 389, '0,100,279,213,389', '杜堂镇戚姬寺村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:21:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1661, 389, '0,100,279,213,389', '杜堂镇宋楼村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:22:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1662, 389, '0,100,279,213,389', '仿山镇东李村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:22:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1663, 389, '0,100,279,213,389', '黄店镇高庙村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:22:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1664, 389, '0,100,279,213,389', '黄店镇刘庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:22:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1665, 389, '0,100,279,213,389', '黄店镇司庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:22:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1666, 389, '0,100,279,213,389', '黄店镇徐庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:22:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1667, 389, '0,100,279,213,389', '黄店镇闫楼村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:23:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1668, 389, '0,100,279,213,389', '黄店镇周海村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:23:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1669, 389, '0,100,279,213,389', '马集镇白菜王庄村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:23:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1670, 389, '0,100,279,213,389', '马集镇丁楼村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:23:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1671, 389, '0,100,279,213,389', '马集镇姚堂村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:23:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1672, 389, '0,100,279,213,389', '马集镇袁堂村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:23:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1673, 389, '0,100,279,213,389', '马集镇中沙海村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:23:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1674, 389, '0,100,279,213,389', '马集镇朱丁庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:24:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1675, 389, '0,100,279,213,389', '孟海镇车刘村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:24:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1676, 389, '0,100,279,213,389', '孟海镇马楼村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:24:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1677, 389, '0,100,279,213,389', '孟海镇许楼村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:24:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1678, 389, '0,100,279,213,389', '南王店镇刘桥村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:25:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1679, 389, '0,100,279,213,389', '冉固镇折桂集村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:25:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1680, 389, '0,100,279,213,389', '冉堌镇北陈楼村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:25:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1681, 389, '0,100,279,213,389', '冉堌镇洪寺刘村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:25:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1682, 389, '0,100,279,213,389', '冉堌镇聂庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:25:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1683, 389, '0,100,279,213,389', '冉堌镇庞楼村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:26:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1684, 389, '0,100,279,213,389', '冉堌镇王堂村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:26:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1685, 389, '0,100,279,213,389', '天中街道观堂行政村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:26:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1686, 389, '0,100,279,213,389', '天中街道魏庙村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:26:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1687, 389, '0,100,279,213,389', '天中街道郑庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:26:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1688, 389, '0,100,279,213,389', '张湾镇吕沟村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:26:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1689, 389, '0,100,279,213,389', '张湾镇湾子张村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:27:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1690, 396, '0,100,279,213,396', '城关街道李街村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1691, 396, '0,100,279,213,396', '东明集镇城子村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:28:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1692, 396, '0,100,279,213,396', '东明集镇李官营村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:28:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1693, 396, '0,100,279,213,396', '东明集镇刘庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:28:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1694, 396, '0,100,279,213,396', '东明集镇戎庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:28:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1695, 396, '0,100,279,213,396', '东明集镇顺河集村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:28:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1696, 396, '0,100,279,213,396', '焦园乡郭堂村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:28:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1697, 396, '0,100,279,213,396', '焦园乡胡寨村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:28:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1698, 396, '0,100,279,213,396', '焦园乡马厂村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:29:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1699, 396, '0,100,279,213,396', '刘楼镇邓王庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:29:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1700, 396, '0,100,279,213,396', '刘楼镇东程楼村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:29:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1701, 396, '0,100,279,213,396', '刘楼镇刘店村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:29:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1702, 396, '0,100,279,213,396', '刘楼镇姚庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:29:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1703, 396, '0,100,279,213,396', '陆圈镇耿黄宋村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:29:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1704, 396, '0,100,279,213,396', '陆圈镇集南头村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:30:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1705, 396, '0,100,279,213,396', '陆圈镇五霸岗南村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:30:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1706, 396, '0,100,279,213,396', '陆圈镇五霸岗西村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:30:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1707, 396, '0,100,279,213,396', '陆圈镇岳蒋庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:30:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1708, 396, '0,100,279,213,396', '马头镇陈寨村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:30:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1709, 396, '0,100,279,213,396', '马头镇夹堤王村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:31:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1710, 396, '0,100,279,213,396', '三春集镇大岗村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:31:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1711, 396, '0,100,279,213,396', '三春集镇东李寨村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:31:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1712, 396, '0,100,279,213,396', '三春集镇果园村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:31:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1713, 396, '0,100,279,213,396', '三春集镇孔寨村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:31:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1714, 396, '0,100,279,213,396', '三春集镇刘小川村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:31:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1715, 396, '0,100,279,213,396', '三春集镇徐寨村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:32:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1716, 396, '0,100,279,213,396', '沙窝镇李连庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:32:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1717, 396, '0,100,279,213,396', '沙窝镇马军营村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:32:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1718, 396, '0,100,279,213,396', '沙窝镇谢寨村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:32:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1719, 396, '0,100,279,213,396', '沙窝镇杨寨村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:32:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1720, 396, '0,100,279,213,396', '沙窝镇张寨村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:32:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1721, 396, '0,100,279,213,396', '武胜桥镇花屯村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:33:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1722, 396, '0,100,279,213,396', '武胜桥镇霍寨村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:33:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1723, 396, '0,100,279,213,396', '武胜桥镇乔良屯村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:33:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1724, 396, '0,100,279,213,396', '武胜桥镇四北城村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:33:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1725, 396, '0,100,279,213,396', '武胜桥镇玉皇庙村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:33:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1726, 396, '0,100,279,213,396', '小井镇景庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:34:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1727, 396, '0,100,279,213,396', '小井镇李岗村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:34:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1728, 396, '0,100,279,213,396', '小井镇里长营村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:34:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1729, 396, '0,100,279,213,396', '小井镇娄营村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:34:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1730, 396, '0,100,279,213,396', '小井镇裴子岩村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:34:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1731, 396, '0,100,279,213,396', '小井镇西五营村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:34:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1732, 396, '0,100,279,213,396', '渔沃街道曹满城村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:34:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1733, 396, '0,100,279,213,396', '渔沃街道毛营村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:35:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1734, 396, '0,100,279,213,396', '渔沃街道四柳树村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1736, 396, '0,100,279,213,396', '渔沃街道于洲集村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:35:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1737, 393, '0,100,279,213,393', '大谢集真武东村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:36:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1738, 393, '0,100,279,213,393', '大义镇葛店村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:36:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1739, 393, '0,100,279,213,393', '大义镇王庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:37:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1740, 393, '0,100,279,213,393', '董官屯镇东焦村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:37:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1741, 393, '0,100,279,213,393', '董官屯镇会堂村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:37:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1742, 393, '0,100,279,213,393', '独山镇李马村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:37:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1743, 393, '0,100,279,213,393', '独山镇魏集村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:37:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1744, 393, '0,100,279,213,393', '独山镇烟王村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:37:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1745, 393, '0,100,279,213,393', '核桃园镇商庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:38:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1746, 393, '0,100,279,213,393', '麒麟镇姚桥村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:38:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1747, 393, '0,100,279,213,393', '太平镇孔庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:38:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1748, 393, '0,100,279,213,393', '陶庙镇水寺张村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:38:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1749, 393, '0,100,279,213,393', '陶庙镇陶楼村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:38:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1750, 393, '0,100,279,213,393', '陶庙镇田庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:38:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1751, 393, '0,100,279,213,393', '田桥镇东祝村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:39:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1752, 393, '0,100,279,213,393', '田桥镇段庄村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:39:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1753, 393, '0,100,279,213,393', '田庄镇北隅村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:39:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1754, 393, '0,100,279,213,393', '田庄镇佃户屯村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:39:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1755, 393, '0,100,279,213,393', '田庄镇公陈庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:39:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1756, 393, '0,100,279,213,393', '田庄镇官厂村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:39:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1757, 393, '0,100,279,213,393', '田庄镇南隅村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:40:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1758, 393, '0,100,279,213,393', '田庄镇田庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:40:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1759, 393, '0,100,279,213,393', '田庄镇小宁庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:40:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1760, 393, '0,100,279,213,393', '田庄镇义和屯村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:40:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1761, 393, '0,100,279,213,393', '田庄镇永兴村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:40:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1762, 393, '0,100,279,213,393', '万丰镇毛胡同村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:40:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1763, 393, '0,100,279,213,393', '万丰镇许宋庄村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:41:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1764, 393, '0,100,279,213,393', '营里镇冯楼村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:41:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1765, 393, '0,100,279,213,393', '营里镇田庙村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:41:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1766, 393, '0,100,279,213,393', '营里镇田仝村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:41:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1767, 393, '0,100,279,213,393', '营里镇夏官屯村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:41:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1768, 393, '0,100,279,213,393', '营里镇姚庄村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1769, 393, '0,100,279,213,393', '永丰街道东赵庄村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:42:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1770, 393, '0,100,279,213,393', '永丰街道南朱行政村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:42:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1771, 393, '0,100,279,213,393', '永丰街道前赵官屯村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:42:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1772, 393, '0,100,279,213,393', '章缝镇路庄村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:42:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1774, 399, '0,100,279,213,399', '董口镇崔泗庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:59:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1775, 399, '0,100,279,213,399', '董口镇后园村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:59:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1776, 399, '0,100,279,213,399', '凤凰镇东侯楼村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:00:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1777, 399, '0,100,279,213,399', '凤凰镇两半张村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:04:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1778, 399, '0,100,279,213,399', '凤凰镇西侯楼村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:05:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1779, 399, '0,100,279,213,399', '红船镇苗庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:05:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1780, 312, '0,100,279,208,312', '河山镇河山店新村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:05:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1781, 399, '0,100,279,213,399', '旧城镇大李庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:05:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1782, 312, '0,100,279,208,312', '后村镇曲河南岭村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:05:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1783, 399, '0,100,279,213,399', '旧城镇东刘村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:05:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1784, 312, '0,100,279,208,312', '后村镇后马庄二村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:05:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1785, 399, '0,100,279,213,399', '旧城镇宋楼村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:06:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1786, 312, '0,100,279,208,312', '两城街道办事处两城五村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:06:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1787, 312, '0,100,279,208,312', '秦楼街道办事处秦家楼村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:06:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1788, 399, '0,100,279,213,399', '李进士堂镇田楼村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:06:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1789, 312, '0,100,279,208,312', '日照街道办事处厉家顶子村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:06:54', '', NULL);
INSERT INTO `sys_dept` VALUES (1790, 312, '0,100,279,208,312', '日照街道办事处东将帅沟村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:07:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1791, 399, '0,100,279,213,399', '李进士堂镇小辛庄', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:07:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1792, 399, '0,100,279,213,399', '李进士堂镇许堂村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:11:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1793, 399, '0,100,279,213,399', '临濮镇大刘屯村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:11:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1794, 399, '0,100,279,213,399', '彭楼镇什李村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:12:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1795, 399, '0,100,279,213,399', '什集镇李楼村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:12:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1796, 399, '0,100,279,213,399', '什集镇吴店村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:12:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1797, 399, '0,100,279,213,399', '闫什镇贾庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:12:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1798, 399, '0,100,279,213,399', '闫什镇苏集村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:12:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1799, 399, '0,100,279,213,399', '阎什镇杨庄村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:12:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1800, 399, '0,100,279,213,399', '引马镇范庄村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:13:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1801, 399, '0,100,279,213,399', '引马镇张班庄村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:13:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1802, 399, '0,100,279,213,399', '郑营镇西街村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:13:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1803, 399, '0,100,279,213,399', '左营镇石庙村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:13:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1804, 399, '0,100,279,213,399', '左营镇王户庄村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:14:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1805, 213, '0,100,279,213', '鲁西新区', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:14:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1806, 1805, '0,100,279,213,1805', '马岭岗镇高银村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:15:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1807, 1805, '0,100,279,213,1805', '马岭岗镇山东和美鲜果有限责任公司', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:15:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1808, 388, '0,100,279,213,388', '安兴镇洪庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:15:38', '', NULL);
INSERT INTO `sys_dept` VALUES (1809, 388, '0,100,279,213,388', '安兴镇姜庄村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:15:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1810, 388, '0,100,279,213,388', '安兴镇西桥村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:15:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1811, 388, '0,100,279,213,388', '大黄集镇徐庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:16:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1812, 388, '0,100,279,213,388', '都司镇刘庄行政村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:16:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1813, 388, '0,100,279,213,388', '都司镇尹楼行政村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:16:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1814, 388, '0,100,279,213,388', '都司镇周楼行政村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:16:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1815, 388, '0,100,279,213,388', '高庄镇北头行政村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:16:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1816, 388, '0,100,279,213,388', '高庄镇桑堂行政村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:16:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1817, 388, '0,100,279,213,388', '高庄镇天庙行政村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:17:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1818, 388, '0,100,279,213,388', '高庄镇田桥行政村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:17:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1819, 388, '0,100,279,213,388', '高庄镇周庄行政村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:17:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1820, 388, '0,100,279,213,388', '何楼街道月光社区', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:17:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1821, 388, '0,100,279,213,388', '皇镇街道刘平坊村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:17:47', '', NULL);
INSERT INTO `sys_dept` VALUES (1822, 388, '0,100,279,213,388', '李村镇东李庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:17:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1823, 388, '0,100,279,213,388', '李村镇西李庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:18:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1824, 388, '0,100,279,213,388', '李村镇油楼村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:18:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1825, 388, '0,100,279,213,388', '牡丹街道大高桥行政村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:18:27', '', NULL);
INSERT INTO `sys_dept` VALUES (1826, 388, '0,100,279,213,388', '牡丹街道丁堂行政村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:18:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1827, 388, '0,100,279,213,388', '牡丹街道菊香社区', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:22:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1828, 388, '0,100,279,213,388', '牡丹街道李洪周村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:23:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1829, 388, '0,100,279,213,388', '牡丹街道伊庙社区', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:23:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1830, 388, '0,100,279,213,388', '沙土镇大刘庄社区', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:23:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1831, 388, '0,100,279,213,388', '沙土镇东北村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:23:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1832, 388, '0,100,279,213,388', '沙土镇芦村集村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:23:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1833, 388, '0,100,279,213,388', '沙土镇吕庄社区', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:24:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1834, 388, '0,100,279,213,388', '沙土镇穆解庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:24:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1835, 388, '0,100,279,213,388', '沙土镇穆庄村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:24:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1836, 388, '0,100,279,213,388', '沙土镇前付庄村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:24:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1837, 388, '0,100,279,213,388', '沙土镇王尹楼村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:24:46', '', NULL);
INSERT INTO `sys_dept` VALUES (1838, 388, '0,100,279,213,388', '沙土镇魏楼村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:24:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1839, 388, '0,100,279,213,388', '沙土镇辛庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:25:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1840, 388, '0,100,279,213,388', '沙土镇徐桥村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:25:20', '', NULL);
INSERT INTO `sys_dept` VALUES (1841, 388, '0,100,279,213,388', '沙土镇张堂村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:25:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1842, 388, '0,100,279,213,388', '王浩屯镇樊寺行政村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:25:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1843, 388, '0,100,279,213,388', '王浩屯镇观音王村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:25:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1844, 388, '0,100,279,213,388', '王浩屯镇后王庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:26:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1845, 388, '0,100,279,213,388', '王浩屯镇贾寨行政村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:26:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1846, 388, '0,100,279,213,388', '王浩屯镇龙王庙村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:26:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1847, 388, '0,100,279,213,388', '王浩屯镇王楼村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:26:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1848, 388, '0,100,279,213,388', '王浩屯镇王善庄行政村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:26:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1849, 388, '0,100,279,213,388', '王浩屯镇张庄行政村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:26:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1850, 388, '0,100,279,213,388', '吴店镇后孙庄村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:27:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1851, 388, '0,100,279,213,388', '吴店镇朱楼村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:27:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1852, 394, '0,100,279,213,394', '陈坡乡侯潭村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:27:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1853, 394, '0,100,279,213,394', '陈坡乡马楼村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:27:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1854, 394, '0,100,279,213,394', '程屯镇曹垓村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:28:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1855, 394, '0,100,279,213,394', '丁里长街道鹿庄科村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:28:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1856, 394, '0,100,279,213,394', '丁里长街道前营村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:28:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1857, 394, '0,100,279,213,394', '丁里长街道张庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:28:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1858, 394, '0,100,279,213,394', '侯咽集镇何堂村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:28:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1859, 394, '0,100,279,213,394', '侯咽集镇侯集村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:28:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1860, 394, '0,100,279,213,394', '侯咽集镇徐桥村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:29:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1861, 394, '0,100,279,213,394', '侯咽集镇枣杭村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:29:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1862, 394, '0,100,279,213,394', '侯咽集镇子房墓村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:29:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1863, 394, '0,100,279,213,394', '黄安镇曹庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:29:39', '', NULL);
INSERT INTO `sys_dept` VALUES (1864, 394, '0,100,279,213,394', '黄安镇黄南村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:30:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1865, 394, '0,100,279,213,394', '黄安镇桑庄村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:30:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1866, 394, '0,100,279,213,394', '黄安镇邵垓村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:30:24', '', NULL);
INSERT INTO `sys_dept` VALUES (1867, 394, '0,100,279,213,394', '黄集镇黄集村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:30:35', '', NULL);
INSERT INTO `sys_dept` VALUES (1868, 394, '0,100,279,213,394', '黄集镇良东村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:30:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1869, 394, '0,100,279,213,394', '黄集镇陆胡同村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:30:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1870, 394, '0,100,279,213,394', '黄集镇伟庄村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:31:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1871, 394, '0,100,279,213,394', '黄泥冈镇陈楼村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1872, 394, '0,100,279,213,394', '黄泥冈镇刁庄村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:31:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1873, 394, '0,100,279,213,394', '黄泥冈镇东杨村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:31:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1874, 394, '0,100,279,213,394', '黄泥冈镇孙垓村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:32:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1875, 394, '0,100,279,213,394', '黄泥冈镇文桥集村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:32:18', '', NULL);
INSERT INTO `sys_dept` VALUES (1876, 394, '0,100,279,213,394', '李集镇刘集村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:32:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1877, 394, '0,100,279,213,394', '潘渡镇冯店村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:32:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1878, 394, '0,100,279,213,394', '潘渡镇李杭村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:32:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1879, 394, '0,100,279,213,394', '潘渡镇仝老家村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:33:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1880, 394, '0,100,279,213,394', '水堡乡赵北村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:33:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1881, 394, '0,100,279,213,394', '随官屯镇彭店村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:33:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1882, 394, '0,100,279,213,394', '随官屯镇三合西村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:34:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1883, 394, '0,100,279,213,394', '随官屯镇西屯村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:34:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1884, 394, '0,100,279,213,394', '随官屯镇于官屯村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:34:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1885, 394, '0,100,279,213,394', '唐塔街道三义村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:34:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1886, 394, '0,100,279,213,394', '唐塔街道团柳树村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:34:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1887, 394, '0,100,279,213,394', '杨庄集镇路楼村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:35:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1888, 394, '0,100,279,213,394', '杨庄集镇前刘庄村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:35:10', '', NULL);
INSERT INTO `sys_dept` VALUES (1889, 394, '0,100,279,213,394', '杨庄集镇西赵村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:35:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1890, 394, '0,100,279,213,394', '玉皇庙镇曾庄村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:35:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1891, 394, '0,100,279,213,394', '玉皇庙镇俄厂村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:35:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1892, 394, '0,100,279,213,394', '玉皇庙镇葛庄村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:36:04', '', NULL);
INSERT INTO `sys_dept` VALUES (1893, 394, '0,100,279,213,394', '玉皇庙镇梁集村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:36:16', 'admin', '2024-01-22 19:12:58');
INSERT INTO `sys_dept` VALUES (1894, 394, '0,100,279,213,394', '玉皇庙镇玉皇庙村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:36:26', 'admin', '2024-01-22 19:15:13');
INSERT INTO `sys_dept` VALUES (1895, 394, '0,100,279,213,394', '玉皇庙镇张胡同村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:36:37', 'admin', '2024-01-22 19:15:36');
INSERT INTO `sys_dept` VALUES (1896, 394, '0,100,279,213,394', '玉皇庙镇祝桥村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:37:00', 'admin', '2024-01-22 19:15:46');
INSERT INTO `sys_dept` VALUES (1897, 394, '0,100,279,213,394', '张鲁集镇鲁王集村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:37:12', 'admin', '2024-01-22 19:15:58');
INSERT INTO `sys_dept` VALUES (1898, 394, '0,100,279,213,394', '张鲁集镇三李庄村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:37:23', 'admin', '2024-01-22 19:16:19');
INSERT INTO `sys_dept` VALUES (1899, 394, '0,100,279,213,394', '张鲁集镇四合村', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:37:34', 'admin', '2024-01-22 19:16:32');
INSERT INTO `sys_dept` VALUES (1900, 394, '0,100,279,213,394', '张营街道吴楼村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:37:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1901, 390, '0,100,279,213,390', '侯集镇三联村', 89, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:38:50', '', NULL);
INSERT INTO `sys_dept` VALUES (1902, 390, '0,100,279,213,390', '普连集镇武平楼村', 90, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:39:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1903, 390, '0,100,279,213,390', '魏湾镇李岔楼村', 91, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:39:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1904, 390, '0,100,279,213,390', '魏湾镇杨楼村', 92, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:39:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1905, 398, '0,100,279,213,398', '大田集镇东许庄村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:40:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1906, 398, '0,100,279,213,398', '永昌街道袁庄村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:40:29', '', NULL);
INSERT INTO `sys_dept` VALUES (1907, 391, '0,100,279,213,391', '龙王庙镇魏溜村', 72, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:40:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1908, 389, '0,100,279,213,389', '杜堂镇杜堂村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:41:02', '', NULL);
INSERT INTO `sys_dept` VALUES (1909, 389, '0,100,279,213,389', '黄店镇前陈村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:41:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1910, 389, '0,100,279,213,389', '孟海镇彭庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:41:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1911, 389, '0,100,279,213,389', '天中街道西王楼村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:41:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1912, 396, '0,100,279,213,396', '东明集镇胡屯村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:41:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1913, 396, '0,100,279,213,396', '三春集镇白庄村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:42:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1914, 396, '0,100,279,213,396', '三春集镇拐王村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:42:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1915, 393, '0,100,279,213,393', '独山镇于庄村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:42:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1916, 393, '0,100,279,213,393', '核桃园镇曾庄村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:43:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1917, 393, '0,100,279,213,393', '陶庙镇后店子村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:43:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1918, 393, '0,100,279,213,393', '万丰镇前张庄村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:43:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1919, 399, '0,100,279,213,399', '大埝镇许黄店村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:43:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1920, 399, '0,100,279,213,399', '董口镇董口村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:43:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1921, 399, '0,100,279,213,399', '箕山镇后寨村委会', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:44:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1922, 1805, '0,100,279,213,1805', '滨河街道石庄行政村刘楼村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:44:19', '', NULL);
INSERT INTO `sys_dept` VALUES (1923, 1805, '0,100,279,213,1805', '马岭岗镇后刘庄村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:44:31', '', NULL);
INSERT INTO `sys_dept` VALUES (1924, 388, '0,100,279,213,388', '胡集镇老官店村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:44:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1925, 388, '0,100,279,213,388', '皇镇街道张连俄村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:45:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1926, 388, '0,100,279,213,388', '万福街道丁庄村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:45:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1927, 394, '0,100,279,213,394', '陈坡乡黎桥村', 66, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:45:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1928, 394, '0,100,279,213,394', '程屯镇唐庙村', 67, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:45:37', '', NULL);
INSERT INTO `sys_dept` VALUES (1929, 394, '0,100,279,213,394', '丁里长街道丁北村', 68, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:45:49', '', NULL);
INSERT INTO `sys_dept` VALUES (1930, 394, '0,100,279,213,394', '黄集镇任楼村', 69, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:46:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1931, 394, '0,100,279,213,394', '李集镇刘浩村', 70, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:46:11', '', NULL);
INSERT INTO `sys_dept` VALUES (1932, 394, '0,100,279,213,394', '南赵楼镇王垓村', 71, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:46:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1933, 394, '0,100,279,213,394', '双桥镇王营村', 72, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:46:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1934, 394, '0,100,279,213,394', '双桥镇朱方庄村', 73, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:46:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1935, 394, '0,100,279,213,394', '唐塔街道八里庄村', 74, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:46:55', '', NULL);
INSERT INTO `sys_dept` VALUES (1936, 394, '0,100,279,213,394', '杨庄集镇南何村', 75, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:47:07', '', NULL);
INSERT INTO `sys_dept` VALUES (1937, 226, '0,100,279,102,226', '段泊岚镇毛家岭村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:49:16', '', NULL);
INSERT INTO `sys_dept` VALUES (1938, 226, '0,100,279,102,226', '段泊岚镇刘家庄村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:49:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1939, 226, '0,100,279,102,226', '蓝村街道办事处永安村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:49:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1940, 226, '0,100,279,102,226', '移风店镇大坝新村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:50:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1941, 226, '0,100,279,102,226', '移风店镇河流新村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:50:14', '', NULL);
INSERT INTO `sys_dept` VALUES (1943, 228, '0,100,279,102,228', '胶东街道办事处大寨新村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:51:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1944, 228, '0,100,279,102,228', '里岔镇乔村新村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:51:42', '', NULL);
INSERT INTO `sys_dept` VALUES (1945, 230, '0,100,279,102,230', '店埠镇孙洲庄社区村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:51:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1946, 230, '0,100,279,102,230', '南墅镇北墅社区村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:52:05', '', NULL);
INSERT INTO `sys_dept` VALUES (1947, 229, '0,100,279,102,229', '大泽山镇乐南村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:52:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1948, 229, '0,100,279,102,229', '旧店镇陆台村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:52:40', '', NULL);
INSERT INTO `sys_dept` VALUES (1949, 229, '0,100,279,102,229', '蓼兰镇王家新村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:52:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1950, 229, '0,100,279,102,229', '蓼兰镇蓼兰村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:53:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1951, 229, '0,100,279,102,229', '南村镇利民村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:53:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1952, 229, '0,100,279,102,229', '仁兆镇河里套一村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:53:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1953, 229, '0,100,279,102,229', '仁兆镇文庙村村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:53:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1954, 229, '0,100,279,102,229', '仁兆镇粮埠村村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:53:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1955, 229, '0,100,279,102,229', '仁兆镇冷戈庄新村村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:54:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1956, 229, '0,100,279,102,229', '田庄镇刘家庄村村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:54:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1957, 229, '0,100,279,102,229', '田庄镇吉安村村民委员会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:54:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1958, 229, '0,100,279,102,229', '田庄镇田园村村民委员会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:54:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1959, 229, '0,100,279,102,229', '同和街道办事处秀水村村民委员会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:54:59', '', NULL);
INSERT INTO `sys_dept` VALUES (1960, 222, '0,100,279,102,222', '宝山镇罗戈庄村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:55:15', '', NULL);
INSERT INTO `sys_dept` VALUES (1961, 222, '0,100,279,102,222', '宝山镇七宝山村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:55:26', '', NULL);
INSERT INTO `sys_dept` VALUES (1962, 222, '0,100,279,102,222', '大村镇茂甲村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:55:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1963, 222, '0,100,279,102,222', '王台街道漕汶村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:55:48', '', NULL);
INSERT INTO `sys_dept` VALUES (1964, 222, '0,100,279,102,222', '张家楼街道草泊河村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:56:01', '', NULL);
INSERT INTO `sys_dept` VALUES (1965, 222, '0,100,279,102,222', '张家楼街道纪家店子村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:56:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1966, 222, '0,100,279,102,222', '张家楼街道松山村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:56:33', '', NULL);
INSERT INTO `sys_dept` VALUES (1967, 222, '0,100,279,102,222', '张家楼街道桃源山村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:56:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1968, 226, '0,100,279,102,226', '潮海街道横河村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:56:58', '', NULL);
INSERT INTO `sys_dept` VALUES (1969, 226, '0,100,279,102,226', '段泊岚镇程戈庄村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:57:09', '', NULL);
INSERT INTO `sys_dept` VALUES (1970, 226, '0,100,279,102,226', '段泊岚镇段泊岚村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:57:21', '', NULL);
INSERT INTO `sys_dept` VALUES (1971, 226, '0,100,279,102,226', '段泊岚镇孟戈庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:57:32', '', NULL);
INSERT INTO `sys_dept` VALUES (1972, 226, '0,100,279,102,226', '段泊岚镇天宫院村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:57:43', '', NULL);
INSERT INTO `sys_dept` VALUES (1973, 226, '0,100,279,102,226', '段泊岚镇瓦戈庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:58:00', '', NULL);
INSERT INTO `sys_dept` VALUES (1974, 226, '0,100,279,102,226', '段泊岚镇五沽河村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:58:12', '', NULL);
INSERT INTO `sys_dept` VALUES (1975, 226, '0,100,279,102,226', '蓝村镇王家屋子村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:58:23', '', NULL);
INSERT INTO `sys_dept` VALUES (1976, 226, '0,100,279,102,226', '田横镇丁字湾村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:58:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1977, 226, '0,100,279,102,226', '通济新经济区华耀村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:58:45', '', NULL);
INSERT INTO `sys_dept` VALUES (1978, 226, '0,100,279,102,226', '温泉街道北小峨村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (1979, 226, '0,100,279,102,226', '移风店镇上泊新村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:59:06', '', NULL);
INSERT INTO `sys_dept` VALUES (1980, 228, '0,100,279,102,228', '胶莱街道大高新村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:59:22', '', NULL);
INSERT INTO `sys_dept` VALUES (1981, 228, '0,100,279,102,228', '胶莱街道陆家村新村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:59:34', '', NULL);
INSERT INTO `sys_dept` VALUES (1982, 228, '0,100,279,102,228', '胶莱街道南店子村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:59:44', '', NULL);
INSERT INTO `sys_dept` VALUES (1983, 228, '0,100,279,102,228', '胶莱街道沙梁新村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 00:59:57', '', NULL);
INSERT INTO `sys_dept` VALUES (1984, 228, '0,100,279,102,228', '胶西街道鲁戈庄新村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:00:08', '', NULL);
INSERT INTO `sys_dept` VALUES (1985, 228, '0,100,279,102,228', '胶西街道墨河新村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:01:53', '', NULL);
INSERT INTO `sys_dept` VALUES (1986, 228, '0,100,279,102,228', '胶西街道小行新村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:02:28', '', NULL);
INSERT INTO `sys_dept` VALUES (1987, 228, '0,100,279,102,228', '九龙街道福海新村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:02:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1988, 228, '0,100,279,102,228', '李哥庄镇辛疃新村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:02:51', '', NULL);
INSERT INTO `sys_dept` VALUES (1989, 228, '0,100,279,102,228', '里岔镇里岔新村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:03:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1990, 228, '0,100,279,102,228', '里岔镇良乡新村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:03:13', '', NULL);
INSERT INTO `sys_dept` VALUES (1991, 228, '0,100,279,102,228', '里岔镇朱戈新村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:03:25', '', NULL);
INSERT INTO `sys_dept` VALUES (1992, 228, '0,100,279,102,228', '洋河镇宾贤村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:03:36', '', NULL);
INSERT INTO `sys_dept` VALUES (1993, 230, '0,100,279,102,230', '店埠镇后屯社区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:04:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1994, 230, '0,100,279,102,230', '店埠镇庄头社区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:04:17', '', NULL);
INSERT INTO `sys_dept` VALUES (1995, 230, '0,100,279,102,230', '沽河街道牛溪埠社区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:04:30', '', NULL);
INSERT INTO `sys_dept` VALUES (1996, 230, '0,100,279,102,230', '河头店镇南岚村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:04:41', '', NULL);
INSERT INTO `sys_dept` VALUES (1997, 230, '0,100,279,102,230', '姜山镇保驾山社区', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:04:52', '', NULL);
INSERT INTO `sys_dept` VALUES (1998, 230, '0,100,279,102,230', '姜山镇绕岭社区', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:05:03', '', NULL);
INSERT INTO `sys_dept` VALUES (1999, 230, '0,100,279,102,230', '马连庄镇岚桑村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:05:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2000, 230, '0,100,279,102,230', '南墅镇河南村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:05:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2001, 230, '0,100,279,102,230', '南墅镇南墅社区村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:05:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2002, 230, '0,100,279,102,230', '日庄镇青岛丰瑞致达农民专业合作社', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:05:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2003, 230, '0,100,279,102,230', '水集街道茂芝场村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:06:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2004, 230, '0,100,279,102,230', '夏格庄镇岭东村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:06:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2005, 230, '0,100,279,102,230', '院上镇小河子村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:06:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2006, 223, '0,100,279,102,223', '北宅街道东乌衣巷村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:06:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2007, 223, '0,100,279,102,223', '王哥庄街道大桥村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:06:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2008, 223, '0,100,279,102,223', '王哥庄街道何家村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:07:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2009, 223, '0,100,279,102,223', '王哥庄街道晓望村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:07:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2012, 229, '0,100,279,102,229', '崔家集镇塔西坡村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:08:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2013, 229, '0,100,279,102,229', '崔家集镇阳照村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:08:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2014, 229, '0,100,279,102,229', '崔家集镇友谊新村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:08:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2015, 229, '0,100,279,102,229', '古岘镇二里村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:09:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2016, 229, '0,100,279,102,229', '古岘镇姑水谣村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:09:11', '', NULL);
INSERT INTO `sys_dept` VALUES (2017, 229, '0,100,279,102,229', '旧店镇大田村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:09:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2018, 229, '0,100,279,102,229', '李园街道唐田新村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:09:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2019, 229, '0,100,279,102,229', '李园街道西石河村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:09:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2020, 229, '0,100,279,102,229', '明村镇北郭村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:09:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2021, 229, '0,100,279,102,229', '明村镇郭村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:10:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2022, 229, '0,100,279,102,229', '明村镇明村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:10:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2023, 229, '0,100,279,102,229', '明村镇前楼村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:10:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2024, 229, '0,100,279,102,229', '明村镇兴明居委会', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:10:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2025, 229, '0,100,279,102,229', '南村镇沽河社区居委会', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:10:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2026, 229, '0,100,279,102,229', '南村镇庞戈庄新村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:11:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2027, 229, '0,100,279,102,229', '南村镇清河新村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:11:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2028, 229, '0,100,279,102,229', '仁兆镇城前村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:11:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2029, 229, '0,100,279,102,229', '田庄镇新埠村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:11:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2030, 229, '0,100,279,102,229', '田庄镇泽河东村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:12:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2031, 229, '0,100,279,102,229', '同和街道泽河南村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:12:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2032, 229, '0,100,279,102,229', '新河镇陈埠李家村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:12:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2033, 229, '0,100,279,102,229', '新河镇城子府村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:12:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2034, 229, '0,100,279,102,229', '新河镇红庙新村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:12:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2035, 229, '0,100,279,102,229', '新河镇幸福新村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:13:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2036, 229, '0,100,279,102,229', '新河镇镇海新村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:13:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2037, 229, '0,100,279,102,229', '云山镇洪山街村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:13:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2038, 229, '0,100,279,102,229', '云山镇铁岭庄村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:13:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2039, 229, '0,100,279,102,229', '云山镇云泽村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:13:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2040, 222, '0,100,279,102,222', '大场镇王家屯村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:14:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2041, 222, '0,100,279,102,222', '海青镇后显沟村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:14:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2042, 222, '0,100,279,102,222', '灵珠山街道刘家庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:14:39', 'admin', '2024-01-22 05:27:25');
INSERT INTO `sys_dept` VALUES (2043, 222, '0,100,279,102,222', '辛安街道港头陈家村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:14:52', 'admin', '2024-01-22 05:27:36');
INSERT INTO `sys_dept` VALUES (2044, 226, '0,100,279,102,226', '大信镇姜家村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:15:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2045, 226, '0,100,279,102,226', '灵山街道洽泊村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:15:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2046, 228, '0,100,279,102,228', '胶东街道小姜戈庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:15:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2047, 228, '0,100,279,102,228', '胶莱镇五里堠村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:15:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2048, 230, '0,100,279,102,230', '河头店镇西钟芝村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:15:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2049, 230, '0,100,279,102,230', '青岛鲁宏农业集团有限公司', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:16:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2050, 230, '0,100,279,102,230', '万好千村现代农业发展有限公司', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:16:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2051, 230, '0,100,279,102,230', '院上镇李家寨村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:16:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2052, 229, '0,100,279,102,229', '新龙种苗有限公司', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:16:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2053, 229, '0,100,279,102,229', '蓼兰镇湾东村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:17:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2054, 229, '0,100,279,102,229', '仁兆镇五道口村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 01:17:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2055, 297, '0,100,279,205,297', '黄屯街道办事处二十里铺村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:57:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2056, 297, '0,100,279,205,297', '接庄街道办事处东贾村村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:57:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2057, 293, '0,100,279,205,293', '黄垓镇黄垓西村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:57:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2058, 293, '0,100,279,205,293', '金屯镇王屯村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:57:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2059, 293, '0,100,279,205,293', '梁宝寺镇运河花苑新村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:57:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2060, 293, '0,100,279,205,293', '梁宝寺镇武寨村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:58:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2061, 312, '0,100,279,208,312', '日照街道办事处小莲村村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:58:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2062, 293, '0,100,279,205,293', '满硐镇郗鉴新村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:58:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2063, 293, '0,100,279,205,293', '疃里镇吴马井村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:58:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2064, 293, '0,100,279,205,293', '万张街道办事处梁海村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:58:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2065, 293, '0,100,279,205,293', '卧龙山街道办事处振兴村村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:59:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2066, 293, '0,100,279,205,293', '纸坊镇程村村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:59:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2067, 293, '0,100,279,205,293', '纸坊镇西焦村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:59:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2068, 292, '0,100,279,205,292', '卜集镇李情村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:59:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2069, 292, '0,100,279,205,292', '卜集镇周集村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:59:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2070, 292, '0,100,279,205,292', '胡集镇黄西村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:59:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2071, 292, '0,100,279,205,292', '鸡黍镇焦杭村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 20:59:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2072, 292, '0,100,279,205,292', '霄云镇石庄村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:00:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2073, 292, '0,100,279,205,292', '霄云镇四知新村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:00:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2074, 292, '0,100,279,205,292', '羊山镇杜楼村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:00:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2075, 292, '0,100,279,205,292', '鱼山街道办事处和谐村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:00:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2076, 296, '0,100,279,205,296', '馆驿镇红庙村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:00:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2077, 296, '0,100,279,205,296', '梁山街道办事处鱼王庄村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:00:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2078, 296, '0,100,279,205,296', '拳铺镇黄庄村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2079, 296, '0,100,279,205,296', '拳铺镇方庄村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2080, 312, '0,100,279,208,312', '日照街道办事处大石桥村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2081, 296, '0,100,279,205,296', '寿张集镇戚楼村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2082, 296, '0,100,279,205,296', '小安山镇运东新村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2083, 312, '0,100,279,208,312', '三庄镇邱家庄村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2084, 296, '0,100,279,205,296', '杨营镇站前新村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2085, 315, '0,100,279,208,315', '果庄镇茶城村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2086, 296, '0,100,279,205,296', '杨营镇李阁村村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2087, 315, '0,100,279,208,315', '果庄镇果庄村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:01:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2088, 298, '0,100,279,205,298', '防山镇南河套村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2089, 315, '0,100,279,208,315', '刘官庄镇大官庄新村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2090, 298, '0,100,279,205,298', '防山镇启圣村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2091, 298, '0,100,279,205,298', '陵城镇蓝家庄村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2092, 315, '0,100,279,208,315', '刘官庄镇营墩新村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2093, 298, '0,100,279,205,298', '陵城镇杨屯新村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2094, 298, '0,100,279,205,298', '尼山镇桑庄村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2095, 315, '0,100,279,208,315', '龙山镇高疃新村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2096, 298, '0,100,279,205,298', '时庄街道办事处李官庄村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:02:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2097, 315, '0,100,279,208,315', '桑园镇卢家河', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2098, 315, '0,100,279,208,315', '小店镇横山新村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2099, 315, '0,100,279,208,315', '阎庄街道办事处北林村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2100, 298, '0,100,279,205,298', '王庄镇陶西村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2101, 315, '0,100,279,208,315', '招贤镇普安新村村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2102, 298, '0,100,279,205,298', '王庄镇纸坊村村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2103, 315, '0,100,279,208,315', '小店镇吕西村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2104, 298, '0,100,279,205,298', '王庄镇孔村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2105, 313, '0,100,279,208,313', '安东卫街道办事处仁家村居民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:03:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2106, 313, '0,100,279,208,313', '碑廓镇西杨家庄子村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:04:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2107, 313, '0,100,279,208,313', '碑廓镇马家湖', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:04:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2108, 313, '0,100,279,208,313', '巨峰镇韩家沟村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:04:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2109, 314, '0,100,279,208,314', '洪凝街道办事处大郭村居民委员会', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2110, 314, '0,100,279,208,314', '于里镇北店村村民委员会', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2111, 278, '0,100,279,205,278', '南张街道办事处潘王乔村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2112, 278, '0,100,279,205,278', '石桥镇仙庄村村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2113, 312, '0,100,279,208,312', '后村镇西陈家沟村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2114, 278, '0,100,279,205,278', '唐口街道办事处吴村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2115, 278, '0,100,279,205,278', '喻屯镇张桥村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2116, 278, '0,100,279,205,278', '喻屯镇韩庄村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2117, 312, '0,100,279,208,312', '南湖镇于家北沟村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2118, 295, '0,100,279,205,295', '济河街道办事处东高村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:05:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2119, 295, '0,100,279,205,295', '苗馆镇苗馆村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:06:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2120, 295, '0,100,279,205,295', '中册镇中册二村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:06:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2121, 312, '0,100,279,208,312', '卧龙山街道前沙沟村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:06:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2122, 312, '0,100,279,208,312', '卧龙山街道若家村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:06:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2123, 312, '0,100,279,208,312', '西湖镇董家岭村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:06:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2124, 312, '0,100,279,208,312', '西湖镇凤凰新村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:07:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2125, 290, '0,100,279,205,290', '欢城镇夏刘庄村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:07:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2126, 290, '0,100,279,205,290', '马坡镇马西村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:07:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2127, 208, '0,100,279,208', '高新区', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:07:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2128, 2127, '0,100,279,208,2127', '河山镇刘家顺村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:07:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2129, 290, '0,100,279,205,290', '南阳镇关王庙村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:07:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2130, 316, '0,100,279,208,316', '奎山街道夹仓二村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:08:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2131, 315, '0,100,279,208,315', '店子集街道围子社区居委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:08:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2132, 315, '0,100,279,208,315', '浮来山街道官庄新村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:08:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2133, 315, '0,100,279,208,315', '陵阳街道集西头村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:08:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2134, 315, '0,100,279,208,315', '龙山镇东花崖头村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:08:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2135, 290, '0,100,279,205,290', '昭阳街道办事处西万二村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:08:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2136, 315, '0,100,279,208,315', '龙山镇后仲沟村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2137, 290, '0,100,279,205,290', '昭阳街道办事处黄埠庄村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2138, 315, '0,100,279,208,315', '阎庄街道张家当门村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:11', '', NULL);
INSERT INTO `sys_dept` VALUES (2139, 294, '0,100,279,205,294', '次邱镇东温口村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2140, 315, '0,100,279,208,315', '招贤镇沙沟新村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2141, 294, '0,100,279,205,294', '次邱镇大肖庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2142, 294, '0,100,279,205,294', '郭仓镇北园新村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2143, 294, '0,100,279,205,294', '郭楼镇大李庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2144, 313, '0,100,279,208,313', '高兴镇大宋家庄村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2145, 294, '0,100,279,205,294', '康驿镇李庄村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:09:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2146, 313, '0,100,279,208,313', '高兴镇潘家洼村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:10:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2147, 294, '0,100,279,205,294', '刘楼镇孔庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:10:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2148, 294, '0,100,279,205,294', '南站街道办事处刘村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:10:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2149, 294, '0,100,279,205,294', '寅寺镇何湾村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:10:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2150, 289, '0,100,279,205,289', '大安镇唐庄村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:10:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2151, 289, '0,100,279,205,289', '小孟镇王子村村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:10:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2152, 289, '0,100,279,205,289', '新兖镇张村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:10:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2153, 289, '0,100,279,205,289', '新兖镇楚洼村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:10:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2154, 289, '0,100,279,205,289', '新驿镇孙村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2155, 313, '0,100,279,208,313', '巨峰镇刘家沟村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2156, 289, '0,100,279,205,289', '颜店镇玄帝庙村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2157, 291, '0,100,279,205,291', '清河镇杜屯村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2158, 314, '0,100,279,208,314', '高泽街道邓家沟村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2159, 291, '0,100,279,205,291', '唐马镇安庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2160, 314, '0,100,279,208,314', '户部石汪崖村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2161, 299, '0,100,279,205,299', '石墙镇古路口村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2162, 314, '0,100,279,208,314', '街头镇芙蓉庄村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:11:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2163, 299, '0,100,279,205,299', '唐村镇白庄村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2164, 314, '0,100,279,208,314', '石场乡黄桐村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2165, 299, '0,100,279,205,299', '唐村镇王炉村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2166, 299, '0,100,279,205,299', '峄山镇纪王城前村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2167, 314, '0,100,279,208,314', '汪湖镇王家庄村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2168, 278, '0,100,279,205,278', '安居街道办事处胡庄村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2169, 314, '0,100,279,208,314', '许孟镇东楼子村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2170, 297, '0,100,279,205,297', '黄屯街道李屯村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2171, 297, '0,100,279,205,297', '黄屯街道三仙庙村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2172, 314, '0,100,279,208,314', '许孟镇九凤村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2173, 297, '0,100,279,205,297', '接庄街道八里营村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:12:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2174, 297, '0,100,279,205,297', '接庄街道大屯村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:13:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2175, 314, '0,100,279,208,314', '许孟镇宋家庄子村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:13:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2176, 297, '0,100,279,205,297', '接庄街道前栗村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:13:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2177, 297, '0,100,279,205,297', '接庄街道西贾村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:13:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2178, 313, '0,100,279,208,313', '碑廓镇金星（日照）农业科技发展有限公司', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:13:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2179, 297, '0,100,279,205,297', '王因街道王因新村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:13:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2180, 297, '0,100,279,205,297', '王因街道长庆村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:14:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2181, 293, '0,100,279,205,293', '大张楼镇杨庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:14:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2182, 293, '0,100,279,205,293', '金屯镇合谐村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:14:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2183, 293, '0,100,279,205,293', '金屯镇河清口村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:15:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2184, 293, '0,100,279,205,293', '金屯镇燕屯村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:15:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2185, 293, '0,100,279,205,293', '老僧堂镇汤垓村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:15:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2186, 293, '0,100,279,205,293', '梁宝寺镇府前新村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:16:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2187, 293, '0,100,279,205,293', '梁宝寺镇双庙村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:16:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2188, 293, '0,100,279,205,293', '梁宝寺镇郓王村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:16:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2189, 293, '0,100,279,205,293', '马村镇陈楼村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:16:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2190, 293, '0,100,279,205,293', '马村镇胡楼村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:16:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2191, 293, '0,100,279,205,293', '马村镇山营村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:16:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2192, 293, '0,100,279,205,293', '马村镇西陆村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:17:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2193, 293, '0,100,279,205,293', '满硐镇阿城村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:17:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2194, 293, '0,100,279,205,293', '满硐镇公庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:17:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2195, 293, '0,100,279,205,293', '满硐镇后唐村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:17:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2196, 293, '0,100,279,205,293', '满硐镇宋山村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:17:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2197, 293, '0,100,279,205,293', '满硐镇徐北村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:17:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2198, 293, '0,100,279,205,293', '满硐镇杨楼村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:18:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2199, 293, '0,100,279,205,293', '孟姑集镇闫楼村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:18:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2200, 293, '0,100,279,205,293', '疃里镇陈李村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:18:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2201, 293, '0,100,279,205,293', '疃里镇崔庄村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:18:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2202, 293, '0,100,279,205,293', '疃里镇大周园村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:18:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2203, 293, '0,100,279,205,293', '疃里镇前贾村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:18:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2204, 293, '0,100,279,205,293', '万张街道狄楼村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:18:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2205, 293, '0,100,279,205,293', '万张街道梁海村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:19:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2206, 293, '0,100,279,205,293', '卧龙山街道农家人玉米种植专业合作社', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:19:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2207, 293, '0,100,279,205,293', '卧龙山街道南马村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:19:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2208, 293, '0,100,279,205,293', '纸坊镇闫村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:19:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2209, 293, '0,100,279,205,293', '仲山镇程庄村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:19:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2210, 293, '0,100,279,205,293', '仲山镇胡山村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:21:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2211, 293, '0,100,279,205,293', '仲山镇陆庄村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:22:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2212, 293, '0,100,279,205,293', '仲山镇仲北村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:22:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2213, 293, '0,100,279,205,293', '仲山镇仲西村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:23:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2214, 292, '0,100,279,205,292', '卜集镇孙桁村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:23:11', '', NULL);
INSERT INTO `sys_dept` VALUES (2215, 292, '0,100,279,205,292', '卜集镇张瓦房村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:23:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2216, 292, '0,100,279,205,292', '卜集镇周庵村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:23:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2217, 292, '0,100,279,205,292', '高河街道韩庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:23:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2218, 292, '0,100,279,205,292', '高河街道魏楼村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:23:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2219, 292, '0,100,279,205,292', '高河街道周楼村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:23:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2220, 292, '0,100,279,205,292', '胡集镇黄东村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:24:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2221, 292, '0,100,279,205,292', '化雨镇冯海村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:24:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2222, 292, '0,100,279,205,292', '化雨镇河西李楼村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:24:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2223, 292, '0,100,279,205,292', '化雨镇化南村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:24:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2224, 292, '0,100,279,205,292', '化雨镇苏坑村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:24:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2225, 292, '0,100,279,205,292', '鸡黍镇杜河村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:24:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2226, 292, '0,100,279,205,292', '鸡黍镇介庙村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:25:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2227, 292, '0,100,279,205,292', '鸡黍镇马集村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:25:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2228, 292, '0,100,279,205,292', '鸡黍镇西桥村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:25:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2229, 292, '0,100,279,205,292', '鸡黍镇小李庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:25:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2230, 292, '0,100,279,205,292', '马庙镇陈楼村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:25:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2231, 292, '0,100,279,205,292', '马庙镇双联村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:25:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2232, 292, '0,100,279,205,292', '马庙镇汤庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:25:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2233, 292, '0,100,279,205,292', '司马镇茶棚村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:26:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2234, 292, '0,100,279,205,292', '司马镇杨关村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:26:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2235, 292, '0,100,279,205,292', '霄云镇霄云寺新村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:26:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2236, 292, '0,100,279,205,292', '兴隆镇大棠树村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:26:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2237, 292, '0,100,279,205,292', '兴隆镇张庙村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:26:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2238, 292, '0,100,279,205,292', '羊山镇杜庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:26:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2239, 292, '0,100,279,205,292', '羊山镇崮子村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:27:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2240, 292, '0,100,279,205,292', '羊山镇后周村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:27:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2241, 292, '0,100,279,205,292', '羊山镇前刘楼村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:27:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2242, 292, '0,100,279,205,292', '羊山镇苏庄村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:27:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2243, 292, '0,100,279,205,292', '羊山镇王举楼村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:27:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2244, 292, '0,100,279,205,292', '羊山镇西阁村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:27:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2245, 292, '0,100,279,205,292', '鱼山街道孔楼村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:28:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2246, 292, '0,100,279,205,292', '鱼山街道王周村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:28:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2247, 292, '0,100,279,205,292', '鱼山街道新西村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:28:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2248, 205, '0,100,279,205', '济宁经济技术开发区', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:29:28', 'admin', '2024-01-21 21:29:42');
INSERT INTO `sys_dept` VALUES (2249, 2248, '0,100,279,205,2248', '疃里镇北三村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:29:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2250, 296, '0,100,279,205,296', '大路口乡油坊村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:30:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2251, 296, '0,100,279,205,296', '大路口乡翟楼村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:30:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2252, 296, '0,100,279,205,296', '馆驿镇朝阳村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:30:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2253, 296, '0,100,279,205,296', '馆驿镇后林村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:30:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2254, 296, '0,100,279,205,296', '馆驿镇徐楼村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:30:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2255, 296, '0,100,279,205,296', '馆驿镇轩庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:30:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2256, 296, '0,100,279,205,296', '韩垓镇滨湖村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:31:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2257, 296, '0,100,279,205,296', '韩垓镇高店村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:31:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2258, 296, '0,100,279,205,296', '韩垓镇薛垓村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:31:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2259, 296, '0,100,279,205,296', '韩岗镇韩岗村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:31:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2260, 296, '0,100,279,205,296', '韩岗镇小尧村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:31:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2261, 296, '0,100,279,205,296', '韩岗镇辛集村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:31:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2262, 296, '0,100,279,205,296', '黑虎庙镇河西村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:31:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2263, 296, '0,100,279,205,296', '黑虎庙镇吴楼村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:32:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2264, 296, '0,100,279,205,296', '黑虎庙镇西小吴村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:32:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2265, 296, '0,100,279,205,296', '黑虎庙镇薛屯村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:32:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2266, 296, '0,100,279,205,296', '黑虎庙镇杨桥村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:32:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2267, 296, '0,100,279,205,296', '梁山街道冯屺口村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:32:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2268, 296, '0,100,279,205,296', '梁山街道姜庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:32:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2269, 296, '0,100,279,205,296', '马营镇红旗营村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:33:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2270, 296, '0,100,279,205,296', '马营镇金城鑫村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:33:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2271, 296, '0,100,279,205,296', '拳铺镇秦店村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:33:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2272, 296, '0,100,279,205,296', '拳铺镇拳西村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:33:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2273, 296, '0,100,279,205,296', '小安山镇鹅鸭厂村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:33:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2274, 296, '0,100,279,205,296', '小安山镇干鱼头村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:33:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2275, 296, '0,100,279,205,296', '小安山镇杨堤口村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:33:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2276, 296, '0,100,279,205,296', '小安山镇义和庄村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:34:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2277, 296, '0,100,279,205,296', '小路口镇富康新村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:34:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2278, 296, '0,100,279,205,296', '小路口镇葛集村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:34:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2279, 296, '0,100,279,205,296', '杨营镇高家新村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:34:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2280, 296, '0,100,279,205,296', '杨营镇馆里村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:34:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2281, 296, '0,100,279,205,296', '杨营镇合兴村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:34:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2282, 296, '0,100,279,205,296', '杨营镇同心村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:34:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2283, 296, '0,100,279,205,296', '赵堌堆乡崔温村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:35:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2284, 296, '0,100,279,205,296', '赵堌堆乡董花园村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:35:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2285, 296, '0,100,279,205,296', '赵堌堆乡井雷村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:35:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2286, 296, '0,100,279,205,296', '赵堌堆乡雷黄村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:35:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2287, 296, '0,100,279,205,296', '赵堌堆乡新合村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:35:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2288, 298, '0,100,279,205,298', '陵城镇南庄河东村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:35:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2289, 298, '0,100,279,205,298', '尼山镇鲁源东村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:36:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2290, 298, '0,100,279,205,298', '书院街道东瓦窑头村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:36:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2291, 298, '0,100,279,205,298', '王庄镇冯村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:36:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2292, 298, '0,100,279,205,298', '王庄镇孟李村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:36:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2293, 298, '0,100,279,205,298', '王庄镇前孟村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:36:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2294, 298, '0,100,279,205,298', '王庄镇岳村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:36:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2295, 298, '0,100,279,205,298', '吴村镇吴村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:36:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2296, 298, '0,100,279,205,298', '小雪街道吉祥村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:37:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2297, 298, '0,100,279,205,298', '姚村镇毕家村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:37:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2298, 298, '0,100,279,205,298', '姚村镇薛家村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:37:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2299, 278, '0,100,279,205,278', '安居街道桥西村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:37:46', 'admin', '2024-01-22 20:54:51');
INSERT INTO `sys_dept` VALUES (2300, 278, '0,100,279,205,278', '南张街道凤鸣村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:37:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2301, 278, '0,100,279,205,278', '廿里铺街道崔付村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:38:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2302, 278, '0,100,279,205,278', '廿里铺街道胡坑村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:38:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2303, 278, '0,100,279,205,278', '石桥镇刘庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:38:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2304, 278, '0,100,279,205,278', '石桥镇陆桥村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:38:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2305, 278, '0,100,279,205,278', '石桥镇孙道口村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:38:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2306, 278, '0,100,279,205,278', '唐口街道廉屯村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:38:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2307, 278, '0,100,279,205,278', '唐口街道姚刘王村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:38:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2308, 278, '0,100,279,205,278', '喻屯镇贺桥村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:39:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2309, 278, '0,100,279,205,278', '喻屯镇刘官屯村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:39:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2310, 278, '0,100,279,205,278', '喻屯镇刘官屯西村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:39:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2311, 278, '0,100,279,205,278', '长沟镇后刘村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:39:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2312, 278, '0,100,279,205,278', '长沟镇张山村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:39:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2313, 295, '0,100,279,205,295', '高峪镇寺台村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:39:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2314, 295, '0,100,279,205,295', '苗馆镇李家坡村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:40:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2315, 295, '0,100,279,205,295', '苗馆镇南纪埠村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:40:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2316, 295, '0,100,279,205,295', '泉林镇安乐村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:40:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2317, 295, '0,100,279,205,295', '泉林镇蒋家村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:40:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2318, 295, '0,100,279,205,295', '泉林镇青龙庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:40:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2319, 295, '0,100,279,205,295', '泉林镇余粮庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:40:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2320, 295, '0,100,279,205,295', '圣水峪镇兰沃村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:40:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2321, 295, '0,100,279,205,295', '圣水峪镇南仲都村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:41:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2322, 295, '0,100,279,205,295', '圣水峪镇西仲都村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:41:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2323, 295, '0,100,279,205,295', '泗河街道山东金诺种业有限公司', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:41:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2324, 295, '0,100,279,205,295', '泗河街道西曲泗村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:41:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2325, 295, '0,100,279,205,295', '泗张镇南陈村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:41:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2326, 295, '0,100,279,205,295', '杨柳镇仓上村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:41:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2327, 295, '0,100,279,205,295', '杨柳镇东琴柏村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:42:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2328, 295, '0,100,279,205,295', '杨柳镇孔家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:43:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2329, 295, '0,100,279,205,295', '中册镇临泗二村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:43:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2330, 295, '0,100,279,205,295', '中册镇小李白庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:43:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2331, 295, '0,100,279,205,295', '中册镇中册三村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:43:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2332, 290, '0,100,279,205,290', '高楼乡利民村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:43:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2333, 290, '0,100,279,205,290', '高楼乡聂庄铺村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:44:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2334, 290, '0,100,279,205,290', '高楼乡盐店村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:44:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2335, 290, '0,100,279,205,290', '韩庄镇郗山古村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:44:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2336, 290, '0,100,279,205,290', '两城镇北簿西村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:44:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2337, 290, '0,100,279,205,290', '两城镇大辛庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:44:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2338, 290, '0,100,279,205,290', '两城镇独山村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:44:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2339, 290, '0,100,279,205,290', '两城镇两城二村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:45:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2340, 290, '0,100,279,205,290', '留庄镇留庄一村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:45:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2341, 290, '0,100,279,205,290', '留庄镇桥上村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:45:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2342, 290, '0,100,279,205,290', '留庄镇运河里村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:45:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2343, 290, '0,100,279,205,290', '鲁桥镇侯楼村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:45:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2344, 290, '0,100,279,205,290', '微山岛镇大官村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:45:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2345, 290, '0,100,279,205,290', '微山岛镇吕蒙村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:45:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2346, 290, '0,100,279,205,290', '微山岛镇杨村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:46:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2347, 290, '0,100,279,205,290', '昭阳街道大捐村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:46:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2348, 290, '0,100,279,205,290', '昭阳街道河合新村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:46:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2349, 290, '0,100,279,205,290', '昭阳街道猛进村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:46:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2350, 290, '0,100,279,205,290', '昭阳街道新建村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:46:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2351, 294, '0,100,279,205,294', '白石镇毛村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:47:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2352, 294, '0,100,279,205,294', '白石镇南泉沟村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:47:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2353, 294, '0,100,279,205,294', '白石镇郑成前村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:47:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2354, 294, '0,100,279,205,294', '次邱镇高庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:47:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2355, 294, '0,100,279,205,294', '次邱镇河里村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:47:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2356, 294, '0,100,279,205,294', '郭仓镇济宁大粮农业服务有限公司', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:47:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2357, 294, '0,100,279,205,294', '郭楼镇大李庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2358, 312, '0,100,279,208,312', '后村镇陈家沟村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2359, 294, '0,100,279,205,294', '郭楼镇姜店村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2360, 294, '0,100,279,205,294', '军屯乡马山庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2361, 312, '0,100,279,208,312', '秦楼街道秦家楼村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2362, 294, '0,100,279,205,294', '康驿镇邵庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2363, 294, '0,100,279,205,294', '康驿镇袁庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2364, 315, '0,100,279,208,315', '城阳街道岔河村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2365, 294, '0,100,279,205,294', '刘楼镇梁村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2366, 294, '0,100,279,205,294', '南旺镇南旺壹村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2367, 315, '0,100,279,208,315', '浮来山街道田家念头村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:48:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2368, 294, '0,100,279,205,294', '汶上街道马堂村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2369, 315, '0,100,279,208,315', '浮来山街道响波头汪村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:11', '', NULL);
INSERT INTO `sys_dept` VALUES (2370, 294, '0,100,279,205,294', '杨店镇鲁王村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2371, 294, '0,100,279,205,294', '杨店镇孟海村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2372, 315, '0,100,279,208,315', '陵阳镇杭头村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2373, 294, '0,100,279,205,294', '杨店镇王海村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2374, 294, '0,100,279,205,294', '义桥镇曹村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2375, 315, '0,100,279,208,315', '刘官庄镇高家庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2376, 294, '0,100,279,205,294', '义桥镇东孙吾村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2377, 313, '0,100,279,208,313', '中楼镇马亓河西村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2378, 294, '0,100,279,205,294', '义桥镇马庄南村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:49:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2379, 294, '0,100,279,205,294', '寅寺镇后李村西村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:50:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2380, 294, '0,100,279,205,294', '寅寺镇胡庄村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:50:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2381, 294, '0,100,279,205,294', '苑庄镇毕村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:50:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2382, 289, '0,100,279,205,289', '漕河镇管口新村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:50:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2383, 289, '0,100,279,205,289', '漕河镇罗店村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:50:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2384, 289, '0,100,279,205,289', '大安镇安邱府村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:51:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2385, 310, '0,100,279,207,310', '埠柳镇东初家村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:51:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2386, 289, '0,100,279,205,289', '大安镇蒿厂村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:51:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2387, 289, '0,100,279,205,289', '新兖镇大马青村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:51:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2388, 289, '0,100,279,205,289', '新兖镇大南铺村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:51:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2389, 289, '0,100,279,205,289', '新兖镇夏庙村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2390, 310, '0,100,279,207,310', '成山镇葛家村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2391, 289, '0,100,279,205,289', '新兖镇小马青村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2392, 310, '0,100,279,207,310', '东山街道办事处沟王家村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2393, 289, '0,100,279,205,289', '新兖镇寨子新村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2394, 289, '0,100,279,205,289', '新驿镇高吴桥村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2395, 310, '0,100,279,207,310', '俚岛镇前神堂口村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2396, 289, '0,100,279,205,289', '新驿镇皇林新村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2397, 289, '0,100,279,205,289', '新驿镇骆村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2398, 311, '0,100,279,207,311', '白沙滩镇董格庄村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2399, 289, '0,100,279,205,289', '新驿镇王堂村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2400, 289, '0,100,279,205,289', '新驿镇新驿四村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:52:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2401, 311, '0,100,279,207,311', '冯家镇王家庵村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2402, 289, '0,100,279,205,289', '兴隆庄街道大岗头村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2403, 289, '0,100,279,205,289', '颜店镇北肖村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2404, 311, '0,100,279,207,311', '乳山口镇河口村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2405, 289, '0,100,279,205,289', '颜店镇大嵫阳村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2406, 311, '0,100,279,207,311', '夏村镇小疃村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2407, 289, '0,100,279,205,289', '颜店镇坊上村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2408, 311, '0,100,279,207,311', '夏村镇战家夼村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2409, 289, '0,100,279,205,289', '颜店镇付家庙村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2410, 311, '0,100,279,207,311', '诸往镇王家疃村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2411, 289, '0,100,279,205,289', '颜店镇高杨村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:53:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2412, 306, '0,100,279,207,306', '大水泊镇场南村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2413, 289, '0,100,279,205,289', '颜店镇李宫四村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2414, 306, '0,100,279,207,306', '葛家镇黄龙岘村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2415, 289, '0,100,279,205,289', '颜店镇李宫一村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2416, 289, '0,100,279,205,289', '颜店镇南阁村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2417, 289, '0,100,279,205,289', '颜店镇前海村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2418, 289, '0,100,279,205,289', '颜店镇屯二村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2419, 306, '0,100,279,207,306', '文登营镇杏树夼村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2420, 289, '0,100,279,205,289', '颜店镇王家桥村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2421, 306, '0,100,279,207,306', '张家产镇杏林庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2422, 289, '0,100,279,205,289', '颜店镇张刘村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:54:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2423, 289, '0,100,279,205,289', '颜店镇周堌堆村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2424, 305, '0,100,279,207,305', '羊亭镇梅家沟村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2425, 305, '0,100,279,207,305', '张村镇里口山秋歌采摘园', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2426, 291, '0,100,279,205,291', '滨湖街道城西村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2427, 291, '0,100,279,205,291', '滨湖街道和众村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2428, 291, '0,100,279,205,291', '滨湖街道微湖村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2429, 308, '0,100,279,207,308', '泊于镇静港家庭农场有限公司', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2430, 291, '0,100,279,205,291', '谷亭街道李更卜村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2431, 291, '0,100,279,205,291', '老砦镇东里西村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:55:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2432, 309, '0,100,279,207,309', '蔄山镇东杨格村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2433, 291, '0,100,279,205,291', '老砦镇后六村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2434, 309, '0,100,279,207,309', '汪疃镇王家产村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:11', '', NULL);
INSERT INTO `sys_dept` VALUES (2435, 291, '0,100,279,205,291', '李阁镇史庙村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2436, 291, '0,100,279,205,291', '李阁镇团结村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2437, 291, '0,100,279,205,291', '罗屯镇王楼村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2438, 291, '0,100,279,205,291', '清河镇大程村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2439, 291, '0,100,279,205,291', '清河镇巩庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2440, 207, '0,100,279,207', '南海新区', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2441, 291, '0,100,279,205,291', '清河镇清河村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:56:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2442, 2440, '0,100,279,207,2440', '小观镇裕丰家庭农场有限公司', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2443, 291, '0,100,279,205,291', '清河镇西田村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2444, 291, '0,100,279,205,291', '清河镇油坊村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2445, 310, '0,100,279,207,310', '埠柳镇上疃村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2446, 291, '0,100,279,205,291', '唐马镇孙各村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2447, 310, '0,100,279,207,310', '成山镇南曲格村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2448, 291, '0,100,279,205,291', '王鲁镇李魏村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2449, 310, '0,100,279,207,310', '崖头街道夼北村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2450, 291, '0,100,279,205,291', '王鲁镇碌碡屯村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2451, 310, '0,100,279,207,310', '崖西镇东双顶村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:57:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2452, 310, '0,100,279,207,310', '荫子镇前荫子夼村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2453, 291, '0,100,279,205,291', '王鲁镇魏堂村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2454, 291, '0,100,279,205,291', '王庙镇八和村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2455, 310, '0,100,279,207,310', '荫子镇西夏埠村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2456, 291, '0,100,279,205,291', '王庙镇东堤村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2457, 311, '0,100,279,207,311', '大孤山镇李家庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2458, 291, '0,100,279,205,291', '王庙镇旧城里村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2459, 311, '0,100,279,207,311', '海阳所镇西泓赵家村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2460, 291, '0,100,279,205,291', '王庙镇马庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2461, 311, '0,100,279,207,311', '南黄镇归仁村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2462, 291, '0,100,279,205,291', '王庙镇南房村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:58:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2463, 291, '0,100,279,205,291', '王庙镇王庙村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:59:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2464, 291, '0,100,279,205,291', '张黄镇陈店村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:59:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2465, 299, '0,100,279,205,299', '北宿镇毛堂村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:59:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2466, 311, '0,100,279,207,311', '午极镇孙家疃村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:59:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2467, 299, '0,100,279,205,299', '城前镇后标村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:59:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2468, 311, '0,100,279,207,311', '午极镇于家疃村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:59:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2469, 299, '0,100,279,205,299', '大束镇刘傅庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 21:59:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2470, 311, '0,100,279,207,311', '徐家镇东南寨村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2471, 299, '0,100,279,205,299', '大束镇龙山前村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2472, 311, '0,100,279,207,311', '崖子镇河南钟家村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2473, 299, '0,100,279,205,299', '大束镇土旺村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2474, 311, '0,100,279,207,311', '崖子镇矫家泊村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2475, 299, '0,100,279,205,299', '郭里镇郭里新村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2476, 311, '0,100,279,207,311', '崖子镇井乔家村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2477, 299, '0,100,279,205,299', '看庄镇东柳下邑村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2478, 311, '0,100,279,207,311', '崖子镇马石店村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2479, 299, '0,100,279,205,299', '看庄镇后圪村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2480, 311, '0,100,279,207,311', '崖子镇史家村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2481, 299, '0,100,279,205,299', '看庄镇黄湾村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2482, 311, '0,100,279,207,311', '崖子镇西凤凰崖村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:00:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2483, 299, '0,100,279,205,299', '太平镇东里彦村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2484, 311, '0,100,279,207,311', '崖子镇阎家夼村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2485, 299, '0,100,279,205,299', '太平镇夹道村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2486, 299, '0,100,279,205,299', '太平镇中陶城村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2487, 311, '0,100,279,207,311', '育黎镇龙角山村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2488, 299, '0,100,279,205,299', '唐村镇潘家官庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2489, 311, '0,100,279,207,311', '诸往镇马陵村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2490, 299, '0,100,279,205,299', '唐村镇前葛家村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2491, 311, '0,100,279,207,311', '诸往镇铁山村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2492, 299, '0,100,279,205,299', '唐村镇西牛庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2493, 299, '0,100,279,205,299', '田黄镇田黄村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2494, 306, '0,100,279,207,306', '葛家镇南长岚村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:01:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2495, 299, '0,100,279,205,299', '香城镇大莫亭村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2496, 306, '0,100,279,207,306', '葛家镇小英村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2497, 306, '0,100,279,207,306', '界石镇西院下村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2498, 299, '0,100,279,205,299', '香城镇徐桃园村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:11', '', NULL);
INSERT INTO `sys_dept` VALUES (2499, 299, '0,100,279,205,299', '峄山镇东巩庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2500, 306, '0,100,279,207,306', '小观镇东炉村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2501, 306, '0,100,279,207,306', '泽头镇道口村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2502, 299, '0,100,279,205,299', '峄山镇红星村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2503, 306, '0,100,279,207,306', '张家产镇东官道村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2504, 299, '0,100,279,205,299', '峄山镇金张庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2505, 299, '0,100,279,205,299', '中心店镇屯头村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2506, 305, '0,100,279,207,305', '羊亭镇王家夼村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2507, 293, '0,100,279,205,293', '嘉祥街道孔庄北区', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:02:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2508, 293, '0,100,279,205,293', '卧龙山街道宋楼村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:03:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2509, 292, '0,100,279,205,292', '卜集镇石庙村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:03:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2510, 292, '0,100,279,205,292', '司马镇东周楼村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:03:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2511, 292, '0,100,279,205,292', '王丕街道王丕庄村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:03:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2512, 296, '0,100,279,205,296', '拳铺镇仁和村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:03:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2513, 296, '0,100,279,205,296', '水泊街道郑垓村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:03:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2514, 296, '0,100,279,205,296', '小安山镇运河家园村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2515, 296, '0,100,279,205,296', '小路口镇后于口村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2516, 290, '0,100,279,205,290', '韩庄镇马山新村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2517, 290, '0,100,279,205,290', '微山岛镇姚村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2518, 234, '0,100,279,200,234', '齐都镇付家村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2519, 294, '0,100,279,205,294', '白石镇郭林村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2520, 238, '0,100,279,200,238', '中庄镇河西一村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2521, 294, '0,100,279,205,294', '南旺镇柳林四村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:04:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2522, 233, '0,100,279,200,233', '博山镇郭庄西村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2523, 289, '0,100,279,205,289', '新驿镇新驿一村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:11', '', NULL);
INSERT INTO `sys_dept` VALUES (2524, 291, '0,100,279,205,291', '谷亭街道胡集村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2525, 233, '0,100,279,200,233', '石马镇中石村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2526, 291, '0,100,279,205,291', '谷亭镇解放村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2527, 237, '0,100,279,200,237', '高城镇孟荆陈村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2528, 299, '0,100,279,205,299', '钢山街道鸿景雅苑社区', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2529, 237, '0,100,279,200,237', '黑里寨镇张臣店村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2530, 237, '0,100,279,200,237', '黑里寨镇鼎盛村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:05:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2531, 237, '0,100,279,200,237', '花沟镇城南村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2532, 237, '0,100,279,200,237', '木李镇惠青村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2533, 237, '0,100,279,200,237', '唐坊镇银岭村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2534, 237, '0,100,279,200,237', '唐坊镇玉皇新村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2535, 236, '0,100,279,200,236', '果里镇麻家村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2536, 236, '0,100,279,200,236', '果里镇李王村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:06:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2537, 236, '0,100,279,200,236', '荆家镇姚王村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2538, 236, '0,100,279,200,236', '唐山镇楼一村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2539, 236, '0,100,279,200,236', '唐山镇于家村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2540, 236, '0,100,279,200,236', '唐山镇唐一村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:07:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2541, 236, '0,100,279,200,236', '唐山镇张茂村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:08:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2542, 275, '0,100,279,204,275', '官庄镇后朱家庄村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2543, 275, '0,100,279,204,275', '金冢子镇车戈庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2544, 275, '0,100,279,204,275', '景芝镇班家庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:13:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2545, 275, '0,100,279,204,275', '景芝镇大由方村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2546, 275, '0,100,279,204,275', '景芝镇小市留村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2547, 275, '0,100,279,204,275', '景芝镇小湖埠村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2548, 275, '0,100,279,204,275', '景芝镇东近埠泉村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2549, 275, '0,100,279,204,275', '景芝镇小官路村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2550, 275, '0,100,279,204,275', '景芝镇大兴村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2551, 275, '0,100,279,204,275', '凌河街道办事处水泊村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2552, 275, '0,100,279,204,275', '凌河街道办事处凤凰官庄村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:14:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2553, 275, '0,100,279,204,275', '凌河街道办事处圈子村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2554, 275, '0,100,279,204,275', '凌河街道办事处光甫村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2555, 275, '0,100,279,204,275', '石埠子镇东殷民村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2556, 275, '0,100,279,204,275', '吾山镇贺家沟村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2557, 275, '0,100,279,204,275', '新安街道办事处仓上村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2558, 270, '0,100,279,204,270', '宝城街道办事处东风村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:15:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2559, 270, '0,100,279,204,270', '宝都街道办事处常庄村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2560, 270, '0,100,279,204,270', '宝都街道办事处东埠郭村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2561, 270, '0,100,279,204,270', '红河镇林泉村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2562, 270, '0,100,279,204,270', '乔官镇孟家淳于村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2563, 270, '0,100,279,204,270', '乔官镇葛家庄村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2564, 270, '0,100,279,204,270', '乔官镇菜园村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2565, 270, '0,100,279,204,270', '乔官镇乔山村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:16:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2566, 270, '0,100,279,204,270', '乔官镇下庄村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2567, 270, '0,100,279,204,270', '乔官镇君祥村村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2568, 270, '0,100,279,204,270', '乔官镇秦家淳于村民委员会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2569, 270, '0,100,279,204,270', '五图街道办事处跃进村村民委员会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2570, 277, '0,100,279,204,277', '北孟镇曹戈庄村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2571, 277, '0,100,279,204,277', '奎聚街道办事处李家埠村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:17:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2572, 277, '0,100,279,204,277', '奎聚街道办事处东逄翟村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2573, 277, '0,100,279,204,277', '奎聚街道办事处花园村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2574, 277, '0,100,279,204,277', '柳疃镇东傅村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2575, 277, '0,100,279,204,277', '围子街道办事处南姜村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2576, 277, '0,100,279,204,277', '饮马镇山阴村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2577, 277, '0,100,279,204,277', '饮马镇前史家庄村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2578, 277, '0,100,279,204,277', '饮马镇八里庄子村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:18:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2579, 267, '0,100,279,204,267', '工业发展区西李家庄三村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2580, 267, '0,100,279,204,267', '九龙街道办事处杨庄村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2581, 267, '0,100,279,204,267', '太保庄街道办事处张家院村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2582, 267, '0,100,279,204,267', '太保庄街道办事处后郑公一村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2583, 267, '0,100,279,204,267', '太保庄街道办事处日戈庄东村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2584, 276, '0,100,279,204,276', '姜庄镇范家庄村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:19:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2585, 276, '0,100,279,204,276', '阚家镇刘家街村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2586, 276, '0,100,279,204,276', '阚家镇于村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2587, 276, '0,100,279,204,276', '夏庄镇郭家南直村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2588, 266, '0,100,279,204,266', '高里街道办事处东南孙村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2589, 266, '0,100,279,204,266', '高里街道办事处后王家庄子村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2590, 266, '0,100,279,204,266', '固堤街道办事处北安村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2591, 266, '0,100,279,204,266', '固堤街道办事处东常寨村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:20:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2592, 269, '0,100,279,204,269', '城关街道办事处陡沟社区陡沟居民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2593, 269, '0,100,279,204,269', '城关街道办事处西安村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2594, 269, '0,100,279,204,269', '城关街道办事处临朐县城关街道月庄村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2595, 269, '0,100,279,204,269', '城关街道办事处高倪村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2596, 269, '0,100,279,204,269', '柳山镇辛山村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2597, 269, '0,100,279,204,269', '五井镇茹家庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:21:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2598, 236, '0,100,279,200,236', '新城镇城北村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2599, 272, '0,100,279,204,272', '东夏镇段家村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2600, 272, '0,100,279,204,272', '东夏镇北于村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2601, 272, '0,100,279,204,272', '东夏镇三官庙村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2602, 272, '0,100,279,204,272', '东夏镇老刘村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2603, 236, '0,100,279,200,236', '新城镇新盛村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2604, 272, '0,100,279,204,272', '高柳镇西朱鹿村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2605, 272, '0,100,279,204,272', '何官镇南褚马村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:22:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2606, 272, '0,100,279,204,272', '何官镇黄家里双村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2607, 272, '0,100,279,204,272', '黄楼街道办事处马宋村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2608, 272, '0,100,279,204,272', '黄楼街道办事处黄楼村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2609, 272, '0,100,279,204,272', '黄楼街道办事处寨里村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2610, 272, '0,100,279,204,272', '黄楼街道办事处大王村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2611, 272, '0,100,279,204,272', '谭坊镇南魏村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:23:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2612, 272, '0,100,279,204,272', '谭坊镇宋家池村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2613, 272, '0,100,279,204,272', '谭坊镇马家冢村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2614, 272, '0,100,279,204,272', '谭坊镇西郑村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2615, 272, '0,100,279,204,272', '谭坊镇东石村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2616, 272, '0,100,279,204,272', '王府街道办事处石门村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2617, 272, '0,100,279,204,272', '王母宫经济发展区姜庙村委会', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:24:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2618, 272, '0,100,279,204,272', '益都街道办事处东高村委会', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2619, 274, '0,100,279,204,274', '稻田镇宋家村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2620, 274, '0,100,279,204,274', '稻田镇韩家埠村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2621, 274, '0,100,279,204,274', '稻田镇东桂村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2622, 274, '0,100,279,204,274', '稻田镇宋家稻庄二村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2623, 274, '0,100,279,204,274', '稻田镇拉埠村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:25:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2624, 274, '0,100,279,204,274', '稻田镇南里任村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2625, 200, '0,100,279,200', '经济开发区', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2626, 274, '0,100,279,204,274', '稻田镇娄家村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2627, 274, '0,100,279,204,274', '稻田镇东丹河村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2628, 274, '0,100,279,204,274', '稻田镇王望二村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:26:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2629, 274, '0,100,279,204,274', '稻田镇孟家村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2630, 2625, '0,100,279,200,2625', '傅家镇傅家村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2631, 274, '0,100,279,204,274', '侯镇李桥村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2632, 274, '0,100,279,204,274', '侯镇东毕二村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2633, 274, '0,100,279,204,274', '侯镇台后村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2634, 274, '0,100,279,204,274', '纪台镇房家庄村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:27:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2635, 2625, '0,100,279,200,2625', '傅家镇大徐村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2636, 274, '0,100,279,204,274', '纪台镇孙家村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2637, 274, '0,100,279,204,274', '纪台镇姜家庄子村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2638, 2625, '0,100,279,200,2625', '南定镇岳店村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2639, 274, '0,100,279,204,274', '纪台镇西刘村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2640, 234, '0,100,279,200,234', '凤凰镇南金村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2641, 274, '0,100,279,204,274', '洛城街道办事处东刘村委会', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2642, 234, '0,100,279,200,234', '皇城镇顾邵六端村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2643, 274, '0,100,279,204,274', '洛城街道办事处柴家村委会', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2644, 234, '0,100,279,200,234', '皇城镇东南羊村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2645, 274, '0,100,279,204,274', '洛城街道办事处安平村委会', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2646, 234, '0,100,279,200,234', '皇城镇南卧石村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2647, 274, '0,100,279,204,274', '圣城街道办事处银丰社区居民委员会', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:28:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2648, 234, '0,100,279,200,234', '金岭镇金岭一村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2649, 274, '0,100,279,204,274', '圣城街道办事处九巷村民委员会', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2650, 234, '0,100,279,200,234', '敬仲镇西王官村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2651, 274, '0,100,279,204,274', '圣城街道办事处范家庄村委会', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2652, 234, '0,100,279,200,234', '敬仲镇北冯家村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2653, 274, '0,100,279,204,274', '孙家集街道办事处张家埠子村委会', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2654, 234, '0,100,279,200,234', '敬仲镇北石桥村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2655, 274, '0,100,279,204,274', '田柳镇张僧疃前村委会', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2656, 274, '0,100,279,204,274', '田柳镇南袁村委会', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2657, 234, '0,100,279,200,234', '齐都镇蒋王村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2658, 274, '0,100,279,204,274', '田柳镇王家庄村委会', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:29:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2659, 274, '0,100,279,204,274', '文家街道办事处刘家庄子村委会', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2660, 274, '0,100,279,204,274', '文家街道办事处苏家村委会', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2661, 234, '0,100,279,200,234', '齐陵街道办事处望寺村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2662, 234, '0,100,279,200,234', '齐陵街道办事处高家孝陵村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2663, 274, '0,100,279,204,274', '文家街道办事处王家营西村委会', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2664, 234, '0,100,279,200,234', '朱台镇宁王东村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2665, 265, '0,100,279,204,265', '望留街道办事处王家文庄村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2666, 234, '0,100,279,200,234', '朱台镇房家村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2667, 265, '0,100,279,204,265', '于河街道办事处杏杭村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2668, 238, '0,100,279,200,238', '东里镇后水北村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2669, 275, '0,100,279,204,275', '大盛镇大官庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:30:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2670, 238, '0,100,279,200,238', '东里镇江河南村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:31:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2671, 238, '0,100,279,200,238', '石桥镇石桥村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:31:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2672, 238, '0,100,279,200,238', '西里镇金星村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:31:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2673, 238, '0,100,279,200,238', '中庄镇耿庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:31:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2674, 275, '0,100,279,204,275', '官庄镇前朱家庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:31:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2675, 275, '0,100,279,204,275', '景芝镇程家庄子村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:31:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2676, 275, '0,100,279,204,275', '景芝镇大市留村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:32:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2677, 275, '0,100,279,204,275', '景芝镇东笔墨村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:32:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2678, 275, '0,100,279,204,275', '景芝镇东近埠泉村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:32:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2679, 275, '0,100,279,204,275', '景芝镇后王庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:32:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2680, 232, '0,100,279,200,232', '房镇镇西吕村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:32:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2681, 275, '0,100,279,204,275', '景芝镇老庄子村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:32:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2682, 235, '0,100,279,200,235', '北郊镇十里村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:32:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2683, 275, '0,100,279,204,275', '景芝镇万戈庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2684, 235, '0,100,279,200,235', '北郊镇张坊村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2685, 275, '0,100,279,204,275', '景芝镇西石埠村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2686, 235, '0,100,279,200,235', '城北路街道办事处大房村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2687, 275, '0,100,279,204,275', '景芝镇兆家庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2688, 235, '0,100,279,200,235', '萌水镇萌四村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2689, 275, '0,100,279,204,275', '景芝镇中王庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2690, 231, '0,100,279,200,231', '洪山镇东工村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2691, 275, '0,100,279,204,275', '凌河街道东涝山村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2692, 231, '0,100,279,200,231', '太河镇后香峪村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2693, 275, '0,100,279,204,275', '凌河街道小官庄村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:33:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2694, 231, '0,100,279,200,231', '寨里镇孤山村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2695, 275, '0,100,279,204,275', '凌河街道芷芳村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2696, 231, '0,100,279,200,231', '钟楼街道办事处黄家铺社区居民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2697, 275, '0,100,279,204,275', '石埠子镇北郎庄村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2698, 233, '0,100,279,200,233', '博山镇洪山口村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2699, 275, '0,100,279,204,275', '石埠子镇金菩村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2700, 275, '0,100,279,204,275', '石埠子镇孝河口村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2701, 233, '0,100,279,200,233', '池上镇营子村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2702, 275, '0,100,279,204,275', '石堆镇娄戈村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2703, 237, '0,100,279,200,237', '常家镇天鹅湖村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2704, 275, '0,100,279,204,275', '石堆镇马踏泉村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2705, 237, '0,100,279,200,237', '高城镇大张村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2706, 275, '0,100,279,204,275', '吾山镇安山子村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:34:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2707, 237, '0,100,279,200,237', '黑里寨镇艾王集村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2708, 275, '0,100,279,204,275', '吾山镇冷家山村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2709, 237, '0,100,279,200,237', '黑里寨镇后刘村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2710, 275, '0,100,279,204,275', '吾山镇南逯村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2711, 237, '0,100,279,200,237', '黑里寨镇金斗村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2712, 275, '0,100,279,204,275', '兴安街道三里庄村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2713, 237, '0,100,279,200,237', '黑里寨镇桑家村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2714, 271, '0,100,279,204,271', '大家洼街道河套村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2715, 237, '0,100,279,200,237', '花沟镇三友村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:35:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2716, 237, '0,100,279,200,237', '花沟镇杨集村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2717, 270, '0,100,279,204,270', '宝都街道后营子村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2718, 237, '0,100,279,200,237', '芦湖街道芦旺稻鱼荷虾水产养殖农民专业合作社', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2719, 270, '0,100,279,204,270', '宝都街道马家冢子村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2720, 237, '0,100,279,200,237', '芦湖街道小安定村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2721, 270, '0,100,279,204,270', '宝都街道尧沟村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2722, 270, '0,100,279,204,270', '红河镇大宅科村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2723, 237, '0,100,279,200,237', '芦湖街道赵店村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2724, 270, '0,100,279,204,270', '乔官镇北张庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2725, 237, '0,100,279,200,237', '木李镇乾旺村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:36:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2726, 270, '0,100,279,204,270', '乔官镇毕都村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2727, 270, '0,100,279,204,270', '乔官镇盖家庄子村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2728, 237, '0,100,279,200,237', '青城镇西五合村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2729, 270, '0,100,279,204,270', '乔官镇华盛村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2730, 237, '0,100,279,200,237', '唐坊镇宫王赵村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2731, 270, '0,100,279,204,270', '乔官镇君求官庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2732, 237, '0,100,279,200,237', '唐坊镇武刘庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2733, 237, '0,100,279,200,237', '田镇街道福源村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2734, 270, '0,100,279,204,270', '乔官镇龙泉村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2735, 237, '0,100,279,200,237', '田镇街道和谐新村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2736, 270, '0,100,279,204,270', '乔官镇乔官村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2737, 237, '0,100,279,200,237', '田镇街道马庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:37:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2738, 270, '0,100,279,204,270', '乔官镇乔山东村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2739, 237, '0,100,279,200,237', '田镇街道平安村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2740, 270, '0,100,279,204,270', '乔官镇乔山南村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2741, 237, '0,100,279,200,237', '田镇街道邹龙湾村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2742, 270, '0,100,279,204,270', '乔官镇团埠坡村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2743, 236, '0,100,279,200,236', '果里镇东店村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2744, 270, '0,100,279,204,270', '乔官镇驻房村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2745, 236, '0,100,279,200,236', '果里镇官东村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2746, 270, '0,100,279,204,270', '五图街道边下村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2747, 236, '0,100,279,200,236', '唐山镇白辛村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2748, 270, '0,100,279,204,270', '五图街道埠南村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:38:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2749, 236, '0,100,279,200,236', '唐山镇波扎店村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2750, 270, '0,100,279,204,270', '五图街道池子村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2751, 236, '0,100,279,200,236', '唐山镇薛庙村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2752, 270, '0,100,279,204,270', '五图街道亓家庄村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2753, 236, '0,100,279,200,236', '田庄镇胡东村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2754, 270, '0,100,279,204,270', '朱刘街道都昌村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2755, 236, '0,100,279,200,236', '田庄镇牛旺村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2756, 277, '0,100,279,204,277', '北孟镇李戈庄三村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2757, 2625, '0,100,279,200,2625', '沣水镇北沣村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2758, 277, '0,100,279,204,277', '卜庄镇北泊村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2759, 277, '0,100,279,204,277', '都昌街道北褚庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2760, 234, '0,100,279,200,234', '凤凰镇彩家村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:39:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2761, 277, '0,100,279,204,277', '都昌街道高家道照村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2762, 234, '0,100,279,200,234', '凤凰镇西齐村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2763, 277, '0,100,279,204,277', '都昌街道南隅村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2764, 234, '0,100,279,200,234', '皇城镇后下村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2765, 277, '0,100,279,204,277', '都昌街道山前村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:18', '', NULL);
INSERT INTO `sys_dept` VALUES (2766, 234, '0,100,279,200,234', '皇城镇杨王六端村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2767, 277, '0,100,279,204,277', '都昌街道西大营村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2768, 234, '0,100,279,200,234', '皇城镇郑六端村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2769, 277, '0,100,279,204,277', '都昌街道渔洞埠村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2770, 234, '0,100,279,200,234', '稷下街道官道村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2771, 277, '0,100,279,204,277', '奎聚街道大泊子村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2772, 234, '0,100,279,200,234', '稷下街道槐行村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2773, 277, '0,100,279,204,277', '围子街道于家郜村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2774, 234, '0,100,279,200,234', '金山镇西崖村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:40:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2775, 277, '0,100,279,204,277', '饮马镇大岭村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2776, 234, '0,100,279,200,234', '敬仲镇毕家村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:08', '', NULL);
INSERT INTO `sys_dept` VALUES (2777, 234, '0,100,279,200,234', '敬仲镇呈羔东村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2778, 234, '0,100,279,200,234', '敬仲镇西周村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2779, 234, '0,100,279,200,234', '齐都镇南马坊村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2780, 277, '0,100,279,204,277', '饮马镇东南元家村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2781, 234, '0,100,279,200,234', '齐都镇山东齐都粮仓农业科技发展有限公司', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:46', '', NULL);
INSERT INTO `sys_dept` VALUES (2782, 277, '0,100,279,204,277', '饮马镇葛东村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2783, 234, '0,100,279,200,234', '齐陵街道老刘家村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2784, 277, '0,100,279,204,277', '饮马镇松树元家村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:41:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2785, 234, '0,100,279,200,234', '齐陵街道吕家村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2786, 234, '0,100,279,200,234', '齐陵街道宋家村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2787, 267, '0,100,279,204,267', '坊安街道葫芦埠韩家村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2788, 234, '0,100,279,200,234', '辛店街道于家店村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2789, 267, '0,100,279,204,267', '坊安街道葫芦埠梁家村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2790, 234, '0,100,279,200,234', '朱台镇宁王南村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2791, 267, '0,100,279,204,267', '工业发展区驸马营二村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2792, 267, '0,100,279,204,267', '工业发展区涌泉庄村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2793, 267, '0,100,279,204,267', '黄旗堡街道东楼村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:42:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2794, 267, '0,100,279,204,267', '经济发展区岔子官庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2795, 267, '0,100,279,204,267', '九龙街道马村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2796, 267, '0,100,279,204,267', '九龙街道前邓村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2797, 267, '0,100,279,204,267', '九龙街道尚庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2798, 267, '0,100,279,204,267', '太保庄街道北辛村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:43:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2799, 267, '0,100,279,204,267', '太保庄街道戴家官庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2800, 267, '0,100,279,204,267', '太保庄街道东七里兰村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2801, 267, '0,100,279,204,267', '太保庄街道后甘棠村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2802, 267, '0,100,279,204,267', '太保庄街道梁家田戈庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2803, 238, '0,100,279,200,238', '东里镇东里东村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2804, 267, '0,100,279,204,267', '太保庄街道盘马埠村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2805, 238, '0,100,279,200,238', '东里镇福禄坪村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2806, 238, '0,100,279,200,238', '东里镇幸福村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2807, 267, '0,100,279,204,267', '太保庄街道孙家庄子村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:50', '', NULL);
INSERT INTO `sys_dept` VALUES (2808, 238, '0,100,279,200,238', '鲁村镇杨庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2809, 267, '0,100,279,204,267', '太保庄街道新河头村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:44:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2810, 267, '0,100,279,204,267', '太保庄街道徐家官庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2811, 238, '0,100,279,200,238', '石桥镇黄安村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2812, 267, '0,100,279,204,267', '王家庄街道东莲子屯村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2813, 238, '0,100,279,200,238', '西里镇红星村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2814, 238, '0,100,279,200,238', '西里镇侯家峪村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2815, 267, '0,100,279,204,267', '王家庄街道后邢戈村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2816, 267, '0,100,279,204,267', '王家庄街道会沟子村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:37', '', NULL);
INSERT INTO `sys_dept` VALUES (2817, 238, '0,100,279,200,238', '中庄镇店头村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2818, 267, '0,100,279,204,267', '王家庄街道谭家官庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2819, 238, '0,100,279,200,238', '中庄镇盖冶村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2820, 267, '0,100,279,204,267', '王家庄街道小赵家庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2821, 238, '0,100,279,200,238', '中庄镇西柳峪', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2822, 267, '0,100,279,204,267', '王家庄街道冢子村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:45:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2823, 232, '0,100,279,200,232', '房镇范家新村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2824, 235, '0,100,279,200,235', '萌水镇萌一村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2825, 276, '0,100,279,204,276', '柏城镇东冢子头村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2826, 276, '0,100,279,204,276', '柏城镇夏家沟村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:39', '', NULL);
INSERT INTO `sys_dept` VALUES (2827, 231, '0,100,279,200,231', '洪山镇西省村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2828, 276, '0,100,279,204,276', '大牟家镇毛家村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2829, 231, '0,100,279,200,231', '龙泉镇和庄村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2830, 276, '0,100,279,204,276', '大牟家镇秦家庄子村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:46:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2831, 231, '0,100,279,200,231', '罗村镇鲁家村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2832, 276, '0,100,279,204,276', '大牟家镇西刘家庄村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2833, 231, '0,100,279,200,231', '罗村镇前河村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2834, 276, '0,100,279,204,276', '姜庄镇崔家村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2835, 231, '0,100,279,200,231', '罗村镇前宅村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2836, 231, '0,100,279,200,231', '双杨镇董家村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2837, 276, '0,100,279,204,276', '姜庄镇姜庄四村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2838, 231, '0,100,279,200,231', '太河镇南镇后村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2839, 276, '0,100,279,204,276', '胶河社区张家庄', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2840, 231, '0,100,279,200,231', '西河镇梨峪口村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:42', '', NULL);
INSERT INTO `sys_dept` VALUES (2841, 276, '0,100,279,204,276', '井沟镇南高戈庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2842, 231, '0,100,279,200,231', '西河镇南坪村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:54', 'admin', '2024-01-21 22:48:12');
INSERT INTO `sys_dept` VALUES (2843, 276, '0,100,279,204,276', '井沟镇前下口村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:47:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2844, 276, '0,100,279,204,276', '井沟镇前院头村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:48:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2845, 276, '0,100,279,204,276', '井沟镇寨庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:48:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2846, 276, '0,100,279,204,276', '阚家镇东张秋村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:48:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2847, 276, '0,100,279,204,276', '阚家镇河北头村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:48:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2848, 276, '0,100,279,204,276', '阚家镇前泊子村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:48:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2849, 276, '0,100,279,204,276', '醴泉街道高密优美优乐面食坊', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:48:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2850, 276, '0,100,279,204,276', '密水街道王家屯村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2851, 276, '0,100,279,204,276', '密水街道阎家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2852, 233, '0,100,279,200,233', '石马镇桥西村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2853, 276, '0,100,279,204,276', '夏庄镇小寄庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2854, 233, '0,100,279,200,233', '夏家庄镇夏家庄新一村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2855, 276, '0,100,279,204,276', '姚哥庄社区芝兰屯村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2856, 233, '0,100,279,200,233', '域城镇尚庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2857, 266, '0,100,279,204,266', '高里街道北于家庄子村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2858, 236, '0,100,279,200,236', '果里镇龙南村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2859, 266, '0,100,279,204,266', '高里街道大官庄村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:49:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2860, 266, '0,100,279,204,266', '高里街道后沟村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2861, 266, '0,100,279,204,266', '高里街道南里村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:14', '', NULL);
INSERT INTO `sys_dept` VALUES (2862, 266, '0,100,279,204,266', '固堤街道北于家码头村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2863, 236, '0,100,279,200,236', '唐山镇宋店村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2864, 266, '0,100,279,204,266', '固堤街道大张家埠村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2865, 266, '0,100,279,204,266', '固堤街道高庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2866, 238, '0,100,279,200,238', '东里镇福禄坪农业开发有限公司', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:50:51', '', NULL);
INSERT INTO `sys_dept` VALUES (2867, 238, '0,100,279,200,238', '鲁村镇姬家峪村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:51:00', '', NULL);
INSERT INTO `sys_dept` VALUES (2868, 238, '0,100,279,200,238', '鲁村镇源泰家庭农场', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:51:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2869, 238, '0,100,279,200,238', '中庄镇冯仔英家庭农场', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:51:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2870, 232, '0,100,279,200,232', '沣水镇南沣村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:51:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2871, 235, '0,100,279,200,235', '城北路街道石门村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:51:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2872, 231, '0,100,279,200,231', '昆仑镇磁村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:51:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2873, 300, '0,100,279,206,300', '北集坡街道办事处篦子店村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 22:56:04', '', NULL);
INSERT INTO `sys_dept` VALUES (2875, 266, '0,100,279,204,266', '固堤街道后大桥头村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:04:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2876, 266, '0,100,279,204,266', '固堤街道圈里村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:04:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2877, 266, '0,100,279,204,266', '寒亭街道北平旺村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:04:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2878, 266, '0,100,279,204,266', '开元街道安固一村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:04:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2879, 266, '0,100,279,204,266', '朱里街道红新村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:05:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2880, 266, '0,100,279,204,266', '朱里街道赵家庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:05:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2881, 266, '0,100,279,204,266', '朱里街道朱里一村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-21 23:05:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2882, 300, '0,100,279,206,300', '徂徕镇桥沟村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:11:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2883, 300, '0,100,279,206,300', '徂徕镇宽店村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:12:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2884, 376, '0,100,279,211,376', '董杜庄镇董杜庄新村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:13:26', '', NULL);
INSERT INTO `sys_dept` VALUES (2885, 324, '0,100,279,209,324', '东蒙镇家兴庄村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:13:32', 'admin', '2024-01-22 03:14:37');
INSERT INTO `sys_dept` VALUES (2886, 300, '0,100,279,206,300', '徂徕镇曹庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:14:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2887, 300, '0,100,279,206,300', '大汶口镇庞家庄村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:14:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2888, 300, '0,100,279,206,300', '大汶口镇北西遥村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:14:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2889, 300, '0,100,279,206,300', '范镇东岔河村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:14:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2890, 300, '0,100,279,206,300', '范镇唐北单村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:06', '', NULL);
INSERT INTO `sys_dept` VALUES (2891, 324, '0,100,279,209,324', '费城街道办事处朝阳村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2892, 300, '0,100,279,206,300', '范镇上埠东村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2893, 374, '0,100,279,211,374', '杨官屯乡滨城新村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2894, 300, '0,100,279,206,300', '房村镇董白塔村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2895, 374, '0,100,279,211,374', '振兴街道办事处金牛湖社区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2896, 324, '0,100,279,209,324', '梁邱镇涝坡村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2897, 300, '0,100,279,206,300', '房村镇埠西村村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2898, 300, '0,100,279,206,300', '房村镇良一村村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2899, 377, '0,100,279,211,377', '陈集镇陈店新村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2900, 324, '0,100,279,209,324', '马庄镇程庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:15:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2901, 300, '0,100,279,206,300', '角峪镇纸房村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2902, 373, '0,100,279,211,373', '广平镇韩王新村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2903, 324, '0,100,279,209,324', '上冶镇上冶四村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:11', 'admin', '2024-01-22 03:16:22');
INSERT INTO `sys_dept` VALUES (2904, 300, '0,100,279,206,300', '良庄镇南宋村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2905, 373, '0,100,279,211,373', '广平镇丰和新村村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2906, 300, '0,100,279,206,300', '良庄镇西良庄村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2907, 373, '0,100,279,211,373', '梁水镇久居新村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2908, 373, '0,100,279,211,373', '沙镇镇八颗杨新村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2909, 300, '0,100,279,206,300', '马庄镇马庄村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2910, 324, '0,100,279,209,324', '石井镇高岩村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2911, 373, '0,100,279,211,373', '闫寺街道办事处冯庄新村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2912, 300, '0,100,279,206,300', '马庄镇顺河村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2913, 373, '0,100,279,211,373', '张炉集镇运东新村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:16:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2914, 324, '0,100,279,209,324', '探沂镇沈家村村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2915, 300, '0,100,279,206,300', '满庄镇灌庄村委会', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:02', '', NULL);
INSERT INTO `sys_dept` VALUES (2916, 373, '0,100,279,211,373', '郑家镇前大屯村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2917, 300, '0,100,279,206,300', '满庄镇宿家庄村委会', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2918, 300, '0,100,279,206,300', '山口镇东碾疃村委会', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2919, 379, '0,100,279,211,379', '固河镇沙王村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2920, 324, '0,100,279,209,324', '薛庄镇北汤沟村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:28', '', NULL);
INSERT INTO `sys_dept` VALUES (2921, 379, '0,100,279,211,379', '汇鑫街道办事处吉鑫社区村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2922, 300, '0,100,279,206,300', '下港镇下港村委会', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:35', '', NULL);
INSERT INTO `sys_dept` VALUES (2923, 324, '0,100,279,209,324', '薛庄镇长行村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2924, 379, '0,100,279,211,379', '姜店镇钟潘仉新村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2925, 300, '0,100,279,206,300', '夏张镇刘家庄村委会', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2926, 379, '0,100,279,211,379', '梁村镇韩寨村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2927, 300, '0,100,279,206,300', '祝阳镇东张村委会', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:55', '', NULL);
INSERT INTO `sys_dept` VALUES (2928, 324, '0,100,279,209,324', '朱田镇四亩地村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:17:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2929, 379, '0,100,279,211,379', '琉璃寺镇秦庄新村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2930, 379, '0,100,279,211,379', '琉璃寺镇营马新村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:15', '', NULL);
INSERT INTO `sys_dept` VALUES (2931, 302, '0,100,279,206,302', '斑鸠店镇黄庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:23', '', NULL);
INSERT INTO `sys_dept` VALUES (2932, 379, '0,100,279,211,379', '琉璃寺镇四新河新村村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:27', '', NULL);
INSERT INTO `sys_dept` VALUES (2933, 302, '0,100,279,206,302', '戴庙镇芦里村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:30', '', NULL);
INSERT INTO `sys_dept` VALUES (2934, 379, '0,100,279,211,379', '琉璃寺镇北城新村村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:36', '', NULL);
INSERT INTO `sys_dept` VALUES (2935, 302, '0,100,279,206,302', '东平街道办事处地区王村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2936, 379, '0,100,279,211,379', '清平镇代官屯新村村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2937, 302, '0,100,279,206,302', '东平街道办事处地区大井村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:49', '', NULL);
INSERT INTO `sys_dept` VALUES (2938, 302, '0,100,279,206,302', '接山镇常庄一村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2939, 319, '0,100,279,209,319', '八湖镇刘店子村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:18:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2940, 379, '0,100,279,211,379', '赵寨子镇纸房头村村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:01', '', NULL);
INSERT INTO `sys_dept` VALUES (2941, 319, '0,100,279,209,319', '八湖镇石拉渊村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2942, 302, '0,100,279,206,302', '旧县乡浮粮店村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:09', '', NULL);
INSERT INTO `sys_dept` VALUES (2943, 378, '0,100,279,211,378', '贾镇富贾新村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2944, 378, '0,100,279,211,378', '梁堂镇刘寺地村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2945, 319, '0,100,279,209,319', '凤凰岭街道办事处凤凰村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2946, 378, '0,100,279,211,378', '梁堂镇鑫闫村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2947, 319, '0,100,279,209,319', '汤河镇滨河村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:40', '', NULL);
INSERT INTO `sys_dept` VALUES (2948, 378, '0,100,279,211,378', '清泉街道办事处徐刘村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2949, 319, '0,100,279,209,319', '汤河镇程子河村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:52', '', NULL);
INSERT INTO `sys_dept` VALUES (2950, 378, '0,100,279,211,378', '清水镇东汪村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:19:53', '', NULL);
INSERT INTO `sys_dept` VALUES (2951, 378, '0,100,279,211,378', '桑阿镇陈贯庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:03', '', NULL);
INSERT INTO `sys_dept` VALUES (2952, 319, '0,100,279,209,319', '汤头街道办事处后林子村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:12', '', NULL);
INSERT INTO `sys_dept` VALUES (2953, 302, '0,100,279,206,302', '旧县乡旧县三村村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2954, 378, '0,100,279,211,378', '万善乡东贾村村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2955, 319, '0,100,279,209,319', '相公街道办事处朱团村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2956, 302, '0,100,279,206,302', '彭集街道办事处地区尚流泽村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2957, 378, '0,100,279,211,378', '万善乡孝子哭村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:25', '', NULL);
INSERT INTO `sys_dept` VALUES (2958, 302, '0,100,279,206,302', '彭集街道办事处地区东郭庄村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2959, 378, '0,100,279,211,378', '万善乡高王段村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2960, 302, '0,100,279,206,302', '沙河站镇吴桃园村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2961, 253, '0,100,279,203,253', '高疃镇肖古家村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2962, 378, '0,100,279,211,378', '辛集镇史庄新村村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:45', '', NULL);
INSERT INTO `sys_dept` VALUES (2963, 302, '0,100,279,206,302', '沙河站镇乔村村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2964, 302, '0,100,279,206,302', '新湖镇郭场村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:58', '', NULL);
INSERT INTO `sys_dept` VALUES (2965, 380, '0,100,279,211,380', '大辛庄街道办事处丰源村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:20:59', '', NULL);
INSERT INTO `sys_dept` VALUES (2966, 302, '0,100,279,206,302', '新湖镇西马庄村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:05', '', NULL);
INSERT INTO `sys_dept` VALUES (2967, 380, '0,100,279,211,380', '大辛庄街道办事处辛鑫村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2968, 302, '0,100,279,206,302', '银山镇前银山村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:13', '', NULL);
INSERT INTO `sys_dept` VALUES (2969, 326, '0,100,279,209,326', '板泉镇白常村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:16', '', NULL);
INSERT INTO `sys_dept` VALUES (2970, 380, '0,100,279,211,380', '戴湾镇戴湾联合村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:21', '', NULL);
INSERT INTO `sys_dept` VALUES (2971, 302, '0,100,279,206,302', '银山镇北刘村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:22', '', NULL);
INSERT INTO `sys_dept` VALUES (2972, 264, '0,100,279,203,264', '凤城街道办事处西河崖村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2973, 302, '0,100,279,206,302', '大羊镇李大羊村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2974, 380, '0,100,279,211,380', '康庄镇梅井村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:32', '', NULL);
INSERT INTO `sys_dept` VALUES (2975, 326, '0,100,279,209,326', '大店镇浔河村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2976, 380, '0,100,279,211,380', '刘垓子镇吕堂联合村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:41', '', NULL);
INSERT INTO `sys_dept` VALUES (2977, 264, '0,100,279,203,264', '核电装备制造工业园区六甲村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:43', '', NULL);
INSERT INTO `sys_dept` VALUES (2978, 326, '0,100,279,209,326', '道口镇官庄村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:44', '', NULL);
INSERT INTO `sys_dept` VALUES (2979, 304, '0,100,279,206,304', '安驾庄镇下江村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:47', '', NULL);
INSERT INTO `sys_dept` VALUES (2980, 380, '0,100,279,211,380', '新华路街道办事处葡香村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:48', '', NULL);
INSERT INTO `sys_dept` VALUES (2981, 304, '0,100,279,206,304', '湖屯镇东湖东村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:54', '', NULL);
INSERT INTO `sys_dept` VALUES (2982, 264, '0,100,279,203,264', '留格庄镇峙家村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2983, 326, '0,100,279,209,326', '道口镇道口新村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:56', '', NULL);
INSERT INTO `sys_dept` VALUES (2984, 380, '0,100,279,211,380', '金郝庄镇张庄联合村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:21:57', '', NULL);
INSERT INTO `sys_dept` VALUES (2985, 304, '0,100,279,206,304', '老城街道办事处国屯村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:07', '', NULL);
INSERT INTO `sys_dept` VALUES (2986, 264, '0,100,279,203,264', '龙山街道办事处石前庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2987, 376, '0,100,279,211,376', '东鲁街道办事处王升公庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:10', '', NULL);
INSERT INTO `sys_dept` VALUES (2988, 326, '0,100,279,209,326', '团林镇团林新村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:11', '', NULL);
INSERT INTO `sys_dept` VALUES (2989, 304, '0,100,279,206,304', '石横镇道口村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:17', '', NULL);
INSERT INTO `sys_dept` VALUES (2990, 376, '0,100,279,211,376', '董杜庄镇肖郭庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:19', '', NULL);
INSERT INTO `sys_dept` VALUES (2991, 326, '0,100,279,209,326', '相沟镇三义村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:20', '', NULL);
INSERT INTO `sys_dept` VALUES (2992, 304, '0,100,279,206,304', '孙伯镇莲花峪村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2993, 264, '0,100,279,203,264', '辛安镇北马家村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:24', '', NULL);
INSERT INTO `sys_dept` VALUES (2994, 376, '0,100,279,211,376', '古城镇前湾堤村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:29', '', NULL);
INSERT INTO `sys_dept` VALUES (2995, 326, '0,100,279,209,326', '十字路街道土沟村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:31', '', NULL);
INSERT INTO `sys_dept` VALUES (2996, 264, '0,100,279,203,264', '徐家店镇李家苇夼村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:33', '', NULL);
INSERT INTO `sys_dept` VALUES (2997, 304, '0,100,279,206,304', '王瓜店街道办事处新镇村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:34', '', NULL);
INSERT INTO `sys_dept` VALUES (2998, 376, '0,100,279,211,376', '观城镇岳西村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:38', '', NULL);
INSERT INTO `sys_dept` VALUES (2999, 304, '0,100,279,206,304', '王瓜店街道办事处蒋庄村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3000, 304, '0,100,279,206,304', '王庄镇花园村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3001, 376, '0,100,279,211,376', '莘亭街道办事处前十里岔村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3002, 255, '0,100,279,203,255', '解甲庄街道办事处徐家店村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:22:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3003, 376, '0,100,279,211,376', '十八里铺镇杜中村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3004, 255, '0,100,279,203,255', '莱山街道办事处安吉村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3005, 376, '0,100,279,211,376', '柿子园镇前赵海村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3006, 323, '0,100,279,209,323', '兰陵镇大郭家庄村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3007, 376, '0,100,279,211,376', '王奉镇东宋村村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3008, 304, '0,100,279,206,304', '王庄镇项屯村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3009, 323, '0,100,279,209,323', '芦柞镇皇路东村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3010, 376, '0,100,279,211,376', '王庄集镇刘王店村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3011, 304, '0,100,279,206,304', '王庄镇西刘庄村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3012, 323, '0,100,279,209,323', '芦柞镇河湾村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3013, 376, '0,100,279,211,376', '王庄集镇马集村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3014, 304, '0,100,279,206,304', '汶阳镇袁寨村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3015, 376, '0,100,279,211,376', '王庄集镇韩东街村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3016, 304, '0,100,279,206,304', '新城街道办事处沙沟村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3017, 323, '0,100,279,209,323', '芦柞镇芦柞西村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3018, 376, '0,100,279,211,376', '魏庄镇井王庄村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3019, 304, '0,100,279,206,304', '仪阳街道办事处大栲山村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:23:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3020, 255, '0,100,279,203,255', '院格庄街道办事处院格庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3021, 323, '0,100,279,209,323', '磨山镇河套村村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3022, 376, '0,100,279,211,376', '魏庄镇葛二庄村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3023, 323, '0,100,279,209,323', '磨山镇赤土门新村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3024, 218, '0,100,279,101,218', '颜庄街道办事处状元沟村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3025, 376, '0,100,279,211,376', '张鲁镇潘庄村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3026, 376, '0,100,279,211,376', '张寨镇主卜营第二村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3027, 323, '0,100,279,209,323', '磨山镇史家庄村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3028, 260, '0,100,279,203,260', '柏林庄街道办事处西枣行村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3029, 323, '0,100,279,209,323', '尚岩镇尚岩岳村村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3030, 375, '0,100,279,211,375', '阿城镇夏庄村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3031, 260, '0,100,279,203,260', '古柳街道办事处谭家夼村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3032, 375, '0,100,279,211,375', '郭店屯镇王屯村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3033, 323, '0,100,279,209,323', '尚岩镇文峰村村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3034, 105, '0,100,279,101,105', '玉清湖街道办事处睦里村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3035, 301, '0,100,279,206,301', '磁窑镇前石桥村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3036, 260, '0,100,279,203,260', '沐浴店镇河北院村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3037, 375, '0,100,279,211,375', '西湖镇马庄村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3038, 301, '0,100,279,206,301', '东疏镇花园村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3039, 323, '0,100,279,209,323', '神山镇青竹官庄', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:24:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3040, 376, '0,100,279,211,376', '东鲁街道办事处前孙庄村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3041, 260, '0,100,279,203,260', '沐浴店镇钟家院村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3042, 301, '0,100,279,206,301', '东庄镇中谷堆村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3043, 323, '0,100,279,209,323', '神山镇神山官庄', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3044, 301, '0,100,279,206,301', '葛石镇葛石店村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3045, 216, '0,100,279,101,216', '垛石街道办事处北街村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3046, 260, '0,100,279,203,260', '沐浴店镇榛子沟村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3047, 374, '0,100,279,211,374', '博平镇博陵新村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3048, 301, '0,100,279,206,301', '葛石镇宁家庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3049, 216, '0,100,279,101,216', '回河街道办事处王佰绪村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3050, 323, '0,100,279,209,323', '下村乡孟家渊村村民委员会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3051, 260, '0,100,279,203,260', '谭格庄镇南马庄村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3052, 301, '0,100,279,206,301', '葛石镇茌家庄村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3053, 374, '0,100,279,211,374', '菜屯镇菜屯新村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3054, 216, '0,100,279,101,216', '济阳街道办事处商家村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3055, 301, '0,100,279,206,301', '华丰镇沈家庄村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3056, 260, '0,100,279,203,260', '团旺镇东马家泊村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3057, 374, '0,100,279,211,374', '菜屯镇林海新村梁李村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3058, 301, '0,100,279,206,301', '华丰镇湖村村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3059, 323, '0,100,279,209,323', '向城镇柳峪村村民委员会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3060, 260, '0,100,279,203,260', '万第镇水口村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3061, 374, '0,100,279,211,374', '菜屯镇双河新村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3062, 301, '0,100,279,206,301', '华丰镇白土厂村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3063, 260, '0,100,279,203,260', '穴坊镇黄格庄村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3064, 374, '0,100,279,211,374', '冯官屯镇潘庄新村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3065, 301, '0,100,279,206,301', '华丰镇西爵山村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3066, 323, '0,100,279,209,323', '向城镇梧桐村村民委员会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3067, 260, '0,100,279,203,260', '照旺庄镇祝家疃村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3068, 301, '0,100,279,206,301', '蒋集镇栗家楼村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:25:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3069, 374, '0,100,279,211,374', '冯官屯镇薛店新村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3070, 216, '0,100,279,101,216', '曲堤街道办事处石墓田村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3071, 301, '0,100,279,206,301', '乡饮乡乡饮村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3072, 374, '0,100,279,211,374', '韩屯镇罗屯新村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3073, 323, '0,100,279,209,323', '向城镇孙于沟村村民委员会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3074, 216, '0,100,279,101,216', '新市镇大圈村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3075, 374, '0,100,279,211,374', '胡屯镇景马新村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3076, 323, '0,100,279,209,323', '向城镇西城前村村民委员会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3077, 261, '0,100,279,203,261', '程郭镇三十里堡村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3078, 374, '0,100,279,211,374', '胡屯镇景马新村北于村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3079, 374, '0,100,279,211,374', '胡屯镇景马新村大尹庄', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3080, 261, '0,100,279,203,261', '平里店镇龙冢庙村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3081, 374, '0,100,279,211,374', '胡屯镇戚庄新村周老村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3082, 261, '0,100,279,203,261', '三山岛街道办事处诸冯村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3083, 374, '0,100,279,211,374', '胡屯镇戚庄新村周小村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3084, 261, '0,100,279,203,261', '沙河镇林家村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:26:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3085, 288, '0,100,279,206,288', '邱家店镇埠阳庄村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3086, 217, '0,100,279,101,217', '口镇街道办事处郭陈村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3087, 374, '0,100,279,211,374', '胡屯镇陶桥新村娄庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3088, 261, '0,100,279,203,261', '沙河镇海郑村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3089, 288, '0,100,279,206,288', '邱家店镇吴家庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3090, 261, '0,100,279,203,261', '沙河镇西郑村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3091, 374, '0,100,279,211,374', '胡屯镇陶桥新村徐庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3093, 261, '0,100,279,203,261', '沙河镇西贺家村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3094, 374, '0,100,279,211,374', '贾寨镇耿店新村草林张村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3095, 288, '0,100,279,206,288', '省庄镇岳庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3096, 217, '0,100,279,101,217', '雪野街道办事处房干村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3097, 261, '0,100,279,203,261', '沙河镇民主村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3098, 288, '0,100,279,206,288', '省庄镇小津口村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3099, 317, '0,100,279,209,317', '李官镇桃花源村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3100, 374, '0,100,279,211,374', '贾寨镇耿店新村大梁庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3101, 269, '0,100,279,204,269', '城关街道南亭子村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3102, 288, '0,100,279,206,288', '省庄镇孛家店村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3103, 217, '0,100,279,101,217', '寨里镇卞官庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3104, 261, '0,100,279,203,261', '土山镇皂里于家村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3105, 317, '0,100,279,209,317', '汪沟镇临沂庄村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3106, 288, '0,100,279,206,288', '泰前街道办事处黄山头村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3107, 269, '0,100,279,204,269', '城关街道月庄村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3108, 261, '0,100,279,203,261', '文峰路街道办事处三里河子村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3109, 374, '0,100,279,211,374', '贾寨镇郭堤口新村官赵村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3110, 217, '0,100,279,101,217', '寨里镇苏坡村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3111, 269, '0,100,279,204,269', '城关街道纸坊村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:27:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3112, 261, '0,100,279,203,261', '永安路街道办事处扬务沟村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3113, 374, '0,100,279,211,374', '乐平铺镇鼓城新村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3114, 217, '0,100,279,101,217', '张家洼街道办事处古石沟村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3115, 317, '0,100,279,209,317', '义堂镇凤凰居村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3116, 269, '0,100,279,204,269', '东城街道毕家沟村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3117, 303, '0,100,279,206,303', '果都镇东石沟村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3118, 261, '0,100,279,203,261', '朱桥镇盛王村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3119, 269, '0,100,279,204,269', '东城街道窦家洼村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3120, 374, '0,100,279,211,374', '乐平铺镇乐嘉新村郭赵村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3121, 303, '0,100,279,206,303', '东都镇祝福庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3122, 317, '0,100,279,209,317', '枣园镇姚家庄村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3123, 261, '0,100,279,203,261', '朱桥镇苗家村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3124, 269, '0,100,279,204,269', '东城街道胡梅涧村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3125, 374, '0,100,279,211,374', '乐平铺镇龙江新村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3126, 303, '0,100,279,206,303', '东都镇王家庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3127, 269, '0,100,279,204,269', '东城街道吴家庙村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3128, 259, '0,100,279,203,259', '北马镇呼栾村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3129, 374, '0,100,279,211,374', '乐平铺镇龙山新村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3130, 107, '0,100,279,101,107', '鲍山街道办事处梁王三村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3131, 269, '0,100,279,204,269', '九山镇青杨峪村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3132, 303, '0,100,279,206,303', '果都镇杨家楼村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3133, 259, '0,100,279,203,259', '东江街道办事处小屯村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3134, 374, '0,100,279,211,374', '乐平铺镇状元里新村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3135, 303, '0,100,279,206,303', '刘杜镇刘杜村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3136, 259, '0,100,279,203,259', '东江街道办事处黄格庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3137, 107, '0,100,279,101,107', '鲍山街道办事处和顺社区居委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3138, 303, '0,100,279,206,303', '楼德镇东村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3139, 374, '0,100,279,211,374', '乐平铺镇状元里新村杜庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3140, 259, '0,100,279,203,259', '东莱街道办事处东关村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:28:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3141, 303, '0,100,279,206,303', '楼德镇霄岚村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3142, 374, '0,100,279,211,374', '乐平铺镇状元里新村瓦刀刘村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3143, 107, '0,100,279,101,107', '荷花路街道办事处北辛店村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3144, 328, '0,100,279,209,328', '曹庄镇后店子村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3145, 303, '0,100,279,206,303', '青云街道办事处明珠社区居委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3146, 374, '0,100,279,211,374', '温陈街道博文新村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3147, 269, '0,100,279,204,269', '龙山高新技术产业园樊家庙村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3148, 303, '0,100,279,206,303', '泉沟镇曹家庄村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3149, 328, '0,100,279,209,328', '大兴镇盐店官庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3150, 259, '0,100,279,203,259', '兰高镇兰兴新村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3151, 107, '0,100,279,101,107', '荷花路街道办事处桃园村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3152, 374, '0,100,279,211,374', '温陈街道崇文新村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3153, 269, '0,100,279,204,269', '寺头镇箕子山村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3154, 303, '0,100,279,206,303', '石莱镇西碾子峪村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3155, 328, '0,100,279,209,328', '青云镇刘疃村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3156, 259, '0,100,279,203,259', '龙港街道办事处北皂前村村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3157, 303, '0,100,279,206,303', '天宝镇下疃村村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3158, 374, '0,100,279,211,374', '温陈街道和谐新村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3159, 269, '0,100,279,204,269', '嵩山生态旅游区九杰寨社区', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3160, 259, '0,100,279,203,259', '石良镇枣曲村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3161, 303, '0,100,279,206,303', '汶南镇汶南下村村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3162, 107, '0,100,279,101,107', '荷花路街道办事处孟家庄村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3163, 269, '0,100,279,204,269', '辛寨街道北南流村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3164, 374, '0,100,279,211,374', '温陈街道和谐新村齐中村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3165, 259, '0,100,279,203,259', '石良镇集前刘家村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3166, 303, '0,100,279,206,303', '羊流镇沟西村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3167, 269, '0,100,279,204,269', '辛寨街道盘阳村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3168, 374, '0,100,279,211,374', '温陈街道惠和新村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3169, 303, '0,100,279,206,303', '禹村镇王峪村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:29:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3170, 374, '0,100,279,211,374', '温陈街道惠和新村前石村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3171, 329, '0,100,279,209,329', '罗西街道办事处新河村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3173, 259, '0,100,279,203,259', '石良镇东山新村村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3174, 303, '0,100,279,206,303', '禹村镇朱家庄村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3175, 374, '0,100,279,211,374', '温陈街道温陈社区', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3176, 329, '0,100,279,209,329', '罗西街道办事处满沟屯村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3177, 303, '0,100,279,206,303', '翟镇红石板村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3178, 219, '0,100,279,101,219', '孔村镇李沟村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3179, 303, '0,100,279,206,303', '果都镇梁家庄村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3180, 374, '0,100,279,211,374', '信发街道站北社区', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3181, 259, '0,100,279,203,259', '石良镇东营新村村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3182, 272, '0,100,279,204,272', '东夏镇埠口村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3183, 259, '0,100,279,203,259', '石良镇平里院村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3184, 374, '0,100,279,211,374', '振兴街道吴官屯社区', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3185, 219, '0,100,279,101,219', '孔村镇刘小庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3186, 272, '0,100,279,204,272', '东夏镇柴庙村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3187, 259, '0,100,279,203,259', '石良镇黄城集村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3188, 374, '0,100,279,211,374', '振兴街道御路社区', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3189, 318, '0,100,279,209,318', '褚墩镇东永安村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3190, 259, '0,100,279,203,259', '新嘉街道办事处姚家新村村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3191, 219, '0,100,279,101,219', '孔村镇东天宫村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3192, 259, '0,100,279,203,259', '徐福街道办事处大王村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3193, 374, '0,100,279,211,374', '振兴街道赵屯社区', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3194, 300, '0,100,279,206,300', '徂徕镇邓家庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3195, 272, '0,100,279,204,272', '东夏镇大袁村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3196, 318, '0,100,279,209,318', '傅庄街道办事处通达村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3197, 259, '0,100,279,203,259', '徐福街道办事处乡城东村村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:30:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3198, 377, '0,100,279,211,377', '大桥镇毕庄新村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3199, 219, '0,100,279,101,219', '孝直镇宋柳沟村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3200, 272, '0,100,279,204,272', '东夏镇小袁村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3201, 300, '0,100,279,206,300', '徂徕镇许家庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3202, 259, '0,100,279,203,259', '诸由观镇清汶村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3203, 300, '0,100,279,206,300', '大汶口镇大侯村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3204, 318, '0,100,279,209,318', '黄山镇凤凰村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3205, 272, '0,100,279,204,272', '东夏镇皂户村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3206, 259, '0,100,279,203,259', '诸由观镇赵家村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3207, 377, '0,100,279,211,377', '大桥镇王洼新村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3208, 300, '0,100,279,206,300', '大汶口镇山东坤博生态农业有限公司', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3209, 272, '0,100,279,204,272', '高柳镇北段村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3210, 259, '0,100,279,203,259', '诸由观镇小宗家村委会', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3211, 300, '0,100,279,206,300', '大汶口镇山西街村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3212, 377, '0,100,279,211,377', '刘集镇官庄新村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3213, 272, '0,100,279,204,272', '高柳镇北星落村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3214, 300, '0,100,279,206,300', '大汶口镇西大吴村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3215, 377, '0,100,279,211,377', '刘集镇娄营新村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3216, 272, '0,100,279,204,272', '高柳镇北朱良村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3217, 300, '0,100,279,206,300', '道朗镇润苗家庭农场', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3218, 327, '0,100,279,209,327', '岱崮镇燕窝村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3219, 254, '0,100,279,203,254', '高陵镇东屯车夼村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3220, 377, '0,100,279,211,377', '刘集镇孙郭新村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3221, 272, '0,100,279,204,272', '高柳镇东马兰村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3222, 327, '0,100,279,209,327', '垛庄镇垛庄村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3223, 254, '0,100,279,203,254', '观水镇虎龙头村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3224, 300, '0,100,279,206,300', '道朗镇优品果蔬专业合作社', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3225, 377, '0,100,279,211,377', '牛角店镇三圈新村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3226, 254, '0,100,279,203,254', '水道镇北税目村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:31:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3227, 272, '0,100,279,204,272', '高柳镇高家庄村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3228, 300, '0,100,279,206,300', '范镇范东村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3229, 327, '0,100,279,209,327', '垛庄镇桑园村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3230, 377, '0,100,279,211,377', '牛角店镇王楼新村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3231, 254, '0,100,279,203,254', '文化街道办事处西桂里居委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3232, 272, '0,100,279,204,272', '高柳镇河南杨村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3233, 377, '0,100,279,211,377', '牛角店镇下码头村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3234, 300, '0,100,279,206,300', '范镇倪庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3235, 327, '0,100,279,209,327', '旧寨乡南莫庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3236, 272, '0,100,279,204,272', '高柳镇黄岭村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3237, 300, '0,100,279,206,300', '范镇洲昊绿色家庭农场', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3238, 272, '0,100,279,204,272', '高柳镇水坡村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3239, 377, '0,100,279,211,377', '鱼山镇王庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3240, 327, '0,100,279,209,327', '蒙阴街道办事处曹庄村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3241, 256, '0,100,279,203,256', '北沟镇徐家集村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3242, 300, '0,100,279,206,300', '房村镇西西住村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3243, 272, '0,100,279,204,272', '高柳镇西良孟村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3244, 256, '0,100,279,203,256', '北沟镇西泊子村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3245, 300, '0,100,279,206,300', '化马湾乡草茨村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3246, 327, '0,100,279,209,327', '蒙阴街道办事处宝桥村村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3247, 256, '0,100,279,203,256', '村里集镇村里集村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3248, 373, '0,100,279,211,373', '道口铺街道陈化屯村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3249, 272, '0,100,279,204,272', '何官镇北口埠村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3250, 300, '0,100,279,206,300', '良庄镇陈宣洛村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3251, 327, '0,100,279,209,327', '桃墟镇小王庄村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3252, 256, '0,100,279,203,256', '村里集镇南大赵家村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3253, 373, '0,100,279,211,373', '斗虎屯镇大徐新村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3254, 300, '0,100,279,206,300', '满庄镇满庄北村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3255, 272, '0,100,279,204,272', '何官镇扈家村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:32:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3256, 256, '0,100,279,203,256', '大辛店镇大宫家村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3257, 300, '0,100,279,206,300', '满庄镇南淳于村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3258, 373, '0,100,279,211,373', '斗虎屯镇堠堌新村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3259, 272, '0,100,279,204,272', '何官镇江家村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3260, 300, '0,100,279,206,300', '天平街道康源农业专业合作社', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3261, 373, '0,100,279,211,373', '斗虎屯镇营子新村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3262, 256, '0,100,279,203,256', '大辛店镇东杨店村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3263, 272, '0,100,279,204,272', '何官镇进潘村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3264, 300, '0,100,279,206,300', '下港镇陈寺峪村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3265, 256, '0,100,279,203,256', '大辛店镇三十里堡村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3266, 373, '0,100,279,211,373', '古楼街道铁西社区居委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3267, 325, '0,100,279,209,325', '白彦镇黄坡村村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3268, 272, '0,100,279,204,272', '何官镇南口埠村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3269, 300, '0,100,279,206,300', '下港镇西圈村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3270, 256, '0,100,279,203,256', '刘家沟镇安香台子村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3271, 373, '0,100,279,211,373', '古楼街道望湖社区居委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3272, 272, '0,100,279,204,272', '何官镇前演马村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3273, 256, '0,100,279,203,256', '刘家沟镇李茂庄村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3274, 373, '0,100,279,211,373', '广平镇河畔新村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3275, 300, '0,100,279,206,300', '夏张镇郑家杭村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3276, 272, '0,100,279,204,272', '何官镇尹家村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3277, 325, '0,100,279,209,325', '保太镇高家白壤村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3278, 373, '0,100,279,211,373', '广平镇佳苑新村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3279, 256, '0,100,279,203,256', '小门家镇后迟家村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3280, 300, '0,100,279,206,300', '祝阳镇陈良村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3281, 272, '0,100,279,204,272', '何官镇袁家村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3282, 373, '0,100,279,211,373', '广平镇万和新村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3283, 325, '0,100,279,209,325', '地方镇爱华村村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:33:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3284, 272, '0,100,279,204,272', '何官镇朱家村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3285, 373, '0,100,279,211,373', '韩集镇韩集新村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3286, 325, '0,100,279,209,325', '平邑街道办事处毛家洼村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3287, 272, '0,100,279,204,272', '黄楼街道半壁店村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3288, 373, '0,100,279,211,373', '韩集镇曙光新村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3289, 263, '0,100,279,203,263', '蛇窝泊镇前埠后村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3290, 325, '0,100,279,209,325', '平邑街道办事处红泉村村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3291, 373, '0,100,279,211,373', '侯营镇新城社区居委会', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3292, 263, '0,100,279,203,263', '唐家泊镇麻地村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3293, 272, '0,100,279,204,272', '黄楼街道鹁鸪王村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3294, 302, '0,100,279,206,302', '大羊镇李庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3295, 325, '0,100,279,209,325', '平邑街道办事处同太庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3296, 263, '0,100,279,203,263', '桃村镇蒋家沟村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3297, 373, '0,100,279,211,373', '侯营镇兴和新村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3298, 272, '0,100,279,204,272', '黄楼街道大陈村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3299, 302, '0,100,279,206,302', '戴庙镇南庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3300, 325, '0,100,279,209,325', '仲村镇大昌乐村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3301, 263, '0,100,279,203,263', '桃村镇店西庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3302, 302, '0,100,279,206,302', '东平街道石马村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3303, 373, '0,100,279,211,373', '蒋官屯街道冯庄新村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3304, 272, '0,100,279,204,272', '黄楼街道东沙营村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3305, 263, '0,100,279,203,263', '桃村镇巨夼村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3306, 302, '0,100,279,206,302', '接山镇西杨郭庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3307, 325, '0,100,279,209,325', '仲村镇原宪屯村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3308, 373, '0,100,279,211,373', '梁水镇东南新村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3309, 272, '0,100,279,204,272', '黄楼街道杜家庄村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3310, 302, '0,100,279,206,302', '旧县乡王古店五村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3311, 263, '0,100,279,203,263', '桃村镇西宅村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:34:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3312, 373, '0,100,279,211,373', '梁水镇梁浅新村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3313, 302, '0,100,279,206,302', '旧县乡王古店一村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3314, 272, '0,100,279,204,272', '黄楼街道凤凰店村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3315, 263, '0,100,279,203,263', '亭口镇车夼村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3316, 302, '0,100,279,206,302', '老湖镇陈庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3317, 373, '0,100,279,211,373', '梁水镇七兴新村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3318, 263, '0,100,279,203,263', '庄园街道办事处河北村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3319, 302, '0,100,279,206,302', '老湖镇梁林村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3320, 272, '0,100,279,204,272', '黄楼街道郝家村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3321, 373, '0,100,279,211,373', '柳园街道凤凰工业园', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3322, 302, '0,100,279,206,302', '老湖镇王台村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3323, 272, '0,100,279,204,272', '黄楼街道侯庙西村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3324, 373, '0,100,279,211,373', '沙镇民族新村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3325, 302, '0,100,279,206,302', '老湖镇杨村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3326, 262, '0,100,279,203,262', '毕郭镇东杨格庄村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3327, 321, '0,100,279,209,321', '胜利镇新汪村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3328, 272, '0,100,279,204,272', '黄楼街道巨弥村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3329, 302, '0,100,279,206,302', '老湖镇周林村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3330, 262, '0,100,279,203,262', '毕郭镇方家村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3331, 373, '0,100,279,211,373', '沙镇明天新村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3332, 321, '0,100,279,209,321', '郯城街道办事处龙江社区居民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3333, 302, '0,100,279,206,302', '彭集街道后代村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3334, 272, '0,100,279,204,272', '黄楼街道龙塘村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3335, 302, '0,100,279,206,302', '彭集街道柳营村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3336, 373, '0,100,279,211,373', '沙镇平安新村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3337, 262, '0,100,279,203,262', '毕郭镇河西村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3338, 321, '0,100,279,209,321', '杨集镇程集村村民委员会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3339, 302, '0,100,279,206,302', '彭集街道赵楼村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3340, 272, '0,100,279,204,272', '黄楼街道泉子村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:35:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3341, 373, '0,100,279,211,373', '沙镇三儀新村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3342, 220, '0,100,279,101,220', '白桥镇岳桥村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3343, 262, '0,100,279,203,262', '毕郭镇大霞坞村民委员会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3344, 302, '0,100,279,206,302', '沙河站镇曾庙村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3345, 272, '0,100,279,204,272', '黄楼街道西冀家村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3346, 373, '0,100,279,211,373', '沙镇盐场新村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3347, 262, '0,100,279,203,262', '蚕庄镇诸流王家村民委员会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3348, 220, '0,100,279,101,220', '白桥镇乔尹魏村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3349, 302, '0,100,279,206,302', '沙河站镇董堂村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3350, 272, '0,100,279,204,272', '黄楼街道西李村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3351, 373, '0,100,279,211,373', '沙镇庄户新村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3352, 262, '0,100,279,203,262', '大秦家街道办事处大秦家村村民委员会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3353, 302, '0,100,279,206,302', '沙河站镇屈楼村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3354, 320, '0,100,279,209,320', '青驼镇高里村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3355, 262, '0,100,279,203,262', '金岭镇南冯家村民委员会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3356, 373, '0,100,279,211,373', '闫寺街道任庄新村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3357, 272, '0,100,279,204,272', '黄楼街道小贯店村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3358, 220, '0,100,279,101,220', '怀仁镇古城村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3359, 302, '0,100,279,206,302', '沙河站镇西李庄村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3360, 262, '0,100,279,203,262', '金岭镇山上赵家村民委员会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3361, 302, '0,100,279,206,302', '沙河站镇樱桃园村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3362, 373, '0,100,279,211,373', '郑家镇后董村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3363, 272, '0,100,279,204,272', '黄楼街道小马宋村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3364, 220, '0,100,279,101,220', '龙桑寺镇义合村村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3365, 302, '0,100,279,206,302', '沙河站镇于楼村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3366, 320, '0,100,279,209,320', '辛集镇城子庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3367, 262, '0,100,279,203,262', '梦芝街道办事处城西路家村村民委员会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3368, 373, '0,100,279,211,373', '郑家镇李海新村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3369, 272, '0,100,279,204,272', '黄楼街道辛庄村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3370, 262, '0,100,279,203,262', '夏甸镇西河北村民委员会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3371, 220, '0,100,279,101,220', '沙河镇北徐村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3372, 320, '0,100,279,209,320', '辛集镇沂河花园村村民委员会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:36:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3373, 262, '0,100,279,203,262', '辛庄镇马连沟村民委员会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3374, 272, '0,100,279,204,272', '弥河镇大桥刘家村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3375, 373, '0,100,279,211,373', '郑家镇李西村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3376, 302, '0,100,279,206,302', '沙河站镇张老庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3377, 220, '0,100,279,101,220', '许商街道办事处小陈村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3378, 373, '0,100,279,211,373', '郑家镇苇元村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3379, 272, '0,100,279,204,272', '弥河镇东南营村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3380, 302, '0,100,279,206,302', '梯门镇山头村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3381, 220, '0,100,279,101,220', '殷巷镇白王村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3382, 373, '0,100,279,211,373', '郑家镇温集村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3383, 302, '0,100,279,206,302', '梯门镇双塔村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3384, 272, '0,100,279,204,272', '弥河镇赵疃村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3385, 373, '0,100,279,211,373', '郑家镇西邱村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3386, 302, '0,100,279,206,302', '新湖镇吕祖庙村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3387, 260, '0,100,279,203,260', '谭格庄镇西赵家庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3388, 322, '0,100,279,209,322', '许家湖镇马庄村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3389, 302, '0,100,279,206,302', '新湖镇王仲口村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3390, 220, '0,100,279,101,220', '殷巷镇王楼村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3391, 322, '0,100,279,209,322', '院东头镇刘家店子村村民委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3392, 302, '0,100,279,206,302', '银山镇正义家庭农场', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3393, 260, '0,100,279,203,260', '高格庄镇群英农机专业合作社', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3394, 220, '0,100,279,101,220', '殷巷镇帽杨村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3395, 302, '0,100,279,206,302', '州城街道荣花树村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3396, 322, '0,100,279,209,322', '诸葛镇秀峪村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3397, 322, '0,100,279,209,322', '诸葛镇常庄村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:37:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3398, 304, '0,100,279,206,304', '安驾庄镇益发农业机械专业合作社', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3399, 322, '0,100,279,209,322', '诸葛镇大崖头村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3400, 304, '0,100,279,206,304', '安驾庄镇和埠岭村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3401, 253, '0,100,279,203,253', '回里镇巨甲庄村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3402, 304, '0,100,279,206,304', '安驾庄镇护驾院村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3403, 272, '0,100,279,204,272', '邵庄镇上家庄村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3404, 322, '0,100,279,209,322', '诸葛镇上胡同峪村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3405, 304, '0,100,279,206,304', '安驾庄镇南园村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3406, 253, '0,100,279,203,253', '门楼街道西周格庄村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3407, 322, '0,100,279,209,322', '高桥镇汤家官庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3408, 304, '0,100,279,206,304', '安驾庄镇南赵庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3409, 253, '0,100,279,203,253', '张格庄镇正志夼村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3410, 304, '0,100,279,206,304', '安驾庄镇围子村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3411, 272, '0,100,279,204,272', '谭坊镇南寨村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3412, 304, '0,100,279,206,304', '安驾庄镇朱家颜子村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3413, 220, '0,100,279,101,220', '玉皇庙镇东石桥村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3414, 264, '0,100,279,203,264', '二十里店镇半社乡村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3415, 272, '0,100,279,204,272', '谭坊镇裴坡村', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3416, 220, '0,100,279,101,220', '张坊镇麦丘邑新村村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3417, 264, '0,100,279,203,264', '发城镇栾家村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:38:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3418, 272, '0,100,279,204,272', '谭坊镇袁路村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3419, 304, '0,100,279,206,304', '安临站镇肥城市红山家庭农场', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3420, 264, '0,100,279,203,264', '发城镇西土堆头村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3421, 323, '0,100,279,209,323', '兰陵镇兴朱楼村村民委员会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3422, 304, '0,100,279,206,304', '安临站镇站北头村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3423, 272, '0,100,279,204,272', '王府街道北魏南村', 66, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3424, 264, '0,100,279,203,264', '方圆街道北城阳村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3425, 304, '0,100,279,206,304', '边院镇济河村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3426, 264, '0,100,279,203,264', '方圆街道车村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3427, 304, '0,100,279,206,304', '边院镇姜堂村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3428, 106, '0,100,279,101,106', '大桥街道办事处东营村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3429, 272, '0,100,279,204,272', '王府街道埠后村', 67, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3430, 304, '0,100,279,206,304', '边院镇柳林村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3431, 264, '0,100,279,203,264', '方圆街道迟家村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3432, 324, '0,100,279,209,324', '大田庄乡五圣堂村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3433, 304, '0,100,279,206,304', '边院镇山东嘉亿农业发展有限公司', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3434, 264, '0,100,279,203,264', '方圆街道南修家村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3435, 324, '0,100,279,209,324', '费城街道广丰果树种植专业合作社', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3436, 304, '0,100,279,206,304', '湖屯镇西辛庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3437, 215, '0,100,279,101,215', '官庄街道办事处三角湾村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3438, 264, '0,100,279,203,264', '方圆街道西哲阳村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3439, 304, '0,100,279,206,304', '老城街道陈庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3440, 264, '0,100,279,203,264', '凤城街道北河沟村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:39:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3441, 215, '0,100,279,101,215', '黄河街道办事处周店村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3442, 324, '0,100,279,209,324', '费城新庄镇东流村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3443, 304, '0,100,279,206,304', '老城街道河兴农业专业合作社', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3444, 264, '0,100,279,203,264', '凤城街道东洼村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3445, 215, '0,100,279,101,215', '黄河街道办事处临济村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3446, 324, '0,100,279,209,324', '梁邱镇东河口村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3447, 304, '0,100,279,206,304', '石横镇秀芬农机服务专业合作社', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3448, 264, '0,100,279,203,264', '凤城街道建设村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3449, 324, '0,100,279,209,324', '梁邱镇东张庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3450, 215, '0,100,279,101,215', '龙山街道办事处李官庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3451, 304, '0,100,279,206,304', '石横镇隆庄汇北村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3452, 264, '0,100,279,203,264', '凤城街道南河沟村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3453, 304, '0,100,279,206,304', '孙伯镇尚亿谷物种植家庭农场', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3454, 215, '0,100,279,101,215', '明水街道办事处柳沟村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3455, 264, '0,100,279,203,264', '凤城街道斜角洼村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3456, 324, '0,100,279,209,324', '梁邱镇蒋家围子村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3457, 304, '0,100,279,206,304', '桃园镇盛世泰兴农机服务专业合作社', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3458, 264, '0,100,279,203,264', '行村镇赵疃村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3459, 215, '0,100,279,101,215', '圣井街道办事处圣祥村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3460, 324, '0,100,279,209,324', '梁邱镇马蹄河村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3461, 304, '0,100,279,206,304', '桃园镇潘庄村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3462, 264, '0,100,279,203,264', '留格庄镇院下村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3463, 215, '0,100,279,101,215', '双山街道办事处三涧溪村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3464, 304, '0,100,279,206,304', '桃园镇业长村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3465, 324, '0,100,279,209,324', '梁邱镇下河村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3466, 264, '0,100,279,203,264', '旅游度假区庙头村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3467, 304, '0,100,279,206,304', '王瓜店街道顶立农机专业合作社', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:40:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3468, 272, '0,100,279,204,272', '王府街道贾庄村', 68, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3469, 215, '0,100,279,101,215', '双山街道办事处古月山社区居委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3470, 324, '0,100,279,209,324', '上冶镇城南头村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3471, 304, '0,100,279,206,304', '王瓜店街道南军寨村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3472, 264, '0,100,279,203,264', '盘石店镇潘家沟村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3473, 304, '0,100,279,206,304', '王庄镇李井村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3474, 215, '0,100,279,101,215', '相公庄街道办事处渔张村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3475, 272, '0,100,279,204,272', '王母宫经济发展区懒柳树村', 69, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3476, 324, '0,100,279,209,324', '石井镇安乐村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3477, 264, '0,100,279,203,264', '徐家店镇安家楼底村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3478, 304, '0,100,279,206,304', '汶阳镇北庄村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3479, 324, '0,100,279,209,324', '石井镇石井村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3480, 215, '0,100,279,101,215', '绣惠街道办事处北套村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3481, 272, '0,100,279,204,272', '王母宫经济发展区前徐村', 70, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3482, 304, '0,100,279,206,304', '汶阳镇砖舍村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3483, 324, '0,100,279,209,324', '石井镇同兴村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3484, 215, '0,100,279,101,215', '绣惠街道办事处崖北村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3485, 272, '0,100,279,204,272', '王母宫经济发展区前饮马村', 71, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3486, 304, '0,100,279,206,304', '仪阳街道北辛庄村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3487, 324, '0,100,279,209,324', '石井镇翼城村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3488, 255, '0,100,279,203,255', '解甲庄街道孔辛头村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3489, 304, '0,100,279,206,304', '仪阳街道永兴农业机械专业合作社', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3490, 272, '0,100,279,204,272', '益都街道西三教村', 72, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3491, 324, '0,100,279,209,324', '新庄镇金石沟村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3492, 255, '0,100,279,203,255', '莱山街道千金村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:41:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3493, 260, '0,100,279,203,260', '城厢街道西留村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3494, 324, '0,100,279,209,324', '新庄镇邵白露村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3495, 260, '0,100,279,203,260', '冯格庄街道旧店村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3496, 324, '0,100,279,209,324', '朱田镇乐合村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3497, 214, '0,100,279,101,214', '马山镇黄路山村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3498, 260, '0,100,279,203,260', '高格庄镇北高格庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3499, 324, '0,100,279,209,324', '朱田镇龙杏村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3500, 214, '0,100,279,101,214', '平安街道办事处后升村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3501, 206, '0,100,279,206', '高新区', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3502, 260, '0,100,279,203,260', '河洛镇大山后村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3503, 324, '0,100,279,209,324', '朱田镇石沟村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3504, 214, '0,100,279,101,214', '平安街道办事处前升村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3505, 3501, '0,100,279,206,3501', '房村镇北滕村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3506, 260, '0,100,279,203,260', '龙旺庄街道止凤村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3507, 274, '0,100,279,204,274', '稻田镇步家楼村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3508, 214, '0,100,279,101,214', '平安街道办事处小王庄村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3509, 324, '0,100,279,209,324', '朱田镇新河村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3510, 260, '0,100,279,203,260', '沐浴店镇南寨头村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:42:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3511, 214, '0,100,279,101,214', '双泉镇高庄村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3512, 301, '0,100,279,206,301', '磁窑镇刘家洼村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3513, 260, '0,100,279,203,260', '山前店镇泊北头村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3514, 260, '0,100,279,203,260', '山前店镇范家庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3515, 301, '0,100,279,206,301', '东疏镇柳园村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3516, 260, '0,100,279,203,260', '谭格庄镇大韩家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3517, 301, '0,100,279,206,301', '东疏镇滩头村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3518, 260, '0,100,279,203,260', '谭格庄镇后施格庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3519, 301, '0,100,279,206,301', '东疏镇张大伯村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3520, 260, '0,100,279,203,260', '谭格庄镇小水岔村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3521, 274, '0,100,279,204,274', '稻田镇阁后王村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3522, 260, '0,100,279,203,260', '万第镇贾家庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3523, 301, '0,100,279,206,301', '东庄镇钟家庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3524, 274, '0,100,279,204,274', '稻田镇桂河二村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3525, 260, '0,100,279,203,260', '穴坊镇鸭儿沟村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:43:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3526, 301, '0,100,279,206,301', '伏山镇陈家行村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3527, 274, '0,100,279,204,274', '稻田镇桂河三村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3528, 260, '0,100,279,203,260', '照旺庄镇白泉村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3529, 218, '0,100,279,101,218', '里辛街道上田庄村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3530, 260, '0,100,279,203,260', '照旺庄镇芦儿港村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3531, 301, '0,100,279,206,301', '伏山镇岗上村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3532, 218, '0,100,279,101,218', '里辛街道石家岭村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:21', 'admin', '2024-01-22 19:19:50');
INSERT INTO `sys_dept` VALUES (3533, 260, '0,100,279,203,260', '照旺庄镇五处渡村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3534, 274, '0,100,279,204,274', '稻田镇南齐村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3535, 301, '0,100,279,206,301', '伏山镇茂盛村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3536, 301, '0,100,279,206,301', '伏山镇张家堂村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3537, 274, '0,100,279,204,274', '稻田镇潘家稻村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3538, 218, '0,100,279,101,218', '汶源街道南通香峪村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:32', 'admin', '2024-01-22 19:20:03');
INSERT INTO `sys_dept` VALUES (3539, 301, '0,100,279,206,301', '葛石镇沙埠村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3540, 274, '0,100,279,204,274', '稻田镇潘家庄村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3541, 261, '0,100,279,203,261', '郭家店镇郭家店村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3542, 301, '0,100,279,206,301', '葛石镇石碣集村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3543, 274, '0,100,279,204,274', '稻田镇宋家稻庄三村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3544, 261, '0,100,279,203,261', '郭家店镇柳上村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3545, 218, '0,100,279,101,218', '辛庄街道西铁车村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:44:59', 'admin', '2024-01-22 19:20:21');
INSERT INTO `sys_dept` VALUES (3546, 301, '0,100,279,206,301', '鹤山镇安家庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3547, 261, '0,100,279,203,261', '郭家店镇嘴头村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3548, 274, '0,100,279,204,274', '稻田镇吴家村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3549, 218, '0,100,279,101,218', '颜庄街道东南峪村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:08', 'admin', '2024-01-22 19:20:33');
INSERT INTO `sys_dept` VALUES (3550, 301, '0,100,279,206,301', '鹤山镇前鹤山村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3551, 261, '0,100,279,203,261', '虎头崖镇埠孙村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3552, 274, '0,100,279,204,274', '稻田镇西刘营村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3553, 301, '0,100,279,206,301', '华丰镇后吕观村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3554, 218, '0,100,279,101,218', '颜庄街道西港村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:18', 'admin', '2024-01-22 19:21:05');
INSERT INTO `sys_dept` VALUES (3555, 261, '0,100,279,203,261', '虎头崖镇冯家村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3556, 274, '0,100,279,204,274', '稻田镇兴隆村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3557, 261, '0,100,279,203,261', '虎头崖镇过埠孙家村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3558, 301, '0,100,279,206,301', '蒋集镇大槐树村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3559, 274, '0,100,279,204,274', '稻田镇张营后村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3560, 261, '0,100,279,203,261', '虎头崖镇宁家村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3561, 301, '0,100,279,206,301', '蒋集镇栗家楼村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3562, 261, '0,100,279,203,261', '金城镇小西庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3563, 274, '0,100,279,204,274', '古城街道北冯村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3564, 261, '0,100,279,203,261', '金城镇原家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3565, 301, '0,100,279,206,301', '蒋集镇王家院村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3566, 274, '0,100,279,204,274', '古城街道顶盖村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3567, 261, '0,100,279,203,261', '平里店镇郭于村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:45:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3568, 261, '0,100,279,203,261', '平里店镇小朱村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3569, 274, '0,100,279,204,274', '古城街道东罗桥村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3570, 221, '0,100,279,101,221', '巨野河街道山东舜丰生物科技有限公司', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3571, 329, '0,100,279,209,329', '马厂湖镇金凤村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3572, 301, '0,100,279,206,301', '宁阳经济开发区郭家沟村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3573, 261, '0,100,279,203,261', '三山岛街道后吕村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3574, 274, '0,100,279,204,274', '古城街道古城一村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3576, 261, '0,100,279,203,261', '沙河镇国家村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3577, 301, '0,100,279,206,301', '宁阳经济开发区肖家村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3578, 221, '0,100,279,101,221', '临港街道张越家村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3579, 274, '0,100,279,204,274', '古城街道贾庄村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3580, 319, '0,100,279,209,319', '八湖镇坊上村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3581, 261, '0,100,279,203,261', '沙河镇前屯里村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3582, 301, '0,100,279,206,301', '泗店镇古城村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3583, 261, '0,100,279,203,261', '沙河镇西英村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3584, 319, '0,100,279,209,319', '八湖镇圪墩村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3585, 274, '0,100,279,204,274', '古城街道久安官二村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3586, 301, '0,100,279,206,301', '泗店镇佘庄村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3587, 319, '0,100,279,209,319', '朝阳街道后相庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3588, 261, '0,100,279,203,261', '土山镇北刘家村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3589, 301, '0,100,279,206,301', '泗店镇泗店村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3590, 274, '0,100,279,204,274', '古城街道刘家庄村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3591, 105, '0,100,279,101,105', '美里湖街道邹家庄村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3592, 319, '0,100,279,209,319', '凤凰岭街道凤安村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:46:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3593, 301, '0,100,279,206,301', '文庙街道北满庄村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3594, 379, '0,100,279,211,379', '固河镇崔官屯村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3595, 319, '0,100,279,209,319', '汤河镇新城村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3596, 274, '0,100,279,204,274', '古城街道罗家庄村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3597, 261, '0,100,279,203,261', '土山镇方杨村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3598, 105, '0,100,279,101,105', '吴家堡街道明里村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3599, 379, '0,100,279,211,379', '固河镇胡集村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3600, 261, '0,100,279,203,261', '文峰路街道黄家岔村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3601, 319, '0,100,279,209,319', '汤头街道公安岭村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3602, 274, '0,100,279,204,274', '古城街道石头屋村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3603, 261, '0,100,279,203,261', '夏邱镇干涝洼村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3604, 379, '0,100,279,211,379', '固河镇吴官屯新村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3605, 319, '0,100,279,209,319', '汤头街道薛家店子村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3606, 261, '0,100,279,203,261', '夏邱镇留驾村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3607, 274, '0,100,279,204,274', '古城街道王家庄村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3608, 319, '0,100,279,209,319', '相公街道刘家团村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3609, 379, '0,100,279,211,379', '汇鑫街道鑫源社区', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3610, 288, '0,100,279,206,288', '邱家店镇北王庄村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3611, 261, '0,100,279,203,261', '夏邱镇王家村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3612, 274, '0,100,279,204,274', '侯镇郭家洼村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3613, 319, '0,100,279,209,319', '相公街道南旺村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3614, 379, '0,100,279,211,379', '姜店镇东李新村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3615, 288, '0,100,279,206,288', '邱家店镇逯家庄村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3616, 261, '0,100,279,203,261', '夏邱镇夏南村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3617, 319, '0,100,279,209,319', '郑旺镇张家湾村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3618, 288, '0,100,279,206,288', '邱家店镇宋官村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3619, 274, '0,100,279,204,274', '侯镇西岔河一村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3620, 261, '0,100,279,203,261', '驿道镇河套杨家村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3621, 379, '0,100,279,211,379', '姜店镇梁庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:47:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3622, 288, '0,100,279,206,288', '上高街道凤台村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3623, 274, '0,100,279,204,274', '侯镇西河南二村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3625, 379, '0,100,279,211,379', '姜店镇西郭村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3626, 288, '0,100,279,206,288', '省庄镇刘家庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3627, 274, '0,100,279,204,274', '化龙镇三合村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3628, 288, '0,100,279,206,288', '省庄镇指挥庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3629, 379, '0,100,279,211,379', '姜店镇辛店新村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3630, 274, '0,100,279,204,274', '化龙镇中李村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3631, 288, '0,100,279,206,288', '徐家楼街道白峪店子村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3632, 326, '0,100,279,209,326', '坊前镇坊前村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3633, 274, '0,100,279,204,274', '纪台镇凤凰庄子村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3634, 261, '0,100,279,203,261', '驿道镇刘家洼村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3635, 288, '0,100,279,206,288', '徐家楼街道夏家庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3636, 326, '0,100,279,209,326', '坊前镇龙头花园村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3637, 261, '0,100,279,203,261', '驿道镇毛家涧村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3639, 326, '0,100,279,209,326', '坊前镇坡木村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:55', 'admin', '2024-01-22 03:54:23');
INSERT INTO `sys_dept` VALUES (3640, 261, '0,100,279,203,261', '朱桥镇大琅琊村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:48:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3641, 261, '0,100,279,203,261', '朱桥镇大张村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3642, 326, '0,100,279,209,326', '坊前镇兴旺庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3644, 326, '0,100,279,209,326', '坊前镇朱梅村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3645, 261, '0,100,279,203,261', '朱桥镇东王家村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3647, 326, '0,100,279,209,326', '涝坡镇店头社区', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3648, 261, '0,100,279,203,261', '朱桥镇张官新村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3649, 274, '0,100,279,204,274', '纪台镇郭家庄村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3650, 274, '0,100,279,204,274', '纪台镇吕家庄四村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3651, 259, '0,100,279,203,259', '东江街道大于家村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3652, 326, '0,100,279,209,326', '涝坡镇红运社区', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3653, 259, '0,100,279,203,259', '东莱街道北涧村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3654, 274, '0,100,279,204,274', '纪台镇寨子村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3655, 326, '0,100,279,209,326', '涝坡镇涝坡社区', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3656, 379, '0,100,279,211,379', '梁村镇打渔李村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3657, 259, '0,100,279,203,259', '兰高镇兰高新村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:49:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3658, 326, '0,100,279,209,326', '涝坡镇柳河村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3659, 274, '0,100,279,204,274', '洛城街道北马家村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3660, 259, '0,100,279,203,259', '兰高镇兰欣新村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3661, 379, '0,100,279,211,379', '梁村镇盖洼村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3662, 326, '0,100,279,209,326', '涝坡镇龙山社区', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3663, 259, '0,100,279,203,259', '龙港街道廒上村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3664, 274, '0,100,279,204,274', '洛城街道北亓疃村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3665, 259, '0,100,279,203,259', '石良镇东埠村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3666, 379, '0,100,279,211,379', '梁村镇黄圈村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3667, 326, '0,100,279,209,326', '相沟镇石河村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3668, 259, '0,100,279,203,259', '石良镇东方新村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3669, 379, '0,100,279,211,379', '琉璃寺镇琉璃寺社区', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3670, 274, '0,100,279,204,274', '洛城街道查芦村', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3671, 326, '0,100,279,209,326', '相沟镇王庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3672, 379, '0,100,279,211,379', '琉璃寺镇西牛村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3673, 274, '0,100,279,204,274', '洛城街道成家村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3674, 259, '0,100,279,203,259', '石良镇关李家村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3675, 221, '0,100,279,101,221', '遥墙街道秦家道口村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3676, 379, '0,100,279,211,379', '琉璃寺镇新关村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3677, 274, '0,100,279,204,274', '洛城街道崔家庄子村', 66, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3678, 259, '0,100,279,203,259', '石良镇上刘家村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3679, 221, '0,100,279,101,221', '遥墙街道小杜家村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:50:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3680, 379, '0,100,279,211,379', '清平镇东大新村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3681, 326, '0,100,279,209,326', '筵宾镇下河村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3682, 259, '0,100,279,203,259', '下丁家镇肖家洼村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3683, 379, '0,100,279,211,379', '清平镇商庄新村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3684, 259, '0,100,279,203,259', '新嘉街道解家村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3685, 274, '0,100,279,204,274', '洛城街道段家尧河村', 67, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3686, 379, '0,100,279,211,379', '清平镇小屯新村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3687, 259, '0,100,279,203,259', '新嘉街道王格庄村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3688, 274, '0,100,279,204,274', '洛城街道康家尧水村', 68, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3689, 379, '0,100,279,211,379', '三十里铺镇徐马新村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3690, 259, '0,100,279,203,259', '徐福街道城东村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3691, 303, '0,100,279,206,303', '谷里镇后北佐村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3692, 216, '0,100,279,101,216', '垛石街道窦家村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3693, 379, '0,100,279,211,379', '杨屯镇大李六村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3694, 274, '0,100,279,204,274', '洛城街道梁家尧水村', 69, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:38', '', NULL);
INSERT INTO `sys_dept` VALUES (3695, 259, '0,100,279,203,259', '徐福街道冯高前村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3696, 379, '0,100,279,211,379', '杨屯镇高庄社区', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3697, 303, '0,100,279,206,303', '果都镇马赵村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3698, 259, '0,100,279,203,259', '诸由观镇大于家村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3699, 216, '0,100,279,101,216', '垛石街道范家村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3700, 274, '0,100,279,204,274', '洛城街道留吕村', 70, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3701, 379, '0,100,279,211,379', '杨屯镇张大屯社区', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3702, 259, '0,100,279,203,259', '诸由观镇东台村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3703, 303, '0,100,279,206,303', '果都镇桥西头村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:51:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3704, 379, '0,100,279,211,379', '尹集镇花园新村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3705, 274, '0,100,279,204,274', '洛城街道王家尧水西村', 71, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3706, 216, '0,100,279,101,216', '垛石街道高屯村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3707, 259, '0,100,279,203,259', '诸由观镇观张家村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3708, 303, '0,100,279,206,303', '果都镇杨莫庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3709, 379, '0,100,279,211,379', '尹集镇桃李社区', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3710, 259, '0,100,279,203,259', '诸由观镇后姜家村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3711, 216, '0,100,279,101,216', '垛石街道胡贤村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3712, 274, '0,100,279,204,274', '洛城街道西刘村', 72, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3713, 303, '0,100,279,206,303', '龙廷镇龙廷村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3714, 259, '0,100,279,203,259', '诸由观镇李程杨村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3715, 379, '0,100,279,211,379', '尹集镇徐官屯新村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3716, 274, '0,100,279,204,274', '洛城街道朱家村', 73, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3717, 216, '0,100,279,101,216', '垛石街道江屯村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3718, 259, '0,100,279,203,259', '诸由观镇前姜家村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3719, 379, '0,100,279,211,379', '尹集镇朱庄新村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3720, 326, '0,100,279,209,326', '洙边镇环河净埠村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3721, 259, '0,100,279,203,259', '诸由观镇索家村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3722, 379, '0,100,279,211,379', '赵寨子镇山东乐加倍食品有限公司', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3723, 274, '0,100,279,204,274', '上口镇口子村', 74, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3724, 303, '0,100,279,206,303', '楼德镇东王庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3725, 259, '0,100,279,203,259', '诸由观镇西台村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3726, 326, '0,100,279,209,326', '洙边镇家和村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3727, 216, '0,100,279,101,216', '垛石街道里仁村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3728, 274, '0,100,279,204,274', '上口镇林家下口二村', 75, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3729, 303, '0,100,279,206,303', '楼德镇水坡村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3730, 259, '0,100,279,203,259', '诸由观镇西张家村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3731, 326, '0,100,279,209,326', '洙边镇界首村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3732, 216, '0,100,279,101,216', '垛石街道柳家村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3733, 274, '0,100,279,204,274', '上口镇张家留营村', 76, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3734, 303, '0,100,279,206,303', '青云街道林前村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:52:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3735, 326, '0,100,279,209,326', '洙边镇金山村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3736, 303, '0,100,279,206,303', '青云街道名公南村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3737, 216, '0,100,279,101,216', '垛石街道马良赵村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3738, 254, '0,100,279,203,254', '大窑街道胡家窑村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3739, 211, '0,100,279,211', '高新区', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3740, 274, '0,100,279,204,274', '圣城街道弥西社区居委会', 77, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3741, 254, '0,100,279,203,254', '大窑街道西埠庄村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3742, 303, '0,100,279,206,303', '石莱镇鑫昌农业发展有限公司', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3743, 216, '0,100,279,101,216', '垛石街道南玉皇庙村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3744, 326, '0,100,279,209,326', '洙边镇莲子坡村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3745, 3739, '0,100,279,211,3739', '许营镇武楼新村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3746, 254, '0,100,279,203,254', '大窑街道烟台彤彤果品专业合作社', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3747, 274, '0,100,279,204,274', '圣城街道南辛庄村', 78, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3748, 326, '0,100,279,209,326', '洙边镇崖子村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3749, 303, '0,100,279,206,303', '天宝镇年家峪村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3750, 254, '0,100,279,203,254', '大窑街道窑口村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3751, 216, '0,100,279,101,216', '垛石街道前肖村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3752, 303, '0,100,279,206,303', '汶南镇嶅山东村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3753, 274, '0,100,279,204,274', '圣城街道西关村', 79, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3754, 254, '0,100,279,203,254', '高陵镇东夼村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3755, 378, '0,100,279,211,378', '北馆陶镇城西新村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3756, 254, '0,100,279,203,254', '高陵镇上王格庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3757, 216, '0,100,279,101,216', '垛石街道王安村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3758, 378, '0,100,279,211,378', '北馆陶镇七合新村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3759, 254, '0,100,279,203,254', '观水镇林家村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3760, 303, '0,100,279,206,303', '汶南镇山东食安公社食品科技有限责任公司', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3761, 274, '0,100,279,204,274', '圣城街道燕家庄村', 80, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3762, 378, '0,100,279,211,378', '崇文街道唐固新村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3763, 216, '0,100,279,101,216', '回河街道柏家村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3764, 254, '0,100,279,203,254', '观水镇山前村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:53:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3765, 303, '0,100,279,206,303', '西张庄镇西韩庄村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3766, 378, '0,100,279,211,378', '崇文街道旺庄新村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3767, 254, '0,100,279,203,254', '姜格庄街道酒馆村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3768, 216, '0,100,279,101,216', '回河街道房庙村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3769, 378, '0,100,279,211,378', '店子镇近孔新村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3770, 254, '0,100,279,203,254', '姜格庄街道谭家夼村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3771, 303, '0,100,279,206,303', '羊流镇东王庄村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3772, 303, '0,100,279,206,303', '禹村镇东杜村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3773, 378, '0,100,279,211,378', '定远寨镇安康定远寨新村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3774, 254, '0,100,279,203,254', '昆嵛镇单耳山村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3775, 216, '0,100,279,101,216', '回河街道吴寨村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3776, 274, '0,100,279,204,274', '孙家集街道鲍家楼村', 81, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3777, 254, '0,100,279,203,254', '龙泉镇东店子村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3778, 378, '0,100,279,211,378', '定远寨镇沃园新村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3779, 303, '0,100,279,206,303', '禹村镇卢家沟村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3780, 274, '0,100,279,204,274', '孙家集街道丁家庄村', 82, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3781, 254, '0,100,279,203,254', '龙泉镇杜家庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3782, 378, '0,100,279,211,378', '定远寨镇政和中心新村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3783, 303, '0,100,279,206,303', '禹村镇赵家禹村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3784, 216, '0,100,279,101,216', '回河街道新庄村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3785, 254, '0,100,279,203,254', '龙泉镇高家塂村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3786, 274, '0,100,279,204,274', '孙家集街道后胡营村', 83, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3787, 378, '0,100,279,211,378', '东古城镇乜村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3788, 303, '0,100,279,206,303', '岳家庄乡东堂峪村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3789, 254, '0,100,279,203,254', '龙泉镇神童村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3790, 216, '0,100,279,101,216', '回河街道张保村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:54:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3791, 378, '0,100,279,211,378', '东古城镇三合村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3792, 274, '0,100,279,204,274', '孙家集街道胡营一村', 84, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3793, 254, '0,100,279,203,254', '龙泉镇匣子口村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3794, 216, '0,100,279,101,216', '济阳街道慈兴村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3795, 303, '0,100,279,206,303', '岳家庄乡冯家村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3796, 254, '0,100,279,203,254', '水道镇刘家夼村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3797, 378, '0,100,279,211,378', '东古城镇顺河新村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3798, 323, '0,100,279,209,323', '卞庄街道沙窝村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3799, 216, '0,100,279,101,216', '济阳街道葛店村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3800, 274, '0,100,279,204,274', '孙家集街道石门董村', 85, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3801, 254, '0,100,279,203,254', '水道镇西直格庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3802, 378, '0,100,279,211,378', '东古城镇四合新村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3803, 323, '0,100,279,209,323', '苍山街道苍山东村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3804, 216, '0,100,279,101,216', '济阳街道孟洼村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3805, 274, '0,100,279,204,274', '孙家集街道孙家集村', 86, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3806, 254, '0,100,279,203,254', '玉林店镇东桑杭埠村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3807, 378, '0,100,279,211,378', '东古城镇卫河新村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3808, 300, '0,100,279,206,300', '大汶口镇和平村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3809, 216, '0,100,279,101,216', '济阳街道盆张村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3810, 378, '0,100,279,211,378', '东古城镇杨召新村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3811, 323, '0,100,279,209,323', '苍山街道苍山西村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3812, 256, '0,100,279,203,256', '北沟镇许家村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3813, 300, '0,100,279,206,300', '道朗镇玄庄村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3814, 216, '0,100,279,101,216', '济阳街道王集村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3815, 378, '0,100,279,211,378', '东古城镇岳阳新村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3816, 256, '0,100,279,203,256', '村里集镇小柱村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3817, 323, '0,100,279,209,323', '苍山街道金岭村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3818, 300, '0,100,279,206,300', '道朗镇朱峪村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3819, 216, '0,100,279,101,216', '济阳街道窝沟李村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3820, 378, '0,100,279,211,378', '范寨镇范庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3821, 323, '0,100,279,209,323', '苍山街道莲子汪村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:55:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3822, 256, '0,100,279,203,256', '大辛店镇藏家夼村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3823, 300, '0,100,279,206,300', '黄前镇谷家泉村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3824, 378, '0,100,279,211,378', '范寨镇关王庙新村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3825, 323, '0,100,279,209,323', '苍山街道万花山村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3826, 216, '0,100,279,101,216', '曲堤街道池家村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3827, 256, '0,100,279,203,256', '大辛店镇东解家村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3828, 300, '0,100,279,206,300', '角峪镇岳家庄村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:12', '', NULL);
INSERT INTO `sys_dept` VALUES (3829, 216, '0,100,279,101,216', '曲堤街道新扶店村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3830, 323, '0,100,279,209,323', '苍山街道西大埠村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3831, 378, '0,100,279,211,378', '范寨镇孔里庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3832, 256, '0,100,279,203,256', '大辛店镇金家庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:18', '', NULL);
INSERT INTO `sys_dept` VALUES (3833, 274, '0,100,279,204,274', '孙家集街道西屯村', 87, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3834, 323, '0,100,279,209,323', '苍山街道小岭村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3835, 300, '0,100,279,206,300', '满庄镇曹家寨', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3836, 216, '0,100,279,101,216', '仁风镇平家村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3837, 378, '0,100,279,211,378', '范寨镇祁家务村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3838, 256, '0,100,279,203,256', '大辛店镇魏家村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:26', '', NULL);
INSERT INTO `sys_dept` VALUES (3839, 274, '0,100,279,204,274', '孙家集街道西彦方村', 88, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3840, 323, '0,100,279,209,323', '大仲村镇大仲村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3841, 378, '0,100,279,211,378', '范寨镇宋小屯村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3842, 256, '0,100,279,203,256', '大辛店镇遇驾夼村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3843, 216, '0,100,279,101,216', '新市镇霍楼村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3844, 300, '0,100,279,206,300', '夏张镇夏北村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3845, 256, '0,100,279,203,256', '南王街道石庙周家村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3846, 323, '0,100,279,209,323', '兰陵镇柳树王', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3847, 378, '0,100,279,211,378', '范寨镇宗堂村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3848, 274, '0,100,279,204,274', '孙家集街道小董家庄村', 89, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3849, 300, '0,100,279,206,300', '祝阳镇北乔村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3850, 256, '0,100,279,203,256', '南王街道邢家村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3851, 323, '0,100,279,209,323', '兰陵镇西南圩村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3852, 300, '0,100,279,206,300', '祝阳镇下乔庄', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3853, 256, '0,100,279,203,256', '南王街道窑上村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3854, 274, '0,100,279,204,274', '台头镇北台头村', 90, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:55', '', NULL);
INSERT INTO `sys_dept` VALUES (3855, 323, '0,100,279,209,323', '芦柞镇墩头村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:56:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3856, 256, '0,100,279,203,256', '小门家镇炉上村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3857, 274, '0,100,279,204,274', '台头镇付家茅坨村', 91, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:08', '', NULL);
INSERT INTO `sys_dept` VALUES (3858, 323, '0,100,279,209,323', '芦柞镇李邵村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3859, 378, '0,100,279,211,378', '兰沃乡大曲村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3860, 323, '0,100,279,209,323', '芦柞镇芦柞北村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3861, 274, '0,100,279,204,274', '台头镇郑辇村', 92, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:19', '', NULL);
INSERT INTO `sys_dept` VALUES (3862, 274, '0,100,279,204,274', '田柳镇刘家庄子村', 93, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3863, 378, '0,100,279,211,378', '梁堂镇菜庄新村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3864, 378, '0,100,279,211,378', '梁堂镇李梁堂村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3865, 274, '0,100,279,204,274', '田柳镇坡里村', 94, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:42', '', NULL);
INSERT INTO `sys_dept` VALUES (3866, 378, '0,100,279,211,378', '梁堂镇梁堂新村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:50', '', NULL);
INSERT INTO `sys_dept` VALUES (3867, 274, '0,100,279,204,274', '田柳镇邵家岭村', 95, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:57:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3868, 256, '0,100,279,203,256', '小门家镇上炉村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3869, 274, '0,100,279,204,274', '田柳镇王高二村', 96, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3870, 323, '0,100,279,209,323', '芦柞镇芦柞东村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3871, 256, '0,100,279,203,256', '小门家镇烟台昌辰节水灌溉科技有限公司', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3872, 323, '0,100,279,209,323', '芦柞镇西秦庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3873, 274, '0,100,279,204,274', '田柳镇西青冢子村', 97, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3874, 302, '0,100,279,206,302', '斑鸠店镇东堂子村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3875, 378, '0,100,279,211,378', '梁堂镇邹六庄村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3876, 323, '0,100,279,209,323', '磨山镇三峰村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3877, 302, '0,100,279,206,302', '戴庙镇司里村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3878, 274, '0,100,279,204,274', '田柳镇寨里村', 98, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:29', '', NULL);
INSERT INTO `sys_dept` VALUES (3879, 263, '0,100,279,203,263', '观里镇烟台市博士达有机果品专业合作社', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3880, 323, '0,100,279,209,323', '磨山镇山南村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3881, 302, '0,100,279,206,302', '彭集街道东梁村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3882, 263, '0,100,279,203,263', '官道镇霞泊村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3883, 274, '0,100,279,204,274', '田柳镇中埠头村', 99, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3884, 323, '0,100,279,209,323', '磨山镇周庄村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3885, 378, '0,100,279,211,378', '柳林镇东菜园村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3886, 263, '0,100,279,203,263', '苏家店镇前寨村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3887, 302, '0,100,279,206,302', '沙河站镇徐楼村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3888, 263, '0,100,279,203,263', '苏家店镇曲家沟村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3889, 323, '0,100,279,209,323', '南桥镇大湖子村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3890, 274, '0,100,279,204,274', '文家街道东河村', 100, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:51', '', NULL);
INSERT INTO `sys_dept` VALUES (3891, 378, '0,100,279,211,378', '柳林镇东街村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3892, 302, '0,100,279,206,302', '商老庄乡商楼村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3893, 263, '0,100,279,203,263', '桃村镇荆子埠村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3894, 323, '0,100,279,209,323', '尚岩镇张村纸坊村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:58:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3895, 378, '0,100,279,211,378', '柳林镇东路堂村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3896, 274, '0,100,279,204,274', '文家街道高家官庄村', 101, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3897, 263, '0,100,279,203,263', '桃村镇西草埠村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3898, 323, '0,100,279,209,323', '神山镇六合店', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3899, 302, '0,100,279,206,302', '梯门镇李家所村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:05', '', NULL);
INSERT INTO `sys_dept` VALUES (3900, 263, '0,100,279,203,263', '亭口镇凤山村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3901, 378, '0,100,279,211,378', '柳林镇李庄村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3902, 274, '0,100,279,204,274', '文家街道冀家村', 102, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3903, 323, '0,100,279,209,323', '神山镇前杨官村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3904, 263, '0,100,279,203,263', '亭口镇复兴村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:17', '', NULL);
INSERT INTO `sys_dept` VALUES (3905, 302, '0,100,279,206,302', '州城街道前莲花湾村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3906, 323, '0,100,279,209,323', '下村乡富田村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3907, 378, '0,100,279,211,378', '柳林镇南街村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3908, 274, '0,100,279,204,274', '文家街道南官桥村', 103, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:24', '', NULL);
INSERT INTO `sys_dept` VALUES (3909, 263, '0,100,279,203,263', '西城镇大庙后新村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3910, 323, '0,100,279,209,323', '下村乡上村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:31', '', NULL);
INSERT INTO `sys_dept` VALUES (3911, 302, '0,100,279,206,302', '州城街道师柳林村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3912, 378, '0,100,279,211,378', '柳林镇三里屯村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3913, 274, '0,100,279,204,274', '文家街道南潘曲村', 104, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3914, 262, '0,100,279,203,262', '毕郭镇官地村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3915, 323, '0,100,279,209,323', '下村乡下村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:41', '', NULL);
INSERT INTO `sys_dept` VALUES (3916, 378, '0,100,279,211,378', '柳林镇岳刘庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:43', '', NULL);
INSERT INTO `sys_dept` VALUES (3917, 262, '0,100,279,203,262', '蚕庄镇小河刘家村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3918, 274, '0,100,279,204,274', '文家街道张家河头村', 105, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3919, 323, '0,100,279,209,323', '下村乡增光峪村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3920, 378, '0,100,279,211,378', '柳林镇张四古庄村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3921, 262, '0,100,279,203,262', '大秦家街道闫家沟村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3922, 304, '0,100,279,206,304', '边院镇东向南庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:57', '', NULL);
INSERT INTO `sys_dept` VALUES (3923, 274, '0,100,279,204,274', '羊口镇南宅科村', 106, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 03:59:59', '', NULL);
INSERT INTO `sys_dept` VALUES (3924, 262, '0,100,279,203,262', '阜山镇大疃村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3925, 378, '0,100,279,211,378', '清水镇刘屯村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:01', '', NULL);
INSERT INTO `sys_dept` VALUES (3926, 323, '0,100,279,209,323', '向城镇大王楼村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3927, 262, '0,100,279,203,262', '阜山镇九曲村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:09', '', NULL);
INSERT INTO `sys_dept` VALUES (3928, 304, '0,100,279,206,304', '孙伯镇孙东村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3929, 323, '0,100,279,209,323', '向城镇双楼埠村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3930, 378, '0,100,279,211,378', '桑阿镇白塔集西街村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3931, 262, '0,100,279,203,262', '阜山镇梅家沟村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3932, 274, '0,100,279,204,274', '营里镇大北河村', 107, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3933, 323, '0,100,279,209,323', '向城镇谭赵良子村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (3934, 378, '0,100,279,211,378', '桑阿镇程村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3935, 262, '0,100,279,203,262', '阜山镇牟疃姜家村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3936, 274, '0,100,279,204,274', '营里镇东中疃村', 108, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3937, 262, '0,100,279,203,262', '阜山镇下刘家村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:28', '', NULL);
INSERT INTO `sys_dept` VALUES (3938, 262, '0,100,279,203,262', '阜山镇周家庄子村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3939, 274, '0,100,279,204,274', '营里镇吴家庄子村', 109, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3940, 262, '0,100,279,203,262', '金岭镇邵家村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3941, 262, '0,100,279,203,262', '玲珑镇潘家集村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3942, 262, '0,100,279,203,262', '梦芝街道黄土崖村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3943, 301, '0,100,279,206,301', '伏山镇后伏山村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:00:58', '', NULL);
INSERT INTO `sys_dept` VALUES (3944, 262, '0,100,279,203,262', '齐山镇立甲疃村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:02', '', NULL);
INSERT INTO `sys_dept` VALUES (3945, 262, '0,100,279,203,262', '齐山镇南周家村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3946, 323, '0,100,279,209,323', '向城镇向城西村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3947, 262, '0,100,279,203,262', '齐山镇雀头孙家村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3948, 378, '0,100,279,211,378', '桑阿镇郝胡疃村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:27', '', NULL);
INSERT INTO `sys_dept` VALUES (3949, 265, '0,100,279,204,265', '军埠口凤冲村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3950, 262, '0,100,279,203,262', '齐山镇孙家庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:33', '', NULL);
INSERT INTO `sys_dept` VALUES (3951, 323, '0,100,279,209,323', '向城镇姚村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:35', '', NULL);
INSERT INTO `sys_dept` VALUES (3952, 288, '0,100,279,206,288', '岱庙街道五马小区', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3953, 378, '0,100,279,211,378', '桑阿镇侯六庄村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:36', '', NULL);
INSERT INTO `sys_dept` VALUES (3954, 262, '0,100,279,203,262', '齐山镇西肇甲沟村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:39', '', NULL);
INSERT INTO `sys_dept` VALUES (3955, 323, '0,100,279,209,323', '向城镇鄫城前村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3956, 378, '0,100,279,211,378', '桑阿镇桑桥村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3957, 262, '0,100,279,203,262', '齐山镇邹格庄村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3958, 288, '0,100,279,206,288', '上高街道小井村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:49', '', NULL);
INSERT INTO `sys_dept` VALUES (3959, 262, '0,100,279,203,262', '夏甸镇曹孟村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3960, 323, '0,100,279,209,323', '新兴镇山口村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:54', '', NULL);
INSERT INTO `sys_dept` VALUES (3961, 378, '0,100,279,211,378', '桑阿镇小尹庄村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:01:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3962, 262, '0,100,279,203,262', '夏甸镇大夼村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3963, 288, '0,100,279,206,288', '上高街道北上高村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3964, 323, '0,100,279,209,323', '长城镇李河湾村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3965, 378, '0,100,279,211,378', '万善乡崔王段村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:06', '', NULL);
INSERT INTO `sys_dept` VALUES (3966, 262, '0,100,279,203,262', '夏甸镇臧述庄村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:07', '', NULL);
INSERT INTO `sys_dept` VALUES (3967, 288, '0,100,279,206,288', '省庄镇岗上村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:10', '', NULL);
INSERT INTO `sys_dept` VALUES (3968, 323, '0,100,279,209,323', '长城镇马庄村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:11', '', NULL);
INSERT INTO `sys_dept` VALUES (3969, 262, '0,100,279,203,262', '辛庄镇小东庄村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:14', '', NULL);
INSERT INTO `sys_dept` VALUES (3970, 378, '0,100,279,211,378', '万善乡东元坊村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:15', '', NULL);
INSERT INTO `sys_dept` VALUES (3971, 323, '0,100,279,209,323', '长城镇沙园新村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:21', '', NULL);
INSERT INTO `sys_dept` VALUES (3972, 288, '0,100,279,206,288', '泰前街道水牛埠村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:22', '', NULL);
INSERT INTO `sys_dept` VALUES (3973, 378, '0,100,279,211,378', '万善乡王王段村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:25', '', NULL);
INSERT INTO `sys_dept` VALUES (3974, 323, '0,100,279,209,323', '长城镇土头村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3975, 288, '0,100,279,206,288', '徐家楼街道栗家庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:32', '', NULL);
INSERT INTO `sys_dept` VALUES (3977, 378, '0,100,279,211,378', '斜店乡驻地新村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3978, 323, '0,100,279,209,323', '庄坞镇南营子村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:40', '', NULL);
INSERT INTO `sys_dept` VALUES (3979, 378, '0,100,279,211,378', '辛集镇边庄新村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:47', '', NULL);
INSERT INTO `sys_dept` VALUES (3980, 265, '0,100,279,204,265', '望留街道陈家村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:48', '', NULL);
INSERT INTO `sys_dept` VALUES (3981, 303, '0,100,279,206,303', '楼德镇苗庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:52', '', NULL);
INSERT INTO `sys_dept` VALUES (3982, 378, '0,100,279,211,378', '辛集镇刘八寨新村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:02:56', '', NULL);
INSERT INTO `sys_dept` VALUES (3983, 265, '0,100,279,204,265', '望留街道军埠口村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:00', '', NULL);
INSERT INTO `sys_dept` VALUES (3984, 303, '0,100,279,206,303', '西张庄镇西白沙村农光互补草莓种植基地', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:03', '', NULL);
INSERT INTO `sys_dept` VALUES (3985, 378, '0,100,279,211,378', '辛集镇齐庄新村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3986, 203, '0,100,279,203', '昆嵛山保护区', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:04', '', NULL);
INSERT INTO `sys_dept` VALUES (3987, 265, '0,100,279,204,265', '望留街道刘家村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3988, 378, '0,100,279,211,378', '辛集镇兴太集新村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:13', '', NULL);
INSERT INTO `sys_dept` VALUES (3989, 3986, '0,100,279,203,3986', '昆嵛镇单耳山村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:16', '', NULL);
INSERT INTO `sys_dept` VALUES (3990, 378, '0,100,279,211,378', '辛集镇于家新村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:23', '', NULL);
INSERT INTO `sys_dept` VALUES (3991, 255, '0,100,279,203,255', '马山街道北寨村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3992, 317, '0,100,279,209,317', '半程镇临沂市兰山区贝安有机蔬菜种植农场', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:30', '', NULL);
INSERT INTO `sys_dept` VALUES (3993, 378, '0,100,279,211,378', '烟庄街道范庄村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:34', '', NULL);
INSERT INTO `sys_dept` VALUES (3994, 317, '0,100,279,209,317', '李官镇云泊湖村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:37', '', NULL);
INSERT INTO `sys_dept` VALUES (3995, 378, '0,100,279,211,378', '烟庄街道小化新村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:44', '', NULL);
INSERT INTO `sys_dept` VALUES (3996, 317, '0,100,279,209,317', '柳青街道古城村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:45', '', NULL);
INSERT INTO `sys_dept` VALUES (3997, 260, '0,100,279,203,260', '高格庄镇柳行鲍村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:46', '', NULL);
INSERT INTO `sys_dept` VALUES (3998, 317, '0,100,279,209,317', '汪沟镇闵家寨村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:03:53', '', NULL);
INSERT INTO `sys_dept` VALUES (3999, 261, '0,100,279,203,261', '朱桥镇上坡村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4000, 317, '0,100,279,209,317', '枣园镇大枣沟头村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4001, 259, '0,100,279,203,259', '七甲镇王屋村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4002, 288, '0,100,279,206,288', '邱家店镇侯家店村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4003, 259, '0,100,279,203,259', '诸由观镇河崖马家村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:14', '', NULL);
INSERT INTO `sys_dept` VALUES (4004, 256, '0,100,279,203,256', '刘家沟镇刘家沟村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4005, 263, '0,100,279,203,263', '寺口镇北阎家庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4006, 265, '0,100,279,204,265', '望留街道申家村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4007, 380, '0,100,279,211,380', '八岔路镇路庄联合村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4008, 263, '0,100,279,203,263', '桃村镇肇甲庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4010, 328, '0,100,279,209,328', '曹庄镇常林村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:45', '', NULL);
INSERT INTO `sys_dept` VALUES (4011, 380, '0,100,279,211,380', '八岔路镇杨坟联合村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4012, 252, '0,100,279,203,252', '黄务街道姜家疃村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4013, 265, '0,100,279,204,265', '潍城经济开发区潘里村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:54', '', NULL);
INSERT INTO `sys_dept` VALUES (4014, 328, '0,100,279,209,328', '青云镇界前新村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4015, 380, '0,100,279,211,380', '大辛庄街道辛和村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:04:56', '', NULL);
INSERT INTO `sys_dept` VALUES (4016, 328, '0,100,279,209,328', '青云镇刘家屯村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:05:03', '', NULL);
INSERT INTO `sys_dept` VALUES (4017, 380, '0,100,279,211,380', '戴湾镇吉庄联合村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:05:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4018, 265, '0,100,279,204,265', '潍城经济开发区文家村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:05:07', '', NULL);
INSERT INTO `sys_dept` VALUES (4019, 328, '0,100,279,209,328', '青云镇银马庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:05:12', '', NULL);
INSERT INTO `sys_dept` VALUES (4020, 328, '0,100,279,209,328', '玉山镇湖子后村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:05:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4021, 380, '0,100,279,211,380', '戴湾镇运河高科农业发展有限公司', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:05:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4022, 380, '0,100,279,211,380', '金郝庄镇陈官屯联合村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:05:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4023, 380, '0,100,279,211,380', '金郝庄镇金郝庄联合村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:05:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4024, 380, '0,100,279,211,380', '金郝庄镇肖寨联合村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4025, 380, '0,100,279,211,380', '康庄镇德远村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4026, 217, '0,100,279,101,217', '茶业口镇暗摇头村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:16', '', NULL);
INSERT INTO `sys_dept` VALUES (4027, 380, '0,100,279,211,380', '老赵庄镇王集联合村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4028, 217, '0,100,279,101,217', '茶业口镇龙子村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4029, 380, '0,100,279,211,380', '潘庄镇路寨联合村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4030, 217, '0,100,279,101,217', '方下街道贾官庄村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:35', '', NULL);
INSERT INTO `sys_dept` VALUES (4031, 380, '0,100,279,211,380', '潘庄镇潘庄联合村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:45', '', NULL);
INSERT INTO `sys_dept` VALUES (4032, 217, '0,100,279,101,217', '方下街道兰沟崖村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:45', '', NULL);
INSERT INTO `sys_dept` VALUES (4033, 217, '0,100,279,101,217', '方下街道龙口东村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:56', '', NULL);
INSERT INTO `sys_dept` VALUES (4034, 380, '0,100,279,211,380', '潘庄镇汪堤联合村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:06:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4035, 217, '0,100,279,101,217', '方下街道龙口西村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4036, 380, '0,100,279,211,380', '尚店镇段屯联合村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4037, 217, '0,100,279,101,217', '方下街道嘶马河村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4038, 380, '0,100,279,211,380', '尚店镇司洼联合村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4039, 217, '0,100,279,101,217', '高庄街道塔子村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4040, 380, '0,100,279,211,380', '尚店镇洼里联合村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4041, 380, '0,100,279,211,380', '松林镇丁庄村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4042, 217, '0,100,279,101,217', '高庄街道冢子村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4043, 217, '0,100,279,101,217', '和庄镇东车辐村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4044, 217, '0,100,279,101,217', '口镇街道浆水村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:07:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4045, 380, '0,100,279,211,380', '松林镇尚官营村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4046, 318, '0,100,279,209,318', '册山街道房岭屯村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4047, 217, '0,100,279,101,217', '口镇街道陶北村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:07', '', NULL);
INSERT INTO `sys_dept` VALUES (4048, 318, '0,100,279,209,318', '褚墩镇褚墩一村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4049, 380, '0,100,279,211,380', '松林镇姚楼村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4050, 217, '0,100,279,101,217', '苗山镇西杓山村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4051, 318, '0,100,279,209,318', '黄山镇凤凰村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4052, 380, '0,100,279,211,380', '松林镇姚庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4053, 217, '0,100,279,101,217', '鹏泉街道东龙崮村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4054, 318, '0,100,279,209,318', '罗庄街道鑫园村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:28', '', NULL);
INSERT INTO `sys_dept` VALUES (4055, 380, '0,100,279,211,380', '唐园镇李官寨联合村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4056, 217, '0,100,279,101,217', '鹏泉街道郭家沟村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:37', '', NULL);
INSERT INTO `sys_dept` VALUES (4057, 380, '0,100,279,211,380', '唐园镇西南联合村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4058, 217, '0,100,279,101,217', '羊里街道仓上村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4059, 380, '0,100,279,211,380', '新华街道聊城市临清市志存种植专业合作社', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:52', '', NULL);
INSERT INTO `sys_dept` VALUES (4060, 327, '0,100,279,209,327', '岱崮镇公家庄村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:54', '', NULL);
INSERT INTO `sys_dept` VALUES (4061, 217, '0,100,279,101,217', '羊里街道羊里村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:08:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4062, 380, '0,100,279,211,380', '新华路街道新南村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4063, 217, '0,100,279,101,217', '羊里街道营子村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4064, 327, '0,100,279,209,327', '岱崮镇井旺庄村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4065, 380, '0,100,279,211,380', '烟店镇聊城市临清市风强家庭农场', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4066, 327, '0,100,279,209,327', '垛庄镇古泉村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:16', '', NULL);
INSERT INTO `sys_dept` VALUES (4067, 217, '0,100,279,101,217', '杨庄镇陈西村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4068, 380, '0,100,279,211,380', '烟店镇张寨联村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4069, 327, '0,100,279,209,327', '旧寨乡北楼村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4070, 217, '0,100,279,101,217', '杨庄镇西杨庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4071, 327, '0,100,279,209,327', '旧寨乡高家峪村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4072, 217, '0,100,279,101,217', '杨庄镇闫桥村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:35', '', NULL);
INSERT INTO `sys_dept` VALUES (4073, 327, '0,100,279,209,327', '旧寨乡卧龙湾村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4074, 217, '0,100,279,101,217', '寨里镇刘大下村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:45', '', NULL);
INSERT INTO `sys_dept` VALUES (4075, 327, '0,100,279,209,327', '旧寨乡殷家岭村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4076, 217, '0,100,279,101,217', '张家洼街道高家洼村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:54', '', NULL);
INSERT INTO `sys_dept` VALUES (4077, 327, '0,100,279,209,327', '旧寨乡殷家洼村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:09:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4078, 327, '0,100,279,209,327', '联城镇大王庄村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:10:04', '', NULL);
INSERT INTO `sys_dept` VALUES (4079, 327, '0,100,279,209,327', '联城镇对山庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:10:12', '', NULL);
INSERT INTO `sys_dept` VALUES (4080, 327, '0,100,279,209,327', '联城镇和恬村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:10:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4081, 327, '0,100,279,209,327', '联城镇刘家官庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:10:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4082, 327, '0,100,279,209,327', '联城镇龙凤峪村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:10:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4083, 327, '0,100,279,209,327', '联城镇罗家沟村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:10:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4084, 327, '0,100,279,209,327', '联城镇沙沟峪村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:10:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4085, 266, '0,100,279,204,266', '于河街道大成章西村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:03', '', NULL);
INSERT INTO `sys_dept` VALUES (4086, 327, '0,100,279,209,327', '联城镇桃花峪村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4087, 327, '0,100,279,209,327', '联城镇王家洼村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:12', '', NULL);
INSERT INTO `sys_dept` VALUES (4088, 265, '0,100,279,204,265', '于河街道栾家村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4089, 376, '0,100,279,211,376', '朝城镇四合村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4090, 327, '0,100,279,209,327', '联城镇银麦村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4091, 327, '0,100,279,209,327', '蒙阴街道大田庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4092, 376, '0,100,279,211,376', '大王寨镇东丈八村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4093, 265, '0,100,279,204,265', '于河街道前王村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4094, 327, '0,100,279,209,327', '坦埠镇东崖村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:37', '', NULL);
INSERT INTO `sys_dept` VALUES (4095, 376, '0,100,279,211,376', '大王寨镇武家河村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4096, 107, '0,100,279,101,107', '鲍山街道曲家庄村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4097, 107, '0,100,279,101,107', '鲍山街道孙家卫村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4098, 265, '0,100,279,204,265', '于河街道殷赫庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4099, 107, '0,100,279,101,107', '彩石街道大龙堂村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:11:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4100, 273, '0,100,279,204,273', '贾悦镇大元社区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4101, 327, '0,100,279,209,327', '桃墟镇孙家麻峪村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:04', '', NULL);
INSERT INTO `sys_dept` VALUES (4102, 107, '0,100,279,101,107', '董家街道张而村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4103, 376, '0,100,279,211,376', '大王寨镇西大场村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4104, 327, '0,100,279,209,327', '野店镇大山村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:14', '', NULL);
INSERT INTO `sys_dept` VALUES (4105, 107, '0,100,279,101,107', '王舍人街道张马屯村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:16', '', NULL);
INSERT INTO `sys_dept` VALUES (4106, 273, '0,100,279,204,273', '贾悦镇欧美尔社区', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4107, 376, '0,100,279,211,376', '大王寨镇西田庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4108, 327, '0,100,279,209,327', '野店镇黄土良村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:24', '', NULL);
INSERT INTO `sys_dept` VALUES (4109, 107, '0,100,279,101,107', '王舍人街道赵仙庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4110, 376, '0,100,279,211,376', '大王寨镇杨庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4111, 273, '0,100,279,204,273', '贾悦镇下坡社区', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4112, 327, '0,100,279,209,327', '野店镇焦坡村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4113, 376, '0,100,279,211,376', '大王寨镇尧头村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4114, 327, '0,100,279,209,327', '野店镇金泉峪村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4115, 327, '0,100,279,209,327', '野店镇南峪村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4116, 376, '0,100,279,211,376', '大张家镇李庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4117, 219, '0,100,279,101,219', '安城镇三皇殿村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4118, 327, '0,100,279,209,327', '野店镇烟庄村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:12:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4119, 273, '0,100,279,204,273', '石桥子镇西臧家庄社区', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4120, 376, '0,100,279,211,376', '东鲁街道大赵庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4121, 219, '0,100,279,101,219', '锦水街道毕海洋村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:07', '', NULL);
INSERT INTO `sys_dept` VALUES (4122, 376, '0,100,279,211,376', '董杜庄镇花庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4123, 273, '0,100,279,204,273', '舜王街道鑫城社区', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:14', '', NULL);
INSERT INTO `sys_dept` VALUES (4124, 219, '0,100,279,101,219', '锦水街道东子顺北村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4125, 376, '0,100,279,211,376', '古城镇杜楼新村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4126, 219, '0,100,279,101,219', '孔村镇高路桥村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4127, 376, '0,100,279,211,376', '古城镇吕堤村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4128, 325, '0,100,279,209,325', '柏林镇柘沟村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4129, 219, '0,100,279,101,219', '孔村镇前大峪村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4130, 376, '0,100,279,211,376', '古云镇同智营村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4131, 219, '0,100,279,101,219', '玫瑰镇东站村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:44', '', NULL);
INSERT INTO `sys_dept` VALUES (4132, 325, '0,100,279,209,325', '保太镇大三阳二村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4133, 376, '0,100,279,211,376', '观城镇孟秋寺村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4134, 219, '0,100,279,101,219', '孝直镇孝直村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4135, 273, '0,100,279,204,273', '桃林镇漩沟子村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:13:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4136, 325, '0,100,279,209,325', '保太镇大三阳三村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4137, 325, '0,100,279,209,325', '保太镇孟家武阳村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4138, 270, '0,100,279,204,270', '红河镇东李家庄村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4139, 325, '0,100,279,209,325', '保太镇南夫宁村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4140, 270, '0,100,279,204,270', '乔官镇耿家官庄村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4141, 270, '0,100,279,204,270', '五图街道东上疃村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4142, 220, '0,100,279,101,220', '白桥镇菜园村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4143, 325, '0,100,279,209,325', '卞桥镇北官庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4144, 267, '0,100,279,204,267', '坊城街道莲花池村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:45', '', NULL);
INSERT INTO `sys_dept` VALUES (4145, 220, '0,100,279,101,220', '白桥镇高桥河沟村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4146, 325, '0,100,279,209,325', '卞桥镇孟家湖村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4147, 220, '0,100,279,101,220', '白桥镇河埃孙村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:56', '', NULL);
INSERT INTO `sys_dept` VALUES (4148, 325, '0,100,279,209,325', '卞桥镇南安靖村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4149, 266, '0,100,279,204,266', '寒亭街道南纸房村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:14:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4150, 220, '0,100,279,101,220', '白桥镇贾吴村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4151, 325, '0,100,279,209,325', '卞桥镇时家村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4152, 220, '0,100,279,101,220', '白桥镇潘桥村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4153, 325, '0,100,279,209,325', '卞桥镇佟家庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4154, 220, '0,100,279,101,220', '白桥镇三合村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4155, 325, '0,100,279,209,325', '卞桥镇西荆埠村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4156, 325, '0,100,279,209,325', '卞桥镇岳家村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4157, 220, '0,100,279,101,220', '怀仁镇芦沟庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4158, 325, '0,100,279,209,325', '卞桥镇资邱村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4159, 220, '0,100,279,101,220', '怀仁镇前李村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:43', '', NULL);
INSERT INTO `sys_dept` VALUES (4160, 325, '0,100,279,209,325', '地方镇大井头村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4161, 220, '0,100,279,101,220', '怀仁镇小玉皇庙村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:15:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4162, 325, '0,100,279,209,325', '地方镇康太庄村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4163, 220, '0,100,279,101,220', '怀仁镇芝糖家村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4164, 220, '0,100,279,101,220', '贾庄镇孟庄铺村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4165, 325, '0,100,279,209,325', '地方镇山东辉煌食品有限公司', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4166, 220, '0,100,279,101,220', '龙桑寺镇岔道村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4167, 325, '0,100,279,209,325', '丰阳镇郑家峪村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4168, 325, '0,100,279,209,325', '平邑街道东贺庄村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4169, 220, '0,100,279,101,220', '龙桑寺镇新马村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4170, 325, '0,100,279,209,325', '平邑街道东张庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4171, 269, '0,100,279,204,269', '东城街道东黄埠店村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:16:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4172, 325, '0,100,279,209,325', '平邑街道窦家庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4173, 220, '0,100,279,101,220', '沙河镇芦家村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4174, 269, '0,100,279,204,269', '嵩山生态旅游区天井村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4175, 272, '0,100,279,204,272', '何官镇东台村', 73, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4176, 325, '0,100,279,209,325', '平邑街道晗哺村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4177, 274, '0,100,279,204,274', '营里镇南单前村', 110, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4178, 220, '0,100,279,101,220', '沙河镇前进村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4179, 325, '0,100,279,209,325', '平邑街道西张庄二村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4180, 265, '0,100,279,204,265', '望留街道南三里村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:52', '', NULL);
INSERT INTO `sys_dept` VALUES (4181, 220, '0,100,279,101,220', '孙集镇田湾陈村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:17:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4182, 265, '0,100,279,204,265', '元贞杂粮家庭农场', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4183, 220, '0,100,279,101,220', '殷巷镇联兴村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:07', '', NULL);
INSERT INTO `sys_dept` VALUES (4184, 325, '0,100,279,209,325', '平邑街道西张庄一村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4185, 273, '0,100,279,204,273', '相州镇孙田子村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4186, 220, '0,100,279,101,220', '玉皇庙镇后昝家村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4187, 220, '0,100,279,101,220', '玉皇庙镇西石桥村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4188, 220, '0,100,279,101,220', '玉皇庙镇张大人村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4189, 265, '0,100,279,204,265', '潍城经济开发区葛埠村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4190, 325, '0,100,279,209,325', '平邑街道小井村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4191, 220, '0,100,279,101,220', '张坊镇张坊村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4192, 220, '0,100,279,101,220', '郑路镇解家村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:18:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4193, 325, '0,100,279,209,325', '武台镇南武沟村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:19:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4194, 325, '0,100,279,209,325', '郑城镇埠西村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:19:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4195, 104, '0,100,279,101,104', '陡沟街道黄山店村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:19:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4196, 325, '0,100,279,209,325', '郑城镇苍山村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:19:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4197, 325, '0,100,279,209,325', '郑城镇杜家山村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:19:43', '', NULL);
INSERT INTO `sys_dept` VALUES (4198, 106, '0,100,279,101,106', '桑梓店街道老寨村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:19:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4199, 376, '0,100,279,211,376', '观城镇周路村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:19:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4200, 376, '0,100,279,211,376', '河店镇马桥村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:19:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4201, 376, '0,100,279,211,376', '妹冢镇东高庄', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4202, 376, '0,100,279,211,376', '妹冢镇东妹冢村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4203, 325, '0,100,279,209,325', '郑城镇柿子峪村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4204, 376, '0,100,279,211,376', '妹冢镇高庄新村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:28', '', NULL);
INSERT INTO `sys_dept` VALUES (4205, 325, '0,100,279,209,325', '郑城镇四合村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4206, 101, '0,100,279,101', '新旧动能转换起步区', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4207, 325, '0,100,279,209,325', '郑城镇松林村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4208, 376, '0,100,279,211,376', '妹冢镇后香庙村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4209, 376, '0,100,279,211,376', '妹冢镇四合村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:20:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4211, 376, '0,100,279,211,376', '妹冢镇谭庄村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4212, 376, '0,100,279,211,376', '妹冢镇吴庄村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:14', '', NULL);
INSERT INTO `sys_dept` VALUES (4213, 321, '0,100,279,209,321', '港上镇港上村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4214, 376, '0,100,279,211,376', '妹冢镇西妹冢村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4215, 321, '0,100,279,209,321', '港上镇停庙村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4216, 4206, '0,100,279,101,4206', '崔寨街道狮子孙村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4217, 376, '0,100,279,211,376', '莘亭街道徐庙村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4218, 241, '0,100,279,201,241', '榴园镇朱村委员会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4219, 321, '0,100,279,209,321', '红花镇大院子村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4220, 4206, '0,100,279,101,4206', '大桥街道泉泰花卉养殖农民专业合作社', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4221, 376, '0,100,279,211,376', '莘州街道后十里坞村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:44', '', NULL);
INSERT INTO `sys_dept` VALUES (4222, 321, '0,100,279,209,321', '红花镇红花埠村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4223, 243, '0,100,279,201,243', '冯卯镇别庄村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4224, 4206, '0,100,279,101,4206', '大桥街道祝家村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4225, 376, '0,100,279,211,376', '十八里铺镇郝楼村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:52', '', NULL);
INSERT INTO `sys_dept` VALUES (4226, 321, '0,100,279,209,321', '红花镇袁堂村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:54', '', NULL);
INSERT INTO `sys_dept` VALUES (4227, 4206, '0,100,279,101,4206', '太平街道郝宅村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:21:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4228, 376, '0,100,279,211,376', '十八里铺镇邵庄村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4229, 321, '0,100,279,209,321', '红花镇壮口村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4230, 243, '0,100,279,201,243', '桑村镇白满化村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:03', '', NULL);
INSERT INTO `sys_dept` VALUES (4231, 4206, '0,100,279,101,4206', '太平街道小王家村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4232, 321, '0,100,279,209,321', '花园镇朝阳村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4233, 243, '0,100,279,201,243', '水泉镇袁庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4234, 376, '0,100,279,211,376', '柿子园镇王绳庄村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4235, 321, '0,100,279,209,321', '花园镇捷庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4236, 321, '0,100,279,209,321', '花园镇涝沟村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4237, 376, '0,100,279,211,376', '王奉镇孟庄村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4238, 242, '0,100,279,201,242', '涧头集镇孙楼村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4239, 215, '0,100,279,101,215', '白云湖街道辛丰村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:37', '', NULL);
INSERT INTO `sys_dept` VALUES (4240, 321, '0,100,279,209,321', '花园镇李村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4241, 376, '0,100,279,211,376', '王庄集镇东马厂村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4242, 242, '0,100,279,201,242', '涧头集镇张楼村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4243, 215, '0,100,279,101,215', '白云湖街道赵官桥村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4244, 321, '0,100,279,209,321', '花园镇俩墩村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4245, 376, '0,100,279,211,376', '魏庄镇东八角庙村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4246, 215, '0,100,279,101,215', '垛庄镇车厢村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4247, 242, '0,100,279,201,242', '马兰屯镇官宅村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:22:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4248, 321, '0,100,279,209,321', '花园镇秦庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4249, 376, '0,100,279,211,376', '魏庄镇田马固村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:04', '', NULL);
INSERT INTO `sys_dept` VALUES (4250, 215, '0,100,279,101,215', '官庄街道胡山新村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4251, 321, '0,100,279,209,321', '李庄镇金岭村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4252, 376, '0,100,279,211,376', '燕店镇安庄村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:12', '', NULL);
INSERT INTO `sys_dept` VALUES (4253, 242, '0,100,279,201,242', '马兰屯镇前于里村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:14', '', NULL);
INSERT INTO `sys_dept` VALUES (4254, 215, '0,100,279,101,215', '官庄街道郑家寨村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:16', '', NULL);
INSERT INTO `sys_dept` VALUES (4255, 376, '0,100,279,211,376', '燕店镇付庄村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4256, 242, '0,100,279,201,242', '泥沟镇西鹿湾村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4257, 215, '0,100,279,101,215', '黄河街道东李村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:28', '', NULL);
INSERT INTO `sys_dept` VALUES (4258, 376, '0,100,279,211,376', '燕店镇孟家村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4259, 215, '0,100,279,101,215', '黄河街道杏园村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4260, 242, '0,100,279,201,242', '邳庄镇贾园村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4261, 376, '0,100,279,211,376', '燕店镇杨二庄村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4262, 215, '0,100,279,101,215', '龙山街道大城后村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4263, 321, '0,100,279,209,321', '李庄镇株柏村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4264, 376, '0,100,279,211,376', '燕塔办事处武庄村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4265, 321, '0,100,279,209,321', '马头镇北花园村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:54', '', NULL);
INSERT INTO `sys_dept` VALUES (4266, 215, '0,100,279,101,215', '明水街道御泉社区居委会', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4267, 376, '0,100,279,211,376', '樱桃园镇东赵海村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:23:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4268, 244, '0,100,279,201,244', '鲍沟镇邢庄村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4269, 321, '0,100,279,209,321', '马头镇采莲湖村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:03', '', NULL);
INSERT INTO `sys_dept` VALUES (4270, 215, '0,100,279,101,215', '宁家埠街道宁一村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:04', '', NULL);
INSERT INTO `sys_dept` VALUES (4271, 376, '0,100,279,211,376', '樱桃园镇刘亭村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4272, 244, '0,100,279,201,244', '北辛街道办事处于岗居委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4273, 215, '0,100,279,101,215', '宁家埠街道桑徐联村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:14', '', NULL);
INSERT INTO `sys_dept` VALUES (4274, 376, '0,100,279,211,376', '樱桃园镇四合村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4275, 321, '0,100,279,209,321', '马头镇马东村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4276, 215, '0,100,279,101,215', '宁家埠街道西埠村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4277, 376, '0,100,279,211,376', '张鲁回族镇潘海村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4278, 244, '0,100,279,201,244', '北辛街道办事处后十里铺居委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4279, 321, '0,100,279,209,321', '胜利镇前房庄村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4280, 215, '0,100,279,101,215', '普集街道大柏村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4281, 376, '0,100,279,211,376', '张鲁镇菜园村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:35', '', NULL);
INSERT INTO `sys_dept` VALUES (4282, 321, '0,100,279,209,321', '郯城街道东庄社区居委会', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4283, 215, '0,100,279,101,215', '圣井街道宋李福村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4284, 244, '0,100,279,201,244', '滨湖镇金马山村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:43', '', NULL);
INSERT INTO `sys_dept` VALUES (4285, 215, '0,100,279,101,215', '文祖街道临济村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4286, 321, '0,100,279,209,321', '郯城街道归义东村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:24:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4287, 244, '0,100,279,201,244', '滨湖镇田桥村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4288, 215, '0,100,279,101,215', '相公庄街道蔡庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4289, 376, '0,100,279,211,376', '张鲁镇东街村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:12', '', NULL);
INSERT INTO `sys_dept` VALUES (4290, 215, '0,100,279,101,215', '相公庄街道郝庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4291, 244, '0,100,279,201,244', '滨湖镇前郁郎村委会', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4292, 321, '0,100,279,209,321', '新村银杏产业开发区新苑村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4293, 376, '0,100,279,211,376', '俎店镇店董庄村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4294, 215, '0,100,279,101,215', '相公庄街道鸣羊新村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4295, 376, '0,100,279,211,376', '俎店镇许村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4296, 244, '0,100,279,201,244', '柴胡店镇前闫村委会', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4297, 215, '0,100,279,101,215', '相公庄街道相公联村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4298, 215, '0,100,279,101,215', '绣惠街道回一村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:48', '', NULL);
INSERT INTO `sys_dept` VALUES (4299, 215, '0,100,279,101,215', '章丘刁镇水寨镇辛丰村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:25:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4300, 244, '0,100,279,201,244', '东郭镇东坞沟村委会', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:26:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4301, 244, '0,100,279,201,244', '东郭镇前坞沟村委会', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:26:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4302, 214, '0,100,279,101,214', '归德街道东杨村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:26:43', '', NULL);
INSERT INTO `sys_dept` VALUES (4303, 214, '0,100,279,101,214', '归德街道李官庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:26:52', '', NULL);
INSERT INTO `sys_dept` VALUES (4304, 214, '0,100,279,101,214', '归德街道前刘官村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4305, 214, '0,100,279,101,214', '马山镇关王庙村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4306, 244, '0,100,279,201,244', '级索镇东龙岗村委会', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4307, 244, '0,100,279,201,244', '级索镇后王晁村委会', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4308, 214, '0,100,279,101,214', '平安街道鹁鸽孙庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4309, 214, '0,100,279,101,214', '平安街道郭庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:35', '', NULL);
INSERT INTO `sys_dept` VALUES (4310, 244, '0,100,279,201,244', '姜屯镇西党村村委会', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4311, 244, '0,100,279,201,244', '姜屯镇闫西村委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4312, 209, '0,100,279,209', '沂河新区', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:27:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4313, 214, '0,100,279,101,214', '平安街道老王府村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4314, 244, '0,100,279,201,244', '姜屯镇东滕城村委会', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4315, 214, '0,100,279,101,214', '平安街道名甲庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4316, 4312, '0,100,279,209,4312', '朝阳吴家坊头村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4317, 244, '0,100,279,201,244', '姜屯镇万福楼村委会', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:13', 'admin', '2024-01-22 05:11:33');
INSERT INTO `sys_dept` VALUES (4318, 214, '0,100,279,101,214', '平安街道前孙庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4319, 4312, '0,100,279,209,4312', '凤凰岭王家黑墩村', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4320, 244, '0,100,279,201,244', '界河镇南界河村委会', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:25', 'admin', '2024-01-22 05:11:58');
INSERT INTO `sys_dept` VALUES (4321, 4312, '0,100,279,209,4312', '梅家埠盛安村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4322, 214, '0,100,279,101,214', '平安街道前朱庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4323, 244, '0,100,279,201,244', '荆河街道办事处东倪居委会', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4324, 214, '0,100,279,101,214', '平安街道桥子李村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:43', '', NULL);
INSERT INTO `sys_dept` VALUES (4325, 244, '0,100,279,201,244', '龙阳镇柳沟村委会', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:54', '', NULL);
INSERT INTO `sys_dept` VALUES (4326, 214, '0,100,279,101,214', '平安街道三合庄村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:28:56', '', NULL);
INSERT INTO `sys_dept` VALUES (4327, 214, '0,100,279,101,214', '平安街道石庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:07', '', NULL);
INSERT INTO `sys_dept` VALUES (4328, 244, '0,100,279,201,244', '龙阳镇从条村委会', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:07', '', NULL);
INSERT INTO `sys_dept` VALUES (4329, 214, '0,100,279,101,214', '平安街道藤屯村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4330, 244, '0,100,279,201,244', '南沙河镇后房村委会', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4331, 320, '0,100,279,209,320', '岸堤镇大峪庄村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4332, 214, '0,100,279,101,214', '平安街道张家桥村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:24', '', NULL);
INSERT INTO `sys_dept` VALUES (4333, 320, '0,100,279,209,320', '岸堤镇库东村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:31', '', NULL);
INSERT INTO `sys_dept` VALUES (4334, 244, '0,100,279,201,244', '西岗镇马庙村委会', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4335, 214, '0,100,279,101,214', '万德街道大刘村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4336, 320, '0,100,279,209,320', '岸堤镇田家北村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4337, 214, '0,100,279,101,214', '文昌街道老徐村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4338, 320, '0,100,279,209,320', '岸堤镇岩路村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4339, 244, '0,100,279,201,244', '西岗镇西北田岗村村委会', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4340, 214, '0,100,279,101,214', '孝里街道袁道口村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4341, 320, '0,100,279,209,320', '马牧池乡双泉峪村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:29:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4342, 214, '0,100,279,101,214', '张夏街道焦家台村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4343, 244, '0,100,279,201,244', '西岗镇西姜桥村委会', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4344, 320, '0,100,279,209,320', '双堠镇南龙口村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:03', '', NULL);
INSERT INTO `sys_dept` VALUES (4345, 214, '0,100,279,101,214', '张夏街道纸坊村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4346, 320, '0,100,279,209,320', '双堠镇南石门村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4347, 244, '0,100,279,201,244', '羊庄镇西于村委会', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4348, 320, '0,100,279,209,320', '双堠镇瓦屋庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4349, 375, '0,100,279,211,375', '阿城镇李炉村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4350, 244, '0,100,279,201,244', '羊庄镇东南于村委会', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4351, 320, '0,100,279,209,320', '双堠镇五彩庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4352, 375, '0,100,279,211,375', '阿城镇齐店村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4353, 244, '0,100,279,201,244', '羊庄镇鑫幸家庭农场', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4354, 320, '0,100,279,209,320', '苏村镇陈家官庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4355, 375, '0,100,279,211,375', '阿城镇陶城铺新村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4356, 218, '0,100,279,101,218', '里辛街道龙丰果蔬专业合作社', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4357, 320, '0,100,279,209,320', '辛集镇凤头村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4358, 375, '0,100,279,211,375', '阿城镇杨庄新村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4359, 218, '0,100,279,101,218', '汶源街道东王庄村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:30:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4360, 320, '0,100,279,209,320', '依汶镇薄板台村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4361, 240, '0,100,279,201,240', '陶庄镇前西村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4362, 375, '0,100,279,211,375', '安乐镇蒿铺新村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:04', '', NULL);
INSERT INTO `sys_dept` VALUES (4363, 320, '0,100,279,209,320', '依汶镇大岱村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4364, 240, '0,100,279,201,240', '陶庄镇尚马村委会', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4365, 320, '0,100,279,209,320', '依汶镇店子村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4366, 375, '0,100,279,211,375', '安乐镇刘庙村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4367, 240, '0,100,279,201,240', '周营镇前金马村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4368, 320, '0,100,279,209,320', '依汶镇冯家村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:28', '', NULL);
INSERT INTO `sys_dept` VALUES (4369, 375, '0,100,279,211,375', '安乐镇南街村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4370, 320, '0,100,279,209,320', '依汶镇隋家店村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4371, 375, '0,100,279,211,375', '安乐镇袁楼村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4372, 240, '0,100,279,201,240', '周营镇湾槐树村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4373, 320, '0,100,279,209,320', '依汶镇汶河贯头村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:44', '', NULL);
INSERT INTO `sys_dept` VALUES (4374, 375, '0,100,279,211,375', '博济桥街道前李村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4375, 240, '0,100,279,201,240', '邹坞镇西南村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4376, 216, '0,100,279,101,216', '回河街道后封村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:31:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4377, 216, '0,100,279,101,216', '回河街道新刘村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4378, 241, '0,100,279,201,241', '底阁镇周庄村委会', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:06', 'admin', '2024-01-22 04:33:28');
INSERT INTO `sys_dept` VALUES (4379, 375, '0,100,279,211,375', '博济桥街道赵庙村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4380, 216, '0,100,279,101,216', '曲堤街道小于村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4381, 375, '0,100,279,211,375', '大布乡灵王庙新村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4382, 241, '0,100,279,201,241', '底阁镇西滩子村委会', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:18', 'admin', '2024-01-22 04:33:42');
INSERT INTO `sys_dept` VALUES (4383, 322, '0,100,279,209,322', '崔家峪镇北梨园村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4384, 216, '0,100,279,101,216', '索庙街道石墓田村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4385, 375, '0,100,279,211,375', '大布乡吕超凡新村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:28', '', NULL);
INSERT INTO `sys_dept` VALUES (4386, 322, '0,100,279,209,322', '崔家峪镇垛庄铺村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4387, 241, '0,100,279,201,241', '古邵镇张庄村委会', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:31', 'admin', '2024-01-22 04:33:55');
INSERT INTO `sys_dept` VALUES (4388, 216, '0,100,279,101,216', '新市镇大庄村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4389, 375, '0,100,279,211,375', '定水镇定水新村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4390, 322, '0,100,279,209,322', '崔家峪镇虎崖村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4391, 241, '0,100,279,201,241', '古邵镇三义庄村委会', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:43', 'admin', '2024-01-22 04:34:07');
INSERT INTO `sys_dept` VALUES (4392, 216, '0,100,279,101,216', '新市镇杨官村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:45', '', NULL);
INSERT INTO `sys_dept` VALUES (4393, 322, '0,100,279,209,322', '崔家峪镇凰龙湾村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4394, 375, '0,100,279,211,375', '定水镇三合新村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4396, 322, '0,100,279,209,322', '崔家峪镇西荆山头村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:54', '', NULL);
INSERT INTO `sys_dept` VALUES (4397, 375, '0,100,279,211,375', '定水镇五杨新村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:32:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4398, 322, '0,100,279,209,322', '富官庄镇谭家沟村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:03', '', NULL);
INSERT INTO `sys_dept` VALUES (4399, 375, '0,100,279,211,375', '高庙王镇仓上新村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:07', '', NULL);
INSERT INTO `sys_dept` VALUES (4400, 322, '0,100,279,209,322', '黄山铺镇圣水坊村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:12', '', NULL);
INSERT INTO `sys_dept` VALUES (4401, 322, '0,100,279,209,322', '黄山铺镇松林村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4402, 322, '0,100,279,209,322', '黄山铺镇站东村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4403, 322, '0,100,279,209,322', '黄山铺镇站前村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:37', '', NULL);
INSERT INTO `sys_dept` VALUES (4404, 217, '0,100,279,101,217', '凤城街道董花园社区', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:44', '', NULL);
INSERT INTO `sys_dept` VALUES (4405, 322, '0,100,279,209,322', '四十里堡镇焦家庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4406, 375, '0,100,279,211,375', '高庙王镇李寨新村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4407, 322, '0,100,279,209,322', '四十里堡镇老官庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4408, 217, '0,100,279,101,217', '高庄街道南毛村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:54', '', NULL);
INSERT INTO `sys_dept` VALUES (4409, 375, '0,100,279,211,375', '高庙王镇中孔新村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:33:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4410, 322, '0,100,279,209,322', '夏蔚镇石牛峪村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4411, 375, '0,100,279,211,375', '高庙王镇周庄新村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4412, 322, '0,100,279,209,322', '杨庄镇郭家峪村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4413, 217, '0,100,279,101,217', '口镇西街村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4414, 322, '0,100,279,209,322', '院东头镇仁家旺村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4415, 375, '0,100,279,211,375', '郭店屯镇东李村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4416, 244, '0,100,279,201,244', '张汪镇东邵桥村委会', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4417, 217, '0,100,279,101,217', '鹏泉街道大故事村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:37', '', NULL);
INSERT INTO `sys_dept` VALUES (4418, 375, '0,100,279,211,375', '郭店屯镇洪刘村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4419, 375, '0,100,279,211,375', '郭店屯镇黄庄村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4420, 201, '0,100,279,201', '高新区', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4421, 324, '0,100,279,209,324', '马庄镇大井头村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:56', '', NULL);
INSERT INTO `sys_dept` VALUES (4422, 375, '0,100,279,211,375', '郭店屯镇西朱村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4423, 107, '0,100,279,101,107', '董家街道时家庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:34:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4424, 4420, '0,100,279,201,4420', '张范街道西夹埠村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:04', '', NULL);
INSERT INTO `sys_dept` VALUES (4425, 375, '0,100,279,211,375', '郭店屯镇苑店村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4426, 324, '0,100,279,209,324', '上冶镇埠后村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4427, 107, '0,100,279,101,107', '郭店镇李东村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4428, 375, '0,100,279,211,375', '金斗营镇斗虎店西村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4429, 243, '0,100,279,201,243', '北庄镇北庄村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4430, 107, '0,100,279,101,107', '富友生态农业观光专业合作社', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:24', '', NULL);
INSERT INTO `sys_dept` VALUES (4431, 375, '0,100,279,211,375', '金斗营镇刘堤村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4432, 243, '0,100,279,201,243', '北庄镇高庄村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4433, 107, '0,100,279,101,107', '圣泉草莓种植专业合作社', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4434, 375, '0,100,279,211,375', '金斗营镇子路堤村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4435, 319, '0,100,279,209,319', '卞庄街道坝口村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4436, 243, '0,100,279,201,243', '城头镇后大宫村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:44', '', NULL);
INSERT INTO `sys_dept` VALUES (4437, 375, '0,100,279,211,375', '李台镇何垓村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:45', '', NULL);
INSERT INTO `sys_dept` VALUES (4438, 103, '0,100,279,101,103', '建新街道建新社区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4439, 319, '0,100,279,209,319', '芝麻墩街道中洪湖村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4440, 375, '0,100,279,211,375', '李台镇李台村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4441, 243, '0,100,279,201,243', '城头镇寨子村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:35:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4442, 219, '0,100,279,101,219', '孔村镇黄坡村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4443, 375, '0,100,279,211,375', '李台镇李杨村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4444, 243, '0,100,279,201,243', '冯卯镇陈山村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4445, 375, '0,100,279,211,375', '李台镇刘李新村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4446, 220, '0,100,279,101,220', '韩庙镇站北村', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4447, 243, '0,100,279,201,243', '冯卯镇独古城村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4448, 323, '0,100,279,209,323', '卞庄街道小庄村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4449, 220, '0,100,279,101,220', '贾庄镇继栋家庭农场', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4450, 375, '0,100,279,211,375', '李台镇明堤村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4451, 243, '0,100,279,201,243', '冯卯镇冯卯村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4452, 220, '0,100,279,101,220', '龙桑寺镇王皮贤村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4453, 375, '0,100,279,211,375', '李台镇王集新村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4454, 375, '0,100,279,211,375', '李台镇西孟楼村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4455, 220, '0,100,279,101,220', '沙河镇大湖村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4456, 243, '0,100,279,201,243', '冯卯镇青石村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4457, 328, '0,100,279,209,328', '蛟龙镇山子村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4458, 220, '0,100,279,101,220', '孙集镇刘店村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:36:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4459, 243, '0,100,279,201,243', '凫城镇马头村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4460, 375, '0,100,279,211,375', '侨润办事处国庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:03', 'admin', '2024-01-22 20:55:22');
INSERT INTO `sys_dept` VALUES (4461, 220, '0,100,279,101,220', '郑路镇乔李石村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4462, 318, '0,100,279,209,318', '罗庄街道韦姜屯村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:12', '', NULL);
INSERT INTO `sys_dept` VALUES (4463, 243, '0,100,279,201,243', '桑村镇葛庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4464, 375, '0,100,279,211,375', '侨润街道东八里营村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4465, 104, '0,100,279,101,104', '陡沟街道融汇城', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4466, 375, '0,100,279,211,375', '狮子楼街道崔王庄村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4467, 243, '0,100,279,201,243', '桑村镇郭村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4468, 104, '0,100,279,101,104', '兴隆街道兴隆三村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4469, 375, '0,100,279,211,375', '十五里园镇幸福新村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:35', '', NULL);
INSERT INTO `sys_dept` VALUES (4470, 327, '0,100,279,209,327', '桃墟镇于里河村', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4471, 243, '0,100,279,201,243', '桑村镇黄沟村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4472, 106, '0,100,279,101,106', '泉泰花卉养殖农民专业合作社', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4473, 375, '0,100,279,211,375', '十五里园镇朱吕石新村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:43', '', NULL);
INSERT INTO `sys_dept` VALUES (4474, 327, '0,100,279,209,327', '野店镇毛坪村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4475, 215, '0,100,279,101,215', '垛庄镇桥子村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4476, 243, '0,100,279,201,243', '山城街道薄板村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4477, 375, '0,100,279,211,375', '石佛镇廉庄村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:37:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4478, 215, '0,100,279,101,215', '宁家埠街道辛店村', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4479, 243, '0,100,279,201,243', '水泉镇伏山湾村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4480, 375, '0,100,279,211,375', '石佛镇石佛村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:07', '', NULL);
INSERT INTO `sys_dept` VALUES (4481, 375, '0,100,279,211,375', '寿张镇沙河张新村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:16', '', NULL);
INSERT INTO `sys_dept` VALUES (4482, 243, '0,100,279,201,243', '水泉镇吉庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4483, 321, '0,100,279,209,321', '红花镇重兴村', 25, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4484, 214, '0,100,279,101,214', '平安街道北汝村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4485, 375, '0,100,279,211,375', '寿张镇王楼村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4486, 243, '0,100,279,201,243', '水泉镇尚岩村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4487, 214, '0,100,279,101,214', '平安街道大刘庄村', 27, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4488, 375, '0,100,279,211,375', '寿张镇闫兴鲁村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:37', '', NULL);
INSERT INTO `sys_dept` VALUES (4489, 321, '0,100,279,209,321', '庙山镇立朝村', 26, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4490, 214, '0,100,279,101,214', '平安街道齐庄村', 28, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4491, 375, '0,100,279,211,375', '西湖镇白庙村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4492, 214, '0,100,279,101,214', '孝里街道后辛村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4493, 375, '0,100,279,211,375', '西湖镇蒋墩村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:38:56', '', NULL);
INSERT INTO `sys_dept` VALUES (4494, 375, '0,100,279,211,375', '西湖镇任伍村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:39:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4495, 375, '0,100,279,211,375', '西湖镇斜店村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:39:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4496, 375, '0,100,279,211,375', '西湖镇赵王楼村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:39:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4497, 375, '0,100,279,211,375', '张秋镇北街村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:39:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4498, 375, '0,100,279,211,375', '张秋镇窟窿石村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:39:44', '', NULL);
INSERT INTO `sys_dept` VALUES (4499, 379, '0,100,279,211,379', '梁村镇李楼村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:40:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4500, 379, '0,100,279,211,379', '赵寨子镇姚王村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:40:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4501, 378, '0,100,279,211,378', '范寨镇西纸坊头村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:41:12', '', NULL);
INSERT INTO `sys_dept` VALUES (4502, 378, '0,100,279,211,378', '梁堂镇姬闫村', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:41:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4503, 378, '0,100,279,211,378', '梁堂镇康寺地村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:41:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4504, 376, '0,100,279,211,376', '古城镇东红庙村', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:41:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4505, 376, '0,100,279,211,376', '观城镇山谷村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:42:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4506, 239, '0,100,279,201,239', '光明路街道西各塔埠农村社区', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:42:04', '', NULL);
INSERT INTO `sys_dept` VALUES (4507, 376, '0,100,279,211,376', '观城镇岳东村', 66, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:42:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4508, 239, '0,100,279,201,239', '光明路街道枣庄万丰农林科技有限公司', 2, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:42:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4509, 376, '0,100,279,211,376', '十八里铺镇三合村', 67, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:42:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4510, 239, '0,100,279,201,239', '齐村镇郭村', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:42:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4511, 239, '0,100,279,201,239', '齐村镇南园村', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:42:46', '', NULL);
INSERT INTO `sys_dept` VALUES (4512, 239, '0,100,279,201,239', '齐村镇前良村', 5, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:42:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4513, 376, '0,100,279,211,376', '王奉镇王奉集村', 68, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4514, 239, '0,100,279,201,239', '税郭镇东南村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:15', 'admin', '2024-01-22 04:48:10');
INSERT INTO `sys_dept` VALUES (4515, 376, '0,100,279,211,376', '魏庄镇东江店村', 69, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4516, 376, '0,100,279,211,376', '魏庄镇卓庄新村', 70, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:28', '', NULL);
INSERT INTO `sys_dept` VALUES (4517, 239, '0,100,279,201,239', '税郭镇冯庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:28', '', NULL);
INSERT INTO `sys_dept` VALUES (4518, 376, '0,100,279,211,376', '张鲁镇韩庄村', 71, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4519, 239, '0,100,279,201,239', '税郭镇鲁王桥村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4520, 376, '0,100,279,211,376', '张鲁镇南无村', 72, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4521, 239, '0,100,279,201,239', '税郭镇上义和村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:43:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4522, 376, '0,100,279,211,376', '俎店镇天泰新村', 73, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:44:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4523, 239, '0,100,279,201,239', '税郭镇西郝湖村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:44:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4524, 375, '0,100,279,211,375', '安乐镇东雷村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:44:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4525, 239, '0,100,279,201,239', '西王庄镇黄楼村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:44:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4526, 375, '0,100,279,211,375', '七级镇大杨新村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:44:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4527, 239, '0,100,279,201,239', '西王庄镇石羊村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:44:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4528, 374, '0,100,279,211,374', '信发街道办事处中心社区', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:45:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4529, 242, '0,100,279,201,242', '涧头集镇顿庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:45:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4530, 242, '0,100,279,201,242', '涧头集镇冯庄村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:45:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4531, 242, '0,100,279,201,242', '涧头集镇薛庄村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:45:44', '', NULL);
INSERT INTO `sys_dept` VALUES (4532, 242, '0,100,279,201,242', '马兰屯镇吴庄村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:45:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4533, 242, '0,100,279,201,242', '邳庄镇官庄村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:46:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4534, 242, '0,100,279,201,242', '邳庄镇孟庄村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:46:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4535, 242, '0,100,279,201,242', '邳庄镇秦庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:46:37', '', NULL);
INSERT INTO `sys_dept` VALUES (4536, 242, '0,100,279,201,242', '运河街道张庄社区居委会', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:46:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4537, 242, '0,100,279,201,242', '张山子镇丁庄村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:47:03', '', NULL);
INSERT INTO `sys_dept` VALUES (4538, 242, '0,100,279,201,242', '张山子镇侯孟前村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:47:16', '', NULL);
INSERT INTO `sys_dept` VALUES (4539, 242, '0,100,279,201,242', '张山子镇新闸子村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:47:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4540, 244, '0,100,279,201,244', '鲍沟镇东宁村', 29, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:48:44', 'admin', '2024-01-22 20:57:42');
INSERT INTO `sys_dept` VALUES (4541, 244, '0,100,279,201,244', '鲍沟镇郝寨村', 30, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:48:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4542, 244, '0,100,279,201,244', '鲍沟镇闵楼村', 31, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:49:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4543, 244, '0,100,279,201,244', '鲍沟镇西荆林村', 32, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:49:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4544, 244, '0,100,279,201,244', '北辛街道曹王居委会', 33, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:49:52', '', NULL);
INSERT INTO `sys_dept` VALUES (4545, 244, '0,100,279,201,244', '北辛街道马王东居委会', 34, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:50:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4546, 244, '0,100,279,201,244', '北辛街道马王西居委会', 35, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:50:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4547, 244, '0,100,279,201,244', '滨湖镇东双井村', 36, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:50:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4548, 244, '0,100,279,201,244', '滨湖镇岗头村', 37, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:50:45', '', NULL);
INSERT INTO `sys_dept` VALUES (4549, 244, '0,100,279,201,244', '滨湖镇望庄村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:50:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4550, 244, '0,100,279,201,244', '柴胡店镇刘村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:51:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4551, 244, '0,100,279,201,244', '大坞镇大坞村', 40, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:51:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4552, 244, '0,100,279,201,244', '大坞镇两水泉东村', 41, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:51:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4553, 244, '0,100,279,201,244', '大坞镇刘庄东村', 42, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:51:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4554, 244, '0,100,279,201,244', '大坞镇小坞村', 43, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:52:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4555, 244, '0,100,279,201,244', '大坞镇袁北村', 44, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:52:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4556, 244, '0,100,279,201,244', '东郭镇巴庄村', 45, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:52:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4557, 244, '0,100,279,201,244', '东郭镇东郭后村', 46, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:52:56', '', NULL);
INSERT INTO `sys_dept` VALUES (4558, 244, '0,100,279,201,244', '东郭镇前张坡村', 47, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:53:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4559, 244, '0,100,279,201,244', '东郭镇魏沟村', 48, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:53:23', '', NULL);
INSERT INTO `sys_dept` VALUES (4560, 244, '0,100,279,201,244', '东郭镇小任庄村', 49, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:53:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4561, 244, '0,100,279,201,244', '东沙河街道陈岗村', 50, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:53:52', '', NULL);
INSERT INTO `sys_dept` VALUES (4562, 244, '0,100,279,201,244', '官桥镇坝上村', 51, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:54:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4563, 244, '0,100,279,201,244', '官桥镇东磨庄村', 52, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:54:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4564, 244, '0,100,279,201,244', '官桥镇苏叶村', 53, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:54:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4565, 244, '0,100,279,201,244', '洪绪镇杜康村', 54, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:54:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4566, 244, '0,100,279,201,244', '洪绪镇龙庄村', 55, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:54:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4567, 244, '0,100,279,201,244', '洪绪镇苗桥村', 56, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:55:08', '', NULL);
INSERT INTO `sys_dept` VALUES (4568, 244, '0,100,279,201,244', '洪绪镇南苗庄村', 57, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:55:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4569, 244, '0,100,279,201,244', '级索镇赵坡村', 58, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:55:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4570, 244, '0,100,279,201,244', '姜屯镇大彦东村', 59, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:55:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4571, 244, '0,100,279,201,244', '姜屯镇韩场村', 60, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:56:00', '', NULL);
INSERT INTO `sys_dept` VALUES (4572, 244, '0,100,279,201,244', '姜屯镇田园村', 61, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:56:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4573, 244, '0,100,279,201,244', '姜屯镇武所屯村', 62, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:56:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4574, 244, '0,100,279,201,244', '姜屯镇西张楼村', 63, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:56:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4575, 244, '0,100,279,201,244', '姜屯镇庄里西村', 64, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:57:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4576, 244, '0,100,279,201,244', '界河镇崔官庄村', 65, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:57:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4577, 244, '0,100,279,201,244', '界河镇东李庄村', 66, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:57:36', '', NULL);
INSERT INTO `sys_dept` VALUES (4578, 244, '0,100,279,201,244', '界河镇唐楼村', 67, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:57:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4579, 244, '0,100,279,201,244', '界河镇西安楼村', 68, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:58:04', '', NULL);
INSERT INTO `sys_dept` VALUES (4580, 244, '0,100,279,201,244', '界河镇小万院村', 70, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:58:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4581, 244, '0,100,279,201,244', '界河镇西孟村', 69, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:58:50', '', NULL);
INSERT INTO `sys_dept` VALUES (4582, 244, '0,100,279,201,244', '龙阳镇龙山村', 71, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:59:03', '', NULL);
INSERT INTO `sys_dept` VALUES (4583, 244, '0,100,279,201,244', '龙阳镇龙山屯村', 72, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:59:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4584, 244, '0,100,279,201,244', '龙阳镇南王庄村', 73, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 04:59:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4585, 244, '0,100,279,201,244', '南沙河镇北街村', 74, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:00:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4586, 244, '0,100,279,201,244', '南沙河镇冯东村', 75, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:00:21', '', NULL);
INSERT INTO `sys_dept` VALUES (4587, 244, '0,100,279,201,244', '南沙河镇河汇村', 76, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:00:35', '', NULL);
INSERT INTO `sys_dept` VALUES (4588, 244, '0,100,279,201,244', '善南街道七里堡居', 77, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:00:49', '', NULL);
INSERT INTO `sys_dept` VALUES (4589, 244, '0,100,279,201,244', '西岗镇北满庄村', 78, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:01:02', '', NULL);
INSERT INTO `sys_dept` VALUES (4590, 244, '0,100,279,201,244', '西岗镇东王庄村', 79, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:01:16', '', NULL);
INSERT INTO `sys_dept` VALUES (4591, 244, '0,100,279,201,244', '羊庄镇后十湾村', 80, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:01:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4592, 244, '0,100,279,201,244', '羊庄镇庄里村', 81, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:01:43', '', NULL);
INSERT INTO `sys_dept` VALUES (4593, 244, '0,100,279,201,244', '张汪镇北彭庄村', 82, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:01:56', '', NULL);
INSERT INTO `sys_dept` VALUES (4594, 244, '0,100,279,201,244', '张汪镇柴楼村', 83, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:02:11', '', NULL);
INSERT INTO `sys_dept` VALUES (4595, 244, '0,100,279,201,244', '张汪镇大宗村', 84, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:02:25', '', NULL);
INSERT INTO `sys_dept` VALUES (4596, 244, '0,100,279,201,244', '张汪镇李桥村', 85, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:02:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4597, 244, '0,100,279,201,244', '张汪镇南贾庄村', 86, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:02:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4598, 244, '0,100,279,201,244', '张汪镇南任庄村', 87, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:03:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4599, 244, '0,100,279,201,244', '张汪镇辛集村', 88, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:03:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4600, 244, '0,100,279,201,244', '张汪镇杏园村', 89, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:03:30', '', NULL);
INSERT INTO `sys_dept` VALUES (4601, 244, '0,100,279,201,244', '张汪镇颜村', 90, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:03:41', '', NULL);
INSERT INTO `sys_dept` VALUES (4602, 240, '0,100,279,201,240', '常庄街道卜岭西村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:04:01', '', NULL);
INSERT INTO `sys_dept` VALUES (4603, 240, '0,100,279,201,240', '常庄街道傅庄村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:04:14', '', NULL);
INSERT INTO `sys_dept` VALUES (4604, 240, '0,100,279,201,240', '常庄街道泉头村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:04:28', '', NULL);
INSERT INTO `sys_dept` VALUES (4605, 240, '0,100,279,201,240', '陶庄镇西桥村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:04:42', '', NULL);
INSERT INTO `sys_dept` VALUES (4606, 240, '0,100,279,201,240', '新城街道小吕巷', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:04:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4607, 240, '0,100,279,201,240', '兴仁街道东谷山村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:05:09', '', NULL);
INSERT INTO `sys_dept` VALUES (4608, 240, '0,100,279,201,240', '邹坞镇埠后村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:05:22', '', NULL);
INSERT INTO `sys_dept` VALUES (4609, 240, '0,100,279,201,240', '邹坞镇陈楼村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:05:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4610, 240, '0,100,279,201,240', '邹坞镇东邹坞村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:06:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4611, 241, '0,100,279,201,241', '底阁镇卜东店村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:06:26', '', NULL);
INSERT INTO `sys_dept` VALUES (4612, 241, '0,100,279,201,241', '底阁镇东南晁村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:06:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4613, 241, '0,100,279,201,241', '底阁镇后晁村', 9, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:06:55', '', NULL);
INSERT INTO `sys_dept` VALUES (4614, 241, '0,100,279,201,241', '底阁镇圈里村', 10, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:07:06', '', NULL);
INSERT INTO `sys_dept` VALUES (4615, 241, '0,100,279,201,241', '底阁镇运埠屯村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:07:20', '', NULL);
INSERT INTO `sys_dept` VALUES (4618, 241, '0,100,279,201,241', '峨山镇石埠村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:08:01', 'admin', '2024-01-22 05:08:44');
INSERT INTO `sys_dept` VALUES (4619, 241, '0,100,279,201,241', '峨山镇仙桥村', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:08:15', 'admin', '2024-01-22 05:08:56');
INSERT INTO `sys_dept` VALUES (4620, 241, '0,100,279,201,241', '峨山镇董流井村', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:10:59', '', NULL);
INSERT INTO `sys_dept` VALUES (4621, 241, '0,100,279,201,241', '峨山镇高庄村', 13, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:11:13', '', NULL);
INSERT INTO `sys_dept` VALUES (4622, 241, '0,100,279,201,241', '古邵镇坊上村', 16, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:12:15', '', NULL);
INSERT INTO `sys_dept` VALUES (4623, 241, '0,100,279,201,241', '古邵镇郝湖村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:12:29', '', NULL);
INSERT INTO `sys_dept` VALUES (4624, 241, '0,100,279,201,241', '古邵镇倪庄村', 18, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:12:43', '', NULL);
INSERT INTO `sys_dept` VALUES (4625, 241, '0,100,279,201,241', '古邵镇邱庄村', 19, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:12:57', '', NULL);
INSERT INTO `sys_dept` VALUES (4626, 241, '0,100,279,201,241', '古邵镇三河村', 20, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:13:10', '', NULL);
INSERT INTO `sys_dept` VALUES (4627, 241, '0,100,279,201,241', '古邵镇双楼村', 21, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:13:24', '', NULL);
INSERT INTO `sys_dept` VALUES (4628, 241, '0,100,279,201,241', '榴园镇高庄村', 22, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:13:38', '', NULL);
INSERT INTO `sys_dept` VALUES (4629, 241, '0,100,279,201,241', '榴园镇李山口村', 23, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:13:51', '', NULL);
INSERT INTO `sys_dept` VALUES (4630, 241, '0,100,279,201,241', '吴林街道东潘安村', 24, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:14:05', '', NULL);
INSERT INTO `sys_dept` VALUES (4631, 244, '0,100,279,201,244', '北辛街道北楼村', 91, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:14:19', '', NULL);
INSERT INTO `sys_dept` VALUES (4632, 244, '0,100,279,201,244', '柴胡店镇坦山后村', 92, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:14:33', '', NULL);
INSERT INTO `sys_dept` VALUES (4633, 221, '0,100,279,101,221', '遥墙街道北河套村', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:24:34', '', NULL);
INSERT INTO `sys_dept` VALUES (4634, 221, '0,100,279,101,221', '临港街道朝阳村', 7, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:24:53', '', NULL);
INSERT INTO `sys_dept` VALUES (4635, 221, '0,100,279,101,221', '临港街道四风闸村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:25:27', '', NULL);
INSERT INTO `sys_dept` VALUES (4636, 221, '0,100,279,101,221', '遥墙街道冯家村', 8, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 05:25:40', '', NULL);
INSERT INTO `sys_dept` VALUES (4637, 381, '0,100,279,212,381', '沙河街道周龙村', 38, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 18:54:24', '', NULL);
INSERT INTO `sys_dept` VALUES (4638, 381, '0,100,279,212,381', '秦皇台乡朝阳新村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 18:54:39', '', NULL);
INSERT INTO `sys_dept` VALUES (4639, 338, '0,100,279,210,338', '前曹镇前曹村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 18:59:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4640, 342, '0,100,279,210,342', '花园镇大韩新村小李村', 39, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 19:04:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4641, 4642, '0,100,279,210,4642', '抬头寺镇武庄村村民委员会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 19:06:18', 'admin', '2024-01-22 19:10:10');
INSERT INTO `sys_dept` VALUES (4642, 210, '0,100,279,210', '德州天衢新区', 12, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 19:09:18', '', NULL);
INSERT INTO `sys_dept` VALUES (4643, 101, '0,100,279,101', '高新技术产业开发区', 15, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 19:22:14', '', NULL);
INSERT INTO `sys_dept` VALUES (4644, 4643, '0,100,279,101,4643', '临港街道鸭旺口村', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 19:23:32', '', NULL);
INSERT INTO `sys_dept` VALUES (4645, 382, '0,100,279,212,382', '泊头镇朱0村', 11, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 20:53:47', '', NULL);
INSERT INTO `sys_dept` VALUES (4646, 305, '0,100,279,207,305', '桥头镇桥头村委会', 1, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 20:56:58', '', NULL);
INSERT INTO `sys_dept` VALUES (4647, 237, '0,100,279,200,237', '花沟镇花东村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 20:58:17', '', NULL);
INSERT INTO `sys_dept` VALUES (4648, 237, '0,100,279,200,237', '花沟镇张李村', 17, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 20:58:37', '', NULL);
INSERT INTO `sys_dept` VALUES (4649, 238, '0,100,279,200,238', '燕崖镇凤凰官庄村', 14, NULL, NULL, NULL, '0', '0', 'admin', '2024-01-22 20:59:02', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (121, 0, '政策法规', '0', 'station_news_type', NULL, 'default', 'N', '0', 'admin', '2023-10-07 21:00:03', 'admin', '2023-10-07 21:07:40', NULL);
INSERT INTO `sys_dict_data` VALUES (122, 0, '三农资讯', '1', 'station_news_type', NULL, 'default', 'N', '0', 'admin', '2023-10-07 21:00:31', 'admin', '2023-10-07 21:07:54', NULL);
INSERT INTO `sys_dict_data` VALUES (123, 0, '科技动态', '2', 'station_news_type', NULL, 'default', 'N', '0', 'admin', '2023-10-07 21:00:42', 'admin', '2023-10-07 21:08:02', NULL);
INSERT INTO `sys_dict_data` VALUES (124, 0, '典型案例', '3', 'station_news_type', NULL, 'default', 'N', '0', 'admin', '2023-10-07 21:08:13', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (144, 0, '金融助农', '0', 'station_finance_type', NULL, 'default', 'N', '0', 'admin', '2023-10-09 09:44:48', 'admin', '2023-10-09 20:24:27', NULL);
INSERT INTO `sys_dict_data` VALUES (145, 0, '业务新闻', '1', 'station_finance_type', NULL, 'default', 'N', '0', 'admin', '2023-10-09 09:44:58', 'admin', '2023-10-09 20:24:31', NULL);
INSERT INTO `sys_dict_data` VALUES (146, 0, '相关案例', '2', 'station_finance_type', NULL, 'default', 'N', '0', 'admin', '2023-10-09 09:45:10', 'admin', '2023-10-09 20:24:38', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (103, '新闻资讯类型', 'station_news_type', '0', 'admin', '2023-10-07 20:59:31', 'admin', '2023-10-07 21:07:28', '新闻资讯类型列表');
INSERT INTO `sys_dict_type` VALUES (105, '线上培训类型', 'station_video_type', '0', 'admin', '2023-10-07 21:10:10', 'admin', '2023-10-19 20:35:13', '精彩视频类型列表');
INSERT INTO `sys_dict_type` VALUES (110, '金融资讯', 'station_finance_type', '0', 'admin', '2023-10-09 09:28:01', 'admin', '2023-10-09 09:28:15', '金融资讯列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-09-29 18:23:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4600 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 19:02:40');
INSERT INTO `sys_logininfor` VALUES (4496, '15163318838', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 06:11:23');
INSERT INTO `sys_logininfor` VALUES (4497, '15163318838', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '退出成功', '2024-01-23 06:11:46');
INSERT INTO `sys_logininfor` VALUES (4498, '15163318838', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 07:11:04');
INSERT INTO `sys_logininfor` VALUES (4499, '15163318838', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '退出成功', '2024-01-23 07:20:15');
INSERT INTO `sys_logininfor` VALUES (4500, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 07:20:24');
INSERT INTO `sys_logininfor` VALUES (4501, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:21:23');
INSERT INTO `sys_logininfor` VALUES (4502, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '验证码错误', '2024-01-23 07:21:36');
INSERT INTO `sys_logininfor` VALUES (4503, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:21:43');
INSERT INTO `sys_logininfor` VALUES (4504, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:22:11');
INSERT INTO `sys_logininfor` VALUES (4505, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:22:30');
INSERT INTO `sys_logininfor` VALUES (4506, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:22:58');
INSERT INTO `sys_logininfor` VALUES (4507, '17753135602', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2024-01-23 07:23:27');
INSERT INTO `sys_logininfor` VALUES (4508, '17753135602', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:23:27');
INSERT INTO `sys_logininfor` VALUES (4509, '17753135602', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误2次', '2024-01-23 07:23:41');
INSERT INTO `sys_logininfor` VALUES (4510, '17753135602', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:23:41');
INSERT INTO `sys_logininfor` VALUES (4511, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '验证码已失效', '2024-01-23 07:25:44');
INSERT INTO `sys_logininfor` VALUES (4512, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '验证码已失效', '2024-01-23 07:26:08');
INSERT INTO `sys_logininfor` VALUES (4513, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:26:27');
INSERT INTO `sys_logininfor` VALUES (4514, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 07:26:33');
INSERT INTO `sys_logininfor` VALUES (4515, '17753135602', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2024-01-23 07:26:54');
INSERT INTO `sys_logininfor` VALUES (4516, '17753135602', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 07:26:54');
INSERT INTO `sys_logininfor` VALUES (4517, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '注册成功', '2024-01-23 07:27:45');
INSERT INTO `sys_logininfor` VALUES (4518, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 07:28:05');
INSERT INTO `sys_logininfor` VALUES (4519, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '1', '密码输入错误1次', '2024-01-23 07:28:13');
INSERT INTO `sys_logininfor` VALUES (4520, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-01-23 07:28:13');
INSERT INTO `sys_logininfor` VALUES (4521, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 07:28:21');
INSERT INTO `sys_logininfor` VALUES (4522, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '退出成功', '2024-01-23 07:40:18');
INSERT INTO `sys_logininfor` VALUES (4523, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 07:43:06');
INSERT INTO `sys_logininfor` VALUES (4524, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '注册成功', '2024-01-23 07:45:19');
INSERT INTO `sys_logininfor` VALUES (4525, 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2024-01-23 07:45:27');
INSERT INTO `sys_logininfor` VALUES (4526, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 07:45:47');
INSERT INTO `sys_logininfor` VALUES (4527, 'admin', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '退出成功', '2024-01-23 07:45:55');
INSERT INTO `sys_logininfor` VALUES (4528, '13181285505', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '登录成功', '2024-01-23 07:47:25');
INSERT INTO `sys_logininfor` VALUES (4529, '13181285505', '127.0.0.1', '内网IP', 'Firefox 11', 'Windows 10', '0', '退出成功', '2024-01-23 07:47:53');
INSERT INTO `sys_logininfor` VALUES (4530, '2023216390', '120.228.70.208', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '注册成功', '2024-01-23 07:51:35');
INSERT INTO `sys_logininfor` VALUES (4531, '2023216390', '120.228.70.208', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '验证码错误', '2024-01-23 07:51:48');
INSERT INTO `sys_logininfor` VALUES (4532, '2023216390', '120.228.70.208', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 07:52:08');
INSERT INTO `sys_logininfor` VALUES (4533, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-23 07:52:41');
INSERT INTO `sys_logininfor` VALUES (4534, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 07:54:25');
INSERT INTO `sys_logininfor` VALUES (4535, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 07:58:23');
INSERT INTO `sys_logininfor` VALUES (4536, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 08:01:54');
INSERT INTO `sys_logininfor` VALUES (4537, '2023213593', '223.104.195.217', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 08:03:32');
INSERT INTO `sys_logininfor` VALUES (4538, 'lsp110', '14.111.199.7', 'XX XX', 'Chrome 9', 'Android 1.x', '0', '注册成功', '2024-01-23 08:20:27');
INSERT INTO `sys_logininfor` VALUES (4539, 'lsp110', '14.111.199.7', 'XX XX', 'Chrome 9', 'Android 1.x', '0', '登录成功', '2024-01-23 08:20:39');
INSERT INTO `sys_logininfor` VALUES (4540, 'lsp110', '14.111.199.7', 'XX XX', 'Chrome 9', 'Android 1.x', '0', '退出成功', '2024-01-23 08:22:56');
INSERT INTO `sys_logininfor` VALUES (4541, '2023216410', '14.111.199.7', 'XX XX', 'Chrome 9', 'Android 1.x', '0', '注册成功', '2024-01-23 08:23:27');
INSERT INTO `sys_logininfor` VALUES (4542, '2023216410', '14.111.199.7', 'XX XX', 'Chrome 9', 'Android 1.x', '1', '密码输入错误1次', '2024-01-23 08:23:47');
INSERT INTO `sys_logininfor` VALUES (4543, '2023216410', '14.111.199.7', 'XX XX', 'Chrome 9', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-23 08:23:47');
INSERT INTO `sys_logininfor` VALUES (4544, '2023216410', '14.111.199.7', 'XX XX', 'Chrome 9', 'Android 1.x', '0', '登录成功', '2024-01-23 08:24:03');
INSERT INTO `sys_logininfor` VALUES (4545, '2023216410', '14.111.199.7', 'XX XX', 'Chrome 9', 'Android 1.x', '0', '登录成功', '2024-01-23 08:27:03');
INSERT INTO `sys_logininfor` VALUES (4546, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 21:36:12');
INSERT INTO `sys_logininfor` VALUES (4547, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 21:37:06');
INSERT INTO `sys_logininfor` VALUES (4548, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 21:41:53');
INSERT INTO `sys_logininfor` VALUES (4549, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-23 22:00:19');
INSERT INTO `sys_logininfor` VALUES (4550, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-23 22:54:55');
INSERT INTO `sys_logininfor` VALUES (4551, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-23 22:55:15');
INSERT INTO `sys_logininfor` VALUES (4552, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 23:21:05');
INSERT INTO `sys_logininfor` VALUES (4553, '2023216390', '223.104.132.6', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-23 23:50:28');
INSERT INTO `sys_logininfor` VALUES (4554, '2023213596', '112.224.20.76', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 00:34:15');
INSERT INTO `sys_logininfor` VALUES (4555, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-24 02:01:26');
INSERT INTO `sys_logininfor` VALUES (4556, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 02:45:40');
INSERT INTO `sys_logininfor` VALUES (4557, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 03:17:37');
INSERT INTO `sys_logininfor` VALUES (4558, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '退出成功', '2024-01-24 04:02:08');
INSERT INTO `sys_logininfor` VALUES (4559, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '1', '验证码错误', '2024-01-24 04:02:30');
INSERT INTO `sys_logininfor` VALUES (4560, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 04:02:38');
INSERT INTO `sys_logininfor` VALUES (4561, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 04:03:19');
INSERT INTO `sys_logininfor` VALUES (4562, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 04:08:55');
INSERT INTO `sys_logininfor` VALUES (4563, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 04:28:47');
INSERT INTO `sys_logininfor` VALUES (4564, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 04:34:40');
INSERT INTO `sys_logininfor` VALUES (4565, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 04:39:03');
INSERT INTO `sys_logininfor` VALUES (4566, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-24 04:40:08');
INSERT INTO `sys_logininfor` VALUES (4567, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 04:46:34');
INSERT INTO `sys_logininfor` VALUES (4568, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 05:18:49');
INSERT INTO `sys_logininfor` VALUES (4569, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-24 05:31:08');
INSERT INTO `sys_logininfor` VALUES (4570, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-01-24 05:33:00');
INSERT INTO `sys_logininfor` VALUES (4571, '17662901917', '223.104.195.211', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '验证码错误', '2024-01-24 07:15:06');
INSERT INTO `sys_logininfor` VALUES (4572, '17662901917', '223.104.195.211', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-24 07:15:09');
INSERT INTO `sys_logininfor` VALUES (4573, '17662901917', '223.104.195.211', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-24 07:15:15');
INSERT INTO `sys_logininfor` VALUES (4574, '17662901917', '223.104.195.211', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2024-01-24 07:15:33');
INSERT INTO `sys_logininfor` VALUES (4575, '17662901917', '223.104.195.211', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-24 07:15:33');
INSERT INTO `sys_logininfor` VALUES (4576, '15762835200', '113.126.75.227', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 07:38:08');
INSERT INTO `sys_logininfor` VALUES (4577, '15762835200', '10.10.73.73', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 07:46:54');
INSERT INTO `sys_logininfor` VALUES (4578, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 07:56:42');
INSERT INTO `sys_logininfor` VALUES (4579, '15762835200', '10.10.73.73', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 08:05:35');
INSERT INTO `sys_logininfor` VALUES (4580, '2023213593', '112.23.21.22', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 09:21:45');
INSERT INTO `sys_logininfor` VALUES (4581, '2023213707', '223.104.195.237', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-24 10:35:27');
INSERT INTO `sys_logininfor` VALUES (4582, '2023213707', '223.104.195.237', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2024-01-24 10:36:07');
INSERT INTO `sys_logininfor` VALUES (4583, '2023213707', '223.104.195.237', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '注册成功', '2024-01-24 10:36:31');
INSERT INTO `sys_logininfor` VALUES (4584, '2023213707', '223.104.195.237', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 10:36:48');
INSERT INTO `sys_logininfor` VALUES (4585, '15762835200', '113.126.75.227', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 19:15:06');
INSERT INTO `sys_logininfor` VALUES (4586, '2023213596', '123.232.238.5', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 19:19:59');
INSERT INTO `sys_logininfor` VALUES (4587, '2023213707', '223.104.195.237', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-24 22:59:00');
INSERT INTO `sys_logininfor` VALUES (4588, '15098556867', '10.10.73.73', '内网IP', 'Firefox 12', 'Windows 10', '1', '验证码已失效', '2024-01-24 23:50:21');
INSERT INTO `sys_logininfor` VALUES (4589, '15098556867', '10.10.73.73', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 23:50:29');
INSERT INTO `sys_logininfor` VALUES (4590, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-24 23:53:35');
INSERT INTO `sys_logininfor` VALUES (4591, '2022212962', '123.235.242.44', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '注册成功', '2024-01-25 00:10:39');
INSERT INTO `sys_logininfor` VALUES (4592, '2022212962', '123.235.242.44', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-25 00:11:01');
INSERT INTO `sys_logininfor` VALUES (4593, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '1', '验证码错误', '2024-01-25 00:53:06');
INSERT INTO `sys_logininfor` VALUES (4594, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-25 00:53:14');
INSERT INTO `sys_logininfor` VALUES (4595, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '1', '验证码已失效', '2024-01-25 01:11:46');
INSERT INTO `sys_logininfor` VALUES (4596, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-25 01:11:53');
INSERT INTO `sys_logininfor` VALUES (4597, 'admin', '127.0.0.1', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-25 01:29:23');
INSERT INTO `sys_logininfor` VALUES (4598, '15098556867', '10.10.73.73', '内网IP', 'Firefox 12', 'Windows 10', '0', '登录成功', '2024-01-25 01:39:04');
INSERT INTO `sys_logininfor` VALUES (4599, '2023213593', '183.208.103.214', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2024-01-25 01:41:03');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(11) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(11) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2249 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-09-29 18:23:04', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-09-29 18:23:04', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-09-29 18:23:04', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-09-29 18:23:04', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-09-29 18:23:04', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-09-29 18:23:04', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '层次管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-14 23:31:19', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-09-29 18:23:04', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-09-29 18:23:04', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-09-29 18:23:04', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-09-29 18:23:04', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-09-29 18:23:04', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-09-29 18:23:04', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-09-29 18:23:04', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-09-29 18:23:04', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-09-29 18:23:04', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-09-29 18:23:04', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-09-29 18:23:04', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-09-29 18:23:04', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-09-29 18:23:04', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-09-29 18:23:04', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-09-29 18:23:04', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '层次查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-14 23:31:26', '');
INSERT INTO `sys_menu` VALUES (1017, '层次新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-14 23:31:31', '');
INSERT INTO `sys_menu` VALUES (1018, '层次修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-14 23:31:38', '');
INSERT INTO `sys_menu` VALUES (1019, '层次删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-09-29 18:23:04', 'admin', '2023-10-14 23:31:43', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '信息管理', 0, 4, 'information', NULL, NULL, 1, 0, 'M', '0', '0', '', 'example', 'admin', '2023-10-02 00:17:39', 'admin', '2024-01-19 10:28:57', '');
INSERT INTO `sys_menu` VALUES (2005, '随时问', 2128, 3, 'free', 'system/free/index', NULL, 1, 0, 'C', '1', '1', 'system:free:list', 'edit', 'admin', '2023-10-03 22:38:14', 'admin', '2024-01-19 08:39:10', '');
INSERT INTO `sys_menu` VALUES (2014, '信息发布', 2070, 1, 'addNews', 'system/news/addNews', NULL, 1, 0, 'C', '0', '0', 'system:columns:list', 'upload', 'admin', '2023-10-08 16:13:26', 'admin', '2023-10-10 16:39:51', '');
INSERT INTO `sys_menu` VALUES (2028, '问题查询', 2005, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:free:list:checked', '#', 'admin', '2023-10-09 19:49:11', 'admin', '2023-10-19 22:30:11', '');
INSERT INTO `sys_menu` VALUES (2029, '问题新增', 2005, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:free:add', '#', 'admin', '2023-10-09 19:49:25', 'admin', '2023-10-09 20:01:31', '');
INSERT INTO `sys_menu` VALUES (2031, '问题删除', 2005, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:free:remove', '#', 'admin', '2023-10-09 19:50:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '新闻发布', 2014, 1, 'submit', 'system/news/index', NULL, 1, 0, 'C', '0', '0', 'system:columns:list', 'education', 'admin', '2023-10-10 10:53:53', 'admin', '2023-10-10 11:10:27', '');
INSERT INTO `sys_menu` VALUES (2071, '新闻查询', 2070, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', ' system:columns:query', '#', 'admin', '2023-10-10 10:55:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '新闻导出', 2070, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:columns:export', '#', 'admin', '2023-10-10 10:57:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2073, '新闻新增', 2070, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:columns:add', '#', 'admin', '2023-10-10 10:58:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2074, '新闻修改', 2070, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:columns:edit', '#', 'admin', '2023-10-10 10:59:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2075, '新闻删除', 2070, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', ' system:columns:remove', '#', 'admin', '2023-10-10 11:00:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2079, '推资讯', 2129, 1, 'news', 'system/news/audit', NULL, 1, 0, 'C', '0', '0', 'system:news:list:unchecked', 'job', 'admin', '2023-10-10 11:11:20', 'admin', '2024-01-20 10:40:56', '');
INSERT INTO `sys_menu` VALUES (2080, '金融发布', 2014, 2, 'submit_finance', 'system/finance/index', NULL, 1, 0, 'C', '0', '0', NULL, 'documentation', 'admin', '2023-10-10 11:33:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2081, '找资金', 2129, 2, 'finance', 'system/finance/audit', NULL, 1, 0, 'C', '0', '0', 'system:finance:list:unchecked', 'druid', 'admin', '2023-10-10 11:34:40', 'admin', '2024-01-20 10:41:06', '');
INSERT INTO `sys_menu` VALUES (2082, '培训发布', 2014, 3, 'submit_training', 'system/training/index', NULL, 1, 0, 'C', '0', '0', NULL, 'post', 'admin', '2023-10-10 11:51:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2083, '线下培训', 2219, 1, 'offline', 'system/training/audit', NULL, 1, 0, 'C', '0', '0', 'system:training:list:unchecked', 'slider', 'admin', '2023-10-10 11:53:01', 'admin', '2024-01-20 10:41:24', '');
INSERT INTO `sys_menu` VALUES (2089, '推资讯', 2128, 1, 'news', 'system/news/index', NULL, 1, 0, 'C', '0', '0', 'system:news:list', 'education', 'admin', '2023-10-10 16:51:28', 'admin', '2024-01-20 10:39:47', '');
INSERT INTO `sys_menu` VALUES (2090, '找资金', 2128, 2, 'finance', 'system/finance/index', NULL, 1, 0, 'C', '0', '0', 'system:finance:list', 'job', 'admin', '2023-10-10 16:52:40', 'admin', '2024-01-20 10:39:54', '');
INSERT INTO `sys_menu` VALUES (2091, '线下培训', 2220, 1, 'offline', 'system/training/index', NULL, 1, 0, 'C', '0', '0', 'system:training:list', 'logininfor', 'admin', '2023-10-10 16:53:26', 'admin', '2024-01-20 10:40:13', '');
INSERT INTO `sys_menu` VALUES (2094, '新增推咨询', 2089, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:add', '#', 'test', '2023-10-10 19:32:16', 'admin', '2023-10-20 10:17:11', '');
INSERT INTO `sys_menu` VALUES (2095, '新增找资金', 2090, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:add', '#', 'test', '2023-10-10 19:37:11', 'admin', '2024-01-18 09:24:00', '');
INSERT INTO `sys_menu` VALUES (2097, '删除推咨询', 2089, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:remove', '#', 'admin', '2023-10-10 19:49:58', 'admin', '2023-10-20 10:17:21', '');
INSERT INTO `sys_menu` VALUES (2099, '审核', 2079, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:check', '#', 'admin', '2023-10-10 20:13:33', 'admin', '2024-01-18 18:27:25', '');
INSERT INTO `sys_menu` VALUES (2100, '修改推咨询', 2089, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:edit', '#', 'admin', '2023-10-10 20:38:07', 'admin', '2024-01-17 15:45:13', '');
INSERT INTO `sys_menu` VALUES (2101, '查询推咨询', 2089, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:checked', '#', 'test', '2023-10-10 20:45:29', 'admin', '2023-10-20 10:16:58', '');
INSERT INTO `sys_menu` VALUES (2103, '查询找资金', 2090, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:checked', '#', 'admin', '2023-10-10 20:51:47', 'admin', '2024-01-18 09:23:52', '');
INSERT INTO `sys_menu` VALUES (2104, '修改找资金', 2090, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:edit', '#', 'admin', '2023-10-10 20:52:10', 'admin', '2023-10-20 10:15:58', '');
INSERT INTO `sys_menu` VALUES (2105, '删除找资金', 2090, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:remove', '#', 'admin', '2023-10-10 20:52:58', 'admin', '2024-01-18 09:24:09', '');
INSERT INTO `sys_menu` VALUES (2106, '导出推咨询', 2089, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:export', '#', 'admin', '2023-10-10 21:01:36', 'admin', '2023-10-20 10:17:45', '');
INSERT INTO `sys_menu` VALUES (2107, '导出找资金', 2090, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:export', '#', 'admin', '2023-10-10 21:03:02', 'admin', '2024-01-18 09:24:20', '');
INSERT INTO `sys_menu` VALUES (2116, '审核', 2083, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:check', '#', 'admin', '2023-10-11 11:48:02', 'admin', '2024-01-18 18:27:30', '');
INSERT INTO `sys_menu` VALUES (2118, '审核', 2081, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:check', '#', 'admin', '2023-10-11 11:50:31', 'admin', '2024-01-18 19:23:41', '');
INSERT INTO `sys_menu` VALUES (2124, '随时问', 2129, 3, 'free', 'system/free/audit', NULL, 1, 0, 'C', '1', '1', 'system:free:list:unchecked', 'logininfor', 'admin', '2023-10-11 22:12:02', 'admin', '2024-01-20 10:41:13', '');
INSERT INTO `sys_menu` VALUES (2126, '线上培训', 2220, 2, 'online', 'system/onlineTraining/index', NULL, 1, 0, 'C', '0', '0', 'system:training:list', 'education', 'admin', '2023-10-12 17:56:02', 'admin', '2024-01-20 10:40:22', '');
INSERT INTO `sys_menu` VALUES (2127, '线上培训', 2219, 2, 'online', 'system/onlineTraining/audit', NULL, 1, 0, 'C', '0', '0', 'system:training:list:unchecked', 'tree', 'admin', '2023-10-13 19:30:02', 'admin', '2024-01-20 10:41:31', '');
INSERT INTO `sys_menu` VALUES (2128, '信息发布', 2000, 1, 'submit', NULL, NULL, 1, 0, 'M', '0', '0', '', 'international', 'admin', '2023-10-14 17:09:50', 'admin', '2023-10-19 23:02:36', '');
INSERT INTO `sys_menu` VALUES (2129, '信息审核', 2000, 2, 'audit', NULL, NULL, 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-10-14 17:11:25', 'admin', '2023-10-19 23:02:31', '');
INSERT INTO `sys_menu` VALUES (2137, '获取评论', 2005, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:free:query', '#', 'admin', '2023-10-14 17:23:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2138, '获取已审核', 2005, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:free:list:checked', '#', 'admin', '2023-10-14 17:23:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2139, '获取未审核', 2005, 8, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:free:list:unchecked', '#', 'admin', '2023-10-14 17:24:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2155, '培训导出', 2126, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:export', '#', 'admin', '2023-10-14 17:54:45', 'admin', '2024-01-18 09:31:26', '');
INSERT INTO `sys_menu` VALUES (2156, '培训查询', 2126, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:checked', '#', 'admin', '2023-10-14 17:55:12', 'admin', '2024-01-18 09:31:12', '');
INSERT INTO `sys_menu` VALUES (2157, '培训新增', 2126, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:add', '#', 'admin', '2023-10-14 17:55:37', 'admin', '2024-01-18 09:31:16', '');
INSERT INTO `sys_menu` VALUES (2158, '培训修改', 2126, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:edit', '#', 'admin', '2023-10-14 17:56:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2159, '培训删除', 2126, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:remove', '#', 'admin', '2023-10-14 17:56:28', 'admin', '2024-01-18 09:31:23', '');
INSERT INTO `sys_menu` VALUES (2160, '获取已审核', 2126, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:list:checked', '#', 'admin', '2023-10-14 17:56:51', 'admin', '2023-10-19 20:59:04', '');
INSERT INTO `sys_menu` VALUES (2161, '获取未审核', 2126, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:list:unchecked', '#', 'admin', '2023-10-14 17:57:22', 'admin', '2023-10-19 20:59:35', '');
INSERT INTO `sys_menu` VALUES (2163, '培训导出', 2091, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:export', '#', 'admin', '2023-10-14 17:58:35', 'admin', '2024-01-18 09:31:05', '');
INSERT INTO `sys_menu` VALUES (2164, '培训查询', 2091, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:checked', '#', 'admin', '2023-10-14 17:59:03', 'admin', '2024-01-18 09:30:36', '');
INSERT INTO `sys_menu` VALUES (2165, '培训新增', 2091, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:add', '#', 'admin', '2023-10-14 17:59:24', 'admin', '2024-01-18 09:30:40', '');
INSERT INTO `sys_menu` VALUES (2166, '培训修改', 2091, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:edit', '#', 'admin', '2023-10-14 17:59:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2167, '培训删除', 2091, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:remove', '#', 'admin', '2023-10-14 18:00:11', 'admin', '2024-01-18 09:30:56', '');
INSERT INTO `sys_menu` VALUES (2168, '获取已审核', 2091, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:list:checked', '#', 'admin', '2023-10-14 18:00:40', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2169, '获取未审核', 2091, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:list:unchecked', '#', 'admin', '2023-10-14 18:01:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2171, '获取已审核', 2089, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:list:checked', '#', 'admin', '2023-10-14 18:03:47', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2172, '获取未审核', 2089, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:list:unchecked', '#', 'admin', '2023-10-14 18:04:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2180, '获取已审核', 2090, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:list:checked', '#', 'admin', '2023-10-14 18:12:15', 'admin', '2024-01-18 09:24:24', '');
INSERT INTO `sys_menu` VALUES (2181, '获取未审核', 2090, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:list:unchecked', '#', 'admin', '2023-10-14 18:12:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2198, '审核', 2124, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:free:check', '#', 'admin', '2023-10-14 19:39:15', 'admin', '2024-01-18 18:52:26', '');
INSERT INTO `sys_menu` VALUES (2204, '审核', 2127, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:check', '#', 'admin', '2023-10-14 19:45:56', 'admin', '2024-01-18 18:27:34', '');
INSERT INTO `sys_menu` VALUES (2206, '查看详情', 2079, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:news:list:unchecked', '#', 'admin', '2023-10-14 20:05:18', 'admin', '2024-01-18 18:47:29', '');
INSERT INTO `sys_menu` VALUES (2207, '查看详情', 2127, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', '	 system:training:list:unchecked', '#', 'admin', '2023-10-14 20:06:32', 'admin', '2024-01-18 18:47:21', '');
INSERT INTO `sys_menu` VALUES (2209, '查看详情', 2083, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:training:list:unchecked', '#', 'admin', '2023-10-14 20:08:44', 'admin', '2024-01-18 18:47:24', '');
INSERT INTO `sys_menu` VALUES (2210, '查看详情', 2081, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:finance:list:unchecked', '#', 'admin', '2023-10-14 20:11:11', 'admin', '2024-01-18 18:24:01', '');
INSERT INTO `sys_menu` VALUES (2217, '查看详情', 2124, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:free:list:unchecked', '#', 'admin', '2023-10-14 20:44:10', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2219, '学农技', 2129, 4, 'training', NULL, NULL, 1, 0, 'M', '0', '0', '', 'row', 'admin', '2023-10-19 22:58:50', 'admin', '2024-01-10 17:54:09', '');
INSERT INTO `sys_menu` VALUES (2220, '学农技', 2128, 4, 'training', NULL, NULL, 1, 0, 'M', '0', '0', '', 'form', 'admin', '2023-10-19 23:08:37', 'admin', '2024-01-10 17:53:22', '');
INSERT INTO `sys_menu` VALUES (2222, '驿站信息', 2236, 1, 'information', 'system/stationInformation/index', NULL, 1, 0, 'C', '0', '0', 'system:station:list', 'button', 'admin', '2024-01-17 15:40:48', 'admin', '2024-01-20 10:42:32', '');
INSERT INTO `sys_menu` VALUES (2223, '驿站信息', 2237, 1, 'information', 'system/stationInformation/audit', NULL, 1, 0, 'C', '0', '0', 'system:station:list:unchecked', 'edit', 'admin', '2024-01-17 15:43:10', 'admin', '2024-01-20 10:42:45', '');
INSERT INTO `sys_menu` VALUES (2224, '查询驿站信息', 2222, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:checked', '#', 'admin', '2024-01-17 15:49:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2225, '新增驿站信息', 2222, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:add', '#', 'admin', '2024-01-17 15:50:59', 'admin', '2024-01-17 15:51:17', '');
INSERT INTO `sys_menu` VALUES (2226, '删除驿站信息', 2222, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:remove', '#', 'admin', '2024-01-17 15:51:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2227, '修改驿站信息', 2222, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:edit', '#', 'admin', '2024-01-17 15:52:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2228, '导出驿站信息', 2222, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:export', '#', 'admin', '2024-01-17 15:53:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2229, '获取已审核', 2222, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:list:checked', '#', 'admin', '2024-01-17 15:53:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2230, '获取未审核', 2222, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:list:unchecked', '#', 'admin', '2024-01-17 15:54:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2232, '审核', 2223, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:check', '#', 'admin', '2024-01-17 15:58:14', 'admin', '2024-01-18 18:27:37', '');
INSERT INTO `sys_menu` VALUES (2234, '查看详情', 2223, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:list:unchecked', '#', 'admin', '2024-01-17 15:59:24', 'admin', '2024-01-18 18:47:16', '');
INSERT INTO `sys_menu` VALUES (2235, '驿站管理', 0, 5, 'station', NULL, NULL, 1, 0, 'M', '0', '0', '', 'tab', 'admin', '2024-01-19 10:28:47', 'admin', '2024-01-19 10:33:26', '');
INSERT INTO `sys_menu` VALUES (2236, '信息发布', 2235, 1, 'submit', NULL, NULL, 1, 0, 'M', '0', '0', '', 'international', 'admin', '2024-01-19 10:30:45', 'admin', '2024-01-19 10:32:13', '');
INSERT INTO `sys_menu` VALUES (2237, '信息审核', 2235, 2, 'audit', NULL, NULL, 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-01-19 10:30:59', 'admin', '2024-01-19 10:32:26', '');
INSERT INTO `sys_menu` VALUES (2238, '驿站介绍', 2236, 2, 'introduction', 'system/stationIntroduction/index', NULL, 1, 0, 'C', '0', '0', 'system:station:list', 'table', 'admin', '2024-01-19 11:32:10', 'admin', '2024-01-20 10:42:38', '');
INSERT INTO `sys_menu` VALUES (2239, '驿站介绍', 2237, 2, 'introduction', 'system/stationIntroduction/audit', '', 1, 0, 'C', '0', '0', 'system:station:list:unchecked', 'table', 'admin', '2024-01-19 11:36:31', 'admin', '2024-01-20 10:42:51', '');
INSERT INTO `sys_menu` VALUES (2240, '查询驿站介绍', 2238, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:checked', '#', 'admin', '2024-01-19 15:00:24', 'admin', '2024-01-19 15:08:48', '');
INSERT INTO `sys_menu` VALUES (2241, '新增驿站介绍', 2238, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:add', '#', 'admin', '2024-01-19 15:00:38', 'admin', '2024-01-19 15:08:42', '');
INSERT INTO `sys_menu` VALUES (2242, '删除驿站介绍', 2238, 3, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:remove', '#', 'admin', '2024-01-19 15:00:54', 'admin', '2024-01-19 15:08:37', '');
INSERT INTO `sys_menu` VALUES (2243, '修改驿站介绍', 2238, 4, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:edit', '#', 'admin', '2024-01-19 15:01:04', 'admin', '2024-01-19 15:08:32', '');
INSERT INTO `sys_menu` VALUES (2244, '导出驿站介绍', 2238, 5, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:export', '#', 'admin', '2024-01-19 15:01:16', 'admin', '2024-01-19 15:08:26', '');
INSERT INTO `sys_menu` VALUES (2245, '获取已审核', 2238, 6, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:list:checked', '#', 'admin', '2024-01-19 15:01:32', 'admin', '2024-01-19 15:08:18', '');
INSERT INTO `sys_menu` VALUES (2246, '获取未审核', 2238, 7, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:list:unchecked', '#', 'admin', '2024-01-19 15:01:41', 'admin', '2024-01-19 15:02:25', '');
INSERT INTO `sys_menu` VALUES (2247, '审核', 2239, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:check', '#', 'admin', '2024-01-19 15:17:45', 'admin', '2024-01-19 15:18:28', '');
INSERT INTO `sys_menu` VALUES (2248, '查看详情', 2239, 2, '', NULL, NULL, 1, 0, 'F', '0', '0', 'system:station:list:unchecked', '#', 'admin', '2024-01-19 15:18:05', 'admin', '2024-01-19 15:18:37', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-09-29 18:23:04', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-09-29 18:23:04', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(11) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8753 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (8640, '用户-驿站', 1, 'com.ruoyi.system.controller.TbUserStationController.add()', 'POST', 1, '2023213596', NULL, '/system/user_station', '123.232.238.5', 'XX XX', '{\"id\":3932,\"stationId\":4102,\"userId\":3932}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 07:28:53', 4);
INSERT INTO `sys_oper_log` VALUES (8641, '用户-驿站', 1, 'com.ruoyi.system.controller.TbUserStationController.add()', 'POST', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"id\":3933,\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 07:51:57', 14);
INSERT INTO `sys_oper_log` VALUES (8642, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '2023213593', NULL, '/system/user/profile', '112.23.21.22', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-23 07:45:19\",\"delFlag\":\"0\",\"email\":\"shangke_0801@qq.com\",\"loginIp\":\"\",\"nickName\":\"2023213593\",\"params\":{\"@type\":\"java.util.HashMap\"},\"phonenumber\":\"19715516172\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{\"@type\":\"java.util.HashMap\"},\"permissions\":[\"system:news:list\",\"system:finance:list:checked\",\"system:free:list:unchecked\",\"system:news:checked\",\"system:free:query\",\"system:finance:list\",\"system:free:remove\",\"system:training:list:checked\",\"system:station:list\",\"system:station:checked\",\"system:free:list:checked\",\"system:news:list:checked\",\"system:station:list:checked\",\"system:free:add\",\"system:training:list\",\"system:training:checked\",\"system:finance:checked\"],\"roleId\":106,\"roleKey\":\"user\",\"roleName\":\"普通用户\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":3933,\"userName\":\"2023213593\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 07:53:34', 14);
INSERT INTO `sys_oper_log` VALUES (8643, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 07:54:40', 10);
INSERT INTO `sys_oper_log` VALUES (8644, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p>\\t1，修剪技巧</p><p>\\t春季修剪，芽萌动后于开花前进行。此时修剪能提高剪留芽的萌芽率，促生中短枝；合理疏花疏蕾，扼制过多挂果。此时期贮藏营养大量向幼龄枝的枝端运转，修剪后养分损失比冬剪多，削弱树势的作用较重，萌芽力较低的品种、旺长树或需控制的旺长枝，宜春季修剪。</p><p>\\t夏季修剪，剪去过密枝叶，开张大枝角度；幼旺树上的骨干枝摘心、扭梢、拉枝、环剥等。坐果期环切、环剥；旺长幼树在花芽分化期带叶复剪。</p><p>\\t秋剪修剪，是带叶修剪，修剪一般不会引起来年再旺长，但切勿修剪过重，也不宜在弱树上应用，否则会严重削弱树势。秋剪的时间要适当，过早会引起二次生长，过晚则难收到秋剪的良好效果。</p><p>\\t冬季修剪，一般是采用疏剪、短截、回缩相结合，促控相结合的方法。幼树注意树体结构的培养，成龄树注意生长势的调整，力争长势不衰，各部位长势平衡，</p><p>\\t2，施肥技巧</p><p>\\t施肥应在苹果树萌芽前，也就是3月正下旬至4月上旬。以速效的有机肥为主。可促进果实开花，有利于提高座果率。第二次在6月中下旬。可施加含有氮磷钾的肥料，有利于促进果实膨大。第三次追肥在8月上中旬。适当的有机肥施加，有利于提高果实品质。</p><p>\\t3，除草技巧</p><p>\\t果园中的矮生杂草一般可以使用草甘膦、克无踪等灭生性除草剂定向喷雾加以防除，对一些难除杂草和宿根性杂草，适当增加用量。对表面有蜡质的的杂草，在喷药时加些洗衣粉效果更好些。另外，对苹果园的马齿苋，还可以使用快灭灵等触杀型除草剂定向喷雾。</p><p>\\t4，疏花技巧</p><p>\\t疏花做得好，可以节省树的营养，从而提高所留下的果子色度、果个、甜度等，特别对增大果个有极明显的效果；还能增强树势，延长苹果树的寿命。</p><p>\\t一般中短枝的顶花芽由于停长早，花芽分化期长，供给花芽分化的叶片数量多，养分充足；而腋花芽由于分化早晚差别大，叶片少。供分化的养分相对欠缺，花芽饱满程度远不如顶花芽；在一个枝条中，梢部芽生长时间短，其饱满程度远逊色于中部的芽。而我们疏花时，就要根据以上原则，剪去瘪花芽，留下饱满的芽，才是正确的。</p><p>\\t5、套袋和摘袋</p><p>\\t苹果套袋不仅可以防止病虫害，也可以起到美化果实的作用，我们现在去超市可以买到上面有字或者有图案的苹果就是因为套袋利用阳光着色。根据果树和环境的情况，适时地摘掉袋子，让阳光照射果实。</p><p>\\t6、转动果实</p><p>\\t为了能让果实的每一个表面都被充分的照射，让果实的颜色看上去均匀饱满，需要将挡住阳光的叶子摘下来，而且对于阳光照射不到的那一面就需要人工将果实转一个面，这是一个需要非常仔细谨慎的工作。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 20:56:47\",\"id\":229,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"掌握好种植苹果的6大技巧，让家里的苹果树增产增收\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 07:56:47', 19);
INSERT INTO `sys_oper_log` VALUES (8645, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 07:58:40', 10);
INSERT INTO `sys_oper_log` VALUES (8646, '用户-驿站', 1, 'com.ruoyi.system.controller.TbUserStationController.add()', 'POST', 1, '2023216390', NULL, '/system/user_station', '120.228.70.208', 'XX XX', '{\"id\":3934,\"stationId\":4102,\"userId\":3934}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:00:05', 6);
INSERT INTO `sys_oper_log` VALUES (8647, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">环渤海湾苹果产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">自然生草的果园，在摘袋前半个月刈割一次行间草被。丘岭薄地果园可在采果后通过深翻改土、客土改良、有机物料覆盖等方式，结合施用有机肥，改良耕层土壤。胶东半岛和辽东半岛土壤酸化的果园可通过施用硅钙镁肥、石灰或其他土壤改良剂改良土壤。</span></p><p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">黄土高原产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">干旱地区在秋季雨水较丰富时期，播种黑麦草等宿根草种或越年生的油菜等间作作物改良土壤；普遍施用一次硅钙镁肥改良土壤。（硅钙镁肥与其他肥料一起土施，用量一般为50—100公斤/亩；石灰单独撒施，用量一般为75—100公斤/亩。）</span></p><p>\\t花果管理</p><p>\\t苹果园秋季花果管理主要包括果实摘袋、垫果、摘叶、转果、铺反光膜和适时采收等技术。</p><p>\\t<strong>（一）摘袋。</strong>摘袋时期，较难上色的红富士等品种采收前20—25天摘袋，易上色品种采收前15—20天摘袋。黄绿品种在采收时连同纸袋一起摘下。摘袋方法，套单层纸袋的摘袋方法是在上午10点前和下午4时后将袋撕成伞形条状罩在果实上，3—5天后再全去掉；双层纸袋摘袋方法是先去掉外层袋经过5个左右晴天后去掉内层袋，亦可采用遮阴网一次性去袋。</p><p>\\t<strong>（二）垫果。</strong>摘袋的同时对果实与枝梢接触部位加护果垫防止磨损。</p><p>\\t<strong>（三）摘叶。</strong>果实摘袋后3—5天进行。用剪刀将遮挡果实的叶片和紧贴果实的叶片适量剪除，保留叶柄。摘叶量控制在20%—30%为宜。</p><p>\\t<strong>（四）转果。</strong>摘袋4—5天后进行第一次转果，9—10天进行第二次转果。转果应避开晴天的中午进行。</p><p>\\t<strong>（五）铺反光膜。</strong>在内袋摘除后3—5天进行。在树干两边顺行覆膜，膜外缘与树冠外缘对齐，果实采收前1—2天撤膜。</p><p>\\t<strong>（六）适时采收。</strong>根据果实生育期、商品处理要求等适期采收，早熟富士优系果实生育期150—155天，王林145—165天，晚熟富士优系175—180天，秦脆160—165天，瑞雪180—190天，维纳斯黄金170—175天。采收前禁止浇大水，采摘时带果柄采下，轻拿轻放，防止机械损伤。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:00:46\",\"id\":230,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/1706014713923_1706014723118.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"2023年苹果园秋季生产技术指导意见\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:00:46', 10);
INSERT INTO `sys_oper_log` VALUES (8648, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:00:48', 10);
INSERT INTO `sys_oper_log` VALUES (8649, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:02:05', 8);
INSERT INTO `sys_oper_log` VALUES (8650, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '223.104.195.217', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:03:45', 9);
INSERT INTO `sys_oper_log` VALUES (8651, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p>\\t1，修剪技巧</p><p>\\t春季修剪，芽萌动后于开花前进行。此时修剪能提高剪留芽的萌芽率，促生中短枝；合理疏花疏蕾，扼制过多挂果。此时期贮藏营养大量向幼龄枝的枝端运转，修剪后养分损失比冬剪多，削弱树势的作用较重，萌芽力较低的品种、旺长树或需控制的旺长枝，宜春季修剪。</p><p>\\t夏季修剪，剪去过密枝叶，开张大枝角度；幼旺树上的骨干枝摘心、扭梢、拉枝、环剥等。坐果期环切、环剥；旺长幼树在花芽分化期带叶复剪。</p><p>\\t秋剪修剪，是带叶修剪，修剪一般不会引起来年再旺长，但切勿修剪过重，也不宜在弱树上应用，否则会严重削弱树势。秋剪的时间要适当，过早会引起二次生长，过晚则难收到秋剪的良好效果。</p><p>\\t冬季修剪，一般是采用疏剪、短截、回缩相结合，促控相结合的方法。幼树注意树体结构的培养，成龄树注意生长势的调整，力争长势不衰，各部位长势平衡，</p><p>\\t2，施肥技巧</p><p>\\t施肥应在苹果树萌芽前，也就是3月正下旬至4月上旬。以速效的有机肥为主。可促进果实开花，有利于提高座果率。第二次在6月中下旬。可施加含有氮磷钾的肥料，有利于促进果实膨大。第三次追肥在8月上中旬。适当的有机肥施加，有利于提高果实品质。</p><p>\\t3，除草技巧</p><p>\\t果园中的矮生杂草一般可以使用草甘膦、克无踪等灭生性除草剂定向喷雾加以防除，对一些难除杂草和宿根性杂草，适当增加用量。对表面有蜡质的的杂草，在喷药时加些洗衣粉效果更好些。另外，对苹果园的马齿苋，还可以使用快灭灵等触杀型除草剂定向喷雾。</p><p>\\t4，疏花技巧</p><p>\\t疏花做得好，可以节省树的营养，从而提高所留下的果子色度、果个、甜度等，特别对增大果个有极明显的效果；还能增强树势，延长苹果树的寿命。</p><p>\\t一般中短枝的顶花芽由于停长早，花芽分化期长，供给花芽分化的叶片数量多，养分充足；而腋花芽由于分化早晚差别大，叶片少。供分化的养分相对欠缺，花芽饱满程度远不如顶花芽；在一个枝条中，梢部芽生长时间短，其饱满程度远逊色于中部的芽。而我们疏花时，就要根据以上原则，剪去瘪花芽，留下饱满的芽，才是正确的。</p><p>\\t5、套袋和摘袋</p><p>\\t苹果套袋不仅可以防止病虫害，也可以起到美化果实的作用，我们现在去超市可以买到上面有字或者有图案的苹果就是因为套袋利用阳光着色。根据果树和环境的情况，适时地摘掉袋子，让阳光照射果实。</p><p>\\t6、转动果实</p><p>\\t为了能让果实的每一个表面都被充分的照射，让果实的颜色看上去均匀饱满，需要将挡住阳光的叶子摘下来，而且对于阳光照射不到的那一面就需要人工将果实转一个面，这是一个需要非常仔细谨慎的工作。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 20:56:47\",\"id\":229,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/1706014953134(1)_1706015056792.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"掌握好种植苹果的6大技巧，让家里的苹果树增产增收\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-23 21:04:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:04:32', 11);
INSERT INTO `sys_oper_log` VALUES (8652, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t12月7日至8日，全省设施蔬菜绿色轻简高效生产关键技术培训班在临沂市举办。</p><p class=\\\"ql-align-justify\\\">\\t中国农业科学院植物保护研究所张桂芬研究员、蔬菜花卉研究所尚庆茂研究员和山东农业大学园艺科学与工程学院魏珉教授分别围绕番茄潜叶蛾发生与防控技术、蔬菜智能化机械化育苗技术创新与应用及老旧低效设施改造提升技术方案进行了专题培训。期间，组织参会人员赴兰陵农业发展集团有限公司设施蔬菜生产基地、兰陵县鸿强蔬菜产销专业合作社观摩学习。</p><p class=\\\"ql-align-justify\\\">\\t本次培训是2023年省农业重大技术协同推广计划“设施蔬菜绿色轻简高效生产关键技术”项目的重要内容，是山东省设施蔬菜“千人指导　万人培训”农技提升行动的重要组成部分，也是全省番茄潜叶蛾防控工作的重要行动，对加快设施蔬菜先进关键实用技术的推广普及，提高全省设施蔬菜生产管理水平，打好番茄潜叶蛾防控攻坚战起到极大地促进作用。</p><p class=\\\"ql-align-justify\\\">\\t山东省农业农村厅种植业管理处主要负责人，临沂市农业农村局相关负责同志出席开班仪式。各市负责蔬菜技术推广人员，枣庄、济宁、泰安、日照、临沂五个市植保技术人员，项目组成员及技术示范承担主体负责同志共50余人参加培训。培训同步在线直播，在线观看人数达11．89万人次。</p><p><img src=\\\"http://localhost:9000/village-station/W020231218373569071735_1706015282154.jpg\\\"></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:08:15\",\"id\":231,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/W020231218373568843235_1706015267883.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"全省设施蔬菜绿色轻简高效生产关键技术培训班在临沂召开\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:08:15', 7);
INSERT INTO `sys_oper_log` VALUES (8653, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p>各省、自治区、直辖市及计划单列市农业农村（农牧）、畜牧兽医、渔业厅（局、委），新疆生产建设兵团农业农村局，北大荒农垦集团有限公司、广东省农垦总局：</p><p>\\t习近平总书记指出，“要树立大食物观，发展设施农业，构建多元化食物供给体系”，“设施农业大有可为，要发展日光温室、植物工厂和集约化畜禽养殖，推进陆基和深远海养殖渔场建设，拓宽农业生产空间领域”。大力发展现代设施农业，加快用现代技术与先进设施装备武装农业，既可保障农产品稳定安全供给，也可弥补水土资源短缺、减少耕地占用；既可促进农业转型升级和增加农民收入，也可带动关联产业发展，畅通城乡经济循环，是建设农业强国的重要任务，是推进农业农村现代化的重要举措。经过多年建设，我国设施农业发展取得长足进步，为保障粮食和重要农产品稳定安全供给发挥了重要作用，但还存在总量不足、质量不高等问题，不能适应建设农业强国的需要。为贯彻落实党的二十大精神，按照中央有关决策部署，推动《全国现代设施农业建设规划（2023—2030年）》落实，加快现代设施农业高质量发展，制定本指导意见。</p><p class=\\\"ql-align-right\\\">\\t农业农村部 </p><p class=\\\"ql-align-right\\\">\\t2023年6月10日 </p><p class=\\\"ql-align-justify\\\"><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:08:15\",\"id\":231,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/W020230630353939128181_1706015401002.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"农业农村部关于发展现代设施农业的指导意见\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-23 21:11:02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:11:02', 7);
INSERT INTO `sys_oper_log` VALUES (8654, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-center\\\">\\t<strong>山东省“十四五”推进农业农村\\t现代化规划</strong></p><p>\\t“十四五”时期，是全面推进乡村振兴、加快农业农村现代化的第一个五年，也是我省加快新旧动能转换、推动农业农村高质量发展和打造乡村振兴齐鲁样板的关键阶段。为加快全省农业农村现代化，推进农业高质高效、乡村宜居宜业、农民富裕富足，根据《“十四五”推进农业农村现代化规划》和《山东省国民经济和社会发展第十四个五年规划和2035年远景目标纲要》，制定本规划。</p><p>\\t（一）指导思想。以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中、五中、六中全会精神，认真落实习近平总书记对山东工作的重要指示要求，牢固树立新发展理念，坚持农业农村优先发展总方针，以实施乡村振兴战略、打造乡村振兴齐鲁样板为总抓手，聚焦农业农村高质量发展，全面走好城乡融合发展之路、共同富裕之路、质量兴农之路、乡村绿色发展之路、乡村文化兴盛之路、乡村善治之路、中国特色减贫之路，激活城乡要素、乡村资源和乡村发展内生动力，加快形成工农互促、城乡互补、协调发展、共同繁荣的新型工农城乡关系，优化提升乡村产业体系、生产体系和经营体系，全面推进农产品优质化、乡村田园生态化、乡村产业融合化、农业农村数字化、基层治理规范化、农民增收持续化，更好满足农民群众对美好生活新期待、新向往、新需要。</p><p>\\t（二）基本原则。</p><p>\\t1．坚持绿色发展，生态化引领。践行绿水青山就是金山银山理念，严守耕地和生态保护红线，促进农村生产生活生态协调发展。</p><p>\\t2．坚持创新驱动，数字化转型。大力推动科技创新、业态创新和模式创新，推进产业数字化、数字产业化，加快发展乡村数字经济。</p><p>\\t3．坚持深化改革，集约化经营。不断深化农村土地制度、集体产权制度改革，创新体制机制，集聚要素资源，发展多种形式农业适度规模经营。</p><p>\\t4．坚持城乡统筹，融合化推进。建立健全城乡融合发展的体制机制和政策体系，促进城乡要素合理流动和优化配置，推动农业全面升级、农村全面进步、农民全面发展。</p><p>\\t5．坚持农民主体，共享化发展。发挥农民在农业农村现代化中的主体作用，充分尊重农民意愿，巩固拓展脱贫攻坚成果，切实保护农民权益，调动广大农民群众的积极性、主动性和创造性。</p><p>\\t（三）发展定位。</p><p>\\t1．乡村振兴齐鲁样板示范省。牢记习近平总书记嘱托，把打造乡村振兴齐鲁样板作为重大政治任务，大胆探索、培塑典型、系统总结、推广经验，稳步推进乡村产业、人才、文化、生态和组织振兴。</p><p>\\t2．农业农村高质量发展先行省。充分发挥新旧动能转换综合试验区优势，树立大数据经济战略资源理念，全面提升农业质量效益和竞争力，全面提高农村生产、生活、生态质量。</p><p>\\t3．推进现代农业强省建设引领省。立足自然资源禀赋和产业优势，科学制定农业现代化指标体系，加快农业现代化示范区建设，不断提升农业供给保障水平、质量效益水平、技术装备水平和适度规模经营水平。</p><p>\\t（四）发展目标。到2025年，全省农业农村经济高质量发展取得显著成效，现代农业强省建设实现重大突破，粮食等重要农产品供给保障能力持续增强，农业质量效益和竞争力明显提升。农业绿色发展水平稳步提高，乡村建设行动扎实推进，农民生产生活条件大幅改善，脱贫攻坚成果巩固拓展，农民收入持续稳定增加，现代乡村治理体系初步构建，乡村振兴齐鲁样板亮点纷呈。全省基本实现农业现代化的县（市、区）达到80％以上，确保农业农村现代化建设走在全国前列。</p><p><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:13:05\",\"id\":232,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/s_b0811c281b824309987000f13405cabb_1706015511138.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"山东省人民政府关于印发山东省“十四五”推进农业农村现代化规划的通知\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:13:05', 8);
INSERT INTO `sys_oper_log` VALUES (8655, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"1\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t<strong>新华社济南1月16日电</strong>（记者陈国峰）时值腊月，又到了草莓西红柿采摘的季节。走进山东省潍坊市坊子区逄王一村的子航家庭农场，一个个温室大棚里人头攒动。“草莓西红柿酸甜可口、皮薄汁多，深受大家喜爱。”看着熙熙攘攘的游客，农场经理周国栋脸上洋溢着喜悦。</p><p class=\\\"ql-align-justify\\\">\\t周国栋毕业于青岛农业大学，2015年回村开启创业之路。他创办家庭农场、注册多个商标，以品牌赋能，拓宽农产品销售渠道。</p><p class=\\\"ql-align-justify\\\">\\t坊子区是农业大区。坊子区农业农村局局长郑光亮介绍，当地以发展“规模化、品牌化、园区化、智慧化”的都市现代农业为目标，不断调整和优化农业结构，打造了一批优势农产品品牌，目前已建成省级标准化基地7家、市级标准化基地7家，认证有机农产品53个。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/W020240116516467145540_1706015660379.jpg\\\"></p><p class=\\\"ql-align-justify\\\">\\t逄王一品西红柿、半截楼葡萄、柏台西瓜、水墨庄园热带水果、坊安芦笋、杞都牛蒡茶……如今，说起坊子区的农业品牌，很多市民如数家珍。</p><p class=\\\"ql-align-justify\\\">\\t品牌的塑造离不开人才支撑。坊子区持续加大农业人才培育力度，2023年以来培育“土专家”“田秀才”等各类乡土人才1000余名，带动建设示范园区、合作社120余个。</p><p class=\\\"ql-align-justify\\\">\\t“创牌”容易“守牌”难。一些合作社和种植户引入先进农业技术，为产业发展插上“科技翅膀”，擦亮农产品金字招牌。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/W020240116516467367899_1706015677380.jpg\\\"></p><p class=\\\"ql-align-justify\\\">\\t走进位于坊安街道洼里村的玉泉洼种植专业合作社，采用10层立体栽培技术的温室大棚蔚为壮观，一盆盆油菜、苦菊、芹菜、菌菇等按照不同习性有序排列，上面3层是喜光蔬菜，中间3层次之，接下来3层为不喜光蔬菜，最底层是菌类。负责搬运盆菜的自动导向搬运车沿着既定路线穿梭，犹如工厂车间的生产场景。</p><p class=\\\"ql-align-justify\\\">\\t玉泉洼种植专业合作社技术总监刘国盛说：“我们用种植槽立体栽培技术种植的草莓，种植株数比传统种植方式提高了20％；植株光照充足，果实着色均匀，商品果率达93％。”</p><p class=\\\"ql-align-justify\\\">\\t合作社负责人刘向东介绍，在“玉泉洼”品牌引领下，洼里村年生产有机蔬果6000多吨，实现产值约8600万元，带动周边22个村走上农业产业化发展道路。</p><p class=\\\"ql-align-justify\\\"><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:15:17\",\"id\":233,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/W020240116516467367899_1706015706620.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"山东潍坊坊子区如何解锁品牌农业发展“密码”\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:15:18', 8);
INSERT INTO `sys_oper_log` VALUES (8656, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"1\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t“一粒种子8元，加上育苗成本，单株价格达到11.5元，结出来的番茄能卖到20元／公斤。”1月3日一大早，记者来到位于汶上县汶上街道的绿港（汶上）现代农业示范园，穿戴好防护服、口罩、头套，经过热风消毒，才得以进入现代温室大棚。园区负责人逄焕军指着藤蔓上错落有致的番茄说：“这就是番茄中的‘爱马仕’——爱仕401。”</p><p class=\\\"ql-align-justify\\\">\\t如此“娇贵”的品种，管理起来反倒“简单”：1万平方米的智能温室大棚里，只有两位工人在忙碌。“爱仕401是来自法国的口感型番茄新品种，对生长环境的要求十分苛刻，必须严格控制棚区温度、湿度以及菌群数量。”逄焕军介绍，园区通过智慧管理系统实现了温、光、水、气、肥等全数字调控、全要素控制。“每平方米产量80公斤，整个棚区产量预计可以达到80万公斤。第一茬新品种番茄将在春节前上市，预计能卖出个好价钱。”</p><p class=\\\"ql-align-justify\\\">\\t诚如眼前的场景一样，数字农业的画卷正在汶上的沃野里铺展开来。2024年汶上县政府工作报告指出，新的一年，汶上将实施政策拥农、改革惠农、产业兴农、科技富农“四项行动”，加快建设农业强县。</p><p class=\\\"ql-align-justify\\\">\\t“我们通过招大引强、示范引领、辐射带动等方式，与江苏绿港、华苑农业、京东物流、盒马鲜生等大型企业达成战略合作协议，打造了华苑智慧农业示范园区、5个千亩现代化农业基地等多个数字农业先行区，形成了产业规模化、产品集约化、服务一体化的现代农业生产体系。”汶上街道党工委书记步海霞介绍。2023年，绿港（汶上）现代农业示范园实现年产蔬菜300万公斤，培育优良果蔬种苗200万株，年产值1800余万元，惠及汶上县14个乡镇（街道）的152个村居，带动300余人就业。</p><p class=\\\"ql-align-justify\\\">\\t汶上县利用数字农业物联网，开展智慧农田项目建设，通过大数据、云服务等信息化技术，对农业生产定时定量管理，根据农产品的生长情况合理分配资源，让农业生产高效低耗、优质环保。</p><p class=\\\"ql-align-justify\\\">\\t在苑庄镇高标准农田建设智能化示范基地项目区，“智能井房＋地埋式自动伸缩喷灌系统”让人眼前一亮。智能井房占地少、摆放灵活，具有用水用电双计量、刷卡浇地、水肥一体化、土壤墒情远程监控等功能。地埋式自动伸缩喷滴灌设备埋于耕作层以下，不影响耕作，通过集成喷头可开展水肥一体化高效节水喷灌作业，况且作业前后不需要安装与拆卸喷灌设备，无须人员管理与保护。</p><p class=\\\"ql-align-justify\\\">\\t“通过手机上的‘智慧农业’App就能对其进行远程控制，实现了精准灌溉、精准施肥、节约成本、节约人力、提高效益的目标。”苑庄镇种粮大户荣维振介绍。喷灌系统一次性投资，可节约10％的耕地、70％的用水和85％的用工。与此同时，项目区还建设有“灌溉信息云平台”，可实时开展虫情监测、气象监测、土壤墒情监测、土壤肥情监测及苗情监测等，对农事生产过程的关键环节进行全面智慧化管理。</p><p class=\\\"ql-align-justify\\\">\\t数字农业要“施展拳脚”，离不开土地规模化、集约化等基础条件。汶上县引导农村综合产权有序流转，土地流转率达到79.6％，居济宁市第1位。2022年以来，汶上县新建高标准农田13万亩，一个个“小方田”成了稳产高产的“大粮仓”。（<span style=\\\"background-color: rgb(255, 255, 255);\\\">来源：​大众日报   </span>记者　王浩奇　通讯员　张明　殷壮）</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:18:11\",\"id\":234,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/4fc30eb0ba067a46f8749a217dbf246(2)_1706015852999.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9\",\"title\":\"汶上深耕数字农业 “智慧农业”结出致富果\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:18:11', 8);
INSERT INTO `sys_oper_log` VALUES (8657, '用户-驿站', 1, 'com.ruoyi.system.controller.TbUserStationController.add()', 'POST', 1, 'lsp110', NULL, '/system/user_station', '14.111.199.7', 'XX XX', '{\"id\":3935,\"stationId\":4102,\"userId\":3935}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:21:29', 5);
INSERT INTO `sys_oper_log` VALUES (8658, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p>\\t1，修剪技巧</p><p>\\t春季修剪，芽萌动后于开花前进行。此时修剪能提高剪留芽的萌芽率，促生中短枝；合理疏花疏蕾，扼制过多挂果。此时期贮藏营养大量向幼龄枝的枝端运转，修剪后养分损失比冬剪多，削弱树势的作用较重，萌芽力较低的品种、旺长树或需控制的旺长枝，宜春季修剪。</p><p>\\t夏季修剪，剪去过密枝叶，开张大枝角度；幼旺树上的骨干枝摘心、扭梢、拉枝、环剥等。坐果期环切、环剥；旺长幼树在花芽分化期带叶复剪。</p><p>\\t秋剪修剪，是带叶修剪，修剪一般不会引起来年再旺长，但切勿修剪过重，也不宜在弱树上应用，否则会严重削弱树势。秋剪的时间要适当，过早会引起二次生长，过晚则难收到秋剪的良好效果。</p><p>\\t冬季修剪，一般是采用疏剪、短截、回缩相结合，促控相结合的方法。幼树注意树体结构的培养，成龄树注意生长势的调整，力争长势不衰，各部位长势平衡，</p><p>\\t2，施肥技巧</p><p>\\t施肥应在苹果树萌芽前，也就是3月正下旬至4月上旬。以速效的有机肥为主。可促进果实开花，有利于提高座果率。第二次在6月中下旬。可施加含有氮磷钾的肥料，有利于促进果实膨大。第三次追肥在8月上中旬。适当的有机肥施加，有利于提高果实品质。</p><p>\\t3，除草技巧</p><p>\\t果园中的矮生杂草一般可以使用草甘膦、克无踪等灭生性除草剂定向喷雾加以防除，对一些难除杂草和宿根性杂草，适当增加用量。对表面有蜡质的的杂草，在喷药时加些洗衣粉效果更好些。另外，对苹果园的马齿苋，还可以使用快灭灵等触杀型除草剂定向喷雾。</p><p>\\t4，疏花技巧</p><p>\\t疏花做得好，可以节省树的营养，从而提高所留下的果子色度、果个、甜度等，特别对增大果个有极明显的效果；还能增强树势，延长苹果树的寿命。</p><p>\\t一般中短枝的顶花芽由于停长早，花芽分化期长，供给花芽分化的叶片数量多，养分充足；而腋花芽由于分化早晚差别大，叶片少。供分化的养分相对欠缺，花芽饱满程度远不如顶花芽；在一个枝条中，梢部芽生长时间短，其饱满程度远逊色于中部的芽。而我们疏花时，就要根据以上原则，剪去瘪花芽，留下饱满的芽，才是正确的。</p><p>\\t5、套袋和摘袋</p><p>\\t苹果套袋不仅可以防止病虫害，也可以起到美化果实的作用，我们现在去超市可以买到上面有字或者有图案的苹果就是因为套袋利用阳光着色。根据果树和环境的情况，适时地摘掉袋子，让阳光照射果实。</p><p>\\t6、转动果实</p><p>\\t为了能让果实的每一个表面都被充分的照射，让果实的颜色看上去均匀饱满，需要将挡住阳光的叶子摘下来，而且对于阳光照射不到的那一面就需要人工将果实转一个面，这是一个需要非常仔细谨慎的工作。</p><p><img src=\\\"http://localhost:9000/village-station/1706014953134(1)_1706015986565.jpg\\\"><img src=\\\"http://localhost:9000/village-station/4fc30eb0ba067a46f8749a217dbf246(2)_1706016002252.png\\\"></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 20:56:47\",\"id\":229,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/1706014953134(1)_1706015056792.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"掌握好种植苹果的6大技巧，让家里的苹果树增产增收\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-23 21:22:28\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:22:28', 7);
INSERT INTO `sys_oper_log` VALUES (8659, '用户-驿站', 1, 'com.ruoyi.system.controller.TbUserStationController.add()', 'POST', 1, '2023216410', NULL, '/system/user_station', '14.111.199.7', 'XX XX', '{\"id\":3936,\"stationId\":4102,\"userId\":3936}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:24:30', 4);
INSERT INTO `sys_oper_log` VALUES (8660, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"3\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t<span style=\\\"background-color: rgb(255, 255, 255);\\\">数九寒冬，走进山东省聊城市冠县灵芝科技示范园，40个高标准种植棚内却是温暖如春。在一排排一人多高的立体网格架上，一个个金黄色的灵芝从格子里“探出脑袋”，正在茁壮成长。</span>\\t“过去种灵芝受气温影响，只能春夏时种一茬。现在我们的大棚温度、湿度、光照、通风等都由计算机控制，实现了全年不间断生产，一年可种3至4茬灵芝。”冠县灵芝科技示范园推进工作组成员燕森淼告诉记者。</p><p class=\\\"ql-align-justify\\\">\\t孢子粉是灵芝在成熟期喷射出来的种子，是灵芝的精华。“传统灵芝种植大棚的孢子粉收集率在70％左右，现在我们使用智能化收集设备，将孢子粉收集率提高到了95％以上。每个立体种植棚每茬能产1000公斤孢子粉和750公斤子实体，纯收益4万多元。”燕森淼说。</p><p class=\\\"ql-align-justify\\\">\\t位于黄河故道的冠县，依托当地丰富的林果资源，大力发展灵芝特色产业。经过30多年的发展，目前已形成集培育、种植、深加工、创意销售等为一体的灵芝产业链。</p><p class=\\\"ql-align-justify\\\">\\t在冠县店子镇王当铺村，种植大户王明瑞的灵芝大棚里，摆放着数万盆造型别致的灵芝盆景，大的有一米多高，小的有十几厘米高，有的像松塔，有的像大圆盘。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/W020240102335770827083_1706016280246.jpg\\\"></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:25:26\",\"id\":235,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/W020240102335770544871_1706016259004.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,10,9,11\",\"title\":\"山东冠县：小灵芝开出乡村振兴“致富花”\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:25:26', 10);
INSERT INTO `sys_oper_log` VALUES (8661, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '2023216410', NULL, '/system/user/profile', '14.111.199.7', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-23 08:23:27\",\"delFlag\":\"0\",\"email\":\"l@l.l\",\"loginIp\":\"\",\"nickName\":\"芝士雪豹\",\"params\":{\"@type\":\"java.util.HashMap\"},\"phonenumber\":\"15523780336\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{\"@type\":\"java.util.HashMap\"},\"permissions\":[\"system:news:list\",\"system:finance:list:checked\",\"system:free:list:unchecked\",\"system:news:checked\",\"system:free:query\",\"system:finance:list\",\"system:free:remove\",\"system:training:list:checked\",\"system:station:list\",\"system:station:checked\",\"system:free:list:checked\",\"system:news:list:checked\",\"system:station:list:checked\",\"system:free:add\",\"system:training:list\",\"system:training:checked\",\"system:finance:checked\"],\"roleId\":106,\"roleKey\":\"user\",\"roleName\":\"普通用户\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":3936,\"userName\":\"2023216410\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:25:44', 10);
INSERT INTO `sys_oper_log` VALUES (8662, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023216410', NULL, '/system/user_station', '14.111.199.7', 'XX XX', '{\"stationId\":4102,\"userId\":3936}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:27:22', 8);
INSERT INTO `sys_oper_log` VALUES (8663, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">环渤海湾苹果产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">自然生草的果园，在摘袋前半个月刈割一次行间草被。丘岭薄地果园可在采果后通过深翻改土、客土改良、有机物料覆盖等方式，结合施用有机肥，改良耕层土壤。胶东半岛和辽东半岛土壤酸化的果园可通过施用硅钙镁肥、石灰或其他土壤改良剂改良土壤。</span></p><p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">黄土高原产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">干旱地区在秋季雨水较丰富时期，播种黑麦草等宿根草种或越年生的油菜等间作作物改良土壤；普遍施用一次硅钙镁肥改良土壤。（硅钙镁肥与其他肥料一起土施，用量一般为50—100公斤/亩；石灰单独撒施，用量一般为75—100公斤/亩。）</span></p><p>\\t花果管理</p><p>\\t苹果园秋季花果管理主要包括果实摘袋、垫果、摘叶、转果、铺反光膜和适时采收等技术。</p><p>\\t<strong>（一）摘袋。</strong>摘袋时期，较难上色的红富士等品种采收前20—25天摘袋，易上色品种采收前15—20天摘袋。黄绿品种在采收时连同纸袋一起摘下。摘袋方法，套单层纸袋的摘袋方法是在上午10点前和下午4时后将袋撕成伞形条状罩在果实上，3—5天后再全去掉；双层纸袋摘袋方法是先去掉外层袋经过5个左右晴天后去掉内层袋，亦可采用遮阴网一次性去袋。</p><p>\\t<strong>（二）垫果。</strong>摘袋的同时对果实与枝梢接触部位加护果垫防止磨损。</p><p>\\t<strong>（三）摘叶。</strong>果实摘袋后3—5天进行。用剪刀将遮挡果实的叶片和紧贴果实的叶片适量剪除，保留叶柄。摘叶量控制在20%—30%为宜。</p><p>\\t<strong>（四）转果。</strong>摘袋4—5天后进行第一次转果，9—10天进行第二次转果。转果应避开晴天的中午进行。</p><p>\\t<strong>（五）铺反光膜。</strong>在内袋摘除后3—5天进行。在树干两边顺行覆膜，膜外缘与树冠外缘对齐，果实采收前1—2天撤膜。</p><p>\\t<strong>（六）适时采收。</strong>根据果实生育期、商品处理要求等适期采收，早熟富士优系果实生育期150—155天，王林145—165天，晚熟富士优系175—180天，秦脆160—165天，瑞雪180—190天，维纳斯黄金170—175天。采收前禁止浇大水，采摘时带果柄采下，轻拿轻放，防止机械损伤。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:00:46\",\"id\":230,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/1706014713923_1706014723118.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"2023年苹果园秋季生产技术指导意见\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-23 21:41:31\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 08:41:31', 6);
INSERT INTO `sys_oper_log` VALUES (8664, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"3\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t近日，山东省农业农村厅发布《山东省2023年第二批农作物审定品种目录》，潍坊市农科院主持选育的“潍麦15”“潍麦16”小麦品种通过山东省农作物品种审定委员会审定。</p><p class=\\\"ql-align-justify\\\">\\t\\t潍坊市农科院站在服务粮食安全的战略高度，加快新品种选育工作。2023年以来，累计有“潍麦13”“潍玉326”等6个农作物新品种通过山东省农作物品种审定；“晚青”蜜桃等12个品种被授予国家植物新品种权；欧丁香“丽妃”等5个新品种为我省首批获得国家植物新品种权的丁香品种；“潍豆1897”被中国种子协会评为专家推荐品种，“潍花25号”被列为山东省主要粮油作物主推品种，“潍花8号”被推介为骨干型花生品种；豆梨“首都”等5个林木良种被确定为山东省首批优先推荐使用林木良种。</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:03:51\",\"id\":236,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"潍坊市农科院主持选育的两小麦品种通过省农作物品种审定\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 09:03:51', 9);
INSERT INTO `sys_oper_log` VALUES (8665, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"3\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t<span style=\\\"background-color: rgb(255, 255, 255);\\\">数九寒冬，走进山东省聊城市冠县灵芝科技示范园，40个高标准种植棚内却是温暖如春。在一排排一人多高的立体网格架上，一个个金黄色的灵芝从格子里“探出脑袋”，正在茁壮成长。</span>\\t“过去种灵芝受气温影响，只能春夏时种一茬。现在我们的大棚温度、湿度、光照、通风等都由计算机控制，实现了全年不间断生产，一年可种3至4茬灵芝。”冠县灵芝科技示范园推进工作组成员燕森淼告诉记者。</p><p class=\\\"ql-align-justify\\\">\\t孢子粉是灵芝在成熟期喷射出来的种子，是灵芝的精华。“传统灵芝种植大棚的孢子粉收集率在70％左右，现在我们使用智能化收集设备，将孢子粉收集率提高到了95％以上。每个立体种植棚每茬能产1000公斤孢子粉和750公斤子实体，纯收益4万多元。”燕森淼说。</p><p class=\\\"ql-align-justify\\\">\\t位于黄河故道的冠县，依托当地丰富的林果资源，大力发展灵芝特色产业。经过30多年的发展，目前已形成集培育、种植、深加工、创意销售等为一体的灵芝产业链。</p><p class=\\\"ql-align-justify\\\">\\t在冠县店子镇王当铺村，种植大户王明瑞的灵芝大棚里，摆放着数万盆造型别致的灵芝盆景，大的有一米多高，小的有十几厘米高，有的像松塔，有的像大圆盘。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/W020240102335770827083_1706016280246.jpg\\\"></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:25:26\",\"id\":235,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/W020240102335770544871_1706018644190.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,10,9,11\",\"title\":\"山东冠县：小灵芝开出乡村振兴“致富花”\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-23 22:04:05\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 09:04:05', 6);
INSERT INTO `sys_oper_log` VALUES (8666, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"4\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">沾化冬枣因其脆甜多汁、营养丰富，深受消费者欢迎，被誉为“中华奇果”“世界第一果品”“百果之王”，在中国品牌价值评价中，位列地理标志枣类产品第1名，也是2023年滨州市唯一入选“好品山东”的农产品。近年来，建行滨州分行紧跟国家决策部署，不断加大农村金融供给，从大处着眼、小处着手，推动金融资源更多投向个体农户、家庭农场、合作社等群体，充分发挥金融主力军作用，助力冬枣产业发展。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/218_1706018779362.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>裕农快贷打通乡村振兴 “致富之路”</strong></p><p class=\\\"ql-align-justify\\\">冬枣产业是滨州市沾化区最具特色的优势产业，也是拉动农民致富增收的支柱产业，建行滨州分行进一步发挥“裕农通”平台作用，运用科技手段服务乡村振兴，加大涉农支持，助推冬枣产业链发展。</p><p>“多亏了建行的裕农快贷，170多万的资金，帮了我大忙了” 滨州市沾化区某冬枣专业合作社位于沾化区下河乡庞家村，共承包土地200余亩，主要经营一代、二代冬枣种植、销售。近年来由于冬枣产业链的健全，大棚冬枣逐步兴起并具有较好的市场前景。2022年11月，建行滨州沾化支行为其发放裕农快贷173万元，企业主王某军用该笔资金将其名下100亩冬枣园改建为大棚冬枣，2023年9月，王某军的大棚冬枣较漏天冬枣提前20天成熟，冬枣上市早、售价高，销售收入是往年的一倍，建行的信贷支持打通了老王的“致富之路”。</p><p><img src=\\\"http://localhost:9000/village-station/219_1706018762948.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>科技补偿贷助力沾化冬枣“迈出国门”</strong></p><p class=\\\"ql-align-justify\\\">“老赵，500万的贷款已经到账了，感谢建行，这下我可以放心大胆的接订单了”</p><p class=\\\"ql-align-justify\\\">滨州市沾化区某果蔬进出口有限公司是一家集果蔬产品的种植管理、采后收购、产地预冷、保鲜仓储、预选分级、加工包装、冷链配送于一体的专业化农产品服务公司，主要从事高品质沾化冬枣的生产及出口业务和国内高端市场销售业务。2020年，企业首次将沾化冬枣出口到美国市场，出口冬枣800吨，创汇960万美元。近年来，该公司国际业务得到进一步拓展，由于企业生产规模受限，无法满足订单需求，企业不敢大量接国际订单，建行滨州沾化支行在了解到这一情况后，客户经理主动上门走访，根据企业特点为其发放科技补偿贷款500万元，用于企业扩大生产规模使用，2023年，该公司将沾化冬枣出口到荷兰、西班牙、新加坡、泰国、加拿大及中东部分地区，出口订单近7000吨，建行科技补偿贷助力沾化冬枣“迈出国门，走向世界”。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/221_1706018768872.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>云税贷解企业“燃眉之急”</strong></p><p class=\\\"ql-align-justify\\\">“付总，货款已经给对方打过去了，谢谢，太感谢了！”</p><p class=\\\"ql-align-justify\\\">山东滨州某食品有限公司是一家具有较高知名度的食品加工企业，与建行建立合作关系多年，企业主要立足于当地农产品小枣、冬枣农作物制品，生产、加工枣系列制品、山楂系列制品。自公司成立以来，产品销售市场范围不断扩大，市场份额连年增长，品牌知名度和影响力日益提高，产品销量增长迅速，枣制品、山楂制品销量居全国前列。2023年10月，企业紧急接到一批冬枣加工订单，由于冬枣价格上涨，导致企业成本增加，周转资金不足，货款金额较企业预估相差150多万元，一时之间难以筹集，于是向我行寻求帮助，在了解到企业缴税状况后，建行滨州沾化支行客户经理主动上门服务，现场为其办理云税贷200万元，解决企业“燃眉之急”。</p><p class=\\\"ql-align-justify\\', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 09:06:23', 7);
INSERT INTO `sys_oper_log` VALUES (8667, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"4\",\"collect\":0,\"content\":\"<p>在山东寿光稻田镇崔岭西村，1500亩地里“长”着360个蔬菜大棚，年产果蔬万余吨，人均年收入超4万元。“村民靠种菜富起来，多亏了银行贷款的支持。”村党支部书记崔玉禄说。</p><p>崔玉禄介绍，在农业银行“大棚两改”贷款的支持下，合作社为种植户配置了水、肥、药一体化灌溉系统，为生产技术标准化提供了保障。除此之外，“强村贷”“惠农e贷”“新居贷”等贷款的发放，不仅打响了当地蔬菜品牌，还让村民住上了楼房，“过上了城里人都羡慕的生活”。</p><p>近年来，山东省金融机构聚焦乡村振兴重大战略、重点领域和薄弱环节，不断优化金融产品和服务，持续加大金融资源投入，为高质量打造乡村振兴齐鲁样板畅通金融“活水”，贡献金融力量。</p><p>“截至11月末，山东省涉农贷款余额4.12万亿元，同比增长12.8%，高于各项贷款增速1.7个百分点；较年初增加4692.8亿元，同比多增337.6亿元；农业企业直接融资取得积极进展，前11个月全省发行乡村振兴债券30.5亿元。”中国人民银行山东省分行副行长董龙训表示。</p><p>在支持乡村振兴方面，山东省深入开展金融服务乡村振兴“一县一品”创建活动、农村特色产权融资“自选优势项目”突破活动等，金融机构创新推出“石榴贷”“家庭农场贷”“大棚贷”等百余款专属信贷产品，截至10月末，全省“一县一品”和农业产业链融资贷款余额731.2亿元，有效满足了新型农业经营主体和农户生产资金需求。</p><p>作为全国唯一的农业政策性银行，农业发展银行聚焦“藏粮于地”“藏粮于技”“菜篮子”等重点领域，农业发展银行山东省分行副行长朱峰介绍，农发行涉农产业类贷款余额1122亿元，支持了包括高标准农田、盐碱地综合利用等农村土地流转和土地规模经营，智慧农业、数字农业、设施农业等农业科技创新和成果转化。</p><p>“从威海西洋参到菏泽牡丹，从兰陵蔬菜到高青黑牛、阳信肉牛，以服务乡村振兴作为主责主业的农发行，不断为山东地方特色产业发展注入动能，助力‘好品山东’农产品品牌建设。”朱峰说。</p><p>在支持人才振兴方面，山东不断完善创业担保贷款实施办法，提高返乡创业农民工创业担保贷款额度，9月末全省返乡创业农民工创业担保贷款余额达48.1亿元，为妇女、退役军人、教师等群体量身定做“鲁担巾帼贷”“退役军人创业贷”“园丁贷”等金融产品。前三季度，山东省累计发放“鲁担巾帼贷”4682笔、金额42.5亿元，发放退役军人创业贷款5233笔、金额14亿元。</p><p>在山东，“美德信用”也能变成“真金白银”。为支持文化振兴，山东省深化农村信用体系建设，全面推进乡村美德积分金融转化建设，建立“美德+积分+金融”服务模式。</p><p>近日，在临沂费县，504家“街边小店”，获得了总额1.08亿元授信，“美德信用积分”转化成了可以随借随还的流动资金。作为首个国家级普惠金融服务乡村振兴改革试验区，临沂市率先在全省创新建立“美德+积分+金融”的服务新模式，并在在沂水县、费县、沂南县、兰陵县等县区开展试点，“美德信用积分”成为银行贷款投放的新参考依据。</p><p>据了解，在山东省农信联社的指导下，临沂全市12家农商银行推出由美德个人积分贷、美德企业积分贷、美德组织积分贷组成的“美德积分系列贷”，让美德信用积分变成“真金白银”。</p><p>在临沂费县王家庄经营家庭农场的刘玉田，今年美德信用积分达到了930分，他也因此申请到20万元“美德个人信用贷”，为10个樱桃大棚安装了全自动控温设备。“明年的大樱桃能早上市十几天，卖个好价钱。”刘玉田说。</p><p>除了个人“美德积分”外，人民银行山东省分行组织开展“信用户、信用村、信用乡镇”评定，将涉农主体遵纪守法、诚实守信、家庭和睦等情况纳入信用评价，推动“整村授信”“无感授信”，引导金融资源加速向农业农村现代化领域聚集。10月末，全省完成“整村授信”村庄7.4万个、覆盖面达96.4%；农户贷款达1.2万亿元，同比增长14%，增速快于全部贷款。</p><p>与此同时，山东省金融机构结合乡村实际探索开展了林权、排污权、林业碳汇、合同能源管理收益权抵质押等贷款业务支持生态振兴；推出“强村贷”等产品支持组织振兴，前11个月，全省累计发放“强村贷”8.3亿元，支持项目816个。</p><p>金融“活水”助力乡村振兴，离不开政策的引领，近年来，山东省不断健全契合乡村振兴的金融政策体系，先后制定《关于金融支持打造乡村振兴齐鲁样板 加快建设现代农业强省的实施意见》、《关于加强金融资源供给 助力新型农业经营主体加快发展若干措施的通知》等多个政策文件，围绕高标准农田建设和盐碱地综合利用、农业关键核心技术攻关、乡村新产业新业', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 09:07:50', 8);
INSERT INTO `sys_oper_log` VALUES (8668, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"5\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t送春联、赶大集、看表演、品美食……“家家挂红灯，户户贴春联，村村有好戏——回村过大年”2024春节山东乡村文化旅游节1月18日在山东16市同步启动，丰富的活动吸引了各地游客及当地群众。</p><p class=\\\"ql-align-justify\\\">\\t在山东淄博高青县的现场活动中，软陶泥塑展示区上精美可爱的“龙生九子”等系列龙年主题软陶艺术品引人驻足。不到一小时，已有几十人前来咨询购买。</p><p class=\\\"ql-align-justify\\\">\\t在山东16市启动仪式现场，各地立足地域特色，设置了民俗表演、“黄河大集”“村村有好品”展示推介等形式多样的活动。</p><p class=\\\"ql-align-justify\\\">\\t据了解，2024春节山东乡村文化旅游节将从1月18日持续到3月11日。其间，山东将围绕农历腊八、小年、除夕、正月十五、二月二等主要节点，依托古城古镇、特色文化旅游村等，重点推出省级12项、市级48项特色文化活动。（记者张昕怡）</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:09:15\",\"id\":239,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/W020240123407763284943_1706018953380.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9\",\"title\":\"2024春节山东乡村文化旅游节启动\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 09:09:15', 10);
INSERT INTO `sys_oper_log` VALUES (8669, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"5\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t寒冬腊月，山东省烟台市福山区门楼水库已结冰，但水库附近的西汪格庄村樱桃大棚里却生机盎然，一簇簇红红的樱桃缀在枝头格外诱人。春节前，这里的大樱桃就会上市，工人们正做着采摘前的准备工作。</p><p class=\\\"ql-align-justify\\\">\\t西汪格庄村是门楼水库整体搬迁村，共有500多户村民，土地零散、土壤贫瘠。多年来，村民收入主要来自露天樱桃种植，但由于周边樱桃种植面积大、上市集中，樱桃卖不上好价钱。为错峰上市，村党支部书记于江源多次参加全国大大小小的农博会，不断向农业专家讨教，想让樱桃成熟时间从三月中下旬提到春节前。</p><p class=\\\"ql-align-justify\\\">\\t这两年，烟台农科院和于江源一起探索试验，成效明显。眼下，西汪格庄村4个温室大棚里，有的樱桃树刚刚发芽，有的樱桃树已经开花结果。烟台农科院果科所工作人员李芳东介绍，这是因为大棚采用智能温控系统，将樱桃树的休眠期提前结束，使其在冬天也能开花坐果。</p><p class=\\\"ql-align-justify\\\">\\t“控制好休眠期，就能精准控制大棚里的樱桃什么时候开花、什么时候结果。”于江源说，不同大棚里的樱桃生长期不同，上市时间不同，就是为了错峰上市、卖个好价钱。</p><p class=\\\"ql-align-justify\\\">\\t走进一个樱桃大棚，棚顶的自动卷帘徐徐拉起，树下的水肥一体化系统启动，细密的水珠洒向绿叶。每隔一段距离，就能看到温度、湿度监测设备。</p><p class=\\\"ql-align-justify\\\">\\t“花期和膨果期需要的温度不同。设定好温度后，设备每天会根据天气自动控制通风口大小。”于江源打开手机App，棚里的温度、湿度、地温等数据一目了然。他说，“足不出户，在手机上就可以看到主要数据。温度过高或过低，手机会发出提示。这么大的一个棚，只需要三个人管理，主要靠的是高科技智能自动化系统。”</p><p class=\\\"ql-align-justify\\\">\\t2017年，于江源带领部分村民，用土地入股的方式，成立了烟台市福山区宏坤农业科技专业合作社。他给记者算了笔账：一个温室大棚春节前预计上市3000斤樱桃，按照200元一斤计算，就能收入60万元。</p><p class=\\\"ql-align-justify\\\">\\t“让烟台温室大樱桃春节前上市，我们一直在努力。”李芳东介绍，以前过年吃的都是进口大樱桃，现在国产大樱桃也在春节前进入市场，这是技术突破的成果。随着新技术的应用，烟台大樱桃供应期进一步延长，从元旦到6月底都有新鲜樱桃上市。（记者邵琨）</p><p class=\\\"ql-align-justify\\\"><br></p><p><br></p><p class=\\\"ql-align-center\\\"><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:09:57\",\"id\":240,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/W020240123404536198050_1706018985421.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"烟台福山：冬日樱桃绽放“致富花”\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 09:09:57', 8);
INSERT INTO `sys_oper_log` VALUES (8670, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"6\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t潍坊昌邑市认真贯彻上级关于乡村文化建设的决策部署，坚持城乡融合发展，实施三项引领工程，加快建设乡村文化传承保护利用隆起带。山阳村、青阜村、齐西村获评省文化体验廊道重点村创建名单；“山东昌邑山阳大梨栽培系统”成功入选第七批中国重要农业文化遗产；柳疃丝绸、山阳农文旅融合示范区、红色马渠入选全省乡村特色文化艺术典型案例。</p><p class=\\\"ql-align-justify\\\">\\t<strong>实施文化体验廊道重点村建设工程，树立文化体验新标杆</strong></p><p class=\\\"ql-align-justify\\\">\\t自山阳村、青阜村、齐西村被列入省文化体验廊道重点村创建名单后，昌邑市高度重视。建设前，昌邑市农业农村局、昌邑市委宣传部等8部门成立调研组，联合潍坊市调研组对昌邑市3个入选重点村进行了专题调研，并邀请省专家进行指导，高标准完成建设方案编制。同时，由农业农村部门牵头，建立多部门协同推进工作机制，保障重点村建设顺利实施。建设中，每月调度1次建设进度，每季度开展1次现场调研，保证严格按照实施方案要求加快工程推进。按照省委办公厅、省政府办公厅《关于建设文化体验廊道推进文旅融合高质量发展的实施计划（2023－2025年）》要求，联合市文旅、宣传、住建、交通等部门，多渠道加大政策倾斜力度，将省级和美乡村建设资金全部投入重点村建设，实现和美乡村与重点村建设深度融合。目前，各项工作进展顺利，整体建设进度已达95％以上。</p><p class=\\\"ql-align-justify\\\">\\t<strong>实施农业文化遗产赋能工程，延伸区域农业文化品牌价值链</strong></p><p class=\\\"ql-align-justify\\\">\\t近年来，昌邑市指导山阳村调整产业结构，走转型发展新路子，践行“两山论”，将博陆山由一座废弃的荒山变成了绿水青山。2022年开始，昌邑积极申报省农业文化遗产资源名录、国家农业文化遗产。2023年9月，“山东昌邑山阳大梨栽培系统”成功入选第七批中国重要农业文化遗产，极大提升了“山阳大梨”的知名度和品牌影响力。借助农业文化遗产的品牌效应，指导遗产地举办了第九届山阳大梨采摘节、“潍”农上品·香溢四“坊”农产品展昌邑场、首次山阳大梨竞拍活动，进一步挖掘利用山阳大梨栽培系统作为中国重要农业文化遗产的文化意义和品牌价值，擦亮了中国重要农业文化遗产这一金字招牌。同时注重对农业文化遗产的传承利用，加强对博陆山古梨园的科学保护，设立山阳大梨栽培系统农业文化遗产保护区，围绕农业生产、农民生活、农业生态景观、农业文化保护等方面高标准编制了《山东昌邑山阳大梨栽培系统农业文化遗产保护与发展规划》，指导遗产地核心区设立中国重要农业文化遗产标志，协调各方资源，依托山阳大梨民俗文化、梨花文化、潍水文化、孔融让梨文化以及当地民俗风情文化，将生态村落景观带、人文景观带、历史文化景观带以及农业文化遗产景观带贯穿一体，合理布局于遗产地，高标准打造山阳农文旅产业融合示范区，进一步提升昌邑区域经济文化品牌。</p><p class=\\\"ql-align-justify\\\">\\t此外，昌邑市还重点挖掘了距今有600多年种植历史的昌邑大姜和400多年种植历史的斜子萝卜等农业文化遗产资源品牌。11月9日，在青岛市举办的第二十届中国国际农交会上，“鲁昌宏大”生姜入选中国农业品牌目录2022农产品品牌名单。2023年中国品牌建设促进会审定“昌邑大姜”品牌价值35.8亿元，在全国大姜品牌价值中列第1位。斜子萝卜获2022潍坊市潍县萝卜品质提升大赛优质奖，今年举办了孙斜村第二届乡土文化节暨“斜子萝卜”评奖大赛。</p><p class=\\\"ql-align-justify\\\">\\t<strong>实施特色文化资源提升工程，打造文化传承示范带</strong></p><p class=\\\"ql-align-justify\\\">\\t昌邑市深挖黄元御中医药文化、丝绸文化、渔盐文化3种特色文化资源，坚持传承发展、创新转化，全方位打造农业文化传承示范带。</p><p class=\\\"ql-align-justify\\\">\\t在山阳大梨这一农业文化遗产的带动下，大力弘扬中医药文化。举办黄元御中医药文化宣传周，开展黄元御主题文化展、“中医药文化进校园”“古代医家论医德医风医道”书法展等活动，传承发展“一代医宗”黄元御中医药文化思想。传承丝绸文化。昌邑柳疃镇有着深厚的丝绸历史文化，是著名的“丝绸之乡”。昌邑依托传统丝绸文化，启动“乡村记忆工程”，开展研学教育活动，聘请当地丝绸老艺人参', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 09:11:51', 7);
INSERT INTO `sys_oper_log` VALUES (8671, '新增新闻', 1, 'com.ruoyi.system.controller.TbNewsController.add()', 'POST', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"6\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t走进山东鑫润育种科技有限公司羽衣甘蓝种植基地，高素质农民大师刘秀君正给徒弟现场讲解甘蓝杂交育种技术。据悉，自“师傅带徒项目”开展以来，生产能手“乡土专家”刘秀君已招徒15人，带动周边群众扩种羽衣甘蓝1000余亩，其烘干制品畅销全国各地，每亩可实现增收3000－4000元。</p><p class=\\\"ql-align-justify\\\">\\t据了解，2023年以来，金乡县农业农村局聚焦乡村振兴和现代农业发展人才需求，以农业增效、农民增收、农村发展为目标，加大农村实用人才培育力度，着力打造一支懂农业、爱农村、爱农民的“三农”工作队伍，为乡村振兴提供坚实的人才支撑。</p><p class=\\\"ql-align-justify\\\">\\t<strong>积极培育“田秀才”，壮大农业“主力军”。</strong>扎实开展高素质农民培训。坚持以“培训一批学员、带动一方农民、助推一项产业”为培育目标，采取“课堂教学＋现场教学＋线上学习”三种授课模式，分层分类举办了粮油单产提升、专业农机手、棉果菜茶等9个专题培训班，培育高素质农民349人，选定7个试点村375农民学员开展农民素质素养提升培训行动，加快形成与产业需求相适应、与农村发展相协调的高素质农民队伍。狠抓农业“领军”队伍建设。选送10人参加全国乡村产业振兴带头人培育“头雁”项目培训，6名学员荣获“产业拓展标兵”“优秀班干部”“优秀学员”等称号。聘请35名技术能力水平高、传帮带能力强、示范作用发挥好的“土专家”加入高素质农民培训讲师团，成功入选济宁师资力量库。加强基层农技推广人才队伍建设。依托基层农技推广体系改革与建设补助项目，结合农时农事，累计举办各类种植管理技术培训班、农业生产经营从业者培训班和农技人员技术培训班23期，培训基层农技人员、科技示范户、农民群众2万余人次。</p><p class=\\\"ql-align-justify\\\">\\t<strong>分类施策“强指导”，为民服务“解难题”。</strong>加强跟踪服务。建立线上对接“点单”、统筹精准“派单”、线下服务“接单”服务机制，组建13支高素质农民跟踪服务团队，累计走访学员253名，开展现场指导300余人次，面对面、手把手传授讲解农业技术知识，着力解决学员在农业生产中遇到的实际问题。用好现场观摩。注重实践运用，先后举办省农业重大技术协同推广计划葱姜蒜绿色高效关键技术推广项目现场观摩会、大蒜辣椒全程机械化现场观摩会和大豆玉米带状复合种植现场观摩会，为高素质农民、基层农技人员和科技示范主体提供“取经”学习平台。创新推广模式。巩固完善“专家＋试验示范基地＋农技员＋科技示范主体＋辐射带动户”的技术服务模式，大力推广水肥一体化、病虫害统防统治、蒜后辣椒大苗机械化移栽等新品种、新技术，打造科技强农、产业兴农的现代农业。</p><p class=\\\"ql-align-justify\\\">\\t<strong>选树人才“领头雁”，激活干事“新动能”。</strong>创新农村实用人才评选。规范推荐程序，提升农村实用人才选拔质量，3人被授予“山东省劳动模范”称号，6人当选第十届“齐鲁乡村之星”，3人获评“第十一届山东省优秀基层农业技术人员”称号，9人获评济宁市2022年度“农技标兵”，10人获评济宁市2022年度“乡村工匠”。加大乡土人才培育。选送6人参加山东省“大师开讲”“锵锵新农民”等大型融媒体节目录制，1人获评“师傅带徒”创新试点项目的高素质农民大师，激活人才“动力引擎”。优化农民职称评选。重点突出效果导向、实绩导向，推选生产型、经营型、技能型、服务型的“农把式”“土专家”“田秀才”24人参加农民职称评审。截至目前，全县4人取得农民高级农艺师职称、26人取得农民农艺师职称、25人取得农民助理农艺师职称，总人数居全市首位。</p><p class=\\\"ql-align-justify\\\">\\t下一步，金乡县将坚持把人才振兴放在乡村振兴的重要位置，持续在“引、育、用、留”上下功夫，不断加强农村实用人才队伍建设，为全面推进乡村振兴、加快农业农村现代化提供有力人才支撑。</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:13:58\",\"id\":242,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://localhost:9000/village-station/8eb36a2521c54ad6827aca8c1a255b62_1706019237243.jp', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 09:13:58', 7);
INSERT INTO `sys_oper_log` VALUES (8672, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 21:42:04', 8);
INSERT INTO `sys_oper_log` VALUES (8673, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '2023213593', NULL, '/system/user/profile', '112.23.21.22', 'XX XX', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"\",\"createTime\":\"2024-01-23 07:45:19\",\"delFlag\":\"0\",\"email\":\"shangke_0801@qq.com\",\"loginDate\":\"2024-01-23 21:03:32\",\"loginIp\":\"223.104.195.217\",\"nickName\":\"2023213593\",\"params\":{\"@type\":\"java.util.HashMap\"},\"phonenumber\":\"19715516172\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{\"@type\":\"java.util.HashMap\"},\"permissions\":[\"system:news:list\",\"system:finance:list:checked\",\"system:free:list:unchecked\",\"system:news:checked\",\"system:free:query\",\"system:finance:list\",\"system:free:remove\",\"system:training:list:checked\",\"system:station:list\",\"system:station:checked\",\"system:free:list:checked\",\"system:news:list:checked\",\"system:station:list:checked\",\"system:free:add\",\"system:training:list\",\"system:training:checked\",\"system:finance:checked\"],\"roleId\":106,\"roleKey\":\"user\",\"roleName\":\"普通用户\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":3933,\"userName\":\"2023213593\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 21:42:26', 10);
INSERT INTO `sys_oper_log` VALUES (8674, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"6\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t潍坊昌邑市认真贯彻上级关于乡村文化建设的决策部署，坚持城乡融合发展，实施三项引领工程，加快建设乡村文化传承保护利用隆起带。山阳村、青阜村、齐西村获评省文化体验廊道重点村创建名单；“山东昌邑山阳大梨栽培系统”成功入选第七批中国重要农业文化遗产；柳疃丝绸、山阳农文旅融合示范区、红色马渠入选全省乡村特色文化艺术典型案例。</p><p class=\\\"ql-align-justify\\\">\\t<strong>实施文化体验廊道重点村建设工程，树立文化体验新标杆</strong></p><p class=\\\"ql-align-justify\\\">\\t自山阳村、青阜村、齐西村被列入省文化体验廊道重点村创建名单后，昌邑市高度重视。建设前，昌邑市农业农村局、昌邑市委宣传部等8部门成立调研组，联合潍坊市调研组对昌邑市3个入选重点村进行了专题调研，并邀请省专家进行指导，高标准完成建设方案编制。同时，由农业农村部门牵头，建立多部门协同推进工作机制，保障重点村建设顺利实施。建设中，每月调度1次建设进度，每季度开展1次现场调研，保证严格按照实施方案要求加快工程推进。按照省委办公厅、省政府办公厅《关于建设文化体验廊道推进文旅融合高质量发展的实施计划（2023－2025年）》要求，联合市文旅、宣传、住建、交通等部门，多渠道加大政策倾斜力度，将省级和美乡村建设资金全部投入重点村建设，实现和美乡村与重点村建设深度融合。目前，各项工作进展顺利，整体建设进度已达95％以上。</p><p class=\\\"ql-align-justify\\\">\\t<strong>实施农业文化遗产赋能工程，延伸区域农业文化品牌价值链</strong></p><p class=\\\"ql-align-justify\\\">\\t近年来，昌邑市指导山阳村调整产业结构，走转型发展新路子，践行“两山论”，将博陆山由一座废弃的荒山变成了绿水青山。2022年开始，昌邑积极申报省农业文化遗产资源名录、国家农业文化遗产。2023年9月，“山东昌邑山阳大梨栽培系统”成功入选第七批中国重要农业文化遗产，极大提升了“山阳大梨”的知名度和品牌影响力。借助农业文化遗产的品牌效应，指导遗产地举办了第九届山阳大梨采摘节、“潍”农上品·香溢四“坊”农产品展昌邑场、首次山阳大梨竞拍活动，进一步挖掘利用山阳大梨栽培系统作为中国重要农业文化遗产的文化意义和品牌价值，擦亮了中国重要农业文化遗产这一金字招牌。同时注重对农业文化遗产的传承利用，加强对博陆山古梨园的科学保护，设立山阳大梨栽培系统农业文化遗产保护区，围绕农业生产、农民生活、农业生态景观、农业文化保护等方面高标准编制了《山东昌邑山阳大梨栽培系统农业文化遗产保护与发展规划》，指导遗产地核心区设立中国重要农业文化遗产标志，协调各方资源，依托山阳大梨民俗文化、梨花文化、潍水文化、孔融让梨文化以及当地民俗风情文化，将生态村落景观带、人文景观带、历史文化景观带以及农业文化遗产景观带贯穿一体，合理布局于遗产地，高标准打造山阳农文旅产业融合示范区，进一步提升昌邑区域经济文化品牌。</p><p class=\\\"ql-align-justify\\\">\\t此外，昌邑市还重点挖掘了距今有600多年种植历史的昌邑大姜和400多年种植历史的斜子萝卜等农业文化遗产资源品牌。11月9日，在青岛市举办的第二十届中国国际农交会上，“鲁昌宏大”生姜入选中国农业品牌目录2022农产品品牌名单。2023年中国品牌建设促进会审定“昌邑大姜”品牌价值35.8亿元，在全国大姜品牌价值中列第1位。斜子萝卜获2022潍坊市潍县萝卜品质提升大赛优质奖，今年举办了孙斜村第二届乡土文化节暨“斜子萝卜”评奖大赛。</p><p class=\\\"ql-align-justify\\\">\\t<strong>实施特色文化资源提升工程，打造文化传承示范带</strong></p><p class=\\\"ql-align-justify\\\">\\t昌邑市深挖黄元御中医药文化、丝绸文化、渔盐文化3种特色文化资源，坚持传承发展、创新转化，全方位打造农业文化传承示范带。</p><p class=\\\"ql-align-justify\\\">\\t在山阳大梨这一农业文化遗产的带动下，大力弘扬中医药文化。举办黄元御中医药文化宣传周，开展黄元御主题文化展、“中医药文化进校园”“古代医家论医德医风医道”书法展等活动，传承发展“一代医宗”黄元御中医药文化思想。传承丝绸文化。昌邑柳疃镇有着深厚的丝绸历史文化，是著名的“丝绸之乡”。昌邑依托传统丝绸文化，启动“乡村记忆工程”，开展研学教育活动，聘请当地丝绸老艺人参', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:03:52', 25);
INSERT INTO `sys_oper_log` VALUES (8675, '线下培训', 1, 'com.ruoyi.system.controller.TbOfflineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/offline_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"<p>\\t&nbsp;事业小有所成&nbsp;返乡从零开始</p><p>\\t房富岭大学毕业后留在了城市，历经多年奋斗，他终于拥有了自己的公司，事业蒸蒸日上。彼时的他走出村庄，跳出龙门，实现了自己多年的创业梦，再没想过会和农业有瓜葛。2017年家乡所在镇党委找到他，希望他能返乡创业。为此他曾一度犹豫彷徨，如今事业已步入正轨，返乡创业有必要吗？从来没有系统学过农业，在家乡那么落后的地方创业，能成功吗？经过一番深思熟虑，怀揣着对家乡的深情，房富岭还是毅然接起这份重任，回到家乡开启了带领村民的致富梦。</p><p>\\t创新孵化模式&nbsp;聚合发展能量</p><p>\\t返乡后，房富岭先后注册成立了山东盈田农业科技有限公司、乐陵市花园镇房家村土地股份专业合作社，凭借自己互联网工作的经验，打造出“互联网+农业科技”新型农业产业模式，既实现了土地资源的充分利用，又让老百姓足不出村就能实现就业，带动了周边7个村庄居民增产增收。2021年合作社进入中国农民合作社500强，经济效益和社会效益不断提升。</p><p>\\t近年来，直播带货成为流行趋势，为农产品营销提供了新的渠道。房富岭趁着这阵“东风”，扎身短视频平台，通过抖音做乡村振兴产业调研指导，自学农产品电商、新媒体运营知识，经过业务对接和数据汇总，总结出了符合自己合作社发展的“农业六赢”模式，即在党组织统领下，用企业管理的方式，以投资运营的模式，把集体非经营性资产盘活，把村民经营性资产整合，实现了“组织、集体、村民、出资人、政府和社会”六方共赢。以此为基础，房富岭继续扩大关联产业链，组织农机服务合作社、仓储合作社、青年创业合作社、养殖合作社、农贸市场合作社等多个以村庄为载体，村民为主体的合作社，各个合作社均已独立运行并取得良好经营业绩，所有合作社均与村两委充分协商后成立注册，做到了村集体和村民双增收。</p><p>\\t借助高校优势&nbsp;汇聚人才资源</p><p>\\t为了更好的完善农业科技人才储备，适应农业发展的步伐，解决农村人才留不住和不足的难题，房富岭所在的合作社与山东农业大学签订了人才培训计划、建立了科教实训基地，家乡“三年一小变，五年一大变，十年领先周边一小步”的计划正在逐步实现。作为山东省乡村产业振兴“头雁”培育项目的优秀代表，房富岭积极参与学校组织的各项活动，不仅与各大高校关联专业的教授学者建立了深厚的友谊，更是将高校的技术、人才、资源引入到自己的产业发展中，与山东农大肥业有限公司和淄博禾丰种业有限公司等多家校友企业达成战略合作，利用自身互联网运作经验的优势，将各企业的产品进行网络资源整合与开发。</p><p>\\t加大人才回引&nbsp;实现强村富民</p><p>\\t乡村振兴，人才先行。房富岭深深懂得这个道理。如今，在房富岭的榜样带动下，在外创业的游子们一批接着一批回到家乡，有从承德返乡从事电线电缆生产的、有从天津返乡从事服装外贸加工的、有从北京返乡从事电商传媒培训的、有从济南返乡从事畜牧养殖的……在他们的带领下，房家村也正在筹备成立房家创业发展集团。此外，房富岭还在村里设置了“奖学金”“奖师金”，奖励中考、高考、在校获奖的优秀学子，鼓励村里的孩子通过学习“走出去”，反哺家乡；同时，激励更多有为教师来到房家村争先创优，点亮乡村振兴的“希望大道”。</p><p>\\t雄关漫道真如铁，而今迈步从头越。经过“头雁”项目的培育，房富岭将在党的二十大精神的指引下，振翅高飞、领航群雁，带领与他一样的有志青年们打造基层创业新业态，发展经济强村富民，实现所有返乡创业者的富农梦、兴农梦。</p><p>\\t&nbsp;</p><p>\\t房富岭 2023年山东省乡村产业振兴带头人培育“头雁”项目（粮食一班）学员</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 11:10:18\",\"id\":193,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/18d45a6d-cb16-45bf-bec2-b95bacfc9e36_1706065810303.png\",\"sort\":\"0,1,2\",\"title\":\"头雁故事#房富岭：农虽旧业 其命维新——返乡“头雁”的兴农梦\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:10:18', 18);
INSERT INTO `sys_oper_log` VALUES (8676, '线下培训', 1, 'com.ruoyi.system.controller.TbOfflineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/offline_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"<p>\\t<span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">8月8日，山东省2023年乡村产业振兴带头人培育“头雁”项目启动仪式暨开学典礼在山东农业大学举办。农业农村部人力资源开发中心教育培训处副处长顾鹏，山东农业大学副校长林海出席活动并致辞，山东省农业农村厅二级巡视员王成民主持启动仪式。</span></p><p class=\\\"ql-align-justify\\\"><span class=\\\"ql-cursor\\\">﻿</span>\\t顾鹏在讲话中对山东省2022年“头雁”项目取得的成绩给予充分肯定。他指出，开展“头雁”项目是贯彻落实习近平总书记关于乡村振兴和人才工作重要论述，带动形成乡村产业振兴雁阵人才队伍，夯实乡村振兴人才基础的有力举措。相关单位要积极为“头雁”项目提供配套政策支持和跟踪服务，通过高质量的课程和科学的考核机制，培养一大批有知识、能实践、懂管理的“农民MBA”。</p><p class=\\\"ql-align-justify\\\">\\t林海在致辞时表示，山东农业大学高度重视乡村振兴人才培养工作，近年来在以“头雁”项目为代表的乡村振兴人才培养工作中取得一系列成绩，学校将以本次活动为契机，持续提升人才培养能力和水平，努力打造具有高校学科特色的“头雁”培育项目。他鼓励广大学员要珍惜学习机会，通过项目学知识、找路径、取真经、交朋友；要求项目有关单位和工作人员要做好全过程周到服务，保障项目顺利开展，切实在国家实施乡村振兴人才支持计划、高素质农民培育计划过程中贡献山农智慧和力量。</p><p class=\\\"ql-align-justify\\\">\\t上海交通大学教授王大鹏、山东农业大学乡村振兴学院院长张舒、学员代表李保国分别代表授课教师、培育机构和广大学员发言。</p><p class=\\\"ql-align-justify\\\">\\t本次活动采取线上线下相结合的形式举办，主会场设在山东农业大学，青岛农业大学设立分会场。省农业农村厅、农广校、16地市农业农村局有关负责同志，培育机构负责人，山东农业大学、青岛农业大学第一期“头雁”项目学员代表参加活动。</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 11:11:08\",\"id\":194,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/456226d2-9621-4b0d-b94c-08ff1e3ac507_1706065851166.jpg\",\"sort\":\"0,1,2\",\"title\":\"山东省乡村产业振兴带头人培育 “头雁”项目在我校启动\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:11:08', 11);
INSERT INTO `sys_oper_log` VALUES (8677, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p>\\t1，修剪技巧</p><p>\\t春季修剪，芽萌动后于开花前进行。此时修剪能提高剪留芽的萌芽率，促生中短枝；合理疏花疏蕾，扼制过多挂果。此时期贮藏营养大量向幼龄枝的枝端运转，修剪后养分损失比冬剪多，削弱树势的作用较重，萌芽力较低的品种、旺长树或需控制的旺长枝，宜春季修剪。</p><p>\\t夏季修剪，剪去过密枝叶，开张大枝角度；幼旺树上的骨干枝摘心、扭梢、拉枝、环剥等。坐果期环切、环剥；旺长幼树在花芽分化期带叶复剪。</p><p>\\t秋剪修剪，是带叶修剪，修剪一般不会引起来年再旺长，但切勿修剪过重，也不宜在弱树上应用，否则会严重削弱树势。秋剪的时间要适当，过早会引起二次生长，过晚则难收到秋剪的良好效果。</p><p>\\t冬季修剪，一般是采用疏剪、短截、回缩相结合，促控相结合的方法。幼树注意树体结构的培养，成龄树注意生长势的调整，力争长势不衰，各部位长势平衡，</p><p>\\t2，施肥技巧</p><p>\\t施肥应在苹果树萌芽前，也就是3月正下旬至4月上旬。以速效的有机肥为主。可促进果实开花，有利于提高座果率。第二次在6月中下旬。可施加含有氮磷钾的肥料，有利于促进果实膨大。第三次追肥在8月上中旬。适当的有机肥施加，有利于提高果实品质。</p><p>\\t3，除草技巧</p><p>\\t果园中的矮生杂草一般可以使用草甘膦、克无踪等灭生性除草剂定向喷雾加以防除，对一些难除杂草和宿根性杂草，适当增加用量。对表面有蜡质的的杂草，在喷药时加些洗衣粉效果更好些。另外，对苹果园的马齿苋，还可以使用快灭灵等触杀型除草剂定向喷雾。</p><p>\\t4，疏花技巧</p><p>\\t疏花做得好，可以节省树的营养，从而提高所留下的果子色度、果个、甜度等，特别对增大果个有极明显的效果；还能增强树势，延长苹果树的寿命。</p><p>\\t一般中短枝的顶花芽由于停长早，花芽分化期长，供给花芽分化的叶片数量多，养分充足；而腋花芽由于分化早晚差别大，叶片少。供分化的养分相对欠缺，花芽饱满程度远不如顶花芽；在一个枝条中，梢部芽生长时间短，其饱满程度远逊色于中部的芽。而我们疏花时，就要根据以上原则，剪去瘪花芽，留下饱满的芽，才是正确的。</p><p>\\t5、套袋和摘袋</p><p>\\t苹果套袋不仅可以防止病虫害，也可以起到美化果实的作用，我们现在去超市可以买到上面有字或者有图案的苹果就是因为套袋利用阳光着色。根据果树和环境的情况，适时地摘掉袋子，让阳光照射果实。</p><p>\\t6、转动果实</p><p>\\t为了能让果实的每一个表面都被充分的照射，让果实的颜色看上去均匀饱满，需要将挡住阳光的叶子摘下来，而且对于阳光照射不到的那一面就需要人工将果实转一个面，这是一个需要非常仔细谨慎的工作。</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 20:56:47\",\"id\":229,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/1706014953134(1)_1706068521120.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"掌握好种植苹果的6大技巧，让家里的苹果树增产增收\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 11:55:43\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:55:44', 10);
INSERT INTO `sys_oper_log` VALUES (8678, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">环渤海湾苹果产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">自然生草的果园，在摘袋前半个月刈割一次行间草被。丘岭薄地果园可在采果后通过深翻改土、客土改良、有机物料覆盖等方式，结合施用有机肥，改良耕层土壤。胶东半岛和辽东半岛土壤酸化的果园可通过施用硅钙镁肥、石灰或其他土壤改良剂改良土壤。</span></p><p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">黄土高原产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">干旱地区在秋季雨水较丰富时期，播种黑麦草等宿根草种或越年生的油菜等间作作物改良土壤；普遍施用一次硅钙镁肥改良土壤。（硅钙镁肥与其他肥料一起土施，用量一般为50—100公斤/亩；石灰单独撒施，用量一般为75—100公斤/亩。）</span></p><p>\\t花果管理</p><p>\\t苹果园秋季花果管理主要包括果实摘袋、垫果、摘叶、转果、铺反光膜和适时采收等技术。</p><p>\\t<strong>（一）摘袋。</strong>摘袋时期，较难上色的红富士等品种采收前20—25天摘袋，易上色品种采收前15—20天摘袋。黄绿品种在采收时连同纸袋一起摘下。摘袋方法，套单层纸袋的摘袋方法是在上午10点前和下午4时后将袋撕成伞形条状罩在果实上，3—5天后再全去掉；双层纸袋摘袋方法是先去掉外层袋经过5个左右晴天后去掉内层袋，亦可采用遮阴网一次性去袋。</p><p>\\t<strong>（二）垫果。</strong>摘袋的同时对果实与枝梢接触部位加护果垫防止磨损。</p><p>\\t<strong>（三）摘叶。</strong>果实摘袋后3—5天进行。用剪刀将遮挡果实的叶片和紧贴果实的叶片适量剪除，保留叶柄。摘叶量控制在20%—30%为宜。</p><p>\\t<strong>（四）转果。</strong>摘袋4—5天后进行第一次转果，9—10天进行第二次转果。转果应避开晴天的中午进行。</p><p>\\t<strong>（五）铺反光膜。</strong>在内袋摘除后3—5天进行。在树干两边顺行覆膜，膜外缘与树冠外缘对齐，果实采收前1—2天撤膜。</p><p>\\t<strong>（六）适时采收。</strong>根据果实生育期、商品处理要求等适期采收，早熟富士优系果实生育期150—155天，王林145—165天，晚熟富士优系175—180天，秦脆160—165天，瑞雪180—190天，维纳斯黄金170—175天。采收前禁止浇大水，采摘时带果柄采下，轻拿轻放，防止机械损伤。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:00:46\",\"id\":230,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706068599482.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"2023年苹果园秋季生产技术指导意见\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 11:56:42\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:56:42', 10);
INSERT INTO `sys_oper_log` VALUES (8679, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p>各省、自治区、直辖市及计划单列市农业农村（农牧）、畜牧兽医、渔业厅（局、委），新疆生产建设兵团农业农村局，北大荒农垦集团有限公司、广东省农垦总局：</p><p>\\t习近平总书记指出，“要树立大食物观，发展设施农业，构建多元化食物供给体系”，“设施农业大有可为，要发展日光温室、植物工厂和集约化畜禽养殖，推进陆基和深远海养殖渔场建设，拓宽农业生产空间领域”。大力发展现代设施农业，加快用现代技术与先进设施装备武装农业，既可保障农产品稳定安全供给，也可弥补水土资源短缺、减少耕地占用；既可促进农业转型升级和增加农民收入，也可带动关联产业发展，畅通城乡经济循环，是建设农业强国的重要任务，是推进农业农村现代化的重要举措。经过多年建设，我国设施农业发展取得长足进步，为保障粮食和重要农产品稳定安全供给发挥了重要作用，但还存在总量不足、质量不高等问题，不能适应建设农业强国的需要。为贯彻落实党的二十大精神，按照中央有关决策部署，推动《全国现代设施农业建设规划（2023—2030年）》落实，加快现代设施农业高质量发展，制定本指导意见。</p><p class=\\\"ql-align-right\\\">\\t农业农村部 </p><p class=\\\"ql-align-right\\\">\\t2023年6月10日 </p><p class=\\\"ql-align-justify\\\"><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:08:15\",\"id\":231,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/W020240116516467367899_1706068648906.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"农业农村部关于发展现代设施农业的指导意见\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 11:57:33\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:57:33', 10);
INSERT INTO `sys_oper_log` VALUES (8680, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"1\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t<strong>新华社济南1月16日电</strong>（记者陈国峰）时值腊月，又到了草莓西红柿采摘的季节。走进山东省潍坊市坊子区逄王一村的子航家庭农场，一个个温室大棚里人头攒动。“草莓西红柿酸甜可口、皮薄汁多，深受大家喜爱。”看着熙熙攘攘的游客，农场经理周国栋脸上洋溢着喜悦。</p><p class=\\\"ql-align-justify\\\">\\t周国栋毕业于青岛农业大学，2015年回村开启创业之路。他创办家庭农场、注册多个商标，以品牌赋能，拓宽农产品销售渠道。</p><p class=\\\"ql-align-justify\\\">\\t坊子区是农业大区。坊子区农业农村局局长郑光亮介绍，当地以发展“规模化、品牌化、园区化、智慧化”的都市现代农业为目标，不断调整和优化农业结构，打造了一批优势农产品品牌，目前已建成省级标准化基地7家、市级标准化基地7家，认证有机农产品53个。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/W020240116516467145540_1706015660379.jpg\\\"></p><p class=\\\"ql-align-justify\\\">\\t逄王一品西红柿、半截楼葡萄、柏台西瓜、水墨庄园热带水果、坊安芦笋、杞都牛蒡茶……如今，说起坊子区的农业品牌，很多市民如数家珍。</p><p class=\\\"ql-align-justify\\\">\\t品牌的塑造离不开人才支撑。坊子区持续加大农业人才培育力度，2023年以来培育“土专家”“田秀才”等各类乡土人才1000余名，带动建设示范园区、合作社120余个。</p><p class=\\\"ql-align-justify\\\">\\t“创牌”容易“守牌”难。一些合作社和种植户引入先进农业技术，为产业发展插上“科技翅膀”，擦亮农产品金字招牌。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/W020240116516467367899_1706015677380.jpg\\\"></p><p class=\\\"ql-align-justify\\\">\\t走进位于坊安街道洼里村的玉泉洼种植专业合作社，采用10层立体栽培技术的温室大棚蔚为壮观，一盆盆油菜、苦菊、芹菜、菌菇等按照不同习性有序排列，上面3层是喜光蔬菜，中间3层次之，接下来3层为不喜光蔬菜，最底层是菌类。负责搬运盆菜的自动导向搬运车沿着既定路线穿梭，犹如工厂车间的生产场景。</p><p class=\\\"ql-align-justify\\\">\\t玉泉洼种植专业合作社技术总监刘国盛说：“我们用种植槽立体栽培技术种植的草莓，种植株数比传统种植方式提高了20％；植株光照充足，果实着色均匀，商品果率达93％。”</p><p class=\\\"ql-align-justify\\\">\\t合作社负责人刘向东介绍，在“玉泉洼”品牌引领下，洼里村年生产有机蔬果6000多吨，实现产值约8600万元，带动周边22个村走上农业产业化发展道路。</p><p class=\\\"ql-align-justify\\\"><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:15:18\",\"id\":233,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/8eb36a2521c54ad6827aca8c1a255b62_1706068682956.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"山东潍坊坊子区如何解锁品牌农业发展“密码”\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 11:58:05\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:58:05', 9);
INSERT INTO `sys_oper_log` VALUES (8681, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-center\\\">\\t<strong>山东省“十四五”推进农业农村\\t现代化规划</strong></p><p>\\t“十四五”时期，是全面推进乡村振兴、加快农业农村现代化的第一个五年，也是我省加快新旧动能转换、推动农业农村高质量发展和打造乡村振兴齐鲁样板的关键阶段。为加快全省农业农村现代化，推进农业高质高效、乡村宜居宜业、农民富裕富足，根据《“十四五”推进农业农村现代化规划》和《山东省国民经济和社会发展第十四个五年规划和2035年远景目标纲要》，制定本规划。</p><p>\\t（一）指导思想。以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中、五中、六中全会精神，认真落实习近平总书记对山东工作的重要指示要求，牢固树立新发展理念，坚持农业农村优先发展总方针，以实施乡村振兴战略、打造乡村振兴齐鲁样板为总抓手，聚焦农业农村高质量发展，全面走好城乡融合发展之路、共同富裕之路、质量兴农之路、乡村绿色发展之路、乡村文化兴盛之路、乡村善治之路、中国特色减贫之路，激活城乡要素、乡村资源和乡村发展内生动力，加快形成工农互促、城乡互补、协调发展、共同繁荣的新型工农城乡关系，优化提升乡村产业体系、生产体系和经营体系，全面推进农产品优质化、乡村田园生态化、乡村产业融合化、农业农村数字化、基层治理规范化、农民增收持续化，更好满足农民群众对美好生活新期待、新向往、新需要。</p><p>\\t（二）基本原则。</p><p>\\t1．坚持绿色发展，生态化引领。践行绿水青山就是金山银山理念，严守耕地和生态保护红线，促进农村生产生活生态协调发展。</p><p>\\t2．坚持创新驱动，数字化转型。大力推动科技创新、业态创新和模式创新，推进产业数字化、数字产业化，加快发展乡村数字经济。</p><p>\\t3．坚持深化改革，集约化经营。不断深化农村土地制度、集体产权制度改革，创新体制机制，集聚要素资源，发展多种形式农业适度规模经营。</p><p>\\t4．坚持城乡统筹，融合化推进。建立健全城乡融合发展的体制机制和政策体系，促进城乡要素合理流动和优化配置，推动农业全面升级、农村全面进步、农民全面发展。</p><p>\\t5．坚持农民主体，共享化发展。发挥农民在农业农村现代化中的主体作用，充分尊重农民意愿，巩固拓展脱贫攻坚成果，切实保护农民权益，调动广大农民群众的积极性、主动性和创造性。</p><p>\\t（三）发展定位。</p><p>\\t1．乡村振兴齐鲁样板示范省。牢记习近平总书记嘱托，把打造乡村振兴齐鲁样板作为重大政治任务，大胆探索、培塑典型、系统总结、推广经验，稳步推进乡村产业、人才、文化、生态和组织振兴。</p><p>\\t2．农业农村高质量发展先行省。充分发挥新旧动能转换综合试验区优势，树立大数据经济战略资源理念，全面提升农业质量效益和竞争力，全面提高农村生产、生活、生态质量。</p><p>\\t3．推进现代农业强省建设引领省。立足自然资源禀赋和产业优势，科学制定农业现代化指标体系，加快农业现代化示范区建设，不断提升农业供给保障水平、质量效益水平、技术装备水平和适度规模经营水平。</p><p>\\t（四）发展目标。到2025年，全省农业农村经济高质量发展取得显著成效，现代农业强省建设实现重大突破，粮食等重要农产品供给保障能力持续增强，农业质量效益和竞争力明显提升。农业绿色发展水平稳步提高，乡村建设行动扎实推进，农民生产生活条件大幅改善，脱贫攻坚成果巩固拓展，农民收入持续稳定增加，现代乡村治理体系初步构建，乡村振兴齐鲁样板亮点纷呈。全省基本实现农业现代化的县（市、区）达到80％以上，确保农业农村现代化建设走在全国前列。</p><p><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:13:05\",\"id\":232,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/4fc30eb0ba067a46f8749a217dbf246(2)_1706068700748.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"山东省人民政府关于印发山东省“十四五”推进农业农村现代化规划的通知\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 11:58:23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:58:23', 11);
INSERT INTO `sys_oper_log` VALUES (8682, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"1\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t“一粒种子8元，加上育苗成本，单株价格达到11.5元，结出来的番茄能卖到20元／公斤。”1月3日一大早，记者来到位于汶上县汶上街道的绿港（汶上）现代农业示范园，穿戴好防护服、口罩、头套，经过热风消毒，才得以进入现代温室大棚。园区负责人逄焕军指着藤蔓上错落有致的番茄说：“这就是番茄中的‘爱马仕’——爱仕401。”</p><p class=\\\"ql-align-justify\\\">\\t如此“娇贵”的品种，管理起来反倒“简单”：1万平方米的智能温室大棚里，只有两位工人在忙碌。“爱仕401是来自法国的口感型番茄新品种，对生长环境的要求十分苛刻，必须严格控制棚区温度、湿度以及菌群数量。”逄焕军介绍，园区通过智慧管理系统实现了温、光、水、气、肥等全数字调控、全要素控制。“每平方米产量80公斤，整个棚区产量预计可以达到80万公斤。第一茬新品种番茄将在春节前上市，预计能卖出个好价钱。”</p><p class=\\\"ql-align-justify\\\">\\t诚如眼前的场景一样，数字农业的画卷正在汶上的沃野里铺展开来。2024年汶上县政府工作报告指出，新的一年，汶上将实施政策拥农、改革惠农、产业兴农、科技富农“四项行动”，加快建设农业强县。</p><p class=\\\"ql-align-justify\\\">\\t“我们通过招大引强、示范引领、辐射带动等方式，与江苏绿港、华苑农业、京东物流、盒马鲜生等大型企业达成战略合作协议，打造了华苑智慧农业示范园区、5个千亩现代化农业基地等多个数字农业先行区，形成了产业规模化、产品集约化、服务一体化的现代农业生产体系。”汶上街道党工委书记步海霞介绍。2023年，绿港（汶上）现代农业示范园实现年产蔬菜300万公斤，培育优良果蔬种苗200万株，年产值1800余万元，惠及汶上县14个乡镇（街道）的152个村居，带动300余人就业。</p><p class=\\\"ql-align-justify\\\">\\t汶上县利用数字农业物联网，开展智慧农田项目建设，通过大数据、云服务等信息化技术，对农业生产定时定量管理，根据农产品的生长情况合理分配资源，让农业生产高效低耗、优质环保。</p><p class=\\\"ql-align-justify\\\">\\t在苑庄镇高标准农田建设智能化示范基地项目区，“智能井房＋地埋式自动伸缩喷灌系统”让人眼前一亮。智能井房占地少、摆放灵活，具有用水用电双计量、刷卡浇地、水肥一体化、土壤墒情远程监控等功能。地埋式自动伸缩喷滴灌设备埋于耕作层以下，不影响耕作，通过集成喷头可开展水肥一体化高效节水喷灌作业，况且作业前后不需要安装与拆卸喷灌设备，无须人员管理与保护。</p><p class=\\\"ql-align-justify\\\">\\t“通过手机上的‘智慧农业’App就能对其进行远程控制，实现了精准灌溉、精准施肥、节约成本、节约人力、提高效益的目标。”苑庄镇种粮大户荣维振介绍。喷灌系统一次性投资，可节约10％的耕地、70％的用水和85％的用工。与此同时，项目区还建设有“灌溉信息云平台”，可实时开展虫情监测、气象监测、土壤墒情监测、土壤肥情监测及苗情监测等，对农事生产过程的关键环节进行全面智慧化管理。</p><p class=\\\"ql-align-justify\\\">\\t数字农业要“施展拳脚”，离不开土地规模化、集约化等基础条件。汶上县引导农村综合产权有序流转，土地流转率达到79.6％，居济宁市第1位。2022年以来，汶上县新建高标准农田13万亩，一个个“小方田”成了稳产高产的“大粮仓”。（<span style=\\\"background-color: rgb(255, 255, 255);\\\">来源：​大众日报   </span>记者　王浩奇　通讯员　张明　殷壮）</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:18:12\",\"id\":234,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/bfeece3f9aff4dcac7654e4d4a72b81(1)_1706068729683.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9\",\"title\":\"汶上深耕数字农业 “智慧农业”结出致富果\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 11:58:51\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:58:51', 12);
INSERT INTO `sys_oper_log` VALUES (8683, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"3\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t<span style=\\\"background-color: rgb(255, 255, 255);\\\">数九寒冬，走进山东省聊城市冠县灵芝科技示范园，40个高标准种植棚内却是温暖如春。在一排排一人多高的立体网格架上，一个个金黄色的灵芝从格子里“探出脑袋”，正在茁壮成长。</span>\\t“过去种灵芝受气温影响，只能春夏时种一茬。现在我们的大棚温度、湿度、光照、通风等都由计算机控制，实现了全年不间断生产，一年可种3至4茬灵芝。”冠县灵芝科技示范园推进工作组成员燕森淼告诉记者。</p><p class=\\\"ql-align-justify\\\">\\t孢子粉是灵芝在成熟期喷射出来的种子，是灵芝的精华。“传统灵芝种植大棚的孢子粉收集率在70％左右，现在我们使用智能化收集设备，将孢子粉收集率提高到了95％以上。每个立体种植棚每茬能产1000公斤孢子粉和750公斤子实体，纯收益4万多元。”燕森淼说。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://202.194.131.202:9000/village-station/W020240102335770827083_1706068755449.jpg\\\"></p><p class=\\\"ql-align-justify\\\">\\t位于黄河故道的冠县，依托当地丰富的林果资源，大力发展灵芝特色产业。经过30多年的发展，目前已形成集培育、种植、深加工、创意销售等为一体的灵芝产业链。</p><p class=\\\"ql-align-justify\\\">\\t在冠县店子镇王当铺村，种植大户王明瑞的灵芝大棚里，摆放着数万盆造型别致的灵芝盆景，大的有一米多高，小的有十几厘米高，有的像松塔，有的像大圆盘。</p><p class=\\\"ql-align-justify\\\"><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:25:26\",\"id\":235,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/W020240102335770544871_1706068745372.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,10,9,11\",\"title\":\"山东冠县：小灵芝开出乡村振兴“致富花”\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 11:59:18\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:59:18', 10);
INSERT INTO `sys_oper_log` VALUES (8684, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"3\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t近日，山东省农业农村厅发布《山东省2023年第二批农作物审定品种目录》，潍坊市农科院主持选育的“潍麦15”“潍麦16”小麦品种通过山东省农作物品种审定委员会审定。</p><p class=\\\"ql-align-justify\\\">\\t\\t潍坊市农科院站在服务粮食安全的战略高度，加快新品种选育工作。2023年以来，累计有“潍麦13”“潍玉326”等6个农作物新品种通过山东省农作物品种审定；“晚青”蜜桃等12个品种被授予国家植物新品种权；欧丁香“丽妃”等5个新品种为我省首批获得国家植物新品种权的丁香品种；“潍豆1897”被中国种子协会评为专家推荐品种，“潍花25号”被列为山东省主要粮油作物主推品种，“潍花8号”被推介为骨干型花生品种；豆梨“首都”等5个林木良种被确定为山东省首批优先推荐使用林木良种。</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:03:51\",\"id\":236,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/W020231218373569071735_1706068773958.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"潍坊市农科院主持选育的两小麦品种通过省农作物品种审定\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 11:59:41\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 22:59:41', 8);
INSERT INTO `sys_oper_log` VALUES (8685, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"4\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">沾化冬枣因其脆甜多汁、营养丰富，深受消费者欢迎，被誉为“中华奇果”“世界第一果品”“百果之王”，在中国品牌价值评价中，位列地理标志枣类产品第1名，也是2023年滨州市唯一入选“好品山东”的农产品。近年来，建行滨州分行紧跟国家决策部署，不断加大农村金融供给，从大处着眼、小处着手，推动金融资源更多投向个体农户、家庭农场、合作社等群体，充分发挥金融主力军作用，助力冬枣产业发展。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://202.194.131.202:9000/village-station/219_1706068802044.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>裕农快贷打通乡村振兴 “致富之路”</strong></p><p class=\\\"ql-align-justify\\\">冬枣产业是滨州市沾化区最具特色的优势产业，也是拉动农民致富增收的支柱产业，建行滨州分行进一步发挥“裕农通”平台作用，运用科技手段服务乡村振兴，加大涉农支持，助推冬枣产业链发展。</p><p>“多亏了建行的裕农快贷，170多万的资金，帮了我大忙了” 滨州市沾化区某冬枣专业合作社位于沾化区下河乡庞家村，共承包土地200余亩，主要经营一代、二代冬枣种植、销售。近年来由于冬枣产业链的健全，大棚冬枣逐步兴起并具有较好的市场前景。2022年11月，建行滨州沾化支行为其发放裕农快贷173万元，企业主王某军用该笔资金将其名下100亩冬枣园改建为大棚冬枣，2023年9月，王某军的大棚冬枣较漏天冬枣提前20天成熟，冬枣上市早、售价高，销售收入是往年的一倍，建行的信贷支持打通了老王的“致富之路”。</p><p><img src=\\\"http://202.194.131.202:9000/village-station/221_1706068807854.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>科技补偿贷助力沾化冬枣“迈出国门”</strong></p><p class=\\\"ql-align-justify\\\">“老赵，500万的贷款已经到账了，感谢建行，这下我可以放心大胆的接订单了”</p><p class=\\\"ql-align-justify\\\">滨州市沾化区某果蔬进出口有限公司是一家集果蔬产品的种植管理、采后收购、产地预冷、保鲜仓储、预选分级、加工包装、冷链配送于一体的专业化农产品服务公司，主要从事高品质沾化冬枣的生产及出口业务和国内高端市场销售业务。2020年，企业首次将沾化冬枣出口到美国市场，出口冬枣800吨，创汇960万美元。近年来，该公司国际业务得到进一步拓展，由于企业生产规模受限，无法满足订单需求，企业不敢大量接国际订单，建行滨州沾化支行在了解到这一情况后，客户经理主动上门走访，根据企业特点为其发放科技补偿贷款500万元，用于企业扩大生产规模使用，2023年，该公司将沾化冬枣出口到荷兰、西班牙、新加坡、泰国、加拿大及中东部分地区，出口订单近7000吨，建行科技补偿贷助力沾化冬枣“迈出国门，走向世界”。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/221_1706018768872.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>云税贷解企业“燃眉之急”</strong></p><p class=\\\"ql-align-justify\\\">“付总，货款已经给对方打过去了，谢谢，太感谢了！”</p><p class=\\\"ql-align-justify\\\">山东滨州某食品有限公司是一家具有较高知名度的食品加工企业，与建行建立合作关系多年，企业主要立足于当地农产品小枣、冬枣农作物制品，生产、加工枣系列制品、山楂系列制品。自公司成立以来，产品销售市场范围不断扩大，市场份额连年增长，品牌知名度和影响力日益提高，产品销量增长迅速，枣制品、山楂制品销量居全国前列。2023年10月，企业紧急接到一批冬枣加工订单，由于冬枣价格上涨，导致企业成本增加，周转资金不足，货款金额较企业预估相差150多万元，一时之间难以筹集，于是向我行寻求帮助，在了解到企业缴税状况后，建行滨州沾化支行客户经理主动上门服务，现场为其办理云税贷200万元，解决企业“燃眉之急”。</p><p class=\\\"ql-al', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:00:16', 12);
INSERT INTO `sys_oper_log` VALUES (8686, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"4\",\"collect\":0,\"content\":\"<p>在山东寿光稻田镇崔岭西村，1500亩地里“长”着360个蔬菜大棚，年产果蔬万余吨，人均年收入超4万元。“村民靠种菜富起来，多亏了银行贷款的支持。”村党支部书记崔玉禄说。</p><p>崔玉禄介绍，在农业银行“大棚两改”贷款的支持下，合作社为种植户配置了水、肥、药一体化灌溉系统，为生产技术标准化提供了保障。除此之外，“强村贷”“惠农e贷”“新居贷”等贷款的发放，不仅打响了当地蔬菜品牌，还让村民住上了楼房，“过上了城里人都羡慕的生活”。</p><p>近年来，山东省金融机构聚焦乡村振兴重大战略、重点领域和薄弱环节，不断优化金融产品和服务，持续加大金融资源投入，为高质量打造乡村振兴齐鲁样板畅通金融“活水”，贡献金融力量。</p><p>“截至11月末，山东省涉农贷款余额4.12万亿元，同比增长12.8%，高于各项贷款增速1.7个百分点；较年初增加4692.8亿元，同比多增337.6亿元；农业企业直接融资取得积极进展，前11个月全省发行乡村振兴债券30.5亿元。”中国人民银行山东省分行副行长董龙训表示。</p><p>在支持乡村振兴方面，山东省深入开展金融服务乡村振兴“一县一品”创建活动、农村特色产权融资“自选优势项目”突破活动等，金融机构创新推出“石榴贷”“家庭农场贷”“大棚贷”等百余款专属信贷产品，截至10月末，全省“一县一品”和农业产业链融资贷款余额731.2亿元，有效满足了新型农业经营主体和农户生产资金需求。</p><p>作为全国唯一的农业政策性银行，农业发展银行聚焦“藏粮于地”“藏粮于技”“菜篮子”等重点领域，农业发展银行山东省分行副行长朱峰介绍，农发行涉农产业类贷款余额1122亿元，支持了包括高标准农田、盐碱地综合利用等农村土地流转和土地规模经营，智慧农业、数字农业、设施农业等农业科技创新和成果转化。</p><p>“从威海西洋参到菏泽牡丹，从兰陵蔬菜到高青黑牛、阳信肉牛，以服务乡村振兴作为主责主业的农发行，不断为山东地方特色产业发展注入动能，助力‘好品山东’农产品品牌建设。”朱峰说。</p><p>在支持人才振兴方面，山东不断完善创业担保贷款实施办法，提高返乡创业农民工创业担保贷款额度，9月末全省返乡创业农民工创业担保贷款余额达48.1亿元，为妇女、退役军人、教师等群体量身定做“鲁担巾帼贷”“退役军人创业贷”“园丁贷”等金融产品。前三季度，山东省累计发放“鲁担巾帼贷”4682笔、金额42.5亿元，发放退役军人创业贷款5233笔、金额14亿元。</p><p>在山东，“美德信用”也能变成“真金白银”。为支持文化振兴，山东省深化农村信用体系建设，全面推进乡村美德积分金融转化建设，建立“美德+积分+金融”服务模式。</p><p>近日，在临沂费县，504家“街边小店”，获得了总额1.08亿元授信，“美德信用积分”转化成了可以随借随还的流动资金。作为首个国家级普惠金融服务乡村振兴改革试验区，临沂市率先在全省创新建立“美德+积分+金融”的服务新模式，并在在沂水县、费县、沂南县、兰陵县等县区开展试点，“美德信用积分”成为银行贷款投放的新参考依据。</p><p>据了解，在山东省农信联社的指导下，临沂全市12家农商银行推出由美德个人积分贷、美德企业积分贷、美德组织积分贷组成的“美德积分系列贷”，让美德信用积分变成“真金白银”。</p><p>在临沂费县王家庄经营家庭农场的刘玉田，今年美德信用积分达到了930分，他也因此申请到20万元“美德个人信用贷”，为10个樱桃大棚安装了全自动控温设备。“明年的大樱桃能早上市十几天，卖个好价钱。”刘玉田说。</p><p>除了个人“美德积分”外，人民银行山东省分行组织开展“信用户、信用村、信用乡镇”评定，将涉农主体遵纪守法、诚实守信、家庭和睦等情况纳入信用评价，推动“整村授信”“无感授信”，引导金融资源加速向农业农村现代化领域聚集。10月末，全省完成“整村授信”村庄7.4万个、覆盖面达96.4%；农户贷款达1.2万亿元，同比增长14%，增速快于全部贷款。</p><p>与此同时，山东省金融机构结合乡村实际探索开展了林权、排污权、林业碳汇、合同能源管理收益权抵质押等贷款业务支持生态振兴；推出“强村贷”等产品支持组织振兴，前11个月，全省累计发放“强村贷”8.3亿元，支持项目816个。</p><p>金融“活水”助力乡村振兴，离不开政策的引领，近年来，山东省不断健全契合乡村振兴的金融政策体系，先后制定《关于金融支持打造乡村振兴齐鲁样板 加快建设现代农业强省的实施意见》、《关于加强金融资源供给 助力新型农业经营主体加快发展若干措施的通知》等多个政策文件，围绕高标准农田建设和盐碱地综合利用、农业关键核心技术攻关、乡村新产业新业', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:00:29', 15);
INSERT INTO `sys_oper_log` VALUES (8687, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"5\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t送春联、赶大集、看表演、品美食……“家家挂红灯，户户贴春联，村村有好戏——回村过大年”2024春节山东乡村文化旅游节1月18日在山东16市同步启动，丰富的活动吸引了各地游客及当地群众。</p><p class=\\\"ql-align-justify\\\">\\t在山东淄博高青县的现场活动中，软陶泥塑展示区上精美可爱的“龙生九子”等系列龙年主题软陶艺术品引人驻足。不到一小时，已有几十人前来咨询购买。</p><p class=\\\"ql-align-justify\\\">\\t在山东16市启动仪式现场，各地立足地域特色，设置了民俗表演、“黄河大集”“村村有好品”展示推介等形式多样的活动。</p><p class=\\\"ql-align-justify\\\">\\t据了解，2024春节山东乡村文化旅游节将从1月18日持续到3月11日。其间，山东将围绕农历腊八、小年、除夕、正月十五、二月二等主要节点，依托古城古镇、特色文化旅游村等，重点推出省级12项、市级48项特色文化活动。（记者张昕怡）</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:09:16\",\"id\":239,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/W020240123407763284943_1706068908905.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9\",\"title\":\"2024春节山东乡村文化旅游节启动\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:01:51\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:01:51', 10);
INSERT INTO `sys_oper_log` VALUES (8688, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"5\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t寒冬腊月，山东省烟台市福山区门楼水库已结冰，但水库附近的西汪格庄村樱桃大棚里却生机盎然，一簇簇红红的樱桃缀在枝头格外诱人。春节前，这里的大樱桃就会上市，工人们正做着采摘前的准备工作。</p><p class=\\\"ql-align-justify\\\">\\t西汪格庄村是门楼水库整体搬迁村，共有500多户村民，土地零散、土壤贫瘠。多年来，村民收入主要来自露天樱桃种植，但由于周边樱桃种植面积大、上市集中，樱桃卖不上好价钱。为错峰上市，村党支部书记于江源多次参加全国大大小小的农博会，不断向农业专家讨教，想让樱桃成熟时间从三月中下旬提到春节前。</p><p class=\\\"ql-align-justify\\\">\\t这两年，烟台农科院和于江源一起探索试验，成效明显。眼下，西汪格庄村4个温室大棚里，有的樱桃树刚刚发芽，有的樱桃树已经开花结果。烟台农科院果科所工作人员李芳东介绍，这是因为大棚采用智能温控系统，将樱桃树的休眠期提前结束，使其在冬天也能开花坐果。</p><p class=\\\"ql-align-justify\\\">\\t“控制好休眠期，就能精准控制大棚里的樱桃什么时候开花、什么时候结果。”于江源说，不同大棚里的樱桃生长期不同，上市时间不同，就是为了错峰上市、卖个好价钱。</p><p class=\\\"ql-align-justify\\\">\\t走进一个樱桃大棚，棚顶的自动卷帘徐徐拉起，树下的水肥一体化系统启动，细密的水珠洒向绿叶。每隔一段距离，就能看到温度、湿度监测设备。</p><p class=\\\"ql-align-justify\\\">\\t“花期和膨果期需要的温度不同。设定好温度后，设备每天会根据天气自动控制通风口大小。”于江源打开手机App，棚里的温度、湿度、地温等数据一目了然。他说，“足不出户，在手机上就可以看到主要数据。温度过高或过低，手机会发出提示。这么大的一个棚，只需要三个人管理，主要靠的是高科技智能自动化系统。”</p><p class=\\\"ql-align-justify\\\">\\t2017年，于江源带领部分村民，用土地入股的方式，成立了烟台市福山区宏坤农业科技专业合作社。他给记者算了笔账：一个温室大棚春节前预计上市3000斤樱桃，按照200元一斤计算，就能收入60万元。</p><p class=\\\"ql-align-justify\\\">\\t“让烟台温室大樱桃春节前上市，我们一直在努力。”李芳东介绍，以前过年吃的都是进口大樱桃，现在国产大樱桃也在春节前进入市场，这是技术突破的成果。随着新技术的应用，烟台大樱桃供应期进一步延长，从元旦到6月底都有新鲜樱桃上市。（记者邵琨）</p><p class=\\\"ql-align-justify\\\"><br></p><p><br></p><p class=\\\"ql-align-center\\\"><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:09:57\",\"id\":240,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/W020240123404536198050_1706068929058.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"烟台福山：冬日樱桃绽放“致富花”\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:02:10\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:02:10', 9);
INSERT INTO `sys_oper_log` VALUES (8689, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"6\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t走进山东鑫润育种科技有限公司羽衣甘蓝种植基地，高素质农民大师刘秀君正给徒弟现场讲解甘蓝杂交育种技术。据悉，自“师傅带徒项目”开展以来，生产能手“乡土专家”刘秀君已招徒15人，带动周边群众扩种羽衣甘蓝1000余亩，其烘干制品畅销全国各地，每亩可实现增收3000－4000元。</p><p class=\\\"ql-align-justify\\\">\\t据了解，2023年以来，金乡县农业农村局聚焦乡村振兴和现代农业发展人才需求，以农业增效、农民增收、农村发展为目标，加大农村实用人才培育力度，着力打造一支懂农业、爱农村、爱农民的“三农”工作队伍，为乡村振兴提供坚实的人才支撑。</p><p class=\\\"ql-align-justify\\\">\\t<strong>积极培育“田秀才”，壮大农业“主力军”。</strong>扎实开展高素质农民培训。坚持以“培训一批学员、带动一方农民、助推一项产业”为培育目标，采取“课堂教学＋现场教学＋线上学习”三种授课模式，分层分类举办了粮油单产提升、专业农机手、棉果菜茶等9个专题培训班，培育高素质农民349人，选定7个试点村375农民学员开展农民素质素养提升培训行动，加快形成与产业需求相适应、与农村发展相协调的高素质农民队伍。狠抓农业“领军”队伍建设。选送10人参加全国乡村产业振兴带头人培育“头雁”项目培训，6名学员荣获“产业拓展标兵”“优秀班干部”“优秀学员”等称号。聘请35名技术能力水平高、传帮带能力强、示范作用发挥好的“土专家”加入高素质农民培训讲师团，成功入选济宁师资力量库。加强基层农技推广人才队伍建设。依托基层农技推广体系改革与建设补助项目，结合农时农事，累计举办各类种植管理技术培训班、农业生产经营从业者培训班和农技人员技术培训班23期，培训基层农技人员、科技示范户、农民群众2万余人次。</p><p class=\\\"ql-align-justify\\\">\\t<strong>分类施策“强指导”，为民服务“解难题”。</strong>加强跟踪服务。建立线上对接“点单”、统筹精准“派单”、线下服务“接单”服务机制，组建13支高素质农民跟踪服务团队，累计走访学员253名，开展现场指导300余人次，面对面、手把手传授讲解农业技术知识，着力解决学员在农业生产中遇到的实际问题。用好现场观摩。注重实践运用，先后举办省农业重大技术协同推广计划葱姜蒜绿色高效关键技术推广项目现场观摩会、大蒜辣椒全程机械化现场观摩会和大豆玉米带状复合种植现场观摩会，为高素质农民、基层农技人员和科技示范主体提供“取经”学习平台。创新推广模式。巩固完善“专家＋试验示范基地＋农技员＋科技示范主体＋辐射带动户”的技术服务模式，大力推广水肥一体化、病虫害统防统治、蒜后辣椒大苗机械化移栽等新品种、新技术，打造科技强农、产业兴农的现代农业。</p><p class=\\\"ql-align-justify\\\">\\t<strong>选树人才“领头雁”，激活干事“新动能”。</strong>创新农村实用人才评选。规范推荐程序，提升农村实用人才选拔质量，3人被授予“山东省劳动模范”称号，6人当选第十届“齐鲁乡村之星”，3人获评“第十一届山东省优秀基层农业技术人员”称号，9人获评济宁市2022年度“农技标兵”，10人获评济宁市2022年度“乡村工匠”。加大乡土人才培育。选送6人参加山东省“大师开讲”“锵锵新农民”等大型融媒体节目录制，1人获评“师傅带徒”创新试点项目的高素质农民大师，激活人才“动力引擎”。优化农民职称评选。重点突出效果导向、实绩导向，推选生产型、经营型、技能型、服务型的“农把式”“土专家”“田秀才”24人参加农民职称评审。截至目前，全县4人取得农民高级农艺师职称、26人取得农民农艺师职称、25人取得农民助理农艺师职称，总人数居全市首位。</p><p class=\\\"ql-align-justify\\\">\\t下一步，金乡县将坚持把人才振兴放在乡村振兴的重要位置，持续在“引、育、用、留”上下功夫，不断加强农村实用人才队伍建设，为全面推进乡村振兴、加快农业农村现代化提供有力人才支撑。</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:13:58\",\"id\":242,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/v2-f15f8d1309d4dd7605cfe55a36192096_r_17060', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:03:23', 9);
INSERT INTO `sys_oper_log` VALUES (8690, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p>\\t1，修剪技巧</p><p>\\t春季修剪，芽萌动后于开花前进行。此时修剪能提高剪留芽的萌芽率，促生中短枝；合理疏花疏蕾，扼制过多挂果。此时期贮藏营养大量向幼龄枝的枝端运转，修剪后养分损失比冬剪多，削弱树势的作用较重，萌芽力较低的品种、旺长树或需控制的旺长枝，宜春季修剪。</p><p>\\t夏季修剪，剪去过密枝叶，开张大枝角度；幼旺树上的骨干枝摘心、扭梢、拉枝、环剥等。坐果期环切、环剥；旺长幼树在花芽分化期带叶复剪。</p><p>\\t秋剪修剪，是带叶修剪，修剪一般不会引起来年再旺长，但切勿修剪过重，也不宜在弱树上应用，否则会严重削弱树势。秋剪的时间要适当，过早会引起二次生长，过晚则难收到秋剪的良好效果。</p><p>\\t冬季修剪，一般是采用疏剪、短截、回缩相结合，促控相结合的方法。幼树注意树体结构的培养，成龄树注意生长势的调整，力争长势不衰，各部位长势平衡，</p><p>\\t2，施肥技巧</p><p>\\t施肥应在苹果树萌芽前，也就是3月正下旬至4月上旬。以速效的有机肥为主。可促进果实开花，有利于提高座果率。第二次在6月中下旬。可施加含有氮磷钾的肥料，有利于促进果实膨大。第三次追肥在8月上中旬。适当的有机肥施加，有利于提高果实品质。</p><p>\\t3，除草技巧</p><p>\\t果园中的矮生杂草一般可以使用草甘膦、克无踪等灭生性除草剂定向喷雾加以防除，对一些难除杂草和宿根性杂草，适当增加用量。对表面有蜡质的的杂草，在喷药时加些洗衣粉效果更好些。另外，对苹果园的马齿苋，还可以使用快灭灵等触杀型除草剂定向喷雾。</p><p>\\t4，疏花技巧</p><p>\\t疏花做得好，可以节省树的营养，从而提高所留下的果子色度、果个、甜度等，特别对增大果个有极明显的效果；还能增强树势，延长苹果树的寿命。</p><p>\\t一般中短枝的顶花芽由于停长早，花芽分化期长，供给花芽分化的叶片数量多，养分充足；而腋花芽由于分化早晚差别大，叶片少。供分化的养分相对欠缺，花芽饱满程度远不如顶花芽；在一个枝条中，梢部芽生长时间短，其饱满程度远逊色于中部的芽。而我们疏花时，就要根据以上原则，剪去瘪花芽，留下饱满的芽，才是正确的。</p><p>\\t5、套袋和摘袋</p><p>\\t苹果套袋不仅可以防止病虫害，也可以起到美化果实的作用，我们现在去超市可以买到上面有字或者有图案的苹果就是因为套袋利用阳光着色。根据果树和环境的情况，适时地摘掉袋子，让阳光照射果实。</p><p>\\t6、转动果实</p><p>\\t为了能让果实的每一个表面都被充分的照射，让果实的颜色看上去均匀饱满，需要将挡住阳光的叶子摘下来，而且对于阳光照射不到的那一面就需要人工将果实转一个面，这是一个需要非常仔细谨慎的工作。</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 20:56:47\",\"id\":229,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/1706014953134(1)_1706068521120.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"掌握好种植苹果的6大技巧，让家里的苹果树增产增收\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:04:26\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:04:26', 8);
INSERT INTO `sys_oper_log` VALUES (8691, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">环渤海湾苹果产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">自然生草的果园，在摘袋前半个月刈割一次行间草被。丘岭薄地果园可在采果后通过深翻改土、客土改良、有机物料覆盖等方式，结合施用有机肥，改良耕层土壤。胶东半岛和辽东半岛土壤酸化的果园可通过施用硅钙镁肥、石灰或其他土壤改良剂改良土壤。</span></p><p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">黄土高原产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">干旱地区在秋季雨水较丰富时期，播种黑麦草等宿根草种或越年生的油菜等间作作物改良土壤；普遍施用一次硅钙镁肥改良土壤。（硅钙镁肥与其他肥料一起土施，用量一般为50—100公斤/亩；石灰单独撒施，用量一般为75—100公斤/亩。）</span></p><p>\\t花果管理</p><p>\\t苹果园秋季花果管理主要包括果实摘袋、垫果、摘叶、转果、铺反光膜和适时采收等技术。</p><p>\\t<strong>（一）摘袋。</strong>摘袋时期，较难上色的红富士等品种采收前20—25天摘袋，易上色品种采收前15—20天摘袋。黄绿品种在采收时连同纸袋一起摘下。摘袋方法，套单层纸袋的摘袋方法是在上午10点前和下午4时后将袋撕成伞形条状罩在果实上，3—5天后再全去掉；双层纸袋摘袋方法是先去掉外层袋经过5个左右晴天后去掉内层袋，亦可采用遮阴网一次性去袋。</p><p>\\t<strong>（二）垫果。</strong>摘袋的同时对果实与枝梢接触部位加护果垫防止磨损。</p><p>\\t<strong>（三）摘叶。</strong>果实摘袋后3—5天进行。用剪刀将遮挡果实的叶片和紧贴果实的叶片适量剪除，保留叶柄。摘叶量控制在20%—30%为宜。</p><p>\\t<strong>（四）转果。</strong>摘袋4—5天后进行第一次转果，9—10天进行第二次转果。转果应避开晴天的中午进行。</p><p>\\t<strong>（五）铺反光膜。</strong>在内袋摘除后3—5天进行。在树干两边顺行覆膜，膜外缘与树冠外缘对齐，果实采收前1—2天撤膜。</p><p>\\t<strong>（六）适时采收。</strong>根据果实生育期、商品处理要求等适期采收，早熟富士优系果实生育期150—155天，王林145—165天，晚熟富士优系175—180天，秦脆160—165天，瑞雪180—190天，维纳斯黄金170—175天。采收前禁止浇大水，采摘时带果柄采下，轻拿轻放，防止机械损伤。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:00:46\",\"id\":230,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706068599482.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"2023年苹果园秋季生产技术指导意见\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:04:31\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:04:31', 9);
INSERT INTO `sys_oper_log` VALUES (8692, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p>各省、自治区、直辖市及计划单列市农业农村（农牧）、畜牧兽医、渔业厅（局、委），新疆生产建设兵团农业农村局，北大荒农垦集团有限公司、广东省农垦总局：</p><p>\\t习近平总书记指出，“要树立大食物观，发展设施农业，构建多元化食物供给体系”，“设施农业大有可为，要发展日光温室、植物工厂和集约化畜禽养殖，推进陆基和深远海养殖渔场建设，拓宽农业生产空间领域”。大力发展现代设施农业，加快用现代技术与先进设施装备武装农业，既可保障农产品稳定安全供给，也可弥补水土资源短缺、减少耕地占用；既可促进农业转型升级和增加农民收入，也可带动关联产业发展，畅通城乡经济循环，是建设农业强国的重要任务，是推进农业农村现代化的重要举措。经过多年建设，我国设施农业发展取得长足进步，为保障粮食和重要农产品稳定安全供给发挥了重要作用，但还存在总量不足、质量不高等问题，不能适应建设农业强国的需要。为贯彻落实党的二十大精神，按照中央有关决策部署，推动《全国现代设施农业建设规划（2023—2030年）》落实，加快现代设施农业高质量发展，制定本指导意见。</p><p class=\\\"ql-align-right\\\">\\t农业农村部 </p><p class=\\\"ql-align-right\\\">\\t2023年6月10日 </p><p class=\\\"ql-align-justify\\\"><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:08:15\",\"id\":231,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/W020240116516467367899_1706068648906.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"农业农村部关于发展现代设施农业的指导意见\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:04:35\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:04:35', 7);
INSERT INTO `sys_oper_log` VALUES (8693, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-center\\\">\\t<strong>山东省“十四五”推进农业农村\\t现代化规划</strong></p><p>\\t“十四五”时期，是全面推进乡村振兴、加快农业农村现代化的第一个五年，也是我省加快新旧动能转换、推动农业农村高质量发展和打造乡村振兴齐鲁样板的关键阶段。为加快全省农业农村现代化，推进农业高质高效、乡村宜居宜业、农民富裕富足，根据《“十四五”推进农业农村现代化规划》和《山东省国民经济和社会发展第十四个五年规划和2035年远景目标纲要》，制定本规划。</p><p>\\t（一）指导思想。以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中、五中、六中全会精神，认真落实习近平总书记对山东工作的重要指示要求，牢固树立新发展理念，坚持农业农村优先发展总方针，以实施乡村振兴战略、打造乡村振兴齐鲁样板为总抓手，聚焦农业农村高质量发展，全面走好城乡融合发展之路、共同富裕之路、质量兴农之路、乡村绿色发展之路、乡村文化兴盛之路、乡村善治之路、中国特色减贫之路，激活城乡要素、乡村资源和乡村发展内生动力，加快形成工农互促、城乡互补、协调发展、共同繁荣的新型工农城乡关系，优化提升乡村产业体系、生产体系和经营体系，全面推进农产品优质化、乡村田园生态化、乡村产业融合化、农业农村数字化、基层治理规范化、农民增收持续化，更好满足农民群众对美好生活新期待、新向往、新需要。</p><p>\\t（二）基本原则。</p><p>\\t1．坚持绿色发展，生态化引领。践行绿水青山就是金山银山理念，严守耕地和生态保护红线，促进农村生产生活生态协调发展。</p><p>\\t2．坚持创新驱动，数字化转型。大力推动科技创新、业态创新和模式创新，推进产业数字化、数字产业化，加快发展乡村数字经济。</p><p>\\t3．坚持深化改革，集约化经营。不断深化农村土地制度、集体产权制度改革，创新体制机制，集聚要素资源，发展多种形式农业适度规模经营。</p><p>\\t4．坚持城乡统筹，融合化推进。建立健全城乡融合发展的体制机制和政策体系，促进城乡要素合理流动和优化配置，推动农业全面升级、农村全面进步、农民全面发展。</p><p>\\t5．坚持农民主体，共享化发展。发挥农民在农业农村现代化中的主体作用，充分尊重农民意愿，巩固拓展脱贫攻坚成果，切实保护农民权益，调动广大农民群众的积极性、主动性和创造性。</p><p>\\t（三）发展定位。</p><p>\\t1．乡村振兴齐鲁样板示范省。牢记习近平总书记嘱托，把打造乡村振兴齐鲁样板作为重大政治任务，大胆探索、培塑典型、系统总结、推广经验，稳步推进乡村产业、人才、文化、生态和组织振兴。</p><p>\\t2．农业农村高质量发展先行省。充分发挥新旧动能转换综合试验区优势，树立大数据经济战略资源理念，全面提升农业质量效益和竞争力，全面提高农村生产、生活、生态质量。</p><p>\\t3．推进现代农业强省建设引领省。立足自然资源禀赋和产业优势，科学制定农业现代化指标体系，加快农业现代化示范区建设，不断提升农业供给保障水平、质量效益水平、技术装备水平和适度规模经营水平。</p><p>\\t（四）发展目标。到2025年，全省农业农村经济高质量发展取得显著成效，现代农业强省建设实现重大突破，粮食等重要农产品供给保障能力持续增强，农业质量效益和竞争力明显提升。农业绿色发展水平稳步提高，乡村建设行动扎实推进，农民生产生活条件大幅改善，脱贫攻坚成果巩固拓展，农民收入持续稳定增加，现代乡村治理体系初步构建，乡村振兴齐鲁样板亮点纷呈。全省基本实现农业现代化的县（市、区）达到80％以上，确保农业农村现代化建设走在全国前列。</p><p><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:13:05\",\"id\":232,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/4fc30eb0ba067a46f8749a217dbf246(2)_1706068700748.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"山东省人民政府关于印发山东省“十四五”推进农业农村现代化规划的通知\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:04:39\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:04:39', 8);
INSERT INTO `sys_oper_log` VALUES (8694, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"1\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t<strong>新华社济南1月16日电</strong>（记者陈国峰）时值腊月，又到了草莓西红柿采摘的季节。走进山东省潍坊市坊子区逄王一村的子航家庭农场，一个个温室大棚里人头攒动。“草莓西红柿酸甜可口、皮薄汁多，深受大家喜爱。”看着熙熙攘攘的游客，农场经理周国栋脸上洋溢着喜悦。</p><p class=\\\"ql-align-justify\\\">\\t周国栋毕业于青岛农业大学，2015年回村开启创业之路。他创办家庭农场、注册多个商标，以品牌赋能，拓宽农产品销售渠道。</p><p class=\\\"ql-align-justify\\\">\\t坊子区是农业大区。坊子区农业农村局局长郑光亮介绍，当地以发展“规模化、品牌化、园区化、智慧化”的都市现代农业为目标，不断调整和优化农业结构，打造了一批优势农产品品牌，目前已建成省级标准化基地7家、市级标准化基地7家，认证有机农产品53个。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/W020240116516467145540_1706015660379.jpg\\\"></p><p class=\\\"ql-align-justify\\\">\\t逄王一品西红柿、半截楼葡萄、柏台西瓜、水墨庄园热带水果、坊安芦笋、杞都牛蒡茶……如今，说起坊子区的农业品牌，很多市民如数家珍。</p><p class=\\\"ql-align-justify\\\">\\t品牌的塑造离不开人才支撑。坊子区持续加大农业人才培育力度，2023年以来培育“土专家”“田秀才”等各类乡土人才1000余名，带动建设示范园区、合作社120余个。</p><p class=\\\"ql-align-justify\\\">\\t“创牌”容易“守牌”难。一些合作社和种植户引入先进农业技术，为产业发展插上“科技翅膀”，擦亮农产品金字招牌。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/W020240116516467367899_1706015677380.jpg\\\"></p><p class=\\\"ql-align-justify\\\">\\t走进位于坊安街道洼里村的玉泉洼种植专业合作社，采用10层立体栽培技术的温室大棚蔚为壮观，一盆盆油菜、苦菊、芹菜、菌菇等按照不同习性有序排列，上面3层是喜光蔬菜，中间3层次之，接下来3层为不喜光蔬菜，最底层是菌类。负责搬运盆菜的自动导向搬运车沿着既定路线穿梭，犹如工厂车间的生产场景。</p><p class=\\\"ql-align-justify\\\">\\t玉泉洼种植专业合作社技术总监刘国盛说：“我们用种植槽立体栽培技术种植的草莓，种植株数比传统种植方式提高了20％；植株光照充足，果实着色均匀，商品果率达93％。”</p><p class=\\\"ql-align-justify\\\">\\t合作社负责人刘向东介绍，在“玉泉洼”品牌引领下，洼里村年生产有机蔬果6000多吨，实现产值约8600万元，带动周边22个村走上农业产业化发展道路。</p><p class=\\\"ql-align-justify\\\"><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:15:18\",\"id\":233,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/8eb36a2521c54ad6827aca8c1a255b62_1706068682956.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"山东潍坊坊子区如何解锁品牌农业发展“密码”\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:04:46\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:04:46', 7);
INSERT INTO `sys_oper_log` VALUES (8695, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-center\\\">\\t<strong>山东省“十四五”推进农业农村\\t现代化规划</strong></p><p>\\t“十四五”时期，是全面推进乡村振兴、加快农业农村现代化的第一个五年，也是我省加快新旧动能转换、推动农业农村高质量发展和打造乡村振兴齐鲁样板的关键阶段。为加快全省农业农村现代化，推进农业高质高效、乡村宜居宜业、农民富裕富足，根据《“十四五”推进农业农村现代化规划》和《山东省国民经济和社会发展第十四个五年规划和2035年远景目标纲要》，制定本规划。</p><p>\\t（一）指导思想。以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中、五中、六中全会精神，认真落实习近平总书记对山东工作的重要指示要求，牢固树立新发展理念，坚持农业农村优先发展总方针，以实施乡村振兴战略、打造乡村振兴齐鲁样板为总抓手，聚焦农业农村高质量发展，全面走好城乡融合发展之路、共同富裕之路、质量兴农之路、乡村绿色发展之路、乡村文化兴盛之路、乡村善治之路、中国特色减贫之路，激活城乡要素、乡村资源和乡村发展内生动力，加快形成工农互促、城乡互补、协调发展、共同繁荣的新型工农城乡关系，优化提升乡村产业体系、生产体系和经营体系，全面推进农产品优质化、乡村田园生态化、乡村产业融合化、农业农村数字化、基层治理规范化、农民增收持续化，更好满足农民群众对美好生活新期待、新向往、新需要。</p><p>\\t（二）基本原则。</p><p>\\t1．坚持绿色发展，生态化引领。践行绿水青山就是金山银山理念，严守耕地和生态保护红线，促进农村生产生活生态协调发展。</p><p>\\t2．坚持创新驱动，数字化转型。大力推动科技创新、业态创新和模式创新，推进产业数字化、数字产业化，加快发展乡村数字经济。</p><p>\\t3．坚持深化改革，集约化经营。不断深化农村土地制度、集体产权制度改革，创新体制机制，集聚要素资源，发展多种形式农业适度规模经营。</p><p>\\t4．坚持城乡统筹，融合化推进。建立健全城乡融合发展的体制机制和政策体系，促进城乡要素合理流动和优化配置，推动农业全面升级、农村全面进步、农民全面发展。</p><p>\\t5．坚持农民主体，共享化发展。发挥农民在农业农村现代化中的主体作用，充分尊重农民意愿，巩固拓展脱贫攻坚成果，切实保护农民权益，调动广大农民群众的积极性、主动性和创造性。</p><p>\\t（三）发展定位。</p><p>\\t1．乡村振兴齐鲁样板示范省。牢记习近平总书记嘱托，把打造乡村振兴齐鲁样板作为重大政治任务，大胆探索、培塑典型、系统总结、推广经验，稳步推进乡村产业、人才、文化、生态和组织振兴。</p><p>\\t2．农业农村高质量发展先行省。充分发挥新旧动能转换综合试验区优势，树立大数据经济战略资源理念，全面提升农业质量效益和竞争力，全面提高农村生产、生活、生态质量。</p><p>\\t3．推进现代农业强省建设引领省。立足自然资源禀赋和产业优势，科学制定农业现代化指标体系，加快农业现代化示范区建设，不断提升农业供给保障水平、质量效益水平、技术装备水平和适度规模经营水平。</p><p>\\t（四）发展目标。到2025年，全省农业农村经济高质量发展取得显著成效，现代农业强省建设实现重大突破，粮食等重要农产品供给保障能力持续增强，农业质量效益和竞争力明显提升。农业绿色发展水平稳步提高，乡村建设行动扎实推进，农民生产生活条件大幅改善，脱贫攻坚成果巩固拓展，农民收入持续稳定增加，现代乡村治理体系初步构建，乡村振兴齐鲁样板亮点纷呈。全省基本实现农业现代化的县（市、区）达到80％以上，确保农业农村现代化建设走在全国前列。</p><p><br></p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:13:05\",\"id\":232,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/4fc30eb0ba067a46f8749a217dbf246(2)_1706068700748.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"山东省人民政府关于印发山东省“十四五”推进农业农村现代化规划的通知\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:04:51\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:04:51', 8);
INSERT INTO `sys_oper_log` VALUES (8696, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"1\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t“一粒种子8元，加上育苗成本，单株价格达到11.5元，结出来的番茄能卖到20元／公斤。”1月3日一大早，记者来到位于汶上县汶上街道的绿港（汶上）现代农业示范园，穿戴好防护服、口罩、头套，经过热风消毒，才得以进入现代温室大棚。园区负责人逄焕军指着藤蔓上错落有致的番茄说：“这就是番茄中的‘爱马仕’——爱仕401。”</p><p class=\\\"ql-align-justify\\\">\\t如此“娇贵”的品种，管理起来反倒“简单”：1万平方米的智能温室大棚里，只有两位工人在忙碌。“爱仕401是来自法国的口感型番茄新品种，对生长环境的要求十分苛刻，必须严格控制棚区温度、湿度以及菌群数量。”逄焕军介绍，园区通过智慧管理系统实现了温、光、水、气、肥等全数字调控、全要素控制。“每平方米产量80公斤，整个棚区产量预计可以达到80万公斤。第一茬新品种番茄将在春节前上市，预计能卖出个好价钱。”</p><p class=\\\"ql-align-justify\\\">\\t诚如眼前的场景一样，数字农业的画卷正在汶上的沃野里铺展开来。2024年汶上县政府工作报告指出，新的一年，汶上将实施政策拥农、改革惠农、产业兴农、科技富农“四项行动”，加快建设农业强县。</p><p class=\\\"ql-align-justify\\\">\\t“我们通过招大引强、示范引领、辐射带动等方式，与江苏绿港、华苑农业、京东物流、盒马鲜生等大型企业达成战略合作协议，打造了华苑智慧农业示范园区、5个千亩现代化农业基地等多个数字农业先行区，形成了产业规模化、产品集约化、服务一体化的现代农业生产体系。”汶上街道党工委书记步海霞介绍。2023年，绿港（汶上）现代农业示范园实现年产蔬菜300万公斤，培育优良果蔬种苗200万株，年产值1800余万元，惠及汶上县14个乡镇（街道）的152个村居，带动300余人就业。</p><p class=\\\"ql-align-justify\\\">\\t汶上县利用数字农业物联网，开展智慧农田项目建设，通过大数据、云服务等信息化技术，对农业生产定时定量管理，根据农产品的生长情况合理分配资源，让农业生产高效低耗、优质环保。</p><p class=\\\"ql-align-justify\\\">\\t在苑庄镇高标准农田建设智能化示范基地项目区，“智能井房＋地埋式自动伸缩喷灌系统”让人眼前一亮。智能井房占地少、摆放灵活，具有用水用电双计量、刷卡浇地、水肥一体化、土壤墒情远程监控等功能。地埋式自动伸缩喷滴灌设备埋于耕作层以下，不影响耕作，通过集成喷头可开展水肥一体化高效节水喷灌作业，况且作业前后不需要安装与拆卸喷灌设备，无须人员管理与保护。</p><p class=\\\"ql-align-justify\\\">\\t“通过手机上的‘智慧农业’App就能对其进行远程控制，实现了精准灌溉、精准施肥、节约成本、节约人力、提高效益的目标。”苑庄镇种粮大户荣维振介绍。喷灌系统一次性投资，可节约10％的耕地、70％的用水和85％的用工。与此同时，项目区还建设有“灌溉信息云平台”，可实时开展虫情监测、气象监测、土壤墒情监测、土壤肥情监测及苗情监测等，对农事生产过程的关键环节进行全面智慧化管理。</p><p class=\\\"ql-align-justify\\\">\\t数字农业要“施展拳脚”，离不开土地规模化、集约化等基础条件。汶上县引导农村综合产权有序流转，土地流转率达到79.6％，居济宁市第1位。2022年以来，汶上县新建高标准农田13万亩，一个个“小方田”成了稳产高产的“大粮仓”。（<span style=\\\"background-color: rgb(255, 255, 255);\\\">来源：​大众日报   </span>记者　王浩奇　通讯员　张明　殷壮）</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:18:12\",\"id\":234,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/bfeece3f9aff4dcac7654e4d4a72b81(1)_1706068729683.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9\",\"title\":\"汶上深耕数字农业 “智慧农业”结出致富果\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:04:55\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:04:55', 7);
INSERT INTO `sys_oper_log` VALUES (8697, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"3\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">\\t近日，山东省农业农村厅发布《山东省2023年第二批农作物审定品种目录》，潍坊市农科院主持选育的“潍麦15”“潍麦16”小麦品种通过山东省农作物品种审定委员会审定。</p><p class=\\\"ql-align-justify\\\">\\t\\t潍坊市农科院站在服务粮食安全的战略高度，加快新品种选育工作。2023年以来，累计有“潍麦13”“潍玉326”等6个农作物新品种通过山东省农作物品种审定；“晚青”蜜桃等12个品种被授予国家植物新品种权；欧丁香“丽妃”等5个新品种为我省首批获得国家植物新品种权的丁香品种；“潍豆1897”被中国种子协会评为专家推荐品种，“潍花25号”被列为山东省主要粮油作物主推品种，“潍花8号”被推介为骨干型花生品种；豆梨“首都”等5个林木良种被确定为山东省首批优先推荐使用林木良种。</p><p><br></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 22:03:51\",\"id\":236,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/W020231218373569071735_1706068773958.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"潍坊市农科院主持选育的两小麦品种通过省农作物品种审定\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:05:01\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:05:01', 7);
INSERT INTO `sys_oper_log` VALUES (8698, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"4\",\"collect\":0,\"content\":\"<p class=\\\"ql-align-justify\\\">沾化冬枣因其脆甜多汁、营养丰富，深受消费者欢迎，被誉为“中华奇果”“世界第一果品”“百果之王”，在中国品牌价值评价中，位列地理标志枣类产品第1名，也是2023年滨州市唯一入选“好品山东”的农产品。近年来，建行滨州分行紧跟国家决策部署，不断加大农村金融供给，从大处着眼、小处着手，推动金融资源更多投向个体农户、家庭农场、合作社等群体，充分发挥金融主力军作用，助力冬枣产业发展。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://202.194.131.202:9000/village-station/219_1706068802044.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>裕农快贷打通乡村振兴 “致富之路”</strong></p><p class=\\\"ql-align-justify\\\">冬枣产业是滨州市沾化区最具特色的优势产业，也是拉动农民致富增收的支柱产业，建行滨州分行进一步发挥“裕农通”平台作用，运用科技手段服务乡村振兴，加大涉农支持，助推冬枣产业链发展。</p><p>“多亏了建行的裕农快贷，170多万的资金，帮了我大忙了” 滨州市沾化区某冬枣专业合作社位于沾化区下河乡庞家村，共承包土地200余亩，主要经营一代、二代冬枣种植、销售。近年来由于冬枣产业链的健全，大棚冬枣逐步兴起并具有较好的市场前景。2022年11月，建行滨州沾化支行为其发放裕农快贷173万元，企业主王某军用该笔资金将其名下100亩冬枣园改建为大棚冬枣，2023年9月，王某军的大棚冬枣较漏天冬枣提前20天成熟，冬枣上市早、售价高，销售收入是往年的一倍，建行的信贷支持打通了老王的“致富之路”。</p><p><img src=\\\"http://202.194.131.202:9000/village-station/221_1706068807854.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>科技补偿贷助力沾化冬枣“迈出国门”</strong></p><p class=\\\"ql-align-justify\\\">“老赵，500万的贷款已经到账了，感谢建行，这下我可以放心大胆的接订单了”</p><p class=\\\"ql-align-justify\\\">滨州市沾化区某果蔬进出口有限公司是一家集果蔬产品的种植管理、采后收购、产地预冷、保鲜仓储、预选分级、加工包装、冷链配送于一体的专业化农产品服务公司，主要从事高品质沾化冬枣的生产及出口业务和国内高端市场销售业务。2020年，企业首次将沾化冬枣出口到美国市场，出口冬枣800吨，创汇960万美元。近年来，该公司国际业务得到进一步拓展，由于企业生产规模受限，无法满足订单需求，企业不敢大量接国际订单，建行滨州沾化支行在了解到这一情况后，客户经理主动上门走访，根据企业特点为其发放科技补偿贷款500万元，用于企业扩大生产规模使用，2023年，该公司将沾化冬枣出口到荷兰、西班牙、新加坡、泰国、加拿大及中东部分地区，出口订单近7000吨，建行科技补偿贷助力沾化冬枣“迈出国门，走向世界”。</p><p class=\\\"ql-align-justify\\\"><img src=\\\"http://localhost:9000/village-station/221_1706018768872.jpg\\\"></p><p class=\\\"ql-align-justify\\\"><strong>云税贷解企业“燃眉之急”</strong></p><p class=\\\"ql-align-justify\\\">“付总，货款已经给对方打过去了，谢谢，太感谢了！”</p><p class=\\\"ql-align-justify\\\">山东滨州某食品有限公司是一家具有较高知名度的食品加工企业，与建行建立合作关系多年，企业主要立足于当地农产品小枣、冬枣农作物制品，生产、加工枣系列制品、山楂系列制品。自公司成立以来，产品销售市场范围不断扩大，市场份额连年增长，品牌知名度和影响力日益提高，产品销量增长迅速，枣制品、山楂制品销量居全国前列。2023年10月，企业紧急接到一批冬枣加工订单，由于冬枣价格上涨，导致企业成本增加，周转资金不足，货款金额较企业预估相差150多万元，一时之间难以筹集，于是向我行寻求帮助，在了解到企业缴税状况后，建行滨州沾化支行客户经理主动上门服务，现场为其办理云税贷200万元，解决企业“燃眉之急”。</p><p class=\\\"ql-al', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:05:09', 8);
INSERT INTO `sys_oper_log` VALUES (8699, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"4\",\"collect\":0,\"content\":\"<p>在山东寿光稻田镇崔岭西村，1500亩地里“长”着360个蔬菜大棚，年产果蔬万余吨，人均年收入超4万元。“村民靠种菜富起来，多亏了银行贷款的支持。”村党支部书记崔玉禄说。</p><p>崔玉禄介绍，在农业银行“大棚两改”贷款的支持下，合作社为种植户配置了水、肥、药一体化灌溉系统，为生产技术标准化提供了保障。除此之外，“强村贷”“惠农e贷”“新居贷”等贷款的发放，不仅打响了当地蔬菜品牌，还让村民住上了楼房，“过上了城里人都羡慕的生活”。</p><p>近年来，山东省金融机构聚焦乡村振兴重大战略、重点领域和薄弱环节，不断优化金融产品和服务，持续加大金融资源投入，为高质量打造乡村振兴齐鲁样板畅通金融“活水”，贡献金融力量。</p><p>“截至11月末，山东省涉农贷款余额4.12万亿元，同比增长12.8%，高于各项贷款增速1.7个百分点；较年初增加4692.8亿元，同比多增337.6亿元；农业企业直接融资取得积极进展，前11个月全省发行乡村振兴债券30.5亿元。”中国人民银行山东省分行副行长董龙训表示。</p><p>在支持乡村振兴方面，山东省深入开展金融服务乡村振兴“一县一品”创建活动、农村特色产权融资“自选优势项目”突破活动等，金融机构创新推出“石榴贷”“家庭农场贷”“大棚贷”等百余款专属信贷产品，截至10月末，全省“一县一品”和农业产业链融资贷款余额731.2亿元，有效满足了新型农业经营主体和农户生产资金需求。</p><p>作为全国唯一的农业政策性银行，农业发展银行聚焦“藏粮于地”“藏粮于技”“菜篮子”等重点领域，农业发展银行山东省分行副行长朱峰介绍，农发行涉农产业类贷款余额1122亿元，支持了包括高标准农田、盐碱地综合利用等农村土地流转和土地规模经营，智慧农业、数字农业、设施农业等农业科技创新和成果转化。</p><p>“从威海西洋参到菏泽牡丹，从兰陵蔬菜到高青黑牛、阳信肉牛，以服务乡村振兴作为主责主业的农发行，不断为山东地方特色产业发展注入动能，助力‘好品山东’农产品品牌建设。”朱峰说。</p><p>在支持人才振兴方面，山东不断完善创业担保贷款实施办法，提高返乡创业农民工创业担保贷款额度，9月末全省返乡创业农民工创业担保贷款余额达48.1亿元，为妇女、退役军人、教师等群体量身定做“鲁担巾帼贷”“退役军人创业贷”“园丁贷”等金融产品。前三季度，山东省累计发放“鲁担巾帼贷”4682笔、金额42.5亿元，发放退役军人创业贷款5233笔、金额14亿元。</p><p>在山东，“美德信用”也能变成“真金白银”。为支持文化振兴，山东省深化农村信用体系建设，全面推进乡村美德积分金融转化建设，建立“美德+积分+金融”服务模式。</p><p>近日，在临沂费县，504家“街边小店”，获得了总额1.08亿元授信，“美德信用积分”转化成了可以随借随还的流动资金。作为首个国家级普惠金融服务乡村振兴改革试验区，临沂市率先在全省创新建立“美德+积分+金融”的服务新模式，并在在沂水县、费县、沂南县、兰陵县等县区开展试点，“美德信用积分”成为银行贷款投放的新参考依据。</p><p>据了解，在山东省农信联社的指导下，临沂全市12家农商银行推出由美德个人积分贷、美德企业积分贷、美德组织积分贷组成的“美德积分系列贷”，让美德信用积分变成“真金白银”。</p><p>在临沂费县王家庄经营家庭农场的刘玉田，今年美德信用积分达到了930分，他也因此申请到20万元“美德个人信用贷”，为10个樱桃大棚安装了全自动控温设备。“明年的大樱桃能早上市十几天，卖个好价钱。”刘玉田说。</p><p>除了个人“美德积分”外，人民银行山东省分行组织开展“信用户、信用村、信用乡镇”评定，将涉农主体遵纪守法、诚实守信、家庭和睦等情况纳入信用评价，推动“整村授信”“无感授信”，引导金融资源加速向农业农村现代化领域聚集。10月末，全省完成“整村授信”村庄7.4万个、覆盖面达96.4%；农户贷款达1.2万亿元，同比增长14%，增速快于全部贷款。</p><p>与此同时，山东省金融机构结合乡村实际探索开展了林权、排污权、林业碳汇、合同能源管理收益权抵质押等贷款业务支持生态振兴；推出“强村贷”等产品支持组织振兴，前11个月，全省累计发放“强村贷”8.3亿元，支持项目816个。</p><p>金融“活水”助力乡村振兴，离不开政策的引领，近年来，山东省不断健全契合乡村振兴的金融政策体系，先后制定《关于金融支持打造乡村振兴齐鲁样板 加快建设现代农业强省的实施意见》、《关于加强金融资源供给 助力新型农业经营主体加快发展若干措施的通知》等多个政策文件，围绕高标准农田建设和盐碱地综合利用、农业关键核心技术攻关、乡村新产业新业', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:05:14', 7);
INSERT INTO `sys_oper_log` VALUES (8700, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">环渤海湾苹果产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">自然生草的果园，在摘袋前半个月刈割一次行间草被。丘岭薄地果园可在采果后通过深翻改土、客土改良、有机物料覆盖等方式，结合施用有机肥，改良耕层土壤。胶东半岛和辽东半岛土壤酸化的果园可通过施用硅钙镁肥、石灰或其他土壤改良剂改良土壤。</span></p><p><strong style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">黄土高原产区。</strong></p><p><span style=\\\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\\\">干旱地区在秋季雨水较丰富时期，播种黑麦草等宿根草种或越年生的油菜等间作作物改良土壤；普遍施用一次硅钙镁肥改良土壤。（硅钙镁肥与其他肥料一起土施，用量一般为50—100公斤/亩；石灰单独撒施，用量一般为75—100公斤/亩。）</span></p><p>\\t花果管理</p><p>\\t苹果园秋季花果管理主要包括果实摘袋、垫果、摘叶、转果、铺反光膜和适时采收等技术。</p><p>\\t<strong>（一）摘袋。</strong>摘袋时期，较难上色的红富士等品种采收前20—25天摘袋，易上色品种采收前15—20天摘袋。黄绿品种在采收时连同纸袋一起摘下。摘袋方法，套单层纸袋的摘袋方法是在上午10点前和下午4时后将袋撕成伞形条状罩在果实上，3—5天后再全去掉；双层纸袋摘袋方法是先去掉外层袋经过5个左右晴天后去掉内层袋，亦可采用遮阴网一次性去袋。</p><p>\\t<strong>（二）垫果。</strong>摘袋的同时对果实与枝梢接触部位加护果垫防止磨损。</p><p>\\t<strong>（三）摘叶。</strong>果实摘袋后3—5天进行。用剪刀将遮挡果实的叶片和紧贴果实的叶片适量剪除，保留叶柄。摘叶量控制在20%—30%为宜。</p><p>\\t<strong>（四）转果。</strong>摘袋4—5天后进行第一次转果，9—10天进行第二次转果。转果应避开晴天的中午进行。</p><p>\\t<strong>（五）铺反光膜。</strong>在内袋摘除后3—5天进行。在树干两边顺行覆膜，膜外缘与树冠外缘对齐，果实采收前1—2天撤膜。</p><p>\\t<strong>（六）适时采收。</strong>根据果实生育期、商品处理要求等适期采收，早熟富士优系果实生育期150—155天，王林145—165天，晚熟富士优系175—180天，秦脆160—165天，瑞雪180—190天，维纳斯黄金170—175天。采收前禁止浇大水，采摘时带果柄采下，轻拿轻放，防止机械损伤。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:00:46\",\"id\":230,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706068599482.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"2023年苹果园秋季生产技术指导意见\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:10:23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:10:23', 8);
INSERT INTO `sys_oper_log` VALUES (8701, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:11:00\",\"id\":190,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,11,10\",\"title\":\"难以置信的农业技术\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:11:00', 18);
INSERT INTO `sys_oper_log` VALUES (8702, '线上培训', 2, 'com.ruoyi.system.controller.TbOnlineTrainingController.edit()', 'PUT', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:11:00\",\"id\":190,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,11,10\",\"title\":\"难以置信的农业技术\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:11:41\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:11:41', 7);
INSERT INTO `sys_oper_log` VALUES (8703, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:17:21\",\"id\":191,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/information_241_1706069829135.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"家庭蔬菜种植技术\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:17:21', 10);
INSERT INTO `sys_oper_log` VALUES (8704, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":3500,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:21:16', 11);
INSERT INTO `sys_oper_log` VALUES (8705, '金融', 1, 'com.ruoyi.system.controller.TbFinanceController.add()', 'POST', 1, 'admin', NULL, '/system/finance', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p>近年来，威海市商业银行准确把握新时代实施乡村振兴战略的总体要求，立足区域特色，加大信贷供给、创新服务模式，着力满足乡村振兴多样化金融需求，为打造乡村振兴鲁样板贡献了金融力量。</p><p><br></p><p><strong style=\\\"color: rgb(51, 51, 51);\\\">创新模式，构建多元服务场景</strong></p><p><strong style=\\\"color: rgb(51, 51, 51);\\\"><span class=\\\"ql-cursor\\\">﻿</span></strong><img src=\\\"http://202.194.131.202:9000/village-station/feb9106a2a8ca5eb7dd5594e3080a3c(1)_1706070088836.png\\\"></p><p><strong style=\\\"color: rgb(51, 51, 51);\\\">威海市商业银行的“鲍鱼贷”产品服务海洋牧场鲍鱼养殖</strong></p><p>将自身特色优势与乡村发展需求相结合，威海市商业银行不断丰富服务场景，创新推出了“农业+海洋金融”“农业+绿色金融”“农业+特色产业”等多种服务模式，加快推动农业产业转型升级，推进农业特色产业聚集发展。</p><p>近年来，威海市商业银行立足区域特色，深入推进海洋产业金融服务，聚焦育苗、养殖、捕捞、加工等各个环节，倾斜政策资源、加强产品创新、优化服务模式，助力海洋产业转型发展升级。</p><p>某集团是荣成市的一家水产养殖龙头企业，拥有10万余亩的海域使用权，具备良好的鲍鱼养殖环境。近年来，当地农户纷纷与该集团开展合作，承包海域养殖鲍鱼，养殖户多达450余户，鲍鱼产业链逐渐成为当地一条“致富链”。</p><p>在一次走访调研中，威海市商业银行了解到，由于鲍鱼养殖周期长、投入大，在采购饲料、批量采收等环节需要大量资金周转，养殖户们普遍面临融资难、担保难的问题。</p><p>针对该情况，威海市商业银行迅速行动，加大了对鲍鱼养殖特色产业的实地调研和模式创新力度，多次深入走访当地鲍鱼养殖户，全面掌握鲍鱼养殖产业各链条的资金需求后，多方联动打造了“龙头企业+基地+农户+银行”四位一体的鲍鱼养殖产业链融资模式。</p><p>“鲍鱼贷”特色产品有效解决了鲍鱼养殖户缺少抵押物、贷款审批难的痛点，缓解了养殖户在海域租赁、饲料采购等环节的资金周转压力，让鲍鱼养殖户不再有后顾之忧。“鲍鱼贷”产品一经推出，切实解决了养殖户的融资难题，获得广泛认可和一致好评。</p><p>有了“鲍鱼贷”模式的前期探索，威海市商业银行依托区域海洋特色化经营模式，结合地域资源禀赋，为特色产业量身打造出“惠农贷”“养殖贷”“牡蛎贷”等多种信贷产品，满足了小微企业水产品养殖多元化信贷需求。</p><p>在助力海洋经济发展的同时，威海市商业银行拓宽涉农产业边界，结合农村客群金融服务需求特点，及时创新推出与客户需求精准匹配的产品。</p><p>该行围绕“农业+绿色金融”，创新推出“林业碳汇预期收益权质押贷款”“海洋碳汇预期收益权质押贷款”“碳排放权质押贷款”“渔业贝类碳汇指数保险质押贷款”等特色产品，盘活绿色资产。围绕“农业+特色产业”，创新推出“大棚贷”等农特产品贷款服务，助力新型农业经营发展。</p><p>菏泽曹县，电商产业发展迅猛，但遇到资金瓶颈，为支持当地电商产业发展，威海市商业银行“对症开方”，推出了基于电商场景的线上贷款“电商贷”。该产品具有纯信用、纯线上、随借随还、按日计息的优势，给当地电商户带来了良好的金融服务体验，也得到当地政府部门和监管部门的高度认可。</p><p><strong style=\\\"color: rgb(51, 51, 51);\\\">银政携手，破解“三农”融资痛点</strong></p><p><strong style=\\\"color: rgb(51, 51, 51);\\\">威海市商业银行的“农易贷”产品服务农户种植</strong></p><p>由传统农业向现代农业转型的新型农业经营主体具有规模化、产业化生产的特征，不仅对土地、劳动力提出集约化经营要求，也对金融支持和服务提出了更高要求。</p><p>对于家庭农场、专业大户、农民合作社及农业产业化的新型经营主体而言，融资需求十分突出。经营集中度高，抗风险能力弱；农村土地的抵押物存在处置变现难等问题，在一定程度上制约了其发展。</p><p>对此，威海市商业银行与山东省农业发展信贷担保有限责任公司（以下简称“山东农担”）合作，创新推出服务“三农”专项产品“农易贷”。由山东农担为涉农客户提供', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:21:33', 13);
INSERT INTO `sys_oper_log` VALUES (8706, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:21:36', 10);
INSERT INTO `sys_oper_log` VALUES (8707, '金融', 1, 'com.ruoyi.system.controller.TbFinanceController.add()', 'POST', 1, 'admin', NULL, '/system/finance', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"0\",\"collect\":0,\"content\":\"<p>为全面学习贯彻党的二十大精神和中央金融工作会议精神，落实国家金融监督管理总局山东监管局有关银行业着力提升服务实体经济质效工作要求，全面展示山东银行业赋能经济社会高质量发展的金融服务质效，山东省银行业协会组织的“银行业落实党的二十大精神服务山东区域经济社会发展专题调研暨新闻媒体一线行”宣传活动来到东营，对银行业服务乡村振兴的典型做法和成效进行了深入调研采访。</p><p><br></p><p>国家金融监督管理总局东营监管分局积极发挥引领作用，聚焦“三农”、用好“三力”，引导辖内各银行机构持续加大涉农信贷投放力度，为黄河口乡村振兴贡献金融力量。一是强化政策引领，筑牢乡村振兴“支撑力”。制定推动辖区银行保险机构抢抓重大国家战略机遇提升服务实体经济质效的指导意见，开展“普惠金融突破年”，进一步发挥金融支撑保障作用，助力全面推进乡村振兴。截至9月末，东营辖区银行业涉农贷款余额1309.47亿元。普惠型涉农贷款余额250.05亿元，较年初增加29.34亿元，增速13.29%，较年初增速高于各项贷款增速2.93个百分点，涉农信贷投入稳定增长。二是创新金融产品，激发乡村振兴“新活力”。引导辖区机构充分发挥东营区位优势，下沉服务重心，进一步贴近乡村、贴近“三农”，创新金融产品，优化金融服务。各银行机构持续创新信贷产品，落地微捷贷、专精特新贷、“惠农e贷”、农业科技贷款、鲁担惠农贷等特色贷款品种，有效满足企业发展、科技成果转化等方面的融资需求。联合东营农商行及15家市直单位成立“美德成金 德润东营”党建联盟，持续推进“美德成金”信用转化工作，相关信贷产品发放授信2.76万户，金额6亿元。三是打造乡村特色，筑强乡村振兴“推动力”。立足扩大“黄河口农品、盐碱地特产”品牌影响力，先后推动相关银行机构围绕黄河口大闸蟹、滩羊等特色优势产业因地制宜开展金融支持，助推利津县黄河口滩羊产业园区步入高质量发展的快车道，发放黄河口滩羊贷款余额达11.1亿元，承保黄河口滩羊22.16万只，提供风险保障金额1.77亿元。推动黄河口大闸蟹产业健康发展，发放黄河口大闸蟹养殖贷款余额1.12亿元，开办大闸蟹养殖气象指数保险，承保大闸蟹3.49万亩，风险保障金额3494.7万元。</p><p><strong style=\\\"color: rgb(51, 51, 51);\\\">金融助力发“羊”财</strong></p><p>昔日的盐窝镇荒芜寂寥，今日的羊舍林立，见证了乡村的华丽转身。在这个利津县的偏远角落，刘建军的故事在黄河口滩羊产业园内回荡。作为返乡再创业的本地人，刘建军的肉羊养殖场位于黄河口滩羊产业园内。“2017年从广州回到村里开始养羊，家里人都不支持”说起创业史，刘大哥打开了话匣子，“随着咱们黄河口滩羊的牌子越来越响，销路越来越广，老百姓的腰包也越来越鼓，尤其是进入产业园区以来，一栏羊就上千头，还是自己的家乡好啊”。</p><p>这位本乡本土的创业者凭借着对肉羊养殖的热爱与执着，投身于家乡创业。而在这个华丽转身的背后，邮储银行东营市分行发挥了关键作用。近年来在政府的大力扶持下，特别是在邮储银行东营市分行的资金支持下，盐窝镇开始发生了翻天覆地的变化。据了解，早在2008年，邮储银行东营市分行便为支持盐窝镇肉羊养殖产业发展发放了第一笔贷款3万元，现在单笔肉羊养殖贷款授信金额已达300万元，仅本年前三季度，该行累计投放肉羊养殖贷款6.94亿元。</p><p>邮储银行东营市分行如同源头活水，为盐窝镇的肉羊养殖业注入了强大的生命力，根据当地产业发展实际情况，不断调整优化金融服务，不仅提供了便捷的贷款服务，还通过“线下走访、线上授信”的快速授信及放款模式，进一步打破了物理网点的束缚，实现了“让数据多跑路，让村民少跑腿”，以实际行动打通了乡村金融服务的“最后一公里”。</p><p>刘建军就是邮储银行东营市分行服务的众多受益者之一。他凭借着邮储银行的贷款支持，不仅成功地创办了自己的肉羊养殖场，还实现了规模化、现代化的养殖。如今，他的养殖场内8500多只滩羊声此起彼伏，成为了盐窝镇的一道亮丽风景线。</p><p>“一枝独秀不是春,百花齐放春满园”。邮储银行东营市分行将一如既往地紧跟乡村产业振兴的步伐，为更多像刘建军一样的创业者提供支持与帮助，共同书写乡村繁荣的新篇章。截至目前，邮储银行东营市分行本年新增涉农贷款7.73亿元，余额达到54.68亿元。</p><p><strong style=\\\"color: rgb(51, 51, 51);\\\">“点绿”“成金”两不误</strong></p><p>秋风轻拂，层林尽染。深秋的黄河堤坝下，一片片耐盐碱的国槐、白蜡等树木的彩叶已陆续变色，', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:22:59', 8);
INSERT INTO `sys_oper_log` VALUES (8708, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p><img src=\\\"http://202.194.131.202:9000/village-station/1706014875742(1)_1706070396872.jpg\\\">\\t1，修剪技巧</p><p>\\t春季修剪，芽萌动后于开花前进行。此时修剪能提高剪留芽的萌芽率，促生中短枝；合理疏花疏蕾，扼制过多挂果。此时期贮藏营养大量向幼龄枝的枝端运转，修剪后养分损失比冬剪多，削弱树势的作用较重，萌芽力较低的品种、旺长树或需控制的旺长枝，宜春季修剪。</p><p>\\t夏季修剪，剪去过密枝叶，开张大枝角度；幼旺树上的骨干枝摘心、扭梢、拉枝、环剥等。坐果期环切、环剥；旺长幼树在花芽分化期带叶复剪。</p><p>\\t秋剪修剪，是带叶修剪，修剪一般不会引起来年再旺长，但切勿修剪过重，也不宜在弱树上应用，否则会严重削弱树势。秋剪的时间要适当，过早会引起二次生长，过晚则难收到秋剪的良好效果。</p><p>\\t冬季修剪，一般是采用疏剪、短截、回缩相结合，促控相结合的方法。幼树注意树体结构的培养，成龄树注意生长势的调整，力争长势不衰，各部位长势平衡，</p><p>\\t2，施肥技巧</p><p>\\t施肥应在苹果树萌芽前，也就是3月正下旬至4月上旬。以速效的有机肥为主。可促进果实开花，有利于提高座果率。第二次在6月中下旬。可施加含有氮磷钾的肥料，有利于促进果实膨大。第三次追肥在8月上中旬。适当的有机肥施加，有利于提高果实品质。</p><p>\\t3，除草技巧</p><p>\\t果园中的矮生杂草一般可以使用草甘膦、克无踪等灭生性除草剂定向喷雾加以防除，对一些难除杂草和宿根性杂草，适当增加用量。对表面有蜡质的的杂草，在喷药时加些洗衣粉效果更好些。另外，对苹果园的马齿苋，还可以使用快灭灵等触杀型除草剂定向喷雾。</p><p>\\t4，疏花技巧</p><p>\\t疏花做得好，可以节省树的营养，从而提高所留下的果子色度、果个、甜度等，特别对增大果个有极明显的效果；还能增强树势，延长苹果树的寿命。</p><p>\\t一般中短枝的顶花芽由于停长早，花芽分化期长，供给花芽分化的叶片数量多，养分充足；而腋花芽由于分化早晚差别大，叶片少。供分化的养分相对欠缺，花芽饱满程度远不如顶花芽；在一个枝条中，梢部芽生长时间短，其饱满程度远逊色于中部的芽。而我们疏花时，就要根据以上原则，剪去瘪花芽，留下饱满的芽，才是正确的。</p><p>\\t5、套袋和摘袋</p><p>\\t苹果套袋不仅可以防止病虫害，也可以起到美化果实的作用，我们现在去超市可以买到上面有字或者有图案的苹果就是因为套袋利用阳光着色。根据果树和环境的情况，适时地摘掉袋子，让阳光照射果实。</p><p>\\t6、转动果实</p><p>\\t为了能让果实的每一个表面都被充分的照射，让果实的颜色看上去均匀饱满，需要将挡住阳光的叶子摘下来，而且对于阳光照射不到的那一面就需要人工将果实转一个面，这是一个需要非常仔细谨慎的工作。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 20:56:47\",\"id\":229,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/1706014953134(1)_1706068521120.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"掌握好种植苹果的6大技巧，让家里的苹果树增产增收\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:26:38\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:26:38', 7);
INSERT INTO `sys_oper_log` VALUES (8709, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p>\\t1，修剪技巧</p><p>\\t春季修剪，芽萌动后于开花前进行。此时修剪能提高剪留芽的萌芽率，促生中短枝；合理疏花疏蕾，扼制过多挂果。此时期贮藏营养大量向幼龄枝的枝端运转，修剪后养分损失比冬剪多，削弱树势的作用较重，萌芽力较低的品种、旺长树或需控制的旺长枝，宜春季修剪。</p><p>\\t夏季修剪，剪去过密枝叶，开张大枝角度；幼旺树上的骨干枝摘心、扭梢、拉枝、环剥等。坐果期环切、环剥；旺长幼树在花芽分化期带叶复剪。</p><p>\\t秋剪修剪，是带叶修剪，修剪一般不会引起来年再旺长，但切勿修剪过重，也不宜在弱树上应用，否则会严重削弱树势。秋剪的时间要适当，过早会引起二次生长，过晚则难收到秋剪的良好效果。</p><p>\\t冬季修剪，一般是采用疏剪、短截、回缩相结合，促控相结合的方法。幼树注意树体结构的培养，成龄树注意生长势的调整，力争长势不衰，各部位长势平衡，</p><p>\\t2，施肥技巧</p><p>\\t施肥应在苹果树萌芽前，也就是3月正下旬至4月上旬。以速效的有机肥为主。可促进果实开花，有利于提高座果率。第二次在6月中下旬。可施加含有氮磷钾的肥料，有利于促进果实膨大。第三次追肥在8月上中旬。适当的有机肥施加，有利于提高果实品质。</p><p>\\t3，除草技巧</p><p>\\t果园中的矮生杂草一般可以使用草甘膦、克无踪等灭生性除草剂定向喷雾加以防除，对一些难除杂草和宿根性杂草，适当增加用量。对表面有蜡质的的杂草，在喷药时加些洗衣粉效果更好些。另外，对苹果园的马齿苋，还可以使用快灭灵等触杀型除草剂定向喷雾。</p><p>\\t</p><p><img src=\\\"http://202.194.131.202:9000/village-station/1706014875742(1)_1706070396872.jpg\\\">4，疏花技巧</p><p>\\t疏花做得好，可以节省树的营养，从而提高所留下的果子色度、果个、甜度等，特别对增大果个有极明显的效果；还能增强树势，延长苹果树的寿命。</p><p>\\t一般中短枝的顶花芽由于停长早，花芽分化期长，供给花芽分化的叶片数量多，养分充足；而腋花芽由于分化早晚差别大，叶片少。供分化的养分相对欠缺，花芽饱满程度远不如顶花芽；在一个枝条中，梢部芽生长时间短，其饱满程度远逊色于中部的芽。而我们疏花时，就要根据以上原则，剪去瘪花芽，留下饱满的芽，才是正确的。</p><p>\\t5、套袋和摘袋</p><p>\\t苹果套袋不仅可以防止病虫害，也可以起到美化果实的作用，我们现在去超市可以买到上面有字或者有图案的苹果就是因为套袋利用阳光着色。根据果树和环境的情况，适时地摘掉袋子，让阳光照射果实。</p><p>\\t6、转动果实</p><p>\\t为了能让果实的每一个表面都被充分的照射，让果实的颜色看上去均匀饱满，需要将挡住阳光的叶子摘下来，而且对于阳光照射不到的那一面就需要人工将果实转一个面，这是一个需要非常仔细谨慎的工作。</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 20:56:47\",\"id\":229,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/1706014953134(1)_1706068521120.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"掌握好种植苹果的6大技巧，让家里的苹果树增产增收\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 12:27:24\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:27:24', 7);
INSERT INTO `sys_oper_log` VALUES (8710, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023216390', NULL, '/system/user_station', '223.104.132.6', 'XX XX', '{\"stationId\":4102,\"userId\":3934}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-23 23:50:56', 9);
INSERT INTO `sys_oper_log` VALUES (8711, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213596', NULL, '/system/user_station', '112.224.20.76', 'XX XX', '{\"stationId\":4102,\"userId\":3932}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 00:34:31', 9);
INSERT INTO `sys_oper_log` VALUES (8712, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 16:34:05\",\"id\":192,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"0\",\"title\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 03:34:05', 8);
INSERT INTO `sys_oper_log` VALUES (8713, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 16:37:32\",\"id\":193,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"0\",\"title\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 03:37:32', 7);
INSERT INTO `sys_oper_log` VALUES (8714, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 16:43:02\",\"id\":194,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"0\",\"title\":\"test\",\"video\":\"http://202.194.131.202:9000/village-station/200982e36619fc6e48b3eb197e4db3b320240124164251.mp4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 03:43:02', 8);
INSERT INTO `sys_oper_log` VALUES (8715, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/193', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 03:55:27', 7);
INSERT INTO `sys_oper_log` VALUES (8716, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/192', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 03:55:28', 5);
INSERT INTO `sys_oper_log` VALUES (8717, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/194', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 03:55:30', 5);
INSERT INTO `sys_oper_log` VALUES (8718, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:03:29', 19);
INSERT INTO `sys_oper_log` VALUES (8719, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 17:26:14\",\"id\":195,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"0\",\"title\":\"test\",\"video\":\"http://202.194.131.202:9000/village-station/64867a4a722e0618f8bd998ee697908820240124172547.mp4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:26:14', 33);
INSERT INTO `sys_oper_log` VALUES (8720, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/195', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:26:30', 8);
INSERT INTO `sys_oper_log` VALUES (8721, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213596', NULL, '/system/user_station', '123.232.238.5', 'XX XX', '{\"stationId\":4102,\"userId\":3932}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:28:59', 14);
INSERT INTO `sys_oper_log` VALUES (8722, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 17:34:52\",\"id\":196,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"1\",\"title\":\"et\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:34:52', 14);
INSERT INTO `sys_oper_log` VALUES (8723, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 17:39:25\",\"id\":197,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"1,2\",\"title\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:39:25', 13);
INSERT INTO `sys_oper_log` VALUES (8724, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/196', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:40:41', 40);
INSERT INTO `sys_oper_log` VALUES (8725, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/197', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:40:43', 13);
INSERT INTO `sys_oper_log` VALUES (8726, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/191', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:40:59', 27);
INSERT INTO `sys_oper_log` VALUES (8727, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"<p>几种常见的家庭蔬菜种植技术</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 17:41:34\",\"id\":198,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/information_241_1706089287031.jpg\",\"sort\":\"0,1,2,3,4,5,6,7,8,10,9,11\",\"title\":\"家庭蔬菜种植技术\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:41:34', 60);
INSERT INTO `sys_oper_log` VALUES (8728, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/198', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 04:42:34', 44);
INSERT INTO `sys_oper_log` VALUES (8729, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 18:22:15\",\"id\":199,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"\",\"sort\":\"0\",\"title\":\"test\",\"video\":\"http://202.194.131.202:9000/village-station/64867a4a722e0618f8bd998ee697908820240124182209.mp4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 05:22:15', 9);
INSERT INTO `sys_oper_log` VALUES (8730, '线上培训', 3, 'com.ruoyi.system.controller.TbOnlineTrainingController.remove()', 'DELETE', 1, 'admin', NULL, '/system/online_training/199', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 05:26:38', 6);
INSERT INTO `sys_oper_log` VALUES (8731, '线上培训', 2, 'com.ruoyi.system.controller.TbOnlineTrainingController.edit()', 'PUT', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:11:00\",\"id\":190,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,11,10\",\"title\":\"难以置信的农业技术\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 18:31:36\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 05:31:36', 15);
INSERT INTO `sys_oper_log` VALUES (8732, '线上培训', 1, 'com.ruoyi.system.controller.TbOnlineTrainingController.add()', 'POST', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"<p>常用的家庭蔬菜种植技术</p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 18:43:36\",\"id\":200,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/微信图片_20240124121630_1706092418798.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,11,9,10\",\"title\":\"常用的家庭蔬菜种植技术\",\"video\":\"http://202.194.131.202:9000/village-station/家庭蔬菜种植技术20240124184123.mp4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 05:43:36', 11);
INSERT INTO `sys_oper_log` VALUES (8733, '修改新闻信息', 2, 'com.ruoyi.system.controller.TbNewsController.edit()', 'PUT', 1, 'admin', NULL, '/system/news', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"category\":\"2\",\"collect\":0,\"content\":\"<p><strong style=\\\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\\\">环渤海湾苹果产区。</strong></p><p><span style=\\\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\\\">自然生草的果园，在摘袋前半个月刈割一次行间草被。丘岭薄地果园可在采果后通过深翻改土、客土改良、有机物料覆盖等方式，结合施用有机肥，改良耕层土壤。胶东半岛和辽东半岛土壤酸化的果园可通过施用硅钙镁肥、石灰或其他土壤改良剂改良土壤。</span></p><p><strong style=\\\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\\\">黄土高原产区。</strong></p><p><span style=\\\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\\\">干旱地区在秋季雨水较丰富时期，播种黑麦草等宿根草种或越年生的油菜等间作作物改良土壤；普遍施用一次硅钙镁肥改良土壤。（硅钙镁肥与其他肥料一起土施，用量一般为50—100公斤/亩；石灰单独撒施，用量一般为75—100公斤/亩。）</span></p><p>\\t花果管理</p><p>\\t苹果园秋季花果管理主要包括果实摘袋、垫果、摘叶、转果、铺反光膜和适时采收等技术。</p><p>\\t<strong>（一）摘袋。</strong>摘袋时期，较难上色的红富士等品种采收前20—25天摘袋，易上色品种采收前15—20天摘袋。黄绿品种在采收时连同纸袋一起摘下。摘袋方法，套单层纸袋的摘袋方法是在上午10点前和下午4时后将袋撕成伞形条状罩在果实上，3—5天后再全去掉；双层纸袋摘袋方法是先去掉外层袋经过5个左右晴天后去掉内层袋，亦可采用遮阴网一次性去袋。</p><p>\\t<strong>（二）垫果。</strong>摘袋的同时对果实与枝梢接触部位加护果垫防止磨损。</p><p>\\t<strong>（三）摘叶。</strong>果实摘袋后3—5天进行。用剪刀将遮挡果实的叶片和紧贴果实的叶片适量剪除，保留叶柄。摘叶量控制在20%—30%为宜。</p><p>\\t<strong>（四）转果。</strong>摘袋4—5天后进行第一次转果，9—10天进行第二次转果。转果应避开晴天的中午进行。</p><p>\\t<strong>（五）铺反光膜。</strong>在内袋摘除后3—5天进行。在树干两边顺行覆膜，膜外缘与树冠外缘对齐，果实采收前1—2天撤膜。</p><p>\\t<strong>（六）适时采收。</strong>根据果实生育期、商品处理要求等适期采收，早熟富士优系果实生育期150—155天，王林145—165天，晚熟富士优系175—180天，秦脆160—165天，瑞雪180—190天，维纳斯黄金170—175天。采收前禁止浇大水，采摘时带果柄采下，轻拿轻放，防止机械损伤。</p><p><img src=\\\"http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706093171767.png\\\"></p>\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-23 21:00:46\",\"id\":230,\"likes\":0,\"params\":{},\"reading\":0,\"remark\":\"http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706068599482.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,10,11\",\"title\":\"2023年苹果园秋季生产技术指导意见\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-24 18:46:14\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 05:46:14', 18);
INSERT INTO `sys_oper_log` VALUES (8734, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '112.23.21.22', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 09:21:59', 8);
INSERT INTO `sys_oper_log` VALUES (8735, '用户-驿站', 1, 'com.ruoyi.system.controller.TbUserStationController.add()', 'POST', 1, '2023213707', NULL, '/system/user_station', '223.104.195.237', 'XX XX', '{\"id\":3937,\"stationId\":3922,\"userId\":3937}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 10:37:12', 6);
INSERT INTO `sys_oper_log` VALUES (8736, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213596', NULL, '/system/user_station', '123.232.238.5', 'XX XX', '{\"stationId\":4102,\"userId\":3932}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 19:20:11', 8);
INSERT INTO `sys_oper_log` VALUES (8737, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213707', NULL, '/system/user_station', '223.104.195.237', 'XX XX', '{\"stationId\":3922,\"userId\":3937}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 22:59:15', 7);
INSERT INTO `sys_oper_log` VALUES (8738, '线上培训', 2, 'com.ruoyi.system.controller.TbOnlineTrainingController.edit()', 'PUT', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:11:00\",\"id\":190,\"likes\":0,\"params\":{},\"reading\":7,\"remark\":\"http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,11,10\",\"title\":\"难以置信的农业技术\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-25 12:56:58\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 23:56:58', 6);
INSERT INTO `sys_oper_log` VALUES (8739, '线上培训', 2, 'com.ruoyi.system.controller.TbOnlineTrainingController.edit()', 'PUT', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:11:00\",\"id\":190,\"likes\":0,\"params\":{},\"reading\":7,\"remark\":\"http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,11,10\",\"title\":\"难以置信的农业技术\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-25 12:57:32\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-24 23:57:32', 23);
INSERT INTO `sys_oper_log` VALUES (8740, '用户-驿站', 1, 'com.ruoyi.system.controller.TbUserStationController.add()', 'POST', 1, '2022212962', NULL, '/system/user_station', '123.235.242.44', 'XX XX', '{\"id\":3938,\"stationId\":607,\"userId\":3938}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-25 00:11:26', 39);
INSERT INTO `sys_oper_log` VALUES (8741, '线上培训', 2, 'com.ruoyi.system.controller.TbOnlineTrainingController.edit()', 'PUT', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:11:00\",\"id\":190,\"likes\":0,\"params\":{},\"reading\":7,\"remark\":\"http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,11,10\",\"title\":\"难以置信的农业技术\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-25 14:16:53\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-25 01:16:53', 27);
INSERT INTO `sys_oper_log` VALUES (8742, '线上培训', 2, 'com.ruoyi.system.controller.TbOnlineTrainingController.edit()', 'PUT', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:11:00\",\"id\":190,\"likes\":0,\"params\":{},\"reading\":7,\"remark\":\"http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,11,10\",\"title\":\"难以置信的农业技术\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-25 14:17:59\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-25 01:17:59', 18);
INSERT INTO `sys_oper_log` VALUES (8743, '线上培训', 2, 'com.ruoyi.system.controller.TbOnlineTrainingController.edit()', 'PUT', 1, 'admin', NULL, '/system/online_training', '127.0.0.1', '内网IP', '{\"audit\":\"0\",\"collect\":0,\"content\":\"\",\"createBy\":\"根用户\",\"createTime\":\"2024-01-24 12:11:00\",\"id\":190,\"likes\":0,\"params\":{},\"reading\":7,\"remark\":\"http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png\",\"sort\":\"0,1,2,3,4,5,6,7,8,9,11,10\",\"title\":\"难以置信的农业技术\",\"updateBy\":\"根用户\",\"updateTime\":\"2024-01-25 14:35:59\",\"video\":\"http://202.194.131.202:9000/village-station/九个令人难以置信的农业技术20240125143514.mp4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-25 01:35:59', 6);
INSERT INTO `sys_oper_log` VALUES (8744, '用户-驿站', 2, 'com.ruoyi.system.controller.TbUserStationController.edit()', 'PUT', 1, '2023213593', NULL, '/system/user_station', '183.208.103.214', 'XX XX', '{\"stationId\":4102,\"userId\":3933}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-01-25 01:41:16', 8);
INSERT INTO `sys_oper_log` VALUES (8745, '点赞', 1, 'com.ruoyi.system.controller.TbLikesController.addLikes()', 'POST', 1, '15098556867', NULL, '/system/likes', '10.10.73.73', '内网IP', '{\"articleId\":200,\"id\":455,\"tableName\":\"tb_online_training\",\"userId\":12}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2024-01-25 01:42:21', 8);
INSERT INTO `sys_oper_log` VALUES (8746, '收藏', 1, 'com.ruoyi.system.controller.TbCollectController.add()', 'POST', 1, '15098556867', NULL, '/system/collect', '10.10.73.73', '内网IP', '{\"articleId\":200,\"id\":475,\"tableName\":\"tb_online_training\",\"userId\":12}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2024-01-25 01:42:24', 10);
INSERT INTO `sys_oper_log` VALUES (8747, '取消点赞', 3, 'com.ruoyi.system.controller.TbLikesController.remove()', 'DELETE', 1, '15098556867', NULL, '/system/likes/12/online_training/200', '10.10.73.73', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2024-01-25 01:42:32', 3);
INSERT INTO `sys_oper_log` VALUES (8748, '取消点赞', 3, 'com.ruoyi.system.controller.TbCollectController.remove()', 'DELETE', 1, '15098556867', NULL, '/system/collect/12/online_training/200', '10.10.73.73', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2024-01-25 01:42:38', 3);
INSERT INTO `sys_oper_log` VALUES (8749, '点赞', 1, 'com.ruoyi.system.controller.TbLikesController.addLikes()', 'POST', 1, '15098556867', NULL, '/system/likes', '10.10.73.73', '内网IP', '{\"articleId\":231,\"id\":456,\"tableName\":\"tb_news\",\"userId\":12}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2024-01-25 01:52:48', 209);
INSERT INTO `sys_oper_log` VALUES (8750, '收藏', 1, 'com.ruoyi.system.controller.TbCollectController.add()', 'POST', 1, '15098556867', NULL, '/system/collect', '10.10.73.73', '内网IP', '{\"articleId\":231,\"id\":476,\"tableName\":\"tb_news\",\"userId\":12}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2024-01-25 01:52:49', 11);
INSERT INTO `sys_oper_log` VALUES (8751, '取消点赞', 3, 'com.ruoyi.system.controller.TbLikesController.remove()', 'DELETE', 1, '15098556867', NULL, '/system/likes/12/news/231', '10.10.73.73', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2024-01-25 01:53:00', 9);
INSERT INTO `sys_oper_log` VALUES (8752, '取消点赞', 3, 'com.ruoyi.system.controller.TbCollectController.remove()', 'DELETE', 1, '15098556867', NULL, '/system/collect/12/news/231', '10.10.73.73', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200,\"data\":1}', 0, NULL, '2024-01-25 01:53:01', 6);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-09-29 18:23:04', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-09-29 18:23:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '根用户', 'root', 1, '1', 1, 1, '0', '0', 'admin', '2023-09-29 18:23:04', '', NULL, '根用户');
INSERT INTO `sys_role` VALUES (2, '普通管理员', 'admin', 2, '2', 1, 1, '0', '0', 'admin', '2023-09-29 18:23:04', 'admin', '2024-01-23 14:53:55', '普通管理员');
INSERT INTO `sys_role` VALUES (106, '普通用户', 'user', 3, '1', 1, 1, '0', '0', 'admin', '2023-10-10 19:46:35', 'admin', '2024-01-21 22:24:55', '普通用户');
INSERT INTO `sys_role` VALUES (107, '信息发布管理员', 'publish', 4, '1', 1, 1, '0', '0', 'admin', '2023-10-20 10:14:24', 'admin', '2024-01-21 22:25:34', NULL);
INSERT INTO `sys_role` VALUES (108, '信息审核管理员', 'audit', 6, '1', 1, 1, '0', '0', 'admin', '2023-10-20 10:14:51', 'admin', '2024-01-19 21:41:08', NULL);
INSERT INTO `sys_role` VALUES (109, '金融发布管理员', 'finance_publish', 5, '1', 1, 1, '0', '0', 'admin', '2024-01-18 09:11:32', 'admin', '2024-01-18 18:51:23', NULL);
INSERT INTO `sys_role` VALUES (110, '金融审核管理员', 'finance_auditor', 7, '1', 1, 1, '0', '0', 'admin', '2024-01-18 09:12:58', 'admin', '2024-01-18 19:24:06', NULL);
INSERT INTO `sys_role` VALUES (111, '驿站站长', 'stationmaster', 8, '1', 1, 1, '0', '0', 'admin', '2024-01-18 09:14:11', 'admin', '2024-01-21 22:22:38', NULL);
INSERT INTO `sys_role` VALUES (112, '科技专员', 'science_specialist', 9, '1', 1, 1, '0', '0', 'admin', '2024-01-18 09:22:26', 'admin', '2024-01-21 22:22:24', NULL);
INSERT INTO `sys_role` VALUES (113, '科技服务专员', 'science_services_specialist', 10, '1', 1, 1, '0', '0', 'admin', '2024-01-18 09:25:45', 'admin', '2024-01-21 22:22:17', NULL);
INSERT INTO `sys_role` VALUES (114, '金融专员', 'finance_specialist', 11, '1', 1, 1, '0', '0', 'admin', '2024-01-18 09:37:18', 'admin', '2024-01-21 22:22:08', NULL);
INSERT INTO `sys_role` VALUES (115, '信息专员', 'information_specialist', 12, '1', 1, 1, '0', '0', 'admin', '2024-01-19 09:53:25', 'admin', '2024-01-21 22:22:01', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (106, 2000);
INSERT INTO `sys_role_menu` VALUES (106, 2005);
INSERT INTO `sys_role_menu` VALUES (106, 2028);
INSERT INTO `sys_role_menu` VALUES (106, 2029);
INSERT INTO `sys_role_menu` VALUES (106, 2031);
INSERT INTO `sys_role_menu` VALUES (106, 2089);
INSERT INTO `sys_role_menu` VALUES (106, 2090);
INSERT INTO `sys_role_menu` VALUES (106, 2091);
INSERT INTO `sys_role_menu` VALUES (106, 2101);
INSERT INTO `sys_role_menu` VALUES (106, 2103);
INSERT INTO `sys_role_menu` VALUES (106, 2126);
INSERT INTO `sys_role_menu` VALUES (106, 2128);
INSERT INTO `sys_role_menu` VALUES (106, 2137);
INSERT INTO `sys_role_menu` VALUES (106, 2138);
INSERT INTO `sys_role_menu` VALUES (106, 2139);
INSERT INTO `sys_role_menu` VALUES (106, 2156);
INSERT INTO `sys_role_menu` VALUES (106, 2160);
INSERT INTO `sys_role_menu` VALUES (106, 2164);
INSERT INTO `sys_role_menu` VALUES (106, 2168);
INSERT INTO `sys_role_menu` VALUES (106, 2171);
INSERT INTO `sys_role_menu` VALUES (106, 2180);
INSERT INTO `sys_role_menu` VALUES (106, 2220);
INSERT INTO `sys_role_menu` VALUES (106, 2222);
INSERT INTO `sys_role_menu` VALUES (106, 2224);
INSERT INTO `sys_role_menu` VALUES (106, 2229);
INSERT INTO `sys_role_menu` VALUES (106, 2235);
INSERT INTO `sys_role_menu` VALUES (106, 2236);
INSERT INTO `sys_role_menu` VALUES (106, 2238);
INSERT INTO `sys_role_menu` VALUES (106, 2240);
INSERT INTO `sys_role_menu` VALUES (106, 2245);
INSERT INTO `sys_role_menu` VALUES (107, 2000);
INSERT INTO `sys_role_menu` VALUES (107, 2005);
INSERT INTO `sys_role_menu` VALUES (107, 2028);
INSERT INTO `sys_role_menu` VALUES (107, 2029);
INSERT INTO `sys_role_menu` VALUES (107, 2031);
INSERT INTO `sys_role_menu` VALUES (107, 2089);
INSERT INTO `sys_role_menu` VALUES (107, 2091);
INSERT INTO `sys_role_menu` VALUES (107, 2094);
INSERT INTO `sys_role_menu` VALUES (107, 2097);
INSERT INTO `sys_role_menu` VALUES (107, 2100);
INSERT INTO `sys_role_menu` VALUES (107, 2101);
INSERT INTO `sys_role_menu` VALUES (107, 2106);
INSERT INTO `sys_role_menu` VALUES (107, 2126);
INSERT INTO `sys_role_menu` VALUES (107, 2128);
INSERT INTO `sys_role_menu` VALUES (107, 2137);
INSERT INTO `sys_role_menu` VALUES (107, 2138);
INSERT INTO `sys_role_menu` VALUES (107, 2139);
INSERT INTO `sys_role_menu` VALUES (107, 2155);
INSERT INTO `sys_role_menu` VALUES (107, 2156);
INSERT INTO `sys_role_menu` VALUES (107, 2157);
INSERT INTO `sys_role_menu` VALUES (107, 2158);
INSERT INTO `sys_role_menu` VALUES (107, 2159);
INSERT INTO `sys_role_menu` VALUES (107, 2160);
INSERT INTO `sys_role_menu` VALUES (107, 2161);
INSERT INTO `sys_role_menu` VALUES (107, 2163);
INSERT INTO `sys_role_menu` VALUES (107, 2164);
INSERT INTO `sys_role_menu` VALUES (107, 2165);
INSERT INTO `sys_role_menu` VALUES (107, 2166);
INSERT INTO `sys_role_menu` VALUES (107, 2167);
INSERT INTO `sys_role_menu` VALUES (107, 2168);
INSERT INTO `sys_role_menu` VALUES (107, 2169);
INSERT INTO `sys_role_menu` VALUES (107, 2171);
INSERT INTO `sys_role_menu` VALUES (107, 2172);
INSERT INTO `sys_role_menu` VALUES (107, 2220);
INSERT INTO `sys_role_menu` VALUES (108, 2000);
INSERT INTO `sys_role_menu` VALUES (108, 2079);
INSERT INTO `sys_role_menu` VALUES (108, 2083);
INSERT INTO `sys_role_menu` VALUES (108, 2099);
INSERT INTO `sys_role_menu` VALUES (108, 2116);
INSERT INTO `sys_role_menu` VALUES (108, 2127);
INSERT INTO `sys_role_menu` VALUES (108, 2129);
INSERT INTO `sys_role_menu` VALUES (108, 2204);
INSERT INTO `sys_role_menu` VALUES (108, 2206);
INSERT INTO `sys_role_menu` VALUES (108, 2207);
INSERT INTO `sys_role_menu` VALUES (108, 2209);
INSERT INTO `sys_role_menu` VALUES (108, 2219);
INSERT INTO `sys_role_menu` VALUES (108, 2223);
INSERT INTO `sys_role_menu` VALUES (108, 2232);
INSERT INTO `sys_role_menu` VALUES (108, 2234);
INSERT INTO `sys_role_menu` VALUES (108, 2235);
INSERT INTO `sys_role_menu` VALUES (108, 2237);
INSERT INTO `sys_role_menu` VALUES (108, 2239);
INSERT INTO `sys_role_menu` VALUES (108, 2247);
INSERT INTO `sys_role_menu` VALUES (108, 2248);
INSERT INTO `sys_role_menu` VALUES (109, 2000);
INSERT INTO `sys_role_menu` VALUES (109, 2090);
INSERT INTO `sys_role_menu` VALUES (109, 2095);
INSERT INTO `sys_role_menu` VALUES (109, 2103);
INSERT INTO `sys_role_menu` VALUES (109, 2104);
INSERT INTO `sys_role_menu` VALUES (109, 2105);
INSERT INTO `sys_role_menu` VALUES (109, 2107);
INSERT INTO `sys_role_menu` VALUES (109, 2128);
INSERT INTO `sys_role_menu` VALUES (109, 2180);
INSERT INTO `sys_role_menu` VALUES (109, 2181);
INSERT INTO `sys_role_menu` VALUES (110, 2000);
INSERT INTO `sys_role_menu` VALUES (110, 2081);
INSERT INTO `sys_role_menu` VALUES (110, 2118);
INSERT INTO `sys_role_menu` VALUES (110, 2129);
INSERT INTO `sys_role_menu` VALUES (110, 2210);
INSERT INTO `sys_role_menu` VALUES (111, 2000);
INSERT INTO `sys_role_menu` VALUES (111, 2005);
INSERT INTO `sys_role_menu` VALUES (111, 2028);
INSERT INTO `sys_role_menu` VALUES (111, 2029);
INSERT INTO `sys_role_menu` VALUES (111, 2031);
INSERT INTO `sys_role_menu` VALUES (111, 2089);
INSERT INTO `sys_role_menu` VALUES (111, 2090);
INSERT INTO `sys_role_menu` VALUES (111, 2091);
INSERT INTO `sys_role_menu` VALUES (111, 2101);
INSERT INTO `sys_role_menu` VALUES (111, 2103);
INSERT INTO `sys_role_menu` VALUES (111, 2126);
INSERT INTO `sys_role_menu` VALUES (111, 2128);
INSERT INTO `sys_role_menu` VALUES (111, 2137);
INSERT INTO `sys_role_menu` VALUES (111, 2138);
INSERT INTO `sys_role_menu` VALUES (111, 2139);
INSERT INTO `sys_role_menu` VALUES (111, 2156);
INSERT INTO `sys_role_menu` VALUES (111, 2160);
INSERT INTO `sys_role_menu` VALUES (111, 2164);
INSERT INTO `sys_role_menu` VALUES (111, 2168);
INSERT INTO `sys_role_menu` VALUES (111, 2171);
INSERT INTO `sys_role_menu` VALUES (111, 2180);
INSERT INTO `sys_role_menu` VALUES (111, 2220);
INSERT INTO `sys_role_menu` VALUES (111, 2222);
INSERT INTO `sys_role_menu` VALUES (111, 2224);
INSERT INTO `sys_role_menu` VALUES (111, 2225);
INSERT INTO `sys_role_menu` VALUES (111, 2226);
INSERT INTO `sys_role_menu` VALUES (111, 2227);
INSERT INTO `sys_role_menu` VALUES (111, 2228);
INSERT INTO `sys_role_menu` VALUES (111, 2229);
INSERT INTO `sys_role_menu` VALUES (111, 2230);
INSERT INTO `sys_role_menu` VALUES (111, 2235);
INSERT INTO `sys_role_menu` VALUES (111, 2236);
INSERT INTO `sys_role_menu` VALUES (111, 2238);
INSERT INTO `sys_role_menu` VALUES (111, 2240);
INSERT INTO `sys_role_menu` VALUES (111, 2241);
INSERT INTO `sys_role_menu` VALUES (111, 2242);
INSERT INTO `sys_role_menu` VALUES (111, 2243);
INSERT INTO `sys_role_menu` VALUES (111, 2244);
INSERT INTO `sys_role_menu` VALUES (111, 2245);
INSERT INTO `sys_role_menu` VALUES (111, 2246);
INSERT INTO `sys_role_menu` VALUES (112, 2000);
INSERT INTO `sys_role_menu` VALUES (112, 2005);
INSERT INTO `sys_role_menu` VALUES (112, 2028);
INSERT INTO `sys_role_menu` VALUES (112, 2029);
INSERT INTO `sys_role_menu` VALUES (112, 2031);
INSERT INTO `sys_role_menu` VALUES (112, 2089);
INSERT INTO `sys_role_menu` VALUES (112, 2090);
INSERT INTO `sys_role_menu` VALUES (112, 2091);
INSERT INTO `sys_role_menu` VALUES (112, 2101);
INSERT INTO `sys_role_menu` VALUES (112, 2103);
INSERT INTO `sys_role_menu` VALUES (112, 2126);
INSERT INTO `sys_role_menu` VALUES (112, 2128);
INSERT INTO `sys_role_menu` VALUES (112, 2137);
INSERT INTO `sys_role_menu` VALUES (112, 2138);
INSERT INTO `sys_role_menu` VALUES (112, 2139);
INSERT INTO `sys_role_menu` VALUES (112, 2156);
INSERT INTO `sys_role_menu` VALUES (112, 2160);
INSERT INTO `sys_role_menu` VALUES (112, 2164);
INSERT INTO `sys_role_menu` VALUES (112, 2168);
INSERT INTO `sys_role_menu` VALUES (112, 2171);
INSERT INTO `sys_role_menu` VALUES (112, 2180);
INSERT INTO `sys_role_menu` VALUES (112, 2220);
INSERT INTO `sys_role_menu` VALUES (112, 2222);
INSERT INTO `sys_role_menu` VALUES (112, 2224);
INSERT INTO `sys_role_menu` VALUES (112, 2229);
INSERT INTO `sys_role_menu` VALUES (112, 2235);
INSERT INTO `sys_role_menu` VALUES (112, 2236);
INSERT INTO `sys_role_menu` VALUES (112, 2238);
INSERT INTO `sys_role_menu` VALUES (112, 2240);
INSERT INTO `sys_role_menu` VALUES (112, 2245);
INSERT INTO `sys_role_menu` VALUES (113, 2000);
INSERT INTO `sys_role_menu` VALUES (113, 2005);
INSERT INTO `sys_role_menu` VALUES (113, 2028);
INSERT INTO `sys_role_menu` VALUES (113, 2029);
INSERT INTO `sys_role_menu` VALUES (113, 2031);
INSERT INTO `sys_role_menu` VALUES (113, 2089);
INSERT INTO `sys_role_menu` VALUES (113, 2090);
INSERT INTO `sys_role_menu` VALUES (113, 2091);
INSERT INTO `sys_role_menu` VALUES (113, 2101);
INSERT INTO `sys_role_menu` VALUES (113, 2103);
INSERT INTO `sys_role_menu` VALUES (113, 2126);
INSERT INTO `sys_role_menu` VALUES (113, 2128);
INSERT INTO `sys_role_menu` VALUES (113, 2137);
INSERT INTO `sys_role_menu` VALUES (113, 2138);
INSERT INTO `sys_role_menu` VALUES (113, 2139);
INSERT INTO `sys_role_menu` VALUES (113, 2156);
INSERT INTO `sys_role_menu` VALUES (113, 2160);
INSERT INTO `sys_role_menu` VALUES (113, 2164);
INSERT INTO `sys_role_menu` VALUES (113, 2168);
INSERT INTO `sys_role_menu` VALUES (113, 2171);
INSERT INTO `sys_role_menu` VALUES (113, 2180);
INSERT INTO `sys_role_menu` VALUES (113, 2220);
INSERT INTO `sys_role_menu` VALUES (113, 2222);
INSERT INTO `sys_role_menu` VALUES (113, 2224);
INSERT INTO `sys_role_menu` VALUES (113, 2229);
INSERT INTO `sys_role_menu` VALUES (113, 2235);
INSERT INTO `sys_role_menu` VALUES (113, 2236);
INSERT INTO `sys_role_menu` VALUES (113, 2238);
INSERT INTO `sys_role_menu` VALUES (113, 2240);
INSERT INTO `sys_role_menu` VALUES (113, 2245);
INSERT INTO `sys_role_menu` VALUES (114, 2000);
INSERT INTO `sys_role_menu` VALUES (114, 2005);
INSERT INTO `sys_role_menu` VALUES (114, 2028);
INSERT INTO `sys_role_menu` VALUES (114, 2029);
INSERT INTO `sys_role_menu` VALUES (114, 2031);
INSERT INTO `sys_role_menu` VALUES (114, 2089);
INSERT INTO `sys_role_menu` VALUES (114, 2090);
INSERT INTO `sys_role_menu` VALUES (114, 2091);
INSERT INTO `sys_role_menu` VALUES (114, 2101);
INSERT INTO `sys_role_menu` VALUES (114, 2103);
INSERT INTO `sys_role_menu` VALUES (114, 2126);
INSERT INTO `sys_role_menu` VALUES (114, 2128);
INSERT INTO `sys_role_menu` VALUES (114, 2137);
INSERT INTO `sys_role_menu` VALUES (114, 2138);
INSERT INTO `sys_role_menu` VALUES (114, 2139);
INSERT INTO `sys_role_menu` VALUES (114, 2156);
INSERT INTO `sys_role_menu` VALUES (114, 2160);
INSERT INTO `sys_role_menu` VALUES (114, 2164);
INSERT INTO `sys_role_menu` VALUES (114, 2168);
INSERT INTO `sys_role_menu` VALUES (114, 2171);
INSERT INTO `sys_role_menu` VALUES (114, 2180);
INSERT INTO `sys_role_menu` VALUES (114, 2220);
INSERT INTO `sys_role_menu` VALUES (114, 2222);
INSERT INTO `sys_role_menu` VALUES (114, 2224);
INSERT INTO `sys_role_menu` VALUES (114, 2229);
INSERT INTO `sys_role_menu` VALUES (114, 2235);
INSERT INTO `sys_role_menu` VALUES (114, 2236);
INSERT INTO `sys_role_menu` VALUES (114, 2238);
INSERT INTO `sys_role_menu` VALUES (114, 2240);
INSERT INTO `sys_role_menu` VALUES (114, 2245);
INSERT INTO `sys_role_menu` VALUES (115, 2000);
INSERT INTO `sys_role_menu` VALUES (115, 2005);
INSERT INTO `sys_role_menu` VALUES (115, 2028);
INSERT INTO `sys_role_menu` VALUES (115, 2029);
INSERT INTO `sys_role_menu` VALUES (115, 2031);
INSERT INTO `sys_role_menu` VALUES (115, 2089);
INSERT INTO `sys_role_menu` VALUES (115, 2090);
INSERT INTO `sys_role_menu` VALUES (115, 2091);
INSERT INTO `sys_role_menu` VALUES (115, 2101);
INSERT INTO `sys_role_menu` VALUES (115, 2103);
INSERT INTO `sys_role_menu` VALUES (115, 2126);
INSERT INTO `sys_role_menu` VALUES (115, 2128);
INSERT INTO `sys_role_menu` VALUES (115, 2137);
INSERT INTO `sys_role_menu` VALUES (115, 2138);
INSERT INTO `sys_role_menu` VALUES (115, 2139);
INSERT INTO `sys_role_menu` VALUES (115, 2156);
INSERT INTO `sys_role_menu` VALUES (115, 2160);
INSERT INTO `sys_role_menu` VALUES (115, 2164);
INSERT INTO `sys_role_menu` VALUES (115, 2168);
INSERT INTO `sys_role_menu` VALUES (115, 2171);
INSERT INTO `sys_role_menu` VALUES (115, 2180);
INSERT INTO `sys_role_menu` VALUES (115, 2220);
INSERT INTO `sys_role_menu` VALUES (115, 2222);
INSERT INTO `sys_role_menu` VALUES (115, 2224);
INSERT INTO `sys_role_menu` VALUES (115, 2225);
INSERT INTO `sys_role_menu` VALUES (115, 2226);
INSERT INTO `sys_role_menu` VALUES (115, 2227);
INSERT INTO `sys_role_menu` VALUES (115, 2228);
INSERT INTO `sys_role_menu` VALUES (115, 2229);
INSERT INTO `sys_role_menu` VALUES (115, 2230);
INSERT INTO `sys_role_menu` VALUES (115, 2235);
INSERT INTO `sys_role_menu` VALUES (115, 2236);
INSERT INTO `sys_role_menu` VALUES (115, 2238);
INSERT INTO `sys_role_menu` VALUES (115, 2240);
INSERT INTO `sys_role_menu` VALUES (115, 2241);
INSERT INTO `sys_role_menu` VALUES (115, 2242);
INSERT INTO `sys_role_menu` VALUES (115, 2243);
INSERT INTO `sys_role_menu` VALUES (115, 2244);
INSERT INTO `sys_role_menu` VALUES (115, 2245);
INSERT INTO `sys_role_menu` VALUES (115, 2246);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `station_id` bigint(20) NULL DEFAULT NULL COMMENT '驿站id',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3939 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 621, 'admin', '根用户', '00', '', '15966608425', '0', '/profile/avatar/sdau.png', '$2a$10$auwdopO54vn8sM19oZUGnOtT1yeS3HDK5v6Y6gn5v8OAvyqjkxYRC', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2023-09-29 18:23:04', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (2, 283, 'administrators', '普通管理员', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$evsPnQgE7sC1GDvMniUXneJB7yZE.oxj.AMK/w.oh87gCfzwgtJDq', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2023-10-23 01:18:39', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (3, 281, 'publisher', '信息发布管理员', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$eZB6BmRTVwisS6FOLkipOOj10NQDSGtIA6imM2PkKPA1BJREmrzwe', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2023-10-23 01:23:19', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (4, 282, 'auditor', '信息审核管理员', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$w13nvCgflXC2P5P27vE6oeHfGpeBnXwBjjm4GwYq0PU5YgpMTQohG', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2023-10-23 01:24:15', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (5, 640, 'finance_publish', '金融发布管理员', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$8ix.Hxj4PnCxLvaYchUOJ.zDJTyR.Tj4rmVDpJGkmcmJZHJpnguPa', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2024-01-18 14:52:53', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (6, 641, 'finance_auditor', '金融审核管理员', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$GzHbcosyRuL7gEaM.vEyaeJlgu8ljq2YsB8N.hvUCTnl/Slk5Yz/i', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2024-01-18 14:53:31', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (7, 4438, 'stationmaster', '驿站站长测试', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$yvanZOxplCOusSLRip6NP.n8g3R4.aWwagMbUYWGwCjUmjDi8hL/O', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2024-01-23 15:01:15', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (8, 4438, 'science_specialist', '科技专员测试', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$t48HMIV3bIQGWwrWCicfXu1N3yLWfLzAfC5hEgXUq3rZf0Gb01UOu', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2024-01-23 15:01:48', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (9, 4438, 'science_services', '科技服务专员测试', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$leh0ioyBU.tkpMQRMYYppuukz8fyhO.UO.yQp1wghwcUXZ2lw1Zwe', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2024-01-23 15:02:13', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (10, 4438, 'finance_specialist', '金融专员测试', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$ep0mVbAaGI3mTJGk8oCRjeCcIfBtu6RRSRMitBb/f/tauv6o4bXvW', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2024-01-23 15:02:59', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (11, 4438, 'infor_specialist', '信息专员测试', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$FIDodiZHG4lnmj2XF5wctOs0p7jLibSfNO6R6hZt4dYz.1SsiYTXe', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2024-01-23 15:03:47', '', '2024-01-26 14:24:17', '', NULL);
INSERT INTO `sys_user` VALUES (12, 4438, 'user', '普通用户测试', '00', '', '', '0', '/profile/avatar/sdau.png', '$2a$10$Nw4QxV73.hNWuEWmP5chLubC2npBKROPaG5VZhTt.wppCZG4xaPwy', '0', '0', '', '2024-01-26 14:24:17', 'admin', '2024-01-23 15:03:47', '', '2024-01-26 14:24:17', '', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (3, 107);
INSERT INTO `sys_user_role` VALUES (4, 108);
INSERT INTO `sys_user_role` VALUES (5, 109);
INSERT INTO `sys_user_role` VALUES (6, 110);
INSERT INTO `sys_user_role` VALUES (7, 111);
INSERT INTO `sys_user_role` VALUES (8, 112);
INSERT INTO `sys_user_role` VALUES (9, 113);
INSERT INTO `sys_user_role` VALUES (10, 114);
INSERT INTO `sys_user_role` VALUES (11, 115);
INSERT INTO `sys_user_role` VALUES (12, 106);

-- ----------------------------
-- Table structure for tb_ask_free
-- ----------------------------
DROP TABLE IF EXISTS `tb_ask_free`;
CREATE TABLE `tb_ask_free`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父ID（为空时为该条为问题，有title与content，非空时是id为当前parentId对应的问题的评论）',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '发布该评论/问题的用户ID',
  `audit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核标志（1：已审核，0：未审核）',
  `sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '该问题/评论所属的驿站id',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 213 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '随时问' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_ask_free
-- ----------------------------

-- ----------------------------
-- Table structure for tb_collect
-- ----------------------------
DROP TABLE IF EXISTS `tb_collect`;
CREATE TABLE `tb_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID\r\n',
  `table_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `article_id` bigint(20) NULL DEFAULT 0 COMMENT '文章ID',
  `status` int(11) NULL DEFAULT NULL COMMENT '收藏状态（1：收藏，0：不收藏）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 477 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_collect
-- ----------------------------

-- ----------------------------
-- Table structure for tb_file_server
-- ----------------------------
DROP TABLE IF EXISTS `tb_file_server`;
CREATE TABLE `tb_file_server`  (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `file_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型  （文件名后缀）',
  `file_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `original` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始文件名',
  `bucket_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '存储桶名称',
  `file_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '文件地址',
  `file_size` decimal(10, 0) NULL DEFAULT NULL COMMENT '文件大小（单位:k）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表名称',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '表id',
  `sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 623 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '文件服务器' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_file_server
-- ----------------------------
INSERT INTO `tb_file_server` VALUES (587, 'image/jpeg', 'information_241_1706065406559.jpg', 'information_241.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/information_241_1706065406559.jpg', 218763, '0', '', '2024-01-24 11:03:27', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (588, 'image/jpeg', 'information_241_1_1706065429570.jpg', 'information_241_1.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/information_241_1_1706065429570.jpg', 85125, '0', '', '2024-01-24 11:03:50', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (589, 'image/png', '18d45a6d-cb16-45bf-bec2-b95bacfc9e36_1706065810303.png', '18d45a6d-cb16-45bf-bec2-b95bacfc9e36.png', 'village-station', 'http://202.194.131.202:9000/village-station/18d45a6d-cb16-45bf-bec2-b95bacfc9e36_1706065810303.png', 234598, '0', '', '2024-01-24 11:10:10', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (590, 'image/jpeg', '456226d2-9621-4b0d-b94c-08ff1e3ac507_1706065851166.jpg', '456226d2-9621-4b0d-b94c-08ff1e3ac507.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/456226d2-9621-4b0d-b94c-08ff1e3ac507_1706065851166.jpg', 98951, '0', '', '2024-01-24 11:10:51', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (591, 'image/jpeg', '1706014953134(1)_1706068521120.jpg', '1706014953134(1).jpg', 'village-station', 'http://202.194.131.202:9000/village-station/1706014953134(1)_1706068521120.jpg', 217315, '0', '', '2024-01-24 11:55:21', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (592, 'image/png', 'htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706068599482.png', 'htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c.png', 'village-station', 'http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706068599482.png', 778836, '0', '', '2024-01-24 11:56:40', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (593, 'image/jpeg', 'W020240116516467367899_1706068648906.jpg', 'W020240116516467367899.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/W020240116516467367899_1706068648906.jpg', 156351, '0', '', '2024-01-24 11:57:29', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (594, 'image/jpeg', '8eb36a2521c54ad6827aca8c1a255b62_1706068682956.jpg', '8eb36a2521c54ad6827aca8c1a255b62.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/8eb36a2521c54ad6827aca8c1a255b62_1706068682956.jpg', 668237, '0', '', '2024-01-24 11:58:03', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (595, 'image/png', '4fc30eb0ba067a46f8749a217dbf246(2)_1706068700748.png', '4fc30eb0ba067a46f8749a217dbf246(2).png', 'village-station', 'http://202.194.131.202:9000/village-station/4fc30eb0ba067a46f8749a217dbf246(2)_1706068700748.png', 948609, '0', '', '2024-01-24 11:58:21', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (596, 'image/png', 'bfeece3f9aff4dcac7654e4d4a72b81(1)_1706068729683.png', 'bfeece3f9aff4dcac7654e4d4a72b81(1).png', 'village-station', 'http://202.194.131.202:9000/village-station/bfeece3f9aff4dcac7654e4d4a72b81(1)_1706068729683.png', 454909, '0', '', '2024-01-24 11:58:50', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (597, 'image/jpeg', 'W020240102335770544871_1706068745372.jpg', 'W020240102335770544871.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/W020240102335770544871_1706068745372.jpg', 184928, '0', '', '2024-01-24 11:59:05', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (598, 'image/jpeg', 'W020240102335770827083_1706068755449.jpg', 'W020240102335770827083.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/W020240102335770827083_1706068755449.jpg', 197175, '0', '', '2024-01-24 11:59:15', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (599, 'image/jpeg', 'W020231218373569071735_1706068773958.jpg', 'W020231218373569071735.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/W020231218373569071735_1706068773958.jpg', 114884, '0', '', '2024-01-24 11:59:34', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (600, 'image/jpeg', '219_1706068795867.jpg', '219.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/219_1706068795867.jpg', 596202, '0', '', '2024-01-24 11:59:56', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (601, 'image/jpeg', '219_1706068802044.jpg', '219.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/219_1706068802044.jpg', 596202, '0', '', '2024-01-24 12:00:02', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (602, 'image/jpeg', '221_1706068807854.jpg', '221.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/221_1706068807854.jpg', 476873, '0', '', '2024-01-24 12:00:08', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (603, 'image/jpeg', 'W020240116516467145540_1706068826177.jpg', 'W020240116516467145540.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/W020240116516467145540_1706068826177.jpg', 139777, '0', '', '2024-01-24 12:00:26', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (604, 'image/jpeg', 'W020240123407763284943_1706068908905.jpg', 'W020240123407763284943.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/W020240123407763284943_1706068908905.jpg', 76436, '0', '', '2024-01-24 12:01:49', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (605, 'image/jpeg', 'W020240123404536198050_1706068929058.jpg', 'W020240123404536198050.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/W020240123404536198050_1706068929058.jpg', 206845, '0', '', '2024-01-24 12:02:09', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (606, 'image/jpeg', 'v2-f15f8d1309d4dd7605cfe55a36192096_r_1706069001600.jpg', 'v2-f15f8d1309d4dd7605cfe55a36192096_r.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/v2-f15f8d1309d4dd7605cfe55a36192096_r_1706069001600.jpg', 774926, '0', '', '2024-01-24 12:03:22', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (607, 'image/png', 'u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png', 'u=3552331028,175836595&fm=30&app=106&f=PNG.png', 'village-station', 'http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png', 483170, '0', '', '2024-01-24 12:11:36', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (608, 'image/jpeg', 'information_241_1706069829135.jpg', 'information_241.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/information_241_1706069829135.jpg', 218763, '0', '', '2024-01-24 12:17:09', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (609, 'image/png', 'df7535535df5f60bd323a2c72641917_1706070080754.png', 'df7535535df5f60bd323a2c72641917.png', 'village-station', 'http://202.194.131.202:9000/village-station/df7535535df5f60bd323a2c72641917_1706070080754.png', 764222, '0', '', '2024-01-24 12:21:21', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (610, 'image/png', 'feb9106a2a8ca5eb7dd5594e3080a3c(1)_1706070088836.png', 'feb9106a2a8ca5eb7dd5594e3080a3c(1).png', 'village-station', 'http://202.194.131.202:9000/village-station/feb9106a2a8ca5eb7dd5594e3080a3c(1)_1706070088836.png', 964748, '0', '', '2024-01-24 12:21:29', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (611, 'image/png', '33a04255a2c0ea701f222d41a2bf8b5(1)_1706070171366.png', '33a04255a2c0ea701f222d41a2bf8b5(1).png', 'village-station', 'http://202.194.131.202:9000/village-station/33a04255a2c0ea701f222d41a2bf8b5(1)_1706070171366.png', 527783, '0', '', '2024-01-24 12:22:51', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (612, 'image/jpeg', '1706014875742(1)_1706070396872.jpg', '1706014875742(1).jpg', 'village-station', 'http://202.194.131.202:9000/village-station/1706014875742(1)_1706070396872.jpg', 150528, '0', '', '2024-01-24 12:26:37', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (620, 'image/jpeg', 'information_241_1706089287031.jpg', 'information_241.jpg', 'village-station', 'http://202.194.131.202:9000/village-station/information_241_1706089287031.jpg', 218763, '0', '', '2024-01-24 17:41:27', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (621, 'image/png', '微信图片_20240124121630_1706092418798.png', '微信图片_20240124121630.png', 'village-station', 'http://202.194.131.202:9000/village-station/微信图片_20240124121630_1706092418798.png', 1923280, '0', '', '2024-01-24 18:33:39', '', NULL, 'news', 23, '');
INSERT INTO `tb_file_server` VALUES (622, 'image/png', 'htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706093171767.png', 'htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c.png', 'village-station', 'http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706093171767.png', 778836, '0', '', '2024-01-24 18:46:12', '', NULL, 'news', 23, '');

-- ----------------------------
-- Table structure for tb_finance
-- ----------------------------
DROP TABLE IF EXISTS `tb_finance`;
CREATE TABLE `tb_finance`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `audit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核标识（1：已审核，0：未审核）',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级栏目编码',
  `reading` bigint(20) NULL DEFAULT NULL COMMENT '浏览量',
  `collect` bigint(20) NULL DEFAULT NULL COMMENT '收藏标识',
  `likes` bigint(20) NULL DEFAULT NULL COMMENT '点赞标识',
  `sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序（可用于是否推荐）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '金融' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_finance
-- ----------------------------
INSERT INTO `tb_finance` VALUES (200, '威海市商业银行：精准金融服务助力乡村振兴', '<p>近年来，威海市商业银行准确把握新时代实施乡村振兴战略的总体要求，立足区域特色，加大信贷供给、创新服务模式，着力满足乡村振兴多样化金融需求，为打造乡村振兴鲁样板贡献了金融力量。</p><p><br></p><p><strong style=\"color: rgb(51, 51, 51);\">创新模式，构建多元服务场景</strong></p><p><strong style=\"color: rgb(51, 51, 51);\"><span class=\"ql-cursor\">﻿</span></strong><img src=\"http://202.194.131.202:9000/village-station/feb9106a2a8ca5eb7dd5594e3080a3c(1)_1706070088836.png\"></p><p><strong style=\"color: rgb(51, 51, 51);\">威海市商业银行的“鲍鱼贷”产品服务海洋牧场鲍鱼养殖</strong></p><p>将自身特色优势与乡村发展需求相结合，威海市商业银行不断丰富服务场景，创新推出了“农业+海洋金融”“农业+绿色金融”“农业+特色产业”等多种服务模式，加快推动农业产业转型升级，推进农业特色产业聚集发展。</p><p>近年来，威海市商业银行立足区域特色，深入推进海洋产业金融服务，聚焦育苗、养殖、捕捞、加工等各个环节，倾斜政策资源、加强产品创新、优化服务模式，助力海洋产业转型发展升级。</p><p>某集团是荣成市的一家水产养殖龙头企业，拥有10万余亩的海域使用权，具备良好的鲍鱼养殖环境。近年来，当地农户纷纷与该集团开展合作，承包海域养殖鲍鱼，养殖户多达450余户，鲍鱼产业链逐渐成为当地一条“致富链”。</p><p>在一次走访调研中，威海市商业银行了解到，由于鲍鱼养殖周期长、投入大，在采购饲料、批量采收等环节需要大量资金周转，养殖户们普遍面临融资难、担保难的问题。</p><p>针对该情况，威海市商业银行迅速行动，加大了对鲍鱼养殖特色产业的实地调研和模式创新力度，多次深入走访当地鲍鱼养殖户，全面掌握鲍鱼养殖产业各链条的资金需求后，多方联动打造了“龙头企业+基地+农户+银行”四位一体的鲍鱼养殖产业链融资模式。</p><p>“鲍鱼贷”特色产品有效解决了鲍鱼养殖户缺少抵押物、贷款审批难的痛点，缓解了养殖户在海域租赁、饲料采购等环节的资金周转压力，让鲍鱼养殖户不再有后顾之忧。“鲍鱼贷”产品一经推出，切实解决了养殖户的融资难题，获得广泛认可和一致好评。</p><p>有了“鲍鱼贷”模式的前期探索，威海市商业银行依托区域海洋特色化经营模式，结合地域资源禀赋，为特色产业量身打造出“惠农贷”“养殖贷”“牡蛎贷”等多种信贷产品，满足了小微企业水产品养殖多元化信贷需求。</p><p>在助力海洋经济发展的同时，威海市商业银行拓宽涉农产业边界，结合农村客群金融服务需求特点，及时创新推出与客户需求精准匹配的产品。</p><p>该行围绕“农业+绿色金融”，创新推出“林业碳汇预期收益权质押贷款”“海洋碳汇预期收益权质押贷款”“碳排放权质押贷款”“渔业贝类碳汇指数保险质押贷款”等特色产品，盘活绿色资产。围绕“农业+特色产业”，创新推出“大棚贷”等农特产品贷款服务，助力新型农业经营发展。</p><p>菏泽曹县，电商产业发展迅猛，但遇到资金瓶颈，为支持当地电商产业发展，威海市商业银行“对症开方”，推出了基于电商场景的线上贷款“电商贷”。该产品具有纯信用、纯线上、随借随还、按日计息的优势，给当地电商户带来了良好的金融服务体验，也得到当地政府部门和监管部门的高度认可。</p><p><strong style=\"color: rgb(51, 51, 51);\">银政携手，破解“三农”融资痛点</strong></p><p><strong style=\"color: rgb(51, 51, 51);\">威海市商业银行的“农易贷”产品服务农户种植</strong></p><p>由传统农业向现代农业转型的新型农业经营主体具有规模化、产业化生产的特征，不仅对土地、劳动力提出集约化经营要求，也对金融支持和服务提出了更高要求。</p><p>对于家庭农场、专业大户、农民合作社及农业产业化的新型经营主体而言，融资需求十分突出。经营集中度高，抗风险能力弱；农村土地的抵押物存在处置变现难等问题，在一定程度上制约了其发展。</p><p>对此，威海市商业银行与山东省农业发展信贷担保有限责任公司（以下简称“山东农担”）合作，创新推出服务“三农”专项产品“农易贷”。由山东农担为涉农客户提供信贷担保，有效解决客户抵押物短缺而导致的融资难题，大大提高涉农客户的信贷可获得性。目前，该行依托省内网点全覆盖优势，与山东农担当地办事处建立合作，已在全省16市开展涉农信贷业务。</p><p>同时，威海市商业银行将金融支农惠农与国家乡村振兴战略部署相结合，在威海市政府指导支持下，与威海市财政局、山东农担等携手创新“财政+银行+担保”三方协同支农模式，聚焦贴息、降本、增信，积极参与财政金融协同支持乡村振兴试点工作，主动让利于农，有效解决新型农业、农业特色产业发展资金问题，切实激活涉农主体的经营活力。</p><p>威海某农业企业以油料、豆类、谷物等产品种植为主营业务，并从事农业科学研究和发展试验。2023年初，企业签订200余万斤的花生种植“大单”后，便紧锣密鼓地投入物联网系统、水肥系统、灌溉设备的铺设之中。经过前期一系列投入后，仍有300万元资金缺口，眼看花生种植的时节越来越近，融资成为了制约企业发展的瓶颈。</p><p>了解到企业的资金需求后，威海市商业银行第一时间上门了解企业的生产经营、订单及金融需求等情况。根据企业资金需求急的实际，总分联动制订融资方案，银担联动解决企业担保难题，运用“农易贷”特色产品高效提供300万元信贷支持，并给予企业利率优惠。随着资金的及时到位，企业加快补充农资，快速投入花生种植，种植面积达3400余亩，200余万斤的花生订单有了保障。</p><p>除此之外，威海市商业银行依托山东农担的平台优势，锁定涉农核心企业，为其上下游客户提供信贷支持，实现风险闭环，解决涉农“小”企业、个体农户等融资难题，进一步扩大信贷支持范围。</p><p>淄博的曹先生种植了300亩禾丰种业开发的小麦，收获后全部由禾丰种业回购。这种“农户育种回购”经营模式虽然解决了上游农户销路问题，但是前期承包土地、购买农资等需要农户筹集大量资金，融资难、融资贵成为融资过程中最大的难题。</p><p>为解决农户融资难题，威海市商业银行根据禾丰种业“农户育种回购”经营模式，与山东农担合作，针对禾丰种业上游农户创新推出“育种贷”产品，由山东农担提供担保，银行提供优惠利率贷款。依托“育种贷”特色业务模式，制约融资的梗阻得到疏通。</p><p><strong style=\"color: rgb(51, 51, 51);\">战略协同，优化服务乡村模式</strong></p><p>威海市商业银行牢记服务实体经济的初心和使命，坚持“服务地方经济，服务小微企业，服务城乡居民”的市场定位，深耕农业产业，在机构建设、资源匹配、考核管理、信贷流程、业务产品等方面制定具体化、精准化的工作措施，集中优势资源支持乡村振兴。</p><p>近年来，威海市商业银行将支持乡村振兴纳入银行发展战略，每年制定普惠金融业务营销意见，从战略和制度层面引导分支机构积极履行社会责任。同时，制定了《涉农 扶贫贷款尽职免责实施细则》，合理界定涉农信贷尽职认定标准和免责情形，调动和保护分支机构开展涉农金融业务的积极性。</p><p>为扩大“三农”金融服务覆盖面，威海市商业银行将总行普惠金融部作为支持乡村振兴、涉农领域的专门机构，负责开发、推广涉农信贷产品，管理、指导分支机构开展金融支持乡村振兴工作。同时，在机构规划中加大县域网点布局，推进网点下伸、服务下沉，进一步提高对“三农”客户的金融服务能力。</p><p>在提高服务质效方面，威海市商业银行还成立了乡村振兴服务专班，通过集中人员、集中时间、集中地点、集中突破的“四个集中”模式，全面推进乡村振兴在产品模式、平台模式、业务模式等领域的创新研发和落地实施。与此同时，该行充分发挥考核导向作用，将乡村振兴与“普惠攻坚年”“绿色发力年”活动有效结合，通过单列普惠涉农增长计划、优化普惠涉农考核方案、设立绿色审批通道、配置专业审批人员等，引导分支机构加大涉农信贷投放力度，重点投向海洋产业、海洋牧场、水产养殖、海产品预制菜等领域。</p><p>重农固本是安民之基、治国之要。城市商业银行深度融入乡村振兴战略，助农惠农富农强农既是责任担当，也是转型发展需要。威海市商业银行充分认识金融服务乡村振兴的重要性，将自身特色和业务优势与乡村振兴的需求相结合，引导乡村振兴扶持政策与信贷资金有效衔接，为乡村振兴注入强劲金融动能。<strong style=\"color: rgb(51, 51, 51);\">（赵琪）</strong></p>', '1', '0', 5, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/df7535535df5f60bd323a2c72641917_1706070080754.png', '根用户', '2024-01-24 12:21:34', '', NULL);
INSERT INTO `tb_finance` VALUES (201, '黄河口“金融活水”润泽三农发展，东营银行业全面助推乡村振兴', '<p>为全面学习贯彻党的二十大精神和中央金融工作会议精神，落实国家金融监督管理总局山东监管局有关银行业着力提升服务实体经济质效工作要求，全面展示山东银行业赋能经济社会高质量发展的金融服务质效，山东省银行业协会组织的“银行业落实党的二十大精神服务山东区域经济社会发展专题调研暨新闻媒体一线行”宣传活动来到东营，对银行业服务乡村振兴的典型做法和成效进行了深入调研采访。</p><p><br></p><p>国家金融监督管理总局东营监管分局积极发挥引领作用，聚焦“三农”、用好“三力”，引导辖内各银行机构持续加大涉农信贷投放力度，为黄河口乡村振兴贡献金融力量。一是强化政策引领，筑牢乡村振兴“支撑力”。制定推动辖区银行保险机构抢抓重大国家战略机遇提升服务实体经济质效的指导意见，开展“普惠金融突破年”，进一步发挥金融支撑保障作用，助力全面推进乡村振兴。截至9月末，东营辖区银行业涉农贷款余额1309.47亿元。普惠型涉农贷款余额250.05亿元，较年初增加29.34亿元，增速13.29%，较年初增速高于各项贷款增速2.93个百分点，涉农信贷投入稳定增长。二是创新金融产品，激发乡村振兴“新活力”。引导辖区机构充分发挥东营区位优势，下沉服务重心，进一步贴近乡村、贴近“三农”，创新金融产品，优化金融服务。各银行机构持续创新信贷产品，落地微捷贷、专精特新贷、“惠农e贷”、农业科技贷款、鲁担惠农贷等特色贷款品种，有效满足企业发展、科技成果转化等方面的融资需求。联合东营农商行及15家市直单位成立“美德成金 德润东营”党建联盟，持续推进“美德成金”信用转化工作，相关信贷产品发放授信2.76万户，金额6亿元。三是打造乡村特色，筑强乡村振兴“推动力”。立足扩大“黄河口农品、盐碱地特产”品牌影响力，先后推动相关银行机构围绕黄河口大闸蟹、滩羊等特色优势产业因地制宜开展金融支持，助推利津县黄河口滩羊产业园区步入高质量发展的快车道，发放黄河口滩羊贷款余额达11.1亿元，承保黄河口滩羊22.16万只，提供风险保障金额1.77亿元。推动黄河口大闸蟹产业健康发展，发放黄河口大闸蟹养殖贷款余额1.12亿元，开办大闸蟹养殖气象指数保险，承保大闸蟹3.49万亩，风险保障金额3494.7万元。</p><p><strong style=\"color: rgb(51, 51, 51);\">金融助力发“羊”财</strong></p><p>昔日的盐窝镇荒芜寂寥，今日的羊舍林立，见证了乡村的华丽转身。在这个利津县的偏远角落，刘建军的故事在黄河口滩羊产业园内回荡。作为返乡再创业的本地人，刘建军的肉羊养殖场位于黄河口滩羊产业园内。“2017年从广州回到村里开始养羊，家里人都不支持”说起创业史，刘大哥打开了话匣子，“随着咱们黄河口滩羊的牌子越来越响，销路越来越广，老百姓的腰包也越来越鼓，尤其是进入产业园区以来，一栏羊就上千头，还是自己的家乡好啊”。</p><p>这位本乡本土的创业者凭借着对肉羊养殖的热爱与执着，投身于家乡创业。而在这个华丽转身的背后，邮储银行东营市分行发挥了关键作用。近年来在政府的大力扶持下，特别是在邮储银行东营市分行的资金支持下，盐窝镇开始发生了翻天覆地的变化。据了解，早在2008年，邮储银行东营市分行便为支持盐窝镇肉羊养殖产业发展发放了第一笔贷款3万元，现在单笔肉羊养殖贷款授信金额已达300万元，仅本年前三季度，该行累计投放肉羊养殖贷款6.94亿元。</p><p>邮储银行东营市分行如同源头活水，为盐窝镇的肉羊养殖业注入了强大的生命力，根据当地产业发展实际情况，不断调整优化金融服务，不仅提供了便捷的贷款服务，还通过“线下走访、线上授信”的快速授信及放款模式，进一步打破了物理网点的束缚，实现了“让数据多跑路，让村民少跑腿”，以实际行动打通了乡村金融服务的“最后一公里”。</p><p>刘建军就是邮储银行东营市分行服务的众多受益者之一。他凭借着邮储银行的贷款支持，不仅成功地创办了自己的肉羊养殖场，还实现了规模化、现代化的养殖。如今，他的养殖场内8500多只滩羊声此起彼伏，成为了盐窝镇的一道亮丽风景线。</p><p>“一枝独秀不是春,百花齐放春满园”。邮储银行东营市分行将一如既往地紧跟乡村产业振兴的步伐，为更多像刘建军一样的创业者提供支持与帮助，共同书写乡村繁荣的新篇章。截至目前，邮储银行东营市分行本年新增涉农贷款7.73亿元，余额达到54.68亿元。</p><p><strong style=\"color: rgb(51, 51, 51);\">“点绿”“成金”两不误</strong></p><p>秋风轻拂，层林尽染。深秋的黄河堤坝下，一片片耐盐碱的国槐、白蜡等树木的彩叶已陆续变色，宛如一幅优美的秋日画卷。树林中，已成熟的赤松茸采摘活动正如火如荼地进行着，“看，我挖到的这颗赤松茸好大呀！”喜悦的声音不时从林间传出。另一边，一只只小欢猪欢腾地互动着，时不时发出享受的“哼哼”声，一群群板蓝根鸡在林间悠闲地散步，时而传来“咯咯”的鸣叫。在这座“没有屋顶的绿色生态工厂”中，一幅草茂林丰、猪跑鸡鸣兴业图正缓缓展开。</p><p><br></p>', '1', '0', 2, 0, 0, '0,1,2,3,4,5,6,7,8,9,10', 'http://202.194.131.202:9000/village-station/33a04255a2c0ea701f222d41a2bf8b5(1)_1706070171366.png', '根用户', '2024-01-24 12:23:00', '', NULL);

-- ----------------------------
-- Table structure for tb_likes
-- ----------------------------
DROP TABLE IF EXISTS `tb_likes`;
CREATE TABLE `tb_likes`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID\r\n',
  `table_name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `article_id` bigint(20) NULL DEFAULT 0 COMMENT '文章ID',
  `status` int(11) NULL DEFAULT NULL COMMENT '点赞状态，1为点赞，0为不点赞',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 457 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '点赞' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_likes
-- ----------------------------

-- ----------------------------
-- Table structure for tb_news
-- ----------------------------
DROP TABLE IF EXISTS `tb_news`;
CREATE TABLE `tb_news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `audit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核标识（1：已审核，0：未审核）',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级栏目编码',
  `reading` bigint(20) NULL DEFAULT NULL COMMENT '浏览量',
  `collect` bigint(20) NULL DEFAULT NULL COMMENT '收藏量',
  `likes` bigint(20) NULL DEFAULT NULL COMMENT '点赞量',
  `sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序（可用于是否推荐）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 243 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '其它栏目\r\n       一级栏目              二级栏目 （在字典中设置）\r\n         学农技：            水稻、小麦..\r\n         买农资：           节肥增效、虫害防治..\r\n         找渠道：           供应、求购..\r\n         推优品：           我的优品、品牌展示..\r\n         新品种：\r\n         培训：              园艺培训、粮食种植..\r\n         热销农产： ' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_news
-- ----------------------------
INSERT INTO `tb_news` VALUES (229, '掌握好种植苹果的6大技巧，让家里的苹果树增产增收', '<p>	1，修剪技巧</p><p>	春季修剪，芽萌动后于开花前进行。此时修剪能提高剪留芽的萌芽率，促生中短枝；合理疏花疏蕾，扼制过多挂果。此时期贮藏营养大量向幼龄枝的枝端运转，修剪后养分损失比冬剪多，削弱树势的作用较重，萌芽力较低的品种、旺长树或需控制的旺长枝，宜春季修剪。</p><p>	夏季修剪，剪去过密枝叶，开张大枝角度；幼旺树上的骨干枝摘心、扭梢、拉枝、环剥等。坐果期环切、环剥；旺长幼树在花芽分化期带叶复剪。</p><p>	秋剪修剪，是带叶修剪，修剪一般不会引起来年再旺长，但切勿修剪过重，也不宜在弱树上应用，否则会严重削弱树势。秋剪的时间要适当，过早会引起二次生长，过晚则难收到秋剪的良好效果。</p><p>	冬季修剪，一般是采用疏剪、短截、回缩相结合，促控相结合的方法。幼树注意树体结构的培养，成龄树注意生长势的调整，力争长势不衰，各部位长势平衡，</p><p>	2，施肥技巧</p><p>	施肥应在苹果树萌芽前，也就是3月正下旬至4月上旬。以速效的有机肥为主。可促进果实开花，有利于提高座果率。第二次在6月中下旬。可施加含有氮磷钾的肥料，有利于促进果实膨大。第三次追肥在8月上中旬。适当的有机肥施加，有利于提高果实品质。</p><p>	3，除草技巧</p><p>	果园中的矮生杂草一般可以使用草甘膦、克无踪等灭生性除草剂定向喷雾加以防除，对一些难除杂草和宿根性杂草，适当增加用量。对表面有蜡质的的杂草，在喷药时加些洗衣粉效果更好些。另外，对苹果园的马齿苋，还可以使用快灭灵等触杀型除草剂定向喷雾。</p><p>	</p><p><img src=\"http://202.194.131.202:9000/village-station/1706014875742(1)_1706070396872.jpg\">4，疏花技巧</p><p>	疏花做得好，可以节省树的营养，从而提高所留下的果子色度、果个、甜度等，特别对增大果个有极明显的效果；还能增强树势，延长苹果树的寿命。</p><p>	一般中短枝的顶花芽由于停长早，花芽分化期长，供给花芽分化的叶片数量多，养分充足；而腋花芽由于分化早晚差别大，叶片少。供分化的养分相对欠缺，花芽饱满程度远不如顶花芽；在一个枝条中，梢部芽生长时间短，其饱满程度远逊色于中部的芽。而我们疏花时，就要根据以上原则，剪去瘪花芽，留下饱满的芽，才是正确的。</p><p>	5、套袋和摘袋</p><p>	苹果套袋不仅可以防止病虫害，也可以起到美化果实的作用，我们现在去超市可以买到上面有字或者有图案的苹果就是因为套袋利用阳光着色。根据果树和环境的情况，适时地摘掉袋子，让阳光照射果实。</p><p>	6、转动果实</p><p>	为了能让果实的每一个表面都被充分的照射，让果实的颜色看上去均匀饱满，需要将挡住阳光的叶子摘下来，而且对于阳光照射不到的那一面就需要人工将果实转一个面，这是一个需要非常仔细谨慎的工作。</p>', '1', '2', 2, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/1706014953134(1)_1706068521120.jpg', '根用户', '2024-01-23 20:56:47', '根用户', '2024-01-24 12:27:24');
INSERT INTO `tb_news` VALUES (230, '2023年苹果园秋季生产技术指导意见', '<p><strong style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">环渤海湾苹果产区。</strong></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">自然生草的果园，在摘袋前半个月刈割一次行间草被。丘岭薄地果园可在采果后通过深翻改土、客土改良、有机物料覆盖等方式，结合施用有机肥，改良耕层土壤。胶东半岛和辽东半岛土壤酸化的果园可通过施用硅钙镁肥、石灰或其他土壤改良剂改良土壤。</span></p><p><strong style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">黄土高原产区。</strong></p><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\">干旱地区在秋季雨水较丰富时期，播种黑麦草等宿根草种或越年生的油菜等间作作物改良土壤；普遍施用一次硅钙镁肥改良土壤。（硅钙镁肥与其他肥料一起土施，用量一般为50—100公斤/亩；石灰单独撒施，用量一般为75—100公斤/亩。）</span></p><p>	花果管理</p><p>	苹果园秋季花果管理主要包括果实摘袋、垫果、摘叶、转果、铺反光膜和适时采收等技术。</p><p>	<strong>（一）摘袋。</strong>摘袋时期，较难上色的红富士等品种采收前20—25天摘袋，易上色品种采收前15—20天摘袋。黄绿品种在采收时连同纸袋一起摘下。摘袋方法，套单层纸袋的摘袋方法是在上午10点前和下午4时后将袋撕成伞形条状罩在果实上，3—5天后再全去掉；双层纸袋摘袋方法是先去掉外层袋经过5个左右晴天后去掉内层袋，亦可采用遮阴网一次性去袋。</p><p>	<strong>（二）垫果。</strong>摘袋的同时对果实与枝梢接触部位加护果垫防止磨损。</p><p>	<strong>（三）摘叶。</strong>果实摘袋后3—5天进行。用剪刀将遮挡果实的叶片和紧贴果实的叶片适量剪除，保留叶柄。摘叶量控制在20%—30%为宜。</p><p>	<strong>（四）转果。</strong>摘袋4—5天后进行第一次转果，9—10天进行第二次转果。转果应避开晴天的中午进行。</p><p>	<strong>（五）铺反光膜。</strong>在内袋摘除后3—5天进行。在树干两边顺行覆膜，膜外缘与树冠外缘对齐，果实采收前1—2天撤膜。</p><p>	<strong>（六）适时采收。</strong>根据果实生育期、商品处理要求等适期采收，早熟富士优系果实生育期150—155天，王林145—165天，晚熟富士优系175—180天，秦脆160—165天，瑞雪180—190天，维纳斯黄金170—175天。采收前禁止浇大水，采摘时带果柄采下，轻拿轻放，防止机械损伤。</p><p><img src=\"http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706093171767.png\"></p>', '1', '2', 2, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/htimage_201942_bb42c67b-87f1-4932-9ca0-644ae783b27c_1706068599482.png', '根用户', '2024-01-23 21:00:46', '根用户', '2024-01-24 18:46:14');
INSERT INTO `tb_news` VALUES (231, '农业农村部关于发展现代设施农业的指导意见', '<p>各省、自治区、直辖市及计划单列市农业农村（农牧）、畜牧兽医、渔业厅（局、委），新疆生产建设兵团农业农村局，北大荒农垦集团有限公司、广东省农垦总局：</p><p>	习近平总书记指出，“要树立大食物观，发展设施农业，构建多元化食物供给体系”，“设施农业大有可为，要发展日光温室、植物工厂和集约化畜禽养殖，推进陆基和深远海养殖渔场建设，拓宽农业生产空间领域”。大力发展现代设施农业，加快用现代技术与先进设施装备武装农业，既可保障农产品稳定安全供给，也可弥补水土资源短缺、减少耕地占用；既可促进农业转型升级和增加农民收入，也可带动关联产业发展，畅通城乡经济循环，是建设农业强国的重要任务，是推进农业农村现代化的重要举措。经过多年建设，我国设施农业发展取得长足进步，为保障粮食和重要农产品稳定安全供给发挥了重要作用，但还存在总量不足、质量不高等问题，不能适应建设农业强国的需要。为贯彻落实党的二十大精神，按照中央有关决策部署，推动《全国现代设施农业建设规划（2023—2030年）》落实，加快现代设施农业高质量发展，制定本指导意见。</p><p class=\"ql-align-right\">	农业农村部 </p><p class=\"ql-align-right\">	2023年6月10日 </p><p class=\"ql-align-justify\"><br></p>', '1', '0', 20, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/W020240116516467367899_1706068648906.jpg', '根用户', '2024-01-23 21:08:15', '根用户', '2024-01-24 12:04:35');
INSERT INTO `tb_news` VALUES (232, '山东省人民政府关于印发山东省“十四五”推进农业农村现代化规划的通知', '<p class=\"ql-align-center\">	<strong>山东省“十四五”推进农业农村	现代化规划</strong></p><p>	“十四五”时期，是全面推进乡村振兴、加快农业农村现代化的第一个五年，也是我省加快新旧动能转换、推动农业农村高质量发展和打造乡村振兴齐鲁样板的关键阶段。为加快全省农业农村现代化，推进农业高质高效、乡村宜居宜业、农民富裕富足，根据《“十四五”推进农业农村现代化规划》和《山东省国民经济和社会发展第十四个五年规划和2035年远景目标纲要》，制定本规划。</p><p>	（一）指导思想。以习近平新时代中国特色社会主义思想为指导，全面贯彻党的十九大和十九届二中、三中、四中、五中、六中全会精神，认真落实习近平总书记对山东工作的重要指示要求，牢固树立新发展理念，坚持农业农村优先发展总方针，以实施乡村振兴战略、打造乡村振兴齐鲁样板为总抓手，聚焦农业农村高质量发展，全面走好城乡融合发展之路、共同富裕之路、质量兴农之路、乡村绿色发展之路、乡村文化兴盛之路、乡村善治之路、中国特色减贫之路，激活城乡要素、乡村资源和乡村发展内生动力，加快形成工农互促、城乡互补、协调发展、共同繁荣的新型工农城乡关系，优化提升乡村产业体系、生产体系和经营体系，全面推进农产品优质化、乡村田园生态化、乡村产业融合化、农业农村数字化、基层治理规范化、农民增收持续化，更好满足农民群众对美好生活新期待、新向往、新需要。</p><p>	（二）基本原则。</p><p>	1．坚持绿色发展，生态化引领。践行绿水青山就是金山银山理念，严守耕地和生态保护红线，促进农村生产生活生态协调发展。</p><p>	2．坚持创新驱动，数字化转型。大力推动科技创新、业态创新和模式创新，推进产业数字化、数字产业化，加快发展乡村数字经济。</p><p>	3．坚持深化改革，集约化经营。不断深化农村土地制度、集体产权制度改革，创新体制机制，集聚要素资源，发展多种形式农业适度规模经营。</p><p>	4．坚持城乡统筹，融合化推进。建立健全城乡融合发展的体制机制和政策体系，促进城乡要素合理流动和优化配置，推动农业全面升级、农村全面进步、农民全面发展。</p><p>	5．坚持农民主体，共享化发展。发挥农民在农业农村现代化中的主体作用，充分尊重农民意愿，巩固拓展脱贫攻坚成果，切实保护农民权益，调动广大农民群众的积极性、主动性和创造性。</p><p>	（三）发展定位。</p><p>	1．乡村振兴齐鲁样板示范省。牢记习近平总书记嘱托，把打造乡村振兴齐鲁样板作为重大政治任务，大胆探索、培塑典型、系统总结、推广经验，稳步推进乡村产业、人才、文化、生态和组织振兴。</p><p>	2．农业农村高质量发展先行省。充分发挥新旧动能转换综合试验区优势，树立大数据经济战略资源理念，全面提升农业质量效益和竞争力，全面提高农村生产、生活、生态质量。</p><p>	3．推进现代农业强省建设引领省。立足自然资源禀赋和产业优势，科学制定农业现代化指标体系，加快农业现代化示范区建设，不断提升农业供给保障水平、质量效益水平、技术装备水平和适度规模经营水平。</p><p>	（四）发展目标。到2025年，全省农业农村经济高质量发展取得显著成效，现代农业强省建设实现重大突破，粮食等重要农产品供给保障能力持续增强，农业质量效益和竞争力明显提升。农业绿色发展水平稳步提高，乡村建设行动扎实推进，农民生产生活条件大幅改善，脱贫攻坚成果巩固拓展，农民收入持续稳定增加，现代乡村治理体系初步构建，乡村振兴齐鲁样板亮点纷呈。全省基本实现农业现代化的县（市、区）达到80％以上，确保农业农村现代化建设走在全国前列。</p><p><br></p><p><br></p>', '1', '0', 8, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/4fc30eb0ba067a46f8749a217dbf246(2)_1706068700748.png', '根用户', '2024-01-23 21:13:05', '根用户', '2024-01-24 12:04:51');
INSERT INTO `tb_news` VALUES (233, '山东潍坊坊子区如何解锁品牌农业发展“密码”', '<p class=\"ql-align-justify\">	<strong>新华社济南1月16日电</strong>（记者陈国峰）时值腊月，又到了草莓西红柿采摘的季节。走进山东省潍坊市坊子区逄王一村的子航家庭农场，一个个温室大棚里人头攒动。“草莓西红柿酸甜可口、皮薄汁多，深受大家喜爱。”看着熙熙攘攘的游客，农场经理周国栋脸上洋溢着喜悦。</p><p class=\"ql-align-justify\">	周国栋毕业于青岛农业大学，2015年回村开启创业之路。他创办家庭农场、注册多个商标，以品牌赋能，拓宽农产品销售渠道。</p><p class=\"ql-align-justify\">	坊子区是农业大区。坊子区农业农村局局长郑光亮介绍，当地以发展“规模化、品牌化、园区化、智慧化”的都市现代农业为目标，不断调整和优化农业结构，打造了一批优势农产品品牌，目前已建成省级标准化基地7家、市级标准化基地7家，认证有机农产品53个。</p><p class=\"ql-align-justify\"><img src=\"http://localhost:9000/village-station/W020240116516467145540_1706015660379.jpg\"></p><p class=\"ql-align-justify\">	逄王一品西红柿、半截楼葡萄、柏台西瓜、水墨庄园热带水果、坊安芦笋、杞都牛蒡茶……如今，说起坊子区的农业品牌，很多市民如数家珍。</p><p class=\"ql-align-justify\">	品牌的塑造离不开人才支撑。坊子区持续加大农业人才培育力度，2023年以来培育“土专家”“田秀才”等各类乡土人才1000余名，带动建设示范园区、合作社120余个。</p><p class=\"ql-align-justify\">	“创牌”容易“守牌”难。一些合作社和种植户引入先进农业技术，为产业发展插上“科技翅膀”，擦亮农产品金字招牌。</p><p class=\"ql-align-justify\"><img src=\"http://localhost:9000/village-station/W020240116516467367899_1706015677380.jpg\"></p><p class=\"ql-align-justify\">	走进位于坊安街道洼里村的玉泉洼种植专业合作社，采用10层立体栽培技术的温室大棚蔚为壮观，一盆盆油菜、苦菊、芹菜、菌菇等按照不同习性有序排列，上面3层是喜光蔬菜，中间3层次之，接下来3层为不喜光蔬菜，最底层是菌类。负责搬运盆菜的自动导向搬运车沿着既定路线穿梭，犹如工厂车间的生产场景。</p><p class=\"ql-align-justify\">	玉泉洼种植专业合作社技术总监刘国盛说：“我们用种植槽立体栽培技术种植的草莓，种植株数比传统种植方式提高了20％；植株光照充足，果实着色均匀，商品果率达93％。”</p><p class=\"ql-align-justify\">	合作社负责人刘向东介绍，在“玉泉洼”品牌引领下，洼里村年生产有机蔬果6000多吨，实现产值约8600万元，带动周边22个村走上农业产业化发展道路。</p><p class=\"ql-align-justify\"><br></p><p><br></p>', '1', '1', 16, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/8eb36a2521c54ad6827aca8c1a255b62_1706068682956.jpg', '根用户', '2024-01-23 21:15:18', '根用户', '2024-01-24 12:04:46');
INSERT INTO `tb_news` VALUES (234, '汶上深耕数字农业 “智慧农业”结出致富果', '<p class=\"ql-align-justify\">	“一粒种子8元，加上育苗成本，单株价格达到11.5元，结出来的番茄能卖到20元／公斤。”1月3日一大早，记者来到位于汶上县汶上街道的绿港（汶上）现代农业示范园，穿戴好防护服、口罩、头套，经过热风消毒，才得以进入现代温室大棚。园区负责人逄焕军指着藤蔓上错落有致的番茄说：“这就是番茄中的‘爱马仕’——爱仕401。”</p><p class=\"ql-align-justify\">	如此“娇贵”的品种，管理起来反倒“简单”：1万平方米的智能温室大棚里，只有两位工人在忙碌。“爱仕401是来自法国的口感型番茄新品种，对生长环境的要求十分苛刻，必须严格控制棚区温度、湿度以及菌群数量。”逄焕军介绍，园区通过智慧管理系统实现了温、光、水、气、肥等全数字调控、全要素控制。“每平方米产量80公斤，整个棚区产量预计可以达到80万公斤。第一茬新品种番茄将在春节前上市，预计能卖出个好价钱。”</p><p class=\"ql-align-justify\">	诚如眼前的场景一样，数字农业的画卷正在汶上的沃野里铺展开来。2024年汶上县政府工作报告指出，新的一年，汶上将实施政策拥农、改革惠农、产业兴农、科技富农“四项行动”，加快建设农业强县。</p><p class=\"ql-align-justify\">	“我们通过招大引强、示范引领、辐射带动等方式，与江苏绿港、华苑农业、京东物流、盒马鲜生等大型企业达成战略合作协议，打造了华苑智慧农业示范园区、5个千亩现代化农业基地等多个数字农业先行区，形成了产业规模化、产品集约化、服务一体化的现代农业生产体系。”汶上街道党工委书记步海霞介绍。2023年，绿港（汶上）现代农业示范园实现年产蔬菜300万公斤，培育优良果蔬种苗200万株，年产值1800余万元，惠及汶上县14个乡镇（街道）的152个村居，带动300余人就业。</p><p class=\"ql-align-justify\">	汶上县利用数字农业物联网，开展智慧农田项目建设，通过大数据、云服务等信息化技术，对农业生产定时定量管理，根据农产品的生长情况合理分配资源，让农业生产高效低耗、优质环保。</p><p class=\"ql-align-justify\">	在苑庄镇高标准农田建设智能化示范基地项目区，“智能井房＋地埋式自动伸缩喷灌系统”让人眼前一亮。智能井房占地少、摆放灵活，具有用水用电双计量、刷卡浇地、水肥一体化、土壤墒情远程监控等功能。地埋式自动伸缩喷滴灌设备埋于耕作层以下，不影响耕作，通过集成喷头可开展水肥一体化高效节水喷灌作业，况且作业前后不需要安装与拆卸喷灌设备，无须人员管理与保护。</p><p class=\"ql-align-justify\">	“通过手机上的‘智慧农业’App就能对其进行远程控制，实现了精准灌溉、精准施肥、节约成本、节约人力、提高效益的目标。”苑庄镇种粮大户荣维振介绍。喷灌系统一次性投资，可节约10％的耕地、70％的用水和85％的用工。与此同时，项目区还建设有“灌溉信息云平台”，可实时开展虫情监测、气象监测、土壤墒情监测、土壤肥情监测及苗情监测等，对农事生产过程的关键环节进行全面智慧化管理。</p><p class=\"ql-align-justify\">	数字农业要“施展拳脚”，离不开土地规模化、集约化等基础条件。汶上县引导农村综合产权有序流转，土地流转率达到79.6％，居济宁市第1位。2022年以来，汶上县新建高标准农田13万亩，一个个“小方田”成了稳产高产的“大粮仓”。（<span style=\"background-color: rgb(255, 255, 255);\">来源：​大众日报   </span>记者　王浩奇　通讯员　张明　殷壮）</p><p><br></p>', '1', '1', 4, 0, 0, '0,1,2,3,4,5,6,7,8,9', 'http://202.194.131.202:9000/village-station/bfeece3f9aff4dcac7654e4d4a72b81(1)_1706068729683.png', '根用户', '2024-01-23 21:18:12', '根用户', '2024-01-24 12:04:56');
INSERT INTO `tb_news` VALUES (235, '山东冠县：小灵芝开出乡村振兴“致富花”', '<p class=\"ql-align-justify\">	<span style=\"background-color: rgb(255, 255, 255);\">数九寒冬，走进山东省聊城市冠县灵芝科技示范园，40个高标准种植棚内却是温暖如春。在一排排一人多高的立体网格架上，一个个金黄色的灵芝从格子里“探出脑袋”，正在茁壮成长。</span>	“过去种灵芝受气温影响，只能春夏时种一茬。现在我们的大棚温度、湿度、光照、通风等都由计算机控制，实现了全年不间断生产，一年可种3至4茬灵芝。”冠县灵芝科技示范园推进工作组成员燕森淼告诉记者。</p><p class=\"ql-align-justify\">	孢子粉是灵芝在成熟期喷射出来的种子，是灵芝的精华。“传统灵芝种植大棚的孢子粉收集率在70％左右，现在我们使用智能化收集设备，将孢子粉收集率提高到了95％以上。每个立体种植棚每茬能产1000公斤孢子粉和750公斤子实体，纯收益4万多元。”燕森淼说。</p><p class=\"ql-align-justify\"><img src=\"http://202.194.131.202:9000/village-station/W020240102335770827083_1706068755449.jpg\"></p><p class=\"ql-align-justify\">	位于黄河故道的冠县，依托当地丰富的林果资源，大力发展灵芝特色产业。经过30多年的发展，目前已形成集培育、种植、深加工、创意销售等为一体的灵芝产业链。</p><p class=\"ql-align-justify\">	在冠县店子镇王当铺村，种植大户王明瑞的灵芝大棚里，摆放着数万盆造型别致的灵芝盆景，大的有一米多高，小的有十几厘米高，有的像松塔，有的像大圆盘。</p><p class=\"ql-align-justify\"><br></p>', '1', '3', 1, 0, 0, '0,1,2,3,4,5,6,7,8,10,9,11', 'http://202.194.131.202:9000/village-station/W020240102335770544871_1706068745372.jpg', '根用户', '2024-01-23 21:25:26', '根用户', '2024-01-24 11:59:18');
INSERT INTO `tb_news` VALUES (236, '潍坊市农科院主持选育的两小麦品种通过省农作物品种审定', '<p class=\"ql-align-justify\">	近日，山东省农业农村厅发布《山东省2023年第二批农作物审定品种目录》，潍坊市农科院主持选育的“潍麦15”“潍麦16”小麦品种通过山东省农作物品种审定委员会审定。</p><p class=\"ql-align-justify\">		潍坊市农科院站在服务粮食安全的战略高度，加快新品种选育工作。2023年以来，累计有“潍麦13”“潍玉326”等6个农作物新品种通过山东省农作物品种审定；“晚青”蜜桃等12个品种被授予国家植物新品种权；欧丁香“丽妃”等5个新品种为我省首批获得国家植物新品种权的丁香品种；“潍豆1897”被中国种子协会评为专家推荐品种，“潍花25号”被列为山东省主要粮油作物主推品种，“潍花8号”被推介为骨干型花生品种；豆梨“首都”等5个林木良种被确定为山东省首批优先推荐使用林木良种。</p><p><br></p>', '1', '3', 6, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/W020231218373569071735_1706068773958.jpg', '根用户', '2024-01-23 22:03:51', '根用户', '2024-01-24 12:05:01');
INSERT INTO `tb_news` VALUES (237, '释放金融“活水”，“枣”行一步助力乡村振兴', '<p class=\"ql-align-justify\">沾化冬枣因其脆甜多汁、营养丰富，深受消费者欢迎，被誉为“中华奇果”“世界第一果品”“百果之王”，在中国品牌价值评价中，位列地理标志枣类产品第1名，也是2023年滨州市唯一入选“好品山东”的农产品。近年来，建行滨州分行紧跟国家决策部署，不断加大农村金融供给，从大处着眼、小处着手，推动金融资源更多投向个体农户、家庭农场、合作社等群体，充分发挥金融主力军作用，助力冬枣产业发展。</p><p class=\"ql-align-justify\"><img src=\"http://202.194.131.202:9000/village-station/219_1706068802044.jpg\"></p><p class=\"ql-align-justify\"><strong>裕农快贷打通乡村振兴 “致富之路”</strong></p><p class=\"ql-align-justify\">冬枣产业是滨州市沾化区最具特色的优势产业，也是拉动农民致富增收的支柱产业，建行滨州分行进一步发挥“裕农通”平台作用，运用科技手段服务乡村振兴，加大涉农支持，助推冬枣产业链发展。</p><p>“多亏了建行的裕农快贷，170多万的资金，帮了我大忙了” 滨州市沾化区某冬枣专业合作社位于沾化区下河乡庞家村，共承包土地200余亩，主要经营一代、二代冬枣种植、销售。近年来由于冬枣产业链的健全，大棚冬枣逐步兴起并具有较好的市场前景。2022年11月，建行滨州沾化支行为其发放裕农快贷173万元，企业主王某军用该笔资金将其名下100亩冬枣园改建为大棚冬枣，2023年9月，王某军的大棚冬枣较漏天冬枣提前20天成熟，冬枣上市早、售价高，销售收入是往年的一倍，建行的信贷支持打通了老王的“致富之路”。</p><p><img src=\"http://202.194.131.202:9000/village-station/221_1706068807854.jpg\"></p><p class=\"ql-align-justify\"><strong>科技补偿贷助力沾化冬枣“迈出国门”</strong></p><p class=\"ql-align-justify\">“老赵，500万的贷款已经到账了，感谢建行，这下我可以放心大胆的接订单了”</p><p class=\"ql-align-justify\">滨州市沾化区某果蔬进出口有限公司是一家集果蔬产品的种植管理、采后收购、产地预冷、保鲜仓储、预选分级、加工包装、冷链配送于一体的专业化农产品服务公司，主要从事高品质沾化冬枣的生产及出口业务和国内高端市场销售业务。2020年，企业首次将沾化冬枣出口到美国市场，出口冬枣800吨，创汇960万美元。近年来，该公司国际业务得到进一步拓展，由于企业生产规模受限，无法满足订单需求，企业不敢大量接国际订单，建行滨州沾化支行在了解到这一情况后，客户经理主动上门走访，根据企业特点为其发放科技补偿贷款500万元，用于企业扩大生产规模使用，2023年，该公司将沾化冬枣出口到荷兰、西班牙、新加坡、泰国、加拿大及中东部分地区，出口订单近7000吨，建行科技补偿贷助力沾化冬枣“迈出国门，走向世界”。</p><p class=\"ql-align-justify\"><img src=\"http://localhost:9000/village-station/221_1706018768872.jpg\"></p><p class=\"ql-align-justify\"><strong>云税贷解企业“燃眉之急”</strong></p><p class=\"ql-align-justify\">“付总，货款已经给对方打过去了，谢谢，太感谢了！”</p><p class=\"ql-align-justify\">山东滨州某食品有限公司是一家具有较高知名度的食品加工企业，与建行建立合作关系多年，企业主要立足于当地农产品小枣、冬枣农作物制品，生产、加工枣系列制品、山楂系列制品。自公司成立以来，产品销售市场范围不断扩大，市场份额连年增长，品牌知名度和影响力日益提高，产品销量增长迅速，枣制品、山楂制品销量居全国前列。2023年10月，企业紧急接到一批冬枣加工订单，由于冬枣价格上涨，导致企业成本增加，周转资金不足，货款金额较企业预估相差150多万元，一时之间难以筹集，于是向我行寻求帮助，在了解到企业缴税状况后，建行滨州沾化支行客户经理主动上门服务，现场为其办理云税贷200万元，解决企业“燃眉之急”。</p><p class=\"ql-align-justify\">建行滨州分行坚持市场导向及客户需求相结合，不断推进产品、场景的研发和创新，积极发挥科技补偿贷、裕农快贷、小微快贷等金融产品优势，结合企业需求，提供差别化信贷服务，源源不断为冬枣种植户、冬枣加工企业提供资金支持，解决企业融资过程中的痛点、堵点、难点。截止2023年9月末，建行滨州分行累计为沾化冬枣产业链发放贷款100余笔，贷款金额近4000万元。</p><p class=\"ql-align-justify\"><br></p>', '1', '4', 0, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/219_1706068795867.jpg', '根用户', '2024-01-23 22:06:24', '根用户', '2024-01-24 12:05:10');
INSERT INTO `tb_news` VALUES (238, '山东：金融“活水”助力全面推进乡村振兴', '<p>在山东寿光稻田镇崔岭西村，1500亩地里“长”着360个蔬菜大棚，年产果蔬万余吨，人均年收入超4万元。“村民靠种菜富起来，多亏了银行贷款的支持。”村党支部书记崔玉禄说。</p><p>崔玉禄介绍，在农业银行“大棚两改”贷款的支持下，合作社为种植户配置了水、肥、药一体化灌溉系统，为生产技术标准化提供了保障。除此之外，“强村贷”“惠农e贷”“新居贷”等贷款的发放，不仅打响了当地蔬菜品牌，还让村民住上了楼房，“过上了城里人都羡慕的生活”。</p><p>近年来，山东省金融机构聚焦乡村振兴重大战略、重点领域和薄弱环节，不断优化金融产品和服务，持续加大金融资源投入，为高质量打造乡村振兴齐鲁样板畅通金融“活水”，贡献金融力量。</p><p>“截至11月末，山东省涉农贷款余额4.12万亿元，同比增长12.8%，高于各项贷款增速1.7个百分点；较年初增加4692.8亿元，同比多增337.6亿元；农业企业直接融资取得积极进展，前11个月全省发行乡村振兴债券30.5亿元。”中国人民银行山东省分行副行长董龙训表示。</p><p>在支持乡村振兴方面，山东省深入开展金融服务乡村振兴“一县一品”创建活动、农村特色产权融资“自选优势项目”突破活动等，金融机构创新推出“石榴贷”“家庭农场贷”“大棚贷”等百余款专属信贷产品，截至10月末，全省“一县一品”和农业产业链融资贷款余额731.2亿元，有效满足了新型农业经营主体和农户生产资金需求。</p><p>作为全国唯一的农业政策性银行，农业发展银行聚焦“藏粮于地”“藏粮于技”“菜篮子”等重点领域，农业发展银行山东省分行副行长朱峰介绍，农发行涉农产业类贷款余额1122亿元，支持了包括高标准农田、盐碱地综合利用等农村土地流转和土地规模经营，智慧农业、数字农业、设施农业等农业科技创新和成果转化。</p><p>“从威海西洋参到菏泽牡丹，从兰陵蔬菜到高青黑牛、阳信肉牛，以服务乡村振兴作为主责主业的农发行，不断为山东地方特色产业发展注入动能，助力‘好品山东’农产品品牌建设。”朱峰说。</p><p>在支持人才振兴方面，山东不断完善创业担保贷款实施办法，提高返乡创业农民工创业担保贷款额度，9月末全省返乡创业农民工创业担保贷款余额达48.1亿元，为妇女、退役军人、教师等群体量身定做“鲁担巾帼贷”“退役军人创业贷”“园丁贷”等金融产品。前三季度，山东省累计发放“鲁担巾帼贷”4682笔、金额42.5亿元，发放退役军人创业贷款5233笔、金额14亿元。</p><p>在山东，“美德信用”也能变成“真金白银”。为支持文化振兴，山东省深化农村信用体系建设，全面推进乡村美德积分金融转化建设，建立“美德+积分+金融”服务模式。</p><p>近日，在临沂费县，504家“街边小店”，获得了总额1.08亿元授信，“美德信用积分”转化成了可以随借随还的流动资金。作为首个国家级普惠金融服务乡村振兴改革试验区，临沂市率先在全省创新建立“美德+积分+金融”的服务新模式，并在在沂水县、费县、沂南县、兰陵县等县区开展试点，“美德信用积分”成为银行贷款投放的新参考依据。</p><p>据了解，在山东省农信联社的指导下，临沂全市12家农商银行推出由美德个人积分贷、美德企业积分贷、美德组织积分贷组成的“美德积分系列贷”，让美德信用积分变成“真金白银”。</p><p>在临沂费县王家庄经营家庭农场的刘玉田，今年美德信用积分达到了930分，他也因此申请到20万元“美德个人信用贷”，为10个樱桃大棚安装了全自动控温设备。“明年的大樱桃能早上市十几天，卖个好价钱。”刘玉田说。</p><p>除了个人“美德积分”外，人民银行山东省分行组织开展“信用户、信用村、信用乡镇”评定，将涉农主体遵纪守法、诚实守信、家庭和睦等情况纳入信用评价，推动“整村授信”“无感授信”，引导金融资源加速向农业农村现代化领域聚集。10月末，全省完成“整村授信”村庄7.4万个、覆盖面达96.4%；农户贷款达1.2万亿元，同比增长14%，增速快于全部贷款。</p><p>与此同时，山东省金融机构结合乡村实际探索开展了林权、排污权、林业碳汇、合同能源管理收益权抵质押等贷款业务支持生态振兴；推出“强村贷”等产品支持组织振兴，前11个月，全省累计发放“强村贷”8.3亿元，支持项目816个。</p><p>金融“活水”助力乡村振兴，离不开政策的引领，近年来，山东省不断健全契合乡村振兴的金融政策体系，先后制定《关于金融支持打造乡村振兴齐鲁样板 加快建设现代农业强省的实施意见》、《关于加强金融资源供给 助力新型农业经营主体加快发展若干措施的通知》等多个政策文件，围绕高标准农田建设和盐碱地综合利用、农业关键核心技术攻关、乡村新产业新业态培育发展、宜居宜业和美乡村建设等方面提出三十余条金融措施，着力破解金融服务乡村振兴的痛点堵点。</p><p>“山东充分运用各种结构性货币政策工具，撬动引领金融资源在‘三农’领域精准滴灌。”董龙训表示，“今年前11个月，山东省累计发放支农支小再贷款1926亿元，办理再贴现867亿元，为乡村振兴提供了强大资金保障。”</p>', '1', '4', 0, 0, 0, '0,1,2,3,4,5,6,7,8,9,11,10', 'http://202.194.131.202:9000/village-station/W020240116516467145540_1706068826177.jpg', '根用户', '2024-01-23 22:07:51', '根用户', '2024-01-24 12:05:15');
INSERT INTO `tb_news` VALUES (239, '2024春节山东乡村文化旅游节启动', '<p class=\"ql-align-justify\">	送春联、赶大集、看表演、品美食……“家家挂红灯，户户贴春联，村村有好戏——回村过大年”2024春节山东乡村文化旅游节1月18日在山东16市同步启动，丰富的活动吸引了各地游客及当地群众。</p><p class=\"ql-align-justify\">	在山东淄博高青县的现场活动中，软陶泥塑展示区上精美可爱的“龙生九子”等系列龙年主题软陶艺术品引人驻足。不到一小时，已有几十人前来咨询购买。</p><p class=\"ql-align-justify\">	在山东16市启动仪式现场，各地立足地域特色，设置了民俗表演、“黄河大集”“村村有好品”展示推介等形式多样的活动。</p><p class=\"ql-align-justify\">	据了解，2024春节山东乡村文化旅游节将从1月18日持续到3月11日。其间，山东将围绕农历腊八、小年、除夕、正月十五、二月二等主要节点，依托古城古镇、特色文化旅游村等，重点推出省级12项、市级48项特色文化活动。（记者张昕怡）</p><p><br></p>', '1', '5', 0, 0, 0, '0,1,2,3,4,5,6,7,8,9', 'http://202.194.131.202:9000/village-station/W020240123407763284943_1706068908905.jpg', '根用户', '2024-01-23 22:09:16', '根用户', '2024-01-24 12:01:51');
INSERT INTO `tb_news` VALUES (240, '烟台福山：冬日樱桃绽放“致富花”', '<p class=\"ql-align-justify\">	寒冬腊月，山东省烟台市福山区门楼水库已结冰，但水库附近的西汪格庄村樱桃大棚里却生机盎然，一簇簇红红的樱桃缀在枝头格外诱人。春节前，这里的大樱桃就会上市，工人们正做着采摘前的准备工作。</p><p class=\"ql-align-justify\">	西汪格庄村是门楼水库整体搬迁村，共有500多户村民，土地零散、土壤贫瘠。多年来，村民收入主要来自露天樱桃种植，但由于周边樱桃种植面积大、上市集中，樱桃卖不上好价钱。为错峰上市，村党支部书记于江源多次参加全国大大小小的农博会，不断向农业专家讨教，想让樱桃成熟时间从三月中下旬提到春节前。</p><p class=\"ql-align-justify\">	这两年，烟台农科院和于江源一起探索试验，成效明显。眼下，西汪格庄村4个温室大棚里，有的樱桃树刚刚发芽，有的樱桃树已经开花结果。烟台农科院果科所工作人员李芳东介绍，这是因为大棚采用智能温控系统，将樱桃树的休眠期提前结束，使其在冬天也能开花坐果。</p><p class=\"ql-align-justify\">	“控制好休眠期，就能精准控制大棚里的樱桃什么时候开花、什么时候结果。”于江源说，不同大棚里的樱桃生长期不同，上市时间不同，就是为了错峰上市、卖个好价钱。</p><p class=\"ql-align-justify\">	走进一个樱桃大棚，棚顶的自动卷帘徐徐拉起，树下的水肥一体化系统启动，细密的水珠洒向绿叶。每隔一段距离，就能看到温度、湿度监测设备。</p><p class=\"ql-align-justify\">	“花期和膨果期需要的温度不同。设定好温度后，设备每天会根据天气自动控制通风口大小。”于江源打开手机App，棚里的温度、湿度、地温等数据一目了然。他说，“足不出户，在手机上就可以看到主要数据。温度过高或过低，手机会发出提示。这么大的一个棚，只需要三个人管理，主要靠的是高科技智能自动化系统。”</p><p class=\"ql-align-justify\">	2017年，于江源带领部分村民，用土地入股的方式，成立了烟台市福山区宏坤农业科技专业合作社。他给记者算了笔账：一个温室大棚春节前预计上市3000斤樱桃，按照200元一斤计算，就能收入60万元。</p><p class=\"ql-align-justify\">	“让烟台温室大樱桃春节前上市，我们一直在努力。”李芳东介绍，以前过年吃的都是进口大樱桃，现在国产大樱桃也在春节前进入市场，这是技术突破的成果。随着新技术的应用，烟台大樱桃供应期进一步延长，从元旦到6月底都有新鲜樱桃上市。（记者邵琨）</p><p class=\"ql-align-justify\"><br></p><p><br></p><p class=\"ql-align-center\"><br></p><p><br></p>', '1', '5', 0, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/W020240123404536198050_1706068929058.jpg', '根用户', '2024-01-23 22:09:57', '根用户', '2024-01-24 12:02:10');
INSERT INTO `tb_news` VALUES (241, '潍坊昌邑市实施三项引领工程　加快建设乡村文化传承保护利用隆起带', '<p class=\"ql-align-justify\">	潍坊昌邑市认真贯彻上级关于乡村文化建设的决策部署，坚持城乡融合发展，实施三项引领工程，加快建设乡村文化传承保护利用隆起带。山阳村、青阜村、齐西村获评省文化体验廊道重点村创建名单；“山东昌邑山阳大梨栽培系统”成功入选第七批中国重要农业文化遗产；柳疃丝绸、山阳农文旅融合示范区、红色马渠入选全省乡村特色文化艺术典型案例。</p><p class=\"ql-align-justify\">	<strong>实施文化体验廊道重点村建设工程，树立文化体验新标杆</strong></p><p class=\"ql-align-justify\">	自山阳村、青阜村、齐西村被列入省文化体验廊道重点村创建名单后，昌邑市高度重视。建设前，昌邑市农业农村局、昌邑市委宣传部等8部门成立调研组，联合潍坊市调研组对昌邑市3个入选重点村进行了专题调研，并邀请省专家进行指导，高标准完成建设方案编制。同时，由农业农村部门牵头，建立多部门协同推进工作机制，保障重点村建设顺利实施。建设中，每月调度1次建设进度，每季度开展1次现场调研，保证严格按照实施方案要求加快工程推进。按照省委办公厅、省政府办公厅《关于建设文化体验廊道推进文旅融合高质量发展的实施计划（2023－2025年）》要求，联合市文旅、宣传、住建、交通等部门，多渠道加大政策倾斜力度，将省级和美乡村建设资金全部投入重点村建设，实现和美乡村与重点村建设深度融合。目前，各项工作进展顺利，整体建设进度已达95％以上。</p><p class=\"ql-align-justify\">	<strong>实施农业文化遗产赋能工程，延伸区域农业文化品牌价值链</strong></p><p class=\"ql-align-justify\">	近年来，昌邑市指导山阳村调整产业结构，走转型发展新路子，践行“两山论”，将博陆山由一座废弃的荒山变成了绿水青山。2022年开始，昌邑积极申报省农业文化遗产资源名录、国家农业文化遗产。2023年9月，“山东昌邑山阳大梨栽培系统”成功入选第七批中国重要农业文化遗产，极大提升了“山阳大梨”的知名度和品牌影响力。借助农业文化遗产的品牌效应，指导遗产地举办了第九届山阳大梨采摘节、“潍”农上品·香溢四“坊”农产品展昌邑场、首次山阳大梨竞拍活动，进一步挖掘利用山阳大梨栽培系统作为中国重要农业文化遗产的文化意义和品牌价值，擦亮了中国重要农业文化遗产这一金字招牌。同时注重对农业文化遗产的传承利用，加强对博陆山古梨园的科学保护，设立山阳大梨栽培系统农业文化遗产保护区，围绕农业生产、农民生活、农业生态景观、农业文化保护等方面高标准编制了《山东昌邑山阳大梨栽培系统农业文化遗产保护与发展规划》，指导遗产地核心区设立中国重要农业文化遗产标志，协调各方资源，依托山阳大梨民俗文化、梨花文化、潍水文化、孔融让梨文化以及当地民俗风情文化，将生态村落景观带、人文景观带、历史文化景观带以及农业文化遗产景观带贯穿一体，合理布局于遗产地，高标准打造山阳农文旅产业融合示范区，进一步提升昌邑区域经济文化品牌。</p><p class=\"ql-align-justify\">	此外，昌邑市还重点挖掘了距今有600多年种植历史的昌邑大姜和400多年种植历史的斜子萝卜等农业文化遗产资源品牌。11月9日，在青岛市举办的第二十届中国国际农交会上，“鲁昌宏大”生姜入选中国农业品牌目录2022农产品品牌名单。2023年中国品牌建设促进会审定“昌邑大姜”品牌价值35.8亿元，在全国大姜品牌价值中列第1位。斜子萝卜获2022潍坊市潍县萝卜品质提升大赛优质奖，今年举办了孙斜村第二届乡土文化节暨“斜子萝卜”评奖大赛。</p><p class=\"ql-align-justify\">	<strong>实施特色文化资源提升工程，打造文化传承示范带</strong></p><p class=\"ql-align-justify\">	昌邑市深挖黄元御中医药文化、丝绸文化、渔盐文化3种特色文化资源，坚持传承发展、创新转化，全方位打造农业文化传承示范带。</p><p class=\"ql-align-justify\">	在山阳大梨这一农业文化遗产的带动下，大力弘扬中医药文化。举办黄元御中医药文化宣传周，开展黄元御主题文化展、“中医药文化进校园”“古代医家论医德医风医道”书法展等活动，传承发展“一代医宗”黄元御中医药文化思想。传承丝绸文化。昌邑柳疃镇有着深厚的丝绸历史文化，是著名的“丝绸之乡”。昌邑依托传统丝绸文化，启动“乡村记忆工程”，开展研学教育活动，聘请当地丝绸老艺人参与这项特色文化艺术的传承与保护，建设柳疃丝绸文化博物馆、华裕茧绸博物馆、丝路绸语文化创意产业园等，再现柳疃丝绸的发展历程和华侨开拓创新、回馈桑梓的情操。连续举办三届丝绸文化节，柳疃丝绸入选全省乡村特色文化艺术典型案例。赓续渔盐文化。深入挖掘渔盐文化，依托古港码头、盐业遗址等建设滨海国家级湿地公园，推出“一轴两区贯通、五大组团联动”的海洋文旅格局，在下营镇成功举办首届海洋文化节，活动3天吸纳游客逾5万人次。（潍坊市农业农村局）<img src=\"http://202.194.131.202:9000/village-station/information_241_1_1706065429570.jpg\"></p>', '1', '6', 0, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/information_241_1706065406559.jpg', '根用户', '2024-01-23 22:11:51', '根用户', '2024-01-24 11:03:52');
INSERT INTO `tb_news` VALUES (242, '金乡县加快农村实用人才培育 助推乡村人才振兴', '<p class=\"ql-align-justify\">	走进山东鑫润育种科技有限公司羽衣甘蓝种植基地，高素质农民大师刘秀君正给徒弟现场讲解甘蓝杂交育种技术。据悉，自“师傅带徒项目”开展以来，生产能手“乡土专家”刘秀君已招徒15人，带动周边群众扩种羽衣甘蓝1000余亩，其烘干制品畅销全国各地，每亩可实现增收3000－4000元。</p><p class=\"ql-align-justify\">	据了解，2023年以来，金乡县农业农村局聚焦乡村振兴和现代农业发展人才需求，以农业增效、农民增收、农村发展为目标，加大农村实用人才培育力度，着力打造一支懂农业、爱农村、爱农民的“三农”工作队伍，为乡村振兴提供坚实的人才支撑。</p><p class=\"ql-align-justify\">	<strong>积极培育“田秀才”，壮大农业“主力军”。</strong>扎实开展高素质农民培训。坚持以“培训一批学员、带动一方农民、助推一项产业”为培育目标，采取“课堂教学＋现场教学＋线上学习”三种授课模式，分层分类举办了粮油单产提升、专业农机手、棉果菜茶等9个专题培训班，培育高素质农民349人，选定7个试点村375农民学员开展农民素质素养提升培训行动，加快形成与产业需求相适应、与农村发展相协调的高素质农民队伍。狠抓农业“领军”队伍建设。选送10人参加全国乡村产业振兴带头人培育“头雁”项目培训，6名学员荣获“产业拓展标兵”“优秀班干部”“优秀学员”等称号。聘请35名技术能力水平高、传帮带能力强、示范作用发挥好的“土专家”加入高素质农民培训讲师团，成功入选济宁师资力量库。加强基层农技推广人才队伍建设。依托基层农技推广体系改革与建设补助项目，结合农时农事，累计举办各类种植管理技术培训班、农业生产经营从业者培训班和农技人员技术培训班23期，培训基层农技人员、科技示范户、农民群众2万余人次。</p><p class=\"ql-align-justify\">	<strong>分类施策“强指导”，为民服务“解难题”。</strong>加强跟踪服务。建立线上对接“点单”、统筹精准“派单”、线下服务“接单”服务机制，组建13支高素质农民跟踪服务团队，累计走访学员253名，开展现场指导300余人次，面对面、手把手传授讲解农业技术知识，着力解决学员在农业生产中遇到的实际问题。用好现场观摩。注重实践运用，先后举办省农业重大技术协同推广计划葱姜蒜绿色高效关键技术推广项目现场观摩会、大蒜辣椒全程机械化现场观摩会和大豆玉米带状复合种植现场观摩会，为高素质农民、基层农技人员和科技示范主体提供“取经”学习平台。创新推广模式。巩固完善“专家＋试验示范基地＋农技员＋科技示范主体＋辐射带动户”的技术服务模式，大力推广水肥一体化、病虫害统防统治、蒜后辣椒大苗机械化移栽等新品种、新技术，打造科技强农、产业兴农的现代农业。</p><p class=\"ql-align-justify\">	<strong>选树人才“领头雁”，激活干事“新动能”。</strong>创新农村实用人才评选。规范推荐程序，提升农村实用人才选拔质量，3人被授予“山东省劳动模范”称号，6人当选第十届“齐鲁乡村之星”，3人获评“第十一届山东省优秀基层农业技术人员”称号，9人获评济宁市2022年度“农技标兵”，10人获评济宁市2022年度“乡村工匠”。加大乡土人才培育。选送6人参加山东省“大师开讲”“锵锵新农民”等大型融媒体节目录制，1人获评“师傅带徒”创新试点项目的高素质农民大师，激活人才“动力引擎”。优化农民职称评选。重点突出效果导向、实绩导向，推选生产型、经营型、技能型、服务型的“农把式”“土专家”“田秀才”24人参加农民职称评审。截至目前，全县4人取得农民高级农艺师职称、26人取得农民农艺师职称、25人取得农民助理农艺师职称，总人数居全市首位。</p><p class=\"ql-align-justify\">	下一步，金乡县将坚持把人才振兴放在乡村振兴的重要位置，持续在“引、育、用、留”上下功夫，不断加强农村实用人才队伍建设，为全面推进乡村振兴、加快农业农村现代化提供有力人才支撑。</p><p><br></p>', '1', '6', 0, 0, 0, '0,1,2,3,4,5,6,7,8,9,10,11', 'http://202.194.131.202:9000/village-station/v2-f15f8d1309d4dd7605cfe55a36192096_r_1706069001600.jpg', '根用户', '2024-01-23 22:13:58', '根用户', '2024-01-24 12:03:23');

-- ----------------------------
-- Table structure for tb_offline_training
-- ----------------------------
DROP TABLE IF EXISTS `tb_offline_training`;
CREATE TABLE `tb_offline_training`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `audit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核标识（1：已审核，0：未审核）',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级栏目编码',
  `reading` bigint(20) NULL DEFAULT NULL COMMENT '浏览量',
  `collect` bigint(20) NULL DEFAULT NULL COMMENT '收藏量',
  `likes` bigint(20) NULL DEFAULT NULL COMMENT '点赞量',
  `sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序（可用于是否推荐）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 195 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线下培训' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_offline_training
-- ----------------------------
INSERT INTO `tb_offline_training` VALUES (193, '头雁故事#房富岭：农虽旧业 其命维新——返乡“头雁”的兴农梦', '<p>	&nbsp;事业小有所成&nbsp;返乡从零开始</p><p>	房富岭大学毕业后留在了城市，历经多年奋斗，他终于拥有了自己的公司，事业蒸蒸日上。彼时的他走出村庄，跳出龙门，实现了自己多年的创业梦，再没想过会和农业有瓜葛。2017年家乡所在镇党委找到他，希望他能返乡创业。为此他曾一度犹豫彷徨，如今事业已步入正轨，返乡创业有必要吗？从来没有系统学过农业，在家乡那么落后的地方创业，能成功吗？经过一番深思熟虑，怀揣着对家乡的深情，房富岭还是毅然接起这份重任，回到家乡开启了带领村民的致富梦。</p><p>	创新孵化模式&nbsp;聚合发展能量</p><p>	返乡后，房富岭先后注册成立了山东盈田农业科技有限公司、乐陵市花园镇房家村土地股份专业合作社，凭借自己互联网工作的经验，打造出“互联网+农业科技”新型农业产业模式，既实现了土地资源的充分利用，又让老百姓足不出村就能实现就业，带动了周边7个村庄居民增产增收。2021年合作社进入中国农民合作社500强，经济效益和社会效益不断提升。</p><p>	近年来，直播带货成为流行趋势，为农产品营销提供了新的渠道。房富岭趁着这阵“东风”，扎身短视频平台，通过抖音做乡村振兴产业调研指导，自学农产品电商、新媒体运营知识，经过业务对接和数据汇总，总结出了符合自己合作社发展的“农业六赢”模式，即在党组织统领下，用企业管理的方式，以投资运营的模式，把集体非经营性资产盘活，把村民经营性资产整合，实现了“组织、集体、村民、出资人、政府和社会”六方共赢。以此为基础，房富岭继续扩大关联产业链，组织农机服务合作社、仓储合作社、青年创业合作社、养殖合作社、农贸市场合作社等多个以村庄为载体，村民为主体的合作社，各个合作社均已独立运行并取得良好经营业绩，所有合作社均与村两委充分协商后成立注册，做到了村集体和村民双增收。</p><p>	借助高校优势&nbsp;汇聚人才资源</p><p>	为了更好的完善农业科技人才储备，适应农业发展的步伐，解决农村人才留不住和不足的难题，房富岭所在的合作社与山东农业大学签订了人才培训计划、建立了科教实训基地，家乡“三年一小变，五年一大变，十年领先周边一小步”的计划正在逐步实现。作为山东省乡村产业振兴“头雁”培育项目的优秀代表，房富岭积极参与学校组织的各项活动，不仅与各大高校关联专业的教授学者建立了深厚的友谊，更是将高校的技术、人才、资源引入到自己的产业发展中，与山东农大肥业有限公司和淄博禾丰种业有限公司等多家校友企业达成战略合作，利用自身互联网运作经验的优势，将各企业的产品进行网络资源整合与开发。</p><p>	加大人才回引&nbsp;实现强村富民</p><p>	乡村振兴，人才先行。房富岭深深懂得这个道理。如今，在房富岭的榜样带动下，在外创业的游子们一批接着一批回到家乡，有从承德返乡从事电线电缆生产的、有从天津返乡从事服装外贸加工的、有从北京返乡从事电商传媒培训的、有从济南返乡从事畜牧养殖的……在他们的带领下，房家村也正在筹备成立房家创业发展集团。此外，房富岭还在村里设置了“奖学金”“奖师金”，奖励中考、高考、在校获奖的优秀学子，鼓励村里的孩子通过学习“走出去”，反哺家乡；同时，激励更多有为教师来到房家村争先创优，点亮乡村振兴的“希望大道”。</p><p>	雄关漫道真如铁，而今迈步从头越。经过“头雁”项目的培育，房富岭将在党的二十大精神的指引下，振翅高飞、领航群雁，带领与他一样的有志青年们打造基层创业新业态，发展经济强村富民，实现所有返乡创业者的富农梦、兴农梦。</p><p>	&nbsp;</p><p>	房富岭 2023年山东省乡村产业振兴带头人培育“头雁”项目（粮食一班）学员</p>', '1', NULL, 3, 0, 0, '0,1,2', 'http://202.194.131.202:9000/village-station/18d45a6d-cb16-45bf-bec2-b95bacfc9e36_1706065810303.png', '根用户', '2024-01-24 11:10:18', '', NULL);
INSERT INTO `tb_offline_training` VALUES (194, '山东省乡村产业振兴带头人培育 “头雁”项目在我校启动', '<p>	<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">8月8日，山东省2023年乡村产业振兴带头人培育“头雁”项目启动仪式暨开学典礼在山东农业大学举办。农业农村部人力资源开发中心教育培训处副处长顾鹏，山东农业大学副校长林海出席活动并致辞，山东省农业农村厅二级巡视员王成民主持启动仪式。</span></p><p class=\"ql-align-justify\"><span class=\"ql-cursor\">﻿</span>	顾鹏在讲话中对山东省2022年“头雁”项目取得的成绩给予充分肯定。他指出，开展“头雁”项目是贯彻落实习近平总书记关于乡村振兴和人才工作重要论述，带动形成乡村产业振兴雁阵人才队伍，夯实乡村振兴人才基础的有力举措。相关单位要积极为“头雁”项目提供配套政策支持和跟踪服务，通过高质量的课程和科学的考核机制，培养一大批有知识、能实践、懂管理的“农民MBA”。</p><p class=\"ql-align-justify\">	林海在致辞时表示，山东农业大学高度重视乡村振兴人才培养工作，近年来在以“头雁”项目为代表的乡村振兴人才培养工作中取得一系列成绩，学校将以本次活动为契机，持续提升人才培养能力和水平，努力打造具有高校学科特色的“头雁”培育项目。他鼓励广大学员要珍惜学习机会，通过项目学知识、找路径、取真经、交朋友；要求项目有关单位和工作人员要做好全过程周到服务，保障项目顺利开展，切实在国家实施乡村振兴人才支持计划、高素质农民培育计划过程中贡献山农智慧和力量。</p><p class=\"ql-align-justify\">	上海交通大学教授王大鹏、山东农业大学乡村振兴学院院长张舒、学员代表李保国分别代表授课教师、培育机构和广大学员发言。</p><p class=\"ql-align-justify\">	本次活动采取线上线下相结合的形式举办，主会场设在山东农业大学，青岛农业大学设立分会场。省农业农村厅、农广校、16地市农业农村局有关负责同志，培育机构负责人，山东农业大学、青岛农业大学第一期“头雁”项目学员代表参加活动。</p><p><br></p>', '1', NULL, 4, 0, 0, '0,1,2', 'http://202.194.131.202:9000/village-station/456226d2-9621-4b0d-b94c-08ff1e3ac507_1706065851166.jpg', '根用户', '2024-01-24 11:11:08', '', NULL);

-- ----------------------------
-- Table structure for tb_online_training
-- ----------------------------
DROP TABLE IF EXISTS `tb_online_training`;
CREATE TABLE `tb_online_training`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `audit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核标志（1：已审核，0：未审核）',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级栏目编码',
  `video` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频地址',
  `reading` bigint(20) NULL DEFAULT NULL COMMENT '阅读量',
  `collect` bigint(20) NULL DEFAULT NULL COMMENT '收藏量',
  `likes` bigint(20) NULL DEFAULT NULL COMMENT '点赞量',
  `sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序（可用于是否推荐）',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线上培训' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_online_training
-- ----------------------------
INSERT INTO `tb_online_training` VALUES (190, '难以置信的农业技术', '', '0', NULL, 'http://202.194.131.202:9000/village-station/九个令人难以置信的农业技术20240125143514.mp4', 7, 0, 0, '0,1,2,3,4,5,6,7,8,9,11,10', 'http://202.194.131.202:9000/village-station/u=3552331028,175836595&fm=30&app=106&f=PNG_1706069495721.png', '根用户', '2024-01-24 12:11:00', '根用户', '2024-01-25 14:36:00');
INSERT INTO `tb_online_training` VALUES (200, '常用的家庭蔬菜种植技术', '<p>常用的家庭蔬菜种植技术</p>', '1', NULL, 'http://202.194.131.202:9000/village-station/家庭蔬菜种植技术20240124184123.mp4', 8, 0, 0, '0,1,2,3,4,5,6,7,8,11,9,10', 'http://202.194.131.202:9000/village-station/微信图片_20240124121630_1706092418798.png', '根用户', '2024-01-24 18:43:37', '', NULL);

-- ----------------------------
-- Table structure for tb_station_information
-- ----------------------------
DROP TABLE IF EXISTS `tb_station_information`;
CREATE TABLE `tb_station_information`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `audit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核标识（1：已审核，0：未审核）',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二级栏目编码',
  `reading` bigint(20) NULL DEFAULT NULL COMMENT '浏览量',
  `collect` bigint(20) NULL DEFAULT NULL COMMENT '收藏量',
  `likes` bigint(20) NULL DEFAULT NULL COMMENT '点赞量',
  `sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驿站id',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 239 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '驿站信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_station_information
-- ----------------------------

-- ----------------------------
-- Table structure for tb_station_introduction
-- ----------------------------
DROP TABLE IF EXISTS `tb_station_introduction`;
CREATE TABLE `tb_station_introduction`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `audit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核标识（1：已审核，0：未审核）',
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驿站标签（用于个性化推荐）',
  `sort` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驿站id',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '驿站介绍' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_station_introduction
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user_station
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_station`;
CREATE TABLE `tb_user_station`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `station_id` bigint(20) NULL DEFAULT NULL COMMENT '驿站ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3939 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-驿站' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_user_station
-- ----------------------------
INSERT INTO `tb_user_station` VALUES (1, 7, 4438);
INSERT INTO `tb_user_station` VALUES (2, 8, 4438);
INSERT INTO `tb_user_station` VALUES (3, 9, 4438);
INSERT INTO `tb_user_station` VALUES (4, 10, 4438);
INSERT INTO `tb_user_station` VALUES (5, 11, 4438);
INSERT INTO `tb_user_station` VALUES (6, 12, 4438);
INSERT INTO `tb_user_station` VALUES (7, 13, 642);
INSERT INTO `tb_user_station` VALUES (8, 14, 643);
INSERT INTO `tb_user_station` VALUES (9, 15, 644);
INSERT INTO `tb_user_station` VALUES (10, 16, 645);
INSERT INTO `tb_user_station` VALUES (11, 17, 646);

SET FOREIGN_KEY_CHECKS = 1;
