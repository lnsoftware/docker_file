/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : privilege

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-07-22 17:38:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for p_department
-- ----------------------------
DROP TABLE IF EXISTS `p_department`;
CREATE TABLE `p_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'UUID主键',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '部门名称',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '部门描述',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `structure` varchar(20) NOT NULL DEFAULT '' COMMENT '部门的层级结构',
  `sort_no` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `create_person` varchar(30) NOT NULL DEFAULT '' COMMENT '记录生成人',
  `create_date` datetime NOT NULL COMMENT '记录生成时间',
  `update_person` varchar(30) NOT NULL DEFAULT '' COMMENT '最后更新人',
  `update_date` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of p_department
-- ----------------------------
INSERT INTO `p_department` VALUES ('1', '创力电子商务', '', '0', 's-1', '1', 'system', '2013-10-21 01:04:50', 'root', '2013-10-23 01:03:39');
INSERT INTO `p_department` VALUES ('2', '商品中心', '', '1', 's-1-1', '2', 'root', '2013-10-23 00:55:56', 'root', '2013-10-23 01:05:13');
INSERT INTO `p_department` VALUES ('3', '技术中心', '', '1', 's-1-2', '3', 'root', '2013-10-23 00:56:10', 'root', '2013-10-23 01:06:18');
INSERT INTO `p_department` VALUES ('4', '管理中心', '', '1', 's-1-3', '1', 'root', '2013-10-23 00:56:22', 'root', '2013-10-23 01:04:10');
INSERT INTO `p_department` VALUES ('5', '总裁办', '', '4', 's-1-3-1', '1', 'root', '2013-10-23 00:56:41', 'root', '2013-10-23 01:04:23');
INSERT INTO `p_department` VALUES ('6', '财务部', '', '4', 's-1-3-2', '2', 'root', '2013-10-23 01:03:56', 'root', '2013-10-23 01:04:32');
INSERT INTO `p_department` VALUES ('7', '人力资源部', '', '4', 's-1-3-3', '3', 'root', '2013-10-23 01:04:51', 'root', '2013-10-23 01:04:51');
INSERT INTO `p_department` VALUES ('8', '开发组', '', '3', 's-1-2-1', '1', 'root', '2013-10-23 01:06:02', 'root', '2013-10-23 01:06:57');
INSERT INTO `p_department` VALUES ('9', '测试组', '', '3', 's-1-2-2', '2', 'root', '2013-10-23 01:06:34', 'root', '2013-10-23 01:07:04');
INSERT INTO `p_department` VALUES ('10', '运维组', '', '3', 's-1-2-3', '3', 'root', '2013-10-23 01:07:12', 'root', '2013-10-23 01:07:12');
INSERT INTO `p_department` VALUES ('11', '视觉形象部', '', '2', 's-1-1-3', '3', 'root', '2013-10-23 01:05:47', 'root', '2013-10-23 01:05:47');
INSERT INTO `p_department` VALUES ('12', '女装部', '', '11', 's-1-1-1', '1', 'root', '2013-10-23 01:05:23', 'root', '2013-10-23 01:05:23');
INSERT INTO `p_department` VALUES ('13', '男装部', '', '11', 's-1-1-2', '2', 'root', '2013-10-23 01:05:32', 'root', '2013-10-23 01:05:32');

-- ----------------------------
-- Table structure for p_module
-- ----------------------------
DROP TABLE IF EXISTS `p_module`;
CREATE TABLE `p_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '系统模块名称',
  `flag` varchar(20) NOT NULL DEFAULT '' COMMENT '系统模块标记',
  `url` varchar(300) NOT NULL DEFAULT '' COMMENT '系统访问URL',
  `sort_no` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `create_person` varchar(30) NOT NULL DEFAULT '' COMMENT '记录生成人',
  `create_date` datetime NOT NULL COMMENT '记录生成时间',
  `update_person` varchar(30) NOT NULL DEFAULT '' COMMENT '最后更新人',
  `update_date` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统模块表';

-- ----------------------------
-- Records of p_module
-- ----------------------------
INSERT INTO `p_module` VALUES ('1', '配置中心', 'p', 'http://127.0.0.1:8080/privilege-server', '10', 'system', '2016-07-20 11:22:29', 'system', '2016-07-20 11:22:29');

-- ----------------------------
-- Table structure for p_resource
-- ----------------------------
DROP TABLE IF EXISTS `p_resource`;
CREATE TABLE `p_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单资源名称',
  `url` varchar(300) NOT NULL DEFAULT '' COMMENT '菜单资源URL',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '菜单资源简要描述',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级id',
  `structure` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单的层级结构',
  `sort_no` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `module_flag` varchar(20) NOT NULL DEFAULT '' COMMENT '所属系统模块的标记',
  `create_person` varchar(30) NOT NULL DEFAULT '' COMMENT '记录生成人',
  `create_date` datetime NOT NULL COMMENT '记录生成时间',
  `update_person` varchar(30) NOT NULL DEFAULT '' COMMENT '最后更新人',
  `update_date` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_structure` (`structure`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限资源表';

-- ----------------------------
-- Records of p_resource
-- ----------------------------
INSERT INTO `p_resource` VALUES ('1', '部门管理', '/controller/department/list.do', '', '0', 's-1', '1', 'p', 'system', '2016-07-20 11:22:29', 'system', '2016-07-20 11:22:29');
INSERT INTO `p_resource` VALUES ('2', '权限管理', '/controller/resource/list.do', '', '0', 's-2', '2', 'p', 'system', '2016-07-20 11:22:29', 'system', '2016-07-20 11:22:29');
INSERT INTO `p_resource` VALUES ('3', '角色管理', '/controller/role/list.do', '', '0', 's-3', '3', 'p', 'system', '2016-07-20 11:22:29', 'system', '2016-07-20 11:22:29');
INSERT INTO `p_resource` VALUES ('4', '帐户管理', '/controller/user/list.do', '', '0', 's-4', '4', 'p', 'system', '2016-07-20 11:22:29', 'system', '2016-07-20 11:22:29');

-- ----------------------------
-- Table structure for p_role
-- ----------------------------
DROP TABLE IF EXISTS `p_role`;
CREATE TABLE `p_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'UUID主键',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '角色描述',
  `create_person` varchar(30) NOT NULL DEFAULT '' COMMENT '记录生成人',
  `create_date` datetime NOT NULL COMMENT '记录生成时间',
  `update_person` varchar(30) NOT NULL DEFAULT '' COMMENT '最后更新人',
  `update_date` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of p_role
-- ----------------------------
INSERT INTO `p_role` VALUES ('1', '物流总监', '物流总监', 'root', '2013-10-23 01:08:24', 'root', '2013-10-23 01:08:43');
INSERT INTO `p_role` VALUES ('2', '客服总监', '客服总监', 'root', '2013-10-23 01:08:32', 'root', '2013-10-23 01:08:38');
INSERT INTO `p_role` VALUES ('3', '运营总监', '运营总监', 'root', '2013-10-21 01:05:31', 'root', '2013-10-21 01:05:34');

-- ----------------------------
-- Table structure for p_role_module
-- ----------------------------
DROP TABLE IF EXISTS `p_role_module`;
CREATE TABLE `p_role_module` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `module_id` int(11) NOT NULL COMMENT '模块ID',
  KEY `idx_role_id` (`role_id`) USING BTREE,
  KEY `idx_module_id` (`module_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色系统模块关系表';

-- ----------------------------
-- Records of p_role_module
-- ----------------------------
INSERT INTO `p_role_module` VALUES ('1', '1');
INSERT INTO `p_role_module` VALUES ('2', '1');

-- ----------------------------
-- Table structure for p_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `p_role_resource`;
CREATE TABLE `p_role_resource` (
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `resource_id` int(11) NOT NULL COMMENT '资源ID',
  KEY `idx_role_id` (`role_id`) USING BTREE,
  KEY `idx_resource_id` (`resource_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限资源关系表';

-- ----------------------------
-- Records of p_role_resource
-- ----------------------------
INSERT INTO `p_role_resource` VALUES ('1', '1');
INSERT INTO `p_role_resource` VALUES ('1', '1');
INSERT INTO `p_role_resource` VALUES ('1', '1');
INSERT INTO `p_role_resource` VALUES ('2', '2');
INSERT INTO `p_role_resource` VALUES ('2', '2');
INSERT INTO `p_role_resource` VALUES ('2', '2');

-- ----------------------------
-- Table structure for p_user
-- ----------------------------
DROP TABLE IF EXISTS `p_user`;
CREATE TABLE `p_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'UUID主键',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '登录用户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '登录密码',
  `fullname` varchar(30) NOT NULL DEFAULT '' COMMENT '姓名',
  `gender` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别：1男0女',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否管理员：1是0否',
  `department_id` int(11) NOT NULL DEFAULT '0' COMMENT '外键，所属部门Id',
  `is_lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否锁定：1是0否',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：1是0否',
  `create_person` varchar(30) NOT NULL DEFAULT '' COMMENT '记录生成人',
  `create_date` datetime NOT NULL COMMENT '记录生成时间',
  `update_person` varchar(30) NOT NULL DEFAULT '' COMMENT '最后更新人',
  `update_date` datetime NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of p_user
-- ----------------------------
INSERT INTO `p_user` VALUES ('1', 'root', '63a9f0ea7bb98050796b649e85481845', '管理员', '1', '1', '0', '1', '0', 'system', '2013-10-21 01:04:49', 'system', '2013-10-21 01:04:49');
INSERT INTO `p_user` VALUES ('2', 'cl', '63a9f0ea7bb98050796b649e85481845', '创力电子商务', '1', '0', '1', '2', '0', 'root', '2013-10-23 01:09:30', 'root', '2013-10-23 01:09:30');
INSERT INTO `p_user` VALUES ('3', 'test', '63a9f0ea7bb98050796b649e85481845', '创力测试', '1', '0', '2', '3', '1', 'root', '2013-10-21 01:06:08', 'root', '2013-10-21 01:06:08');

-- ----------------------------
-- Table structure for p_user_role
-- ----------------------------
DROP TABLE IF EXISTS `p_user_role`;
CREATE TABLE `p_user_role` (
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  KEY `idx_user_id` (`user_id`) USING BTREE,
  KEY `idx_role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';

-- ----------------------------
-- Records of p_user_role
-- ----------------------------
INSERT INTO `p_user_role` VALUES ('2', '1');
