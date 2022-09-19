/*
 Navicat Premium Data Transfer

 Source Server         : gsc-tk-cloud
 Source Server Type    : PostgreSQL
 Source Server Version : 140001
 Source Host           : 192.168.91.57:5432
 Source Catalog        : csg_grid
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140001
 File Encoding         : 65001

 Date: 19/08/2022 18:59:39
*/


-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_permission";
CREATE TABLE "public"."sys_permission" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "version" int4 DEFAULT 0,
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "title" varchar(50) COLLATE "pg_catalog"."default",
  "link" varchar(200) COLLATE "pg_catalog"."default",
  "icon" varchar(50) COLLATE "pg_catalog"."default",
  "parent_id" varchar(50) COLLATE "pg_catalog"."default",
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "creation_date" timestamp(6),
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "closable" varchar(1) COLLATE "pg_catalog"."default",
  "hierarchy_id" varchar(255) COLLATE "pg_catalog"."default",
  "is_leaf" varchar(1) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_permission"."code" IS '菜单编码';
COMMENT ON COLUMN "public"."sys_permission"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_permission"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."sys_permission"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."sys_permission"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."sys_permission"."is_leaf" IS '是否叶子节点';
COMMENT ON TABLE "public"."sys_permission" IS '系统权限';

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO "public"."sys_permission" VALUES ('3d82c4b9639b2d9901c02825aefc3e22', 0, 'dashboard', '首页', '/dashboard/Dashboard', NULL, 'mydesk', '0', NULL, NULL, NULL, NULL, '0', '0101', '1');
INSERT INTO "public"."sys_permission" VALUES ('c094d852a938a28b528543c5687467af', 0, 'metero', '二维地图', '/webgis/PowerGis', NULL, 'gis', '0', NULL, NULL, NULL, NULL, NULL, '0201', '1');
INSERT INTO "public"."sys_permission" VALUES ('1bf2c8c97758e22b58a9655f73a47d16', 0, 'Building', '建筑物', '/webgis/Building', NULL, 'gis', '0', NULL, NULL, NULL, NULL, NULL, '0204', '1');
INSERT INTO "public"."sys_permission" VALUES ('08883918e51809500bebb9a973a83044', 0, 'Plant', '飞行轨迹', '/webgis/Plant', NULL, 'gis', '0', NULL, NULL, NULL, NULL, NULL, '0203', '1');
INSERT INTO "public"."sys_permission" VALUES ('29eb031cc7cdf52a4526645859049792', 0, 'three', 'Three三维', '/webgis/Three', NULL, 'gis', '0', NULL, NULL, NULL, NULL, NULL, '0202', '1');
INSERT INTO "public"."sys_permission" VALUES ('7baeb8b5d3f84963923c9a11f37e2d12', 0, 'csg_manager', '电网管理', NULL, 'DeploymentUnitOutlined', NULL, '0', NULL, NULL, NULL, NULL, NULL, '05', '0');
INSERT INTO "public"."sys_permission" VALUES ('a186a38638b240f188db80b62e2d1162', 0, 'total', '统计分析', NULL, 'BarChartOutlined', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0503', '0');
INSERT INTO "public"."sys_permission" VALUES ('b0c23ba12bbc413a92ba2139306ba807', 0, 'csg_bureau', '供电单位', NULL, '', 'csg_manager', '0', NULL, NULL, NULL, NULL, NULL, '0510', '1');
INSERT INTO "public"."sys_permission" VALUES ('6fe8d9c3dc27d27a96d574bc8a63f51e', 0, 'solved', '我已办结', '/admin/demo', NULL, 'mydesk', '1', NULL, NULL, NULL, NULL, NULL, '0130', '1');
INSERT INTO "public"."sys_permission" VALUES ('42ee995240b3988a510d95494eddca42', 0, 'processing', '待我处理', '/dashboard/processing', NULL, 'mydesk', '1', NULL, NULL, NULL, NULL, NULL, '0140', '1');
INSERT INTO "public"."sys_permission" VALUES ('f727b923fb56455e877729b3a877ad09', 0, 'csg_inspection', '智能巡视', NULL, NULL, 'csg_manager', '0', NULL, NULL, NULL, NULL, NULL, '0520', '1');
INSERT INTO "public"."sys_permission" VALUES ('0b3bd62ab1c6478a88fedbf458e500ff', 0, 'csg_viewport', '视点导航', NULL, NULL, 'csg_manager', '0', NULL, NULL, NULL, NULL, NULL, '0550', '1');
INSERT INTO "public"."sys_permission" VALUES ('ee357806018f5d6f12ba05336deb31d6', 0, 'system', '系统管理', NULL, 'SettingOutlined', NULL, '0', NULL, NULL, NULL, NULL, NULL, '99', '0');
INSERT INTO "public"."sys_permission" VALUES ('b77269a3c9494d4f37ba5c66c65f64aa', 0, 'user', '用户管理', '/system/User', NULL, 'system', '0', NULL, NULL, NULL, NULL, NULL, '0301', '1');
INSERT INTO "public"."sys_permission" VALUES ('ea62075d0db003526bc60b0ccf0c8f70', 0, 'menu', '菜单管理', '/system/Menu', NULL, 'system', '0', NULL, NULL, NULL, NULL, NULL, '0302', '1');
INSERT INTO "public"."sys_permission" VALUES ('549435ab24c0df5b9ce8f8a9d5ea51af', 0, 'priv', '权限信息', '/system/Priv', NULL, 'system', '0', NULL, NULL, NULL, NULL, NULL, '0303', '1');
INSERT INTO "public"."sys_permission" VALUES ('7208d339b619d7b478993995081db024', 0, 'mydesk', '我的工作台', NULL, 'DesktopOutlined', NULL, '0', NULL, NULL, NULL, NULL, NULL, '01', '0');
INSERT INTO "public"."sys_permission" VALUES ('1dfc79116e81fe2e61e70289f8c7e0bf', 0, 'gis', 'GIS平台', NULL, 'BorderInnerOutlined', NULL, '0', NULL, NULL, NULL, NULL, NULL, '03', '0');
INSERT INTO "public"."sys_permission" VALUES ('3638f322a97b32eabb0c56048d4f43f0', 0, 'videoDemo', '数字孪生变电站', '/dashboard/Meta', NULL, 'mydesk', '0', NULL, NULL, NULL, NULL, NULL, '0102', '1');

-- ----------------------------
-- Table structure for sys_permission_param
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_permission_param";
CREATE TABLE "public"."sys_permission_param" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "permission_id" varchar(50) COLLATE "pg_catalog"."default",
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "title" varchar(255) COLLATE "pg_catalog"."default",
  "value" varchar(255) COLLATE "pg_catalog"."default",
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "creation_date" timestamp(6),
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "version" int4 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."sys_permission_param"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_permission_param"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."sys_permission_param"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."sys_permission_param"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."sys_permission_param"."version" IS '版本号';

-- ----------------------------
-- Records of sys_permission_param
-- ----------------------------
INSERT INTO "public"."sys_permission_param" VALUES ('1', '3638f322a97b32eabb0c56048d4f43f0', 'cloudurl', 'WDP渲染地址', 'http://192.168.91.57:8889', '0', '1', '2022-08-19 10:39:22', '1', '2022-08-19 10:39:26', 0);
INSERT INTO "public"."sys_permission_param" VALUES ('2', '3638f322a97b32eabb0c56048d4f43f0', 'orderID', 'WDP渲染口令', '474E90Ee', '0', '1', '2022-08-19 10:40:22', '1', '2022-08-19 10:40:24', 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "status" int2 DEFAULT 1,
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "creation_date" timestamp(6),
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "version" int2 DEFAULT 0,
  "description" varchar(50) COLLATE "pg_catalog"."default",
  "type" varchar(60) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_role"."name" IS '名称';
COMMENT ON COLUMN "public"."sys_role"."status" IS '启用状态：0->禁用；1->启用';
COMMENT ON COLUMN "public"."sys_role"."is_deleted" IS '是否删除，0：否，1：是';
COMMENT ON COLUMN "public"."sys_role"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_role"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."sys_role"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."sys_role"."version" IS '版本号';
COMMENT ON COLUMN "public"."sys_role"."description" IS '描述';
COMMENT ON COLUMN "public"."sys_role"."type" IS '角色类型';
COMMENT ON TABLE "public"."sys_role" IS '角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO "public"."sys_role" VALUES ('e1bd888b3c07e0d25ad65ded691a0bbd', 'admin', 1, '0', '2022-08-18 12:00:57.389667', 'admin', NULL, '2022-08-18 14:50:43.551709', 0, '管理员权限', '增删改查');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_permission";
CREATE TABLE "public"."sys_role_permission" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "role_id" varchar(50) COLLATE "pg_catalog"."default",
  "permission_id" varchar(50) COLLATE "pg_catalog"."default" DEFAULT '1'::character varying,
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "creation_date" timestamp(6),
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "version" int2 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."sys_role_permission"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."sys_role_permission"."permission_id" IS '菜单id';
COMMENT ON COLUMN "public"."sys_role_permission"."is_deleted" IS '是否删除，0：否，1：是';
COMMENT ON COLUMN "public"."sys_role_permission"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role_permission"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_role_permission"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."sys_role_permission"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."sys_role_permission"."version" IS '版本号';
COMMENT ON TABLE "public"."sys_role_permission" IS '角色菜单关联表';

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "version" int4 DEFAULT 0,
  "username" varchar(50) COLLATE "pg_catalog"."default",
  "nick_name" varchar(50) COLLATE "pg_catalog"."default",
  "password" varchar(50) COLLATE "pg_catalog"."default",
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "creation_date" timestamp(6),
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "dept_id" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_user"."id" IS '主键';
COMMENT ON COLUMN "public"."sys_user"."version" IS '版本号';
COMMENT ON COLUMN "public"."sys_user"."username" IS '用户名';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '昵称';
COMMENT ON COLUMN "public"."sys_user"."password" IS '口令';
COMMENT ON COLUMN "public"."sys_user"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_user"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."sys_user"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."sys_user"."is_deleted" IS '是否删除';
COMMENT ON TABLE "public"."sys_user" IS '用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO "public"."sys_user" VALUES ('213c04bd7fc2daa84ae56da04640fcd0', 0, '1', 'user1', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('e1dd69039f7c4794b1797b7fc4bef3e5', 0, '17', 'user17', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('dfbc0165f5538dc55b1812e849fa85bd', 0, '18', 'user18', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('0503b2d01cfabb5e1b10d16304f227d3', 0, '95', 'user95', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('7d62c68e2d6122aaa3f7afda03e71c2a', 0, '94', 'user94', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('340e9dfb61510a7e19990f3be9c02f0f', 0, '28', 'user28', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('b985b8545e23104a4303451d85990468', 0, '29', 'user29', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('37db27fc4c4619481d455c39dadc58d9', 0, '30', 'user30', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('5d408367e419ddffae6effa590655ee8', 0, '31', 'user31', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('30faf12505c94249bb9bd5b94c1f2ba5', 0, '32', 'user32', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('40862f20439b7122fa00a4c85a1ae6fc', 0, '33', 'user33', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('bf6b331f74ce4849dd8bf69ed524e66c', 0, '34', 'user34', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('d1680642612d8081416abd2329c8b9bb', 0, '35', 'user35', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('05c17411549303c922bd79b837c79d62', 0, '36', 'user36', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('d40415ab032f609bc8785e613b0c2fff', 0, '37', 'user37', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('0f5537cff288242c78d55060280441a1', 0, '38', 'user38', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('f5529400aec4b1f719dcffb1a814aa71', 0, '39', 'user39', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('e10daaa056346e125935dd94982fba87', 0, '40', 'user40', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('502276949f06f5b626cd6328fce1e765', 0, '41', 'user41', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('6ad989182696b2dc9f1f2476c41af750', 0, '42', 'user42', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('aeff69a5b8f5981704586c803acea0bc', 0, '43', 'user43', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('4cdf85b44fa977a2aecba5e93d57f1cd', 0, '44', 'user44', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('ddab146ccb23a9b55d6f04f59c1dd7c0', 0, '45', 'user45', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('42caa05f7fa873b13f9c90c4d10ae114', 0, '93', 'user93', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('7e318f4cf6a0b104060d4b7f22b58532', 1, '67', 'user67', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', NULL, '2021-11-09 15:53:53.848423', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('2e2822b9a355abc3e67bf6cdd23c0425', 0, '99', 'user99', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('6318a3cc373044241e20c8a3e0b1a405', 0, '96', 'user96', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('56623570a50932610ab2f9e929b5680f', 0, '2', 'user2', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('d22a6a712c249fcc735c228d131338e4', 0, '3', 'user3', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('4a7896b723bd8879466142c0018693fe', 0, '4', 'user4', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('0c6a1f02cca65ea5c5460b746031fea7', 0, '5', 'user5', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('bee5dab47ba4c840ba9118281412e3bd', 0, '6', 'user6', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('de1377ab4f283e1317788c67c4fd4e7b', 0, '19', 'user19', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('9eb4e238fbfa3c1112b3500b6f4b720a', 0, '20', 'user20', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('81c621d4ef1f466ac2676f2936cb4c80', 0, '21', 'user21', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('590abdcc60f5e6bbeb4506b800c6779e', 0, '22', 'user22', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('ef4cc23cbf6449814b9fea2ef481ab7e', 0, '23', 'user23', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('2e661e796be70f7fab1e18644d8a401b', 0, '24', 'user24', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('d06d7b901349a25d830cb1c80718448c', 1, '91', 'user91', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', NULL, '2021-11-09 15:54:03.556346', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('26fa112656764c15daa09b453ce0739c', 1, '80', 'user80', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', NULL, '2021-11-09 16:01:34.546339', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('0919817fc5c6b17da78c48d27ad68630', 0, '92', 'user92', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('5cf2bbc56d295e1f0a2e48fed5863708', 0, '90', 'user90', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('1b2dbb48c682a63f475ab990e48a01c4', 0, '89', 'user89', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('e0c75fa497c1e9cd6b9406e9daecc786', 0, '88', 'user88', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('0204c98da1e2e0af4204e985be8e3ce6', 0, '86', 'user86', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('d8aeb63c124fb192bb2e5cbcc2bcb2ea', 0, '87', 'user87', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('b4182a4eaea5c13e8890f8323984d2ea', 0, '84', 'user84', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('f66c723c8a88e4dd83e8f2267ea7ca6f', 0, '81', 'user81', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('344079276d71d54a11002baf0994c3ae', 0, '82', 'user82', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('a3263843a45801b3e57af28a99d21ec9', 0, '77', 'user77', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('890721ad264df359108da5553cb335a2', 0, '78', 'user78', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('bb450885c671885071a9e66def7e31bb', 0, '79', 'user79', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('222afaa18f2ac2c70aeeb26ebb0f5e6c', 0, '83', 'user83', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('e68d0fe68fa6004899665c69da598913', 0, '85', 'user85', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('366cdaaaa9424c3623a8043991da0bb7', 0, '11', 'user11', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('ad22b4bce5e129a05bad00b0fca45635', 0, '56', 'user56', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('3b1e256beb3803eb860281d9e90f9219', 0, '57', 'user57', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('397b4d11efbf6c84ad39d87e88c8ed9d', 0, '58', 'user58', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('74ac4c09c6ff1dae89e5f848bb5f19aa', 0, '59', 'user59', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('993c1dfdc2388c7778af9c8ddcb6c1fd', 0, '12', 'user12', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('cbdcaaac9fd77c878392ffa05a3488fb', 0, '75', 'user75', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('c58850fb2f23bfdadc0183394407056b', 0, '76', 'user76', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('4649e421d3bab048b1c0f4bbfb586d67', 0, '13', 'user13', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('910ff673d5d554031a18b214a1a281c6', 0, '14', 'user14', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('b9a5223b006e623c5cb161da217bd066', 0, '15', 'user15', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('532b722a14e751330a83e91f1be9f717', 0, '25', 'user25', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('d5c9a414d861242951232b14c882ad48', 0, '26', 'user26', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('c86726d208df3a6825f0359d4493de50', 0, '27', 'user27', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('0b8eac847b04cc197383378159543de6', 1, '70', 'user70', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', NULL, '2021-11-09 16:02:52.518351', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('bd9128a3724705cb0fb25e31c9311fc6', 6, '71', 'user71', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', NULL, '2021-11-10 16:08:50.644294', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('f8ef1594217ada228f4f85459f149a4e', 0, '66', 'user66', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('1460bd48783e2373a88b11368933571f', 0, '68', 'user68', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('c295810182876ec5531087359f167d2e', 0, '69', 'user69', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('2ecd93d94cb72f26626891caa926df38', 0, '72', 'user72', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('4ea8e20e646fd7217c5ae186f54d7bfc', 0, '73', 'user73', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('05c790ec0d009514fc2ac32a0183e06c', 0, '74', 'user74', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('f87961ec258b4bf61ae6f0bfaab0d214', 0, '16', 'user16', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('93197cb0af876514f0175d1ffd929968', 0, '46', 'user46', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('f5ac87fc360f58120573ba287645a5be', 0, '47', 'user47', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('232769ad05e75a80b34cf1322f4966c9', 0, '48', 'user48', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('21ebc296b9e21e7fb7eb05585c951bf6', 0, '49', 'user49', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('e7e53ea4d911356f33bc158d608908f8', 0, '50', 'user50', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('7965aa69664ac343f2772a162aa4f634', 0, '51', 'user51', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('eec4d09285a5575e3181bcbb2d2cec2f', 0, '52', 'user52', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('fee4840aaa6cd4e008d68f068c69e09f', 0, '53', 'user53', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('b3737b83355b0405891269c0ac305c08', 0, '54', 'user54', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('e89e2d376bda3c9e119016af22b6cc3c', 0, '55', 'user55', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('6f9a5bf18c06a0130619354ee22dbeca', 0, '7', 'user7', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('604939c59cf565657f0e120f6b9f3bc1', 0, '8', 'user8', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('d0adba0682e39be867faa3384afd27cd', 0, '10', 'user10', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('d19e7fd8735d11934fbcf30ccb89107c', 0, '62', 'user62', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('12bc7b2d0fcfd2cbd18e4c000b45c868', 0, '64', 'user64', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('e4a7b617b6f6aa5dabd508c1b0507045', 0, '65', 'user65', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('f6758260ed6f354343bea25e786eb087', 0, '63', 'user63', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('449719afb5011f0cf4dc048c683bb7ae', 0, '61', 'user61', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('4f15380e2fdc0b3449144ad488e4166c', 0, '60', 'user60', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('172b1a8582d8ac611a50fd6c19c4b9e7', 0, '9', 'user9', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', '1', '2021-09-10 11:05:40', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('506969558bdadf9c83f49dc33ebd927f', 2, '97', 'user97', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', NULL, '2022-01-14 17:09:25.883036', '0', NULL);
INSERT INTO "public"."sys_user" VALUES ('e12dc4141c1811ec96810a80ff2603de', 23, 'admin', '管理员', 'c4ca4238a0b923820dcc509a6f75849b', '1', '2021-09-10 11:05:40', NULL, '2022-03-09 11:41:12.227876', '0', NULL);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "role_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT '1'::character varying,
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "creation_date" timestamp(6),
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "version" int2 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."sys_user_role"."is_deleted" IS '是否删除，0：否，1：是';
COMMENT ON COLUMN "public"."sys_user_role"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user_role"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."sys_user_role"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."sys_user_role"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."sys_user_role"."version" IS '版本号';
COMMENT ON TABLE "public"."sys_user_role" IS '用户角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO "public"."sys_user_role" VALUES ('fe7f3a2a80cd5b76ae8a72f71aa7e13f', 'e1bd888b3c07e0d25ad65ded691a0bbd', 'e12dc4141c1811ec96810a80ff2603de', '0', '2022-08-18 17:17:53.112077', 'admin', 'admin', '2022-08-18 17:17:53.119059', 0);

-- ----------------------------
-- Table structure for tgc_assets
-- ----------------------------
DROP TABLE IF EXISTS "public"."tgc_assets";
CREATE TABLE "public"."tgc_assets" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "source_code" varchar(50) COLLATE "pg_catalog"."default",
  "grid_level" int2,
  "grid_code" varchar(50) COLLATE "pg_catalog"."default",
  "lat" numeric(10,5),
  "lng" numeric(10,5),
  "creation_date" timestamp(6),
  "last_update_date" timestamp(6),
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "version" int2 DEFAULT 0,
  "length" numeric(7,1),
  "width" numeric(7,1),
  "height" numeric(7,1),
  "record_id" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."tgc_assets"."name" IS '名称';
COMMENT ON COLUMN "public"."tgc_assets"."source_code" IS '资产编码';
COMMENT ON COLUMN "public"."tgc_assets"."grid_level" IS '网格级别';
COMMENT ON COLUMN "public"."tgc_assets"."grid_code" IS '网格编码';
COMMENT ON COLUMN "public"."tgc_assets"."lat" IS '纬度';
COMMENT ON COLUMN "public"."tgc_assets"."lng" IS '经度';
COMMENT ON COLUMN "public"."tgc_assets"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."tgc_assets"."last_update_date" IS '更新时间';
COMMENT ON COLUMN "public"."tgc_assets"."is_deleted" IS '是否删除，0：未删除，1：删除';
COMMENT ON COLUMN "public"."tgc_assets"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."tgc_assets"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."tgc_assets"."version" IS '版本号';
COMMENT ON COLUMN "public"."tgc_assets"."length" IS '长';
COMMENT ON COLUMN "public"."tgc_assets"."width" IS '宽';
COMMENT ON COLUMN "public"."tgc_assets"."height" IS '高';
COMMENT ON COLUMN "public"."tgc_assets"."record_id" IS '导入记录id';
COMMENT ON TABLE "public"."tgc_assets" IS '资产表，bim数据编码';

-- ----------------------------
-- Records of tgc_assets
-- ----------------------------
INSERT INTO "public"."tgc_assets" VALUES ('1559790448829120513', '变电站', 'Abc123456', 3, NULL, 555.44440, NULL, '2022-08-17 14:33:17.167086', '2022-08-17 14:50:49.999294', '1', 'admin', NULL, 0, NULL, NULL, NULL, NULL);
INSERT INTO "public"."tgc_assets" VALUES ('b4e6bf4c45664281bddc121f8427bd8a', '2-3(2_3) - Cloud', '', 3, 'N49FA5075', 22.58597, 113.12669, '2022-08-18 16:00:07.014043', '2022-08-18 16:00:07.015053', '0', 'admin', 'admin', 0, 82530.0, 258000.0, 75420.0, 'e3104726a4ee48649635e3e46baa0b0a');
INSERT INTO "public"."tgc_assets" VALUES ('7ab2badab3784b20be940584b42b40cb', '2-3(2_3) - Cloud', '', 3, 'N49FA5075', 22.58597, 113.12669, '2022-08-18 16:05:11.706755', '2022-08-18 16:05:11.707754', '0', 'admin', 'admin', 0, 82530.0, 258000.0, 75420.0, '923c9688e6174f89981605fa1f356737');
INSERT INTO "public"."tgc_assets" VALUES ('0d1202dfb9dc461fa6f325526d77b3d2', '2-3(2_3) - Cloud', '', 3, 'N49FA5075', 22.58597, 113.12669, '2022-08-18 16:05:54.403946', '2022-08-18 16:05:54.403946', '0', 'admin', 'admin', 0, 82530.0, 258000.0, 75420.0, 'a7ba80f3485249bda30f51240589bf7c');
INSERT INTO "public"."tgc_assets" VALUES ('512dce4c3150485395f477918f8fc11c', '2-3(2_3) - Cloud', '', 3, 'N49FA5075', 22.58597, 113.12669, '2022-08-19 12:11:51.858887', '2022-08-19 12:11:51.860429', '0', 'admin', 'admin', 0, 82530.0, 258000.0, 75420.0, 'c226cd96835a445e92eebb05735759d0');
INSERT INTO "public"."tgc_assets" VALUES ('5d74a6af596847d2b196784e514f158e', '2-3(2_3) - Cloud', '', 3, 'N49FA5075', 22.58597, 113.12669, '2022-08-19 14:39:34.63886', '2022-08-19 14:39:34.640487', '0', 'admin', 'admin', 0, 82530.0, 258000.0, 75420.0, 'c4063e10f1f84aca878eaaf6344c08ab');

-- ----------------------------
-- Table structure for tgc_assets_category_level
-- ----------------------------
DROP TABLE IF EXISTS "public"."tgc_assets_category_level";
CREATE TABLE "public"."tgc_assets_category_level" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "level" int2,
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "creation_date" timestamp(6),
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "version" int2 DEFAULT 0
)
;
COMMENT ON COLUMN "public"."tgc_assets_category_level"."name" IS '名称';
COMMENT ON COLUMN "public"."tgc_assets_category_level"."level" IS '网格码等级';
COMMENT ON COLUMN "public"."tgc_assets_category_level"."is_deleted" IS '是否删除，0：否，1：是';
COMMENT ON COLUMN "public"."tgc_assets_category_level"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."tgc_assets_category_level"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."tgc_assets_category_level"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."tgc_assets_category_level"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."tgc_assets_category_level"."version" IS '版本号';
COMMENT ON TABLE "public"."tgc_assets_category_level" IS '资产类别等级，按资产的名称指定网格码等级导入';

-- ----------------------------
-- Records of tgc_assets_category_level
-- ----------------------------
INSERT INTO "public"."tgc_assets_category_level" VALUES ('1559098748863369218', 'transformer', 3, '0', '2022-08-15 16:44:43.045549', 'admin', NULL, '2022-08-17 17:05:49.939148', 0);
INSERT INTO "public"."tgc_assets_category_level" VALUES ('e75190888c0f73d0ee38b3f2d66e837c', 'cable', 5, '0', '2022-08-18 16:43:56.118426', 'admin', 'admin', '2022-08-18 16:43:56.128811', 0);

-- ----------------------------
-- Table structure for tgc_assets_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."tgc_assets_history";
CREATE TABLE "public"."tgc_assets_history" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "asset_id" varchar(50) COLLATE "pg_catalog"."default",
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "source_code" varchar(50) COLLATE "pg_catalog"."default",
  "grid_code" varchar(50) COLLATE "pg_catalog"."default",
  "grid_level" int2,
  "lng" numeric(5,5),
  "lat" numeric(5,5),
  "creation_date" timestamp(6),
  "remard" varchar(100) COLLATE "pg_catalog"."default",
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "version" int2 DEFAULT 0,
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."tgc_assets_history"."asset_id" IS '资产id';
COMMENT ON COLUMN "public"."tgc_assets_history"."name" IS '名称';
COMMENT ON COLUMN "public"."tgc_assets_history"."source_code" IS '资产编码';
COMMENT ON COLUMN "public"."tgc_assets_history"."grid_code" IS '网格编码';
COMMENT ON COLUMN "public"."tgc_assets_history"."grid_level" IS '网格级别';
COMMENT ON COLUMN "public"."tgc_assets_history"."lng" IS '经度';
COMMENT ON COLUMN "public"."tgc_assets_history"."lat" IS '纬度';
COMMENT ON COLUMN "public"."tgc_assets_history"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."tgc_assets_history"."remard" IS '备注';
COMMENT ON COLUMN "public"."tgc_assets_history"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."tgc_assets_history"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."tgc_assets_history"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."tgc_assets_history"."version" IS '版本号';
COMMENT ON COLUMN "public"."tgc_assets_history"."is_deleted" IS '是否删除';
COMMENT ON TABLE "public"."tgc_assets_history" IS '资产变更历史记录';

-- ----------------------------
-- Records of tgc_assets_history
-- ----------------------------

-- ----------------------------
-- Table structure for tgc_cable
-- ----------------------------
DROP TABLE IF EXISTS "public"."tgc_cable";
CREATE TABLE "public"."tgc_cable" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default",
  "level" int2,
  "creation_date" timestamp(6),
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "version" int2 DEFAULT 0,
  "record_id" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."tgc_cable"."name" IS '名称';
COMMENT ON COLUMN "public"."tgc_cable"."level" IS '网格等级';
COMMENT ON COLUMN "public"."tgc_cable"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."tgc_cable"."is_deleted" IS '是否删除，0：否，1：是';
COMMENT ON COLUMN "public"."tgc_cable"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."tgc_cable"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."tgc_cable"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."tgc_cable"."version" IS '版本号';
COMMENT ON TABLE "public"."tgc_cable" IS '电缆总表';

-- ----------------------------
-- Records of tgc_cable
-- ----------------------------
INSERT INTO "public"."tgc_cable" VALUES ('f07c2eccbe4649588fceef88bc4910b8', NULL, 5, '2022-08-18 17:13:39.377914', '0', 'admin', 'admin', '2022-08-18 17:13:39.377914', 0, '0525e894daad4936b689c72d8358dd6e');

-- ----------------------------
-- Table structure for tgc_cable_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."tgc_cable_detail";
CREATE TABLE "public"."tgc_cable_detail" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "lng" numeric(10,5),
  "lat" numeric(10,5),
  "grid_code" varchar(50) COLLATE "pg_catalog"."default",
  "cable_id" varchar(50) COLLATE "pg_catalog"."default",
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "version" int2 DEFAULT 0,
  "creation_date" timestamp(6),
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "x" numeric(10,1),
  "y" numeric(10,1),
  "z" numeric(10,1)
)
;
COMMENT ON COLUMN "public"."tgc_cable_detail"."lng" IS '经度';
COMMENT ON COLUMN "public"."tgc_cable_detail"."lat" IS '纬度';
COMMENT ON COLUMN "public"."tgc_cable_detail"."grid_code" IS '网格编码';
COMMENT ON COLUMN "public"."tgc_cable_detail"."cable_id" IS '电缆id';
COMMENT ON COLUMN "public"."tgc_cable_detail"."is_deleted" IS '是否删除，0：否，1：是';
COMMENT ON COLUMN "public"."tgc_cable_detail"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."tgc_cable_detail"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."tgc_cable_detail"."version" IS '版本号';
COMMENT ON COLUMN "public"."tgc_cable_detail"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."tgc_cable_detail"."created_by" IS '创建者';
COMMENT ON TABLE "public"."tgc_cable_detail" IS '电缆网格详情';

-- ----------------------------
-- Records of tgc_cable_detail
-- ----------------------------
INSERT INTO "public"."tgc_cable_detail" VALUES ('1a67e1ab6b984b31a99a41e7260801be', 113.12667, 22.58544, 'N49FA507591', 'f07c2eccbe4649588fceef88bc4910b8', '0', '2022-08-18 17:13:39.382918', 'admin', 0, '2022-08-18 17:13:39.382918', 'admin', 7186403.0, 24991884.0, 471.1);
INSERT INTO "public"."tgc_cable_detail" VALUES ('c8251cd1013e4c7ba329e7631233b311', 113.12667, 22.58593, 'N49FA507592', 'f07c2eccbe4649588fceef88bc4910b8', '0', '2022-08-18 17:13:39.385951', 'admin', 0, '2022-08-18 17:13:39.385951', 'admin', 7186394.5, 24992422.0, 529.0);
INSERT INTO "public"."tgc_cable_detail" VALUES ('211542b844cb4ce887d82c441c7a2213', 113.12659, 22.58554, 'N49FA507581', 'f07c2eccbe4649588fceef88bc4910b8', '0', '2022-08-18 17:13:39.388342', 'admin', 0, '2022-08-18 17:13:39.387254', 'admin', 7186322.0, 24991984.0, 524.5);
INSERT INTO "public"."tgc_cable_detail" VALUES ('89d71b99a12f4e0bbca54bcdb1901137', 113.12653, 22.58588, 'N49FA507582', 'f07c2eccbe4649588fceef88bc4910b8', '0', '2022-08-18 17:13:39.38939', 'admin', 0, '2022-08-18 17:13:39.38939', 'admin', 7186252.0, 24992364.0, 608.6);

-- ----------------------------
-- Table structure for tgc_import_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."tgc_import_record";
CREATE TABLE "public"."tgc_import_record" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2,
  "description" varchar(100) COLLATE "pg_catalog"."default",
  "creation_date" timestamp(6),
  "is_deleted" varchar(1) COLLATE "pg_catalog"."default",
  "created_by" varchar(50) COLLATE "pg_catalog"."default",
  "version" int2 DEFAULT 0,
  "last_updated_by" varchar(50) COLLATE "pg_catalog"."default",
  "last_update_date" timestamp(6),
  "file_name" varchar(50) COLLATE "pg_catalog"."default",
  "nums" int8
)
;
COMMENT ON COLUMN "public"."tgc_import_record"."type" IS '1: 资产，2： 电缆';
COMMENT ON COLUMN "public"."tgc_import_record"."description" IS '描述';
COMMENT ON COLUMN "public"."tgc_import_record"."creation_date" IS '创建时间';
COMMENT ON COLUMN "public"."tgc_import_record"."is_deleted" IS '是否删除，0：否，1 是';
COMMENT ON COLUMN "public"."tgc_import_record"."created_by" IS '创建者';
COMMENT ON COLUMN "public"."tgc_import_record"."version" IS '版本号';
COMMENT ON COLUMN "public"."tgc_import_record"."last_updated_by" IS '最后更新者';
COMMENT ON COLUMN "public"."tgc_import_record"."last_update_date" IS '最后更新时间';
COMMENT ON COLUMN "public"."tgc_import_record"."file_name" IS '文件名';
COMMENT ON COLUMN "public"."tgc_import_record"."nums" IS '导入成功条数';
COMMENT ON TABLE "public"."tgc_import_record" IS '导入记录';

-- ----------------------------
-- Records of tgc_import_record
-- ----------------------------
INSERT INTO "public"."tgc_import_record" VALUES ('e3104726a4ee48649635e3e46baa0b0a', 2, NULL, '2022-08-18 16:00:07.026738', '0', 'admin', 0, 'admin', '2022-08-18 16:00:07.026738', '', 1);
INSERT INTO "public"."tgc_import_record" VALUES ('923c9688e6174f89981605fa1f356737', 2, NULL, '2022-08-18 16:05:11.712676', '0', 'admin', 0, 'admin', '2022-08-18 16:05:11.712676', '', 1);
INSERT INTO "public"."tgc_import_record" VALUES ('a7ba80f3485249bda30f51240589bf7c', 2, NULL, '2022-08-18 16:05:54.406947', '0', 'admin', 0, 'admin', '2022-08-18 16:05:54.406947', '', 1);
INSERT INTO "public"."tgc_import_record" VALUES ('0525e894daad4936b689c72d8358dd6e', 2, NULL, '2022-08-18 17:13:39.398285', '0', 'admin', 0, 'admin', '2022-08-18 17:13:39.398285', '', 4);
INSERT INTO "public"."tgc_import_record" VALUES ('c226cd96835a445e92eebb05735759d0', 1, NULL, '2022-08-19 12:11:51.873536', '0', 'admin', 0, 'admin', '2022-08-19 12:11:51.873536', '', 1);
INSERT INTO "public"."tgc_import_record" VALUES ('aac417919d514476b96d890bb1d3a423', 1, NULL, '2022-08-19 14:33:07.081455', '0', 'admin', 0, 'admin', '2022-08-19 14:33:07.081455', '', 1);
INSERT INTO "public"."tgc_import_record" VALUES ('c4063e10f1f84aca878eaaf6344c08ab', 1, NULL, '2022-08-19 14:39:34.652694', '0', 'admin', 0, 'admin', '2022-08-19 14:39:34.652761', '', 1);

-- ----------------------------
-- Table structure for tgc_related_assets_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."tgc_related_assets_category";
CREATE TABLE "public"."tgc_related_assets_category" (
  "id" varchar(50) COLLATE "pg_catalog"."default",
  "asset_category_id" varchar(50) COLLATE "pg_catalog"."default",
  "object_id" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."tgc_related_assets_category"."asset_category_id" IS '操作记录id';
COMMENT ON COLUMN "public"."tgc_related_assets_category"."object_id" IS '设备或者电缆id';
COMMENT ON TABLE "public"."tgc_related_assets_category" IS '网格码等级关联';

-- ----------------------------
-- Records of tgc_related_assets_category
-- ----------------------------
INSERT INTO "public"."tgc_related_assets_category" VALUES ('254e7565a12643bda467c101f81da59d', '1559098748863369218', 'b4e6bf4c45664281bddc121f8427bd8a');
INSERT INTO "public"."tgc_related_assets_category" VALUES ('97cdeefb1ba84ae9aac7b8943742cd74', '1559098748863369218', '7ab2badab3784b20be940584b42b40cb');
INSERT INTO "public"."tgc_related_assets_category" VALUES ('d04a919fa9064916a91ddc8a8d7e6b97', '1559098748863369218', '0d1202dfb9dc461fa6f325526d77b3d2');
INSERT INTO "public"."tgc_related_assets_category" VALUES ('3dc9b02eb5664efaaef404877fb44e0c', 'e75190888c0f73d0ee38b3f2d66e837c', 'f07c2eccbe4649588fceef88bc4910b8');
INSERT INTO "public"."tgc_related_assets_category" VALUES ('a8fdeb8f1f344fe9a799509404a292c7', '1559098748863369218', '512dce4c3150485395f477918f8fc11c');
INSERT INTO "public"."tgc_related_assets_category" VALUES ('d497197d6c874627aa5dc8a7214a6e47', NULL, '6c34eb03ee0b4113b5c1554b12c24bfb');
INSERT INTO "public"."tgc_related_assets_category" VALUES ('89a2094581644151ace8ed7842d49c07', '1559098748863369218', '5d74a6af596847d2b196784e514f158e');

-- ----------------------------
-- Primary Key structure for table sys_permission
-- ----------------------------
ALTER TABLE "public"."sys_permission" ADD CONSTRAINT "pk_sys_permission" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_permission_param
-- ----------------------------
ALTER TABLE "public"."sys_permission_param" ADD CONSTRAINT "sys_permission_param_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "pk_sys_role" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_role_permission
-- ----------------------------
ALTER TABLE "public"."sys_role_permission" ADD CONSTRAINT "pk_sys_role_permission" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "pk_sys_user" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "sys_user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tgc_assets
-- ----------------------------
ALTER TABLE "public"."tgc_assets" ADD CONSTRAINT "pk_tgc_assets" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tgc_assets_category_level
-- ----------------------------
ALTER TABLE "public"."tgc_assets_category_level" ADD CONSTRAINT "pk_tgc_assets_category_level" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tgc_assets_history
-- ----------------------------
ALTER TABLE "public"."tgc_assets_history" ADD CONSTRAINT "pk_tgc_assets_history" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tgc_cable
-- ----------------------------
ALTER TABLE "public"."tgc_cable" ADD CONSTRAINT "pk_tgc_cable" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tgc_cable_detail
-- ----------------------------
ALTER TABLE "public"."tgc_cable_detail" ADD CONSTRAINT "pk_tgc_cable_detail" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tgc_import_record
-- ----------------------------
ALTER TABLE "public"."tgc_import_record" ADD CONSTRAINT "pk_tgc_import_record" PRIMARY KEY ("id");
