# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 9 COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 57 COMMENT = '常量表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE = InnoDB COMMENT = '文件表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _file
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 COMMENT = '群组表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _group
# ------------------------------------------------------------

INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminGroup','权限组',NULL,NULL,'{}','insert',NULL,NULL,NULL);
INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'wudang','武当','武当',NULL,'{}','insert',NULL,NULL,NULL);
INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'gaibang','丐帮','丐帮',NULL,'{}','insert',NULL,NULL,NULL);
INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'huashan','华山派','华山派',NULL,'{}','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 22 COMMENT = '页面表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','帮助','',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','登陆','',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'manual','操作手册','showInMenu','0','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'classManagement','班级页面','showInMenu','5','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'studentManagement','学生页面','showInMenu','5','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'studentManagementOfOneClass','班级的学生管理','dynamicInMenu','5','jhInsert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'classManagementOfOneStudent','学生的班级管理','dynamicInMenu','5','jhInsert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text NOT NULL COMMENT '数据JSON',
  `packageContent` text NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `index_record_id` (`recordId`),
  KEY `index_table_action` (`table`, `operation`)
) ENGINE = InnoDB AUTO_INCREMENT = 112 COMMENT = '数据历史表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` json DEFAULT NULL COMMENT 'appData 参数校验',
  `resourceData` json DEFAULT NULL COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` json DEFAULT NULL COMMENT '请求Demo',
  `responseDemo` json DEFAULT NULL COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 320 COMMENT = '请求资源表;  resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,NULL,NULL,'login','passwordLogin','✅登陆','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"passwordLogin\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"login\", \"actionId\": \"passwordLogin\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"userId\": \"W00001\", \"deviceId\": \"127.0.0.1:7002_Windows.10.0_950bfea7_chrome\", \"password\": \"123456\"}}, \"packageId\": \"1651045486415_7030172\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"login\", \"userId\": \"W00001\", \"actionId\": \"passwordLogin\", \"deviceId\": \"127.0.0.1:7002_Windows.10.0_950bfea7_chrome\", \"authToken\": \"kFncCaOiC0uhmPk8Cw_V8NW6Lhj2jphWDKRF\", \"resultData\": {\"userId\": \"W00001\", \"deviceId\": \"127.0.0.1:7002_Windows.10.0_950bfea7_chrome\", \"authToken\": \"kFncCaOiC0uhmPk8Cw_V8NW6Lhj2jphWDKRF\"}}, \"packageId\": \"1651045486415_7030172\", \"timestamp\": \"2022-04-27T15:44:47+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-27T15:44:47+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,NULL,NULL,'allPage','logout','✅登出','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"logout\"}','{}','{}','update',NULL,NULL,'2022-03-29T15:42:42+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,NULL,NULL,'allPage','refreshToken','✅刷新authToken','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"refreshToken\"}','{}','{}','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,NULL,NULL,'allPage','userInfo','✅获取用户信息','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"userInfo\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"allPage\", \"actionId\": \"userInfo\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651473912255_8011650\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651473912255_8011650\", \"timestamp\": \"2022-05-02T14:45:12+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:45:12+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,NULL,NULL,'allPage','resetPassword','✅修改密码','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"resetPassword\"}','{}','{}','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,NULL,NULL,'allPage','uploadByStream','✅文件上传(文件流)','service',NULL,'{\"service\": \"file\", \"serviceFunction\": \"uploadByBase64\"}','{}','{}','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,NULL,NULL,'allPage','uploadByBase64','✅文件上传(base64)','service',NULL,'{\"service\": \"file\", \"serviceFunction\": \"downlaodBase64ByFileId\"}','{}','{}','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,NULL,NULL,'classManagement','selectItemList','✅班级查询-查询列表','sql','{}','{\"table\": \"class\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagement\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"operationAt\"}], \"actionId\": \"selectItemList\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651473882978_6479183\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651473882978_6479183\", \"timestamp\": \"2022-05-02T14:44:43+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:44:43+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,NULL,NULL,'classManagement','insertItem','✅班级查询-添加成员','sql','{}','{\"table\": \"class\", \"operation\": \"jhInsert\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagement\", \"actionId\": \"insertItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"classId\": \"æµè¯æ°å¢\", \"classStatus\": \"æ­£å¸¸\"}}, \"packageId\": \"1651060302646_4406496\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [124], \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagement\", \"actionId\": \"insertItem\", \"resultData\": {\"rows\": [124]}}, \"packageId\": \"1651060302646_4406496\", \"timestamp\": \"2022-04-27T19:51:43+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-27T19:51:43+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,NULL,NULL,'classManagement','updateItem','✅班级查询-更新成员','sql','{}','{\"table\": \"class\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"id\": 111}, \"pageId\": \"classManagement\", \"actionId\": \"updateItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"classId\": \"æ­¦å½01ç­\", \"remarks\": null, \"menPaiId\": \"wudang\", \"operation\": \"jhUpdate\", \"menPaiName\": \"æ­¦å½\", \"classStatus\": \"æ­£å¸¸\", \"operationAt\": \"2022-05-02T14:44:35+08:00\", \"operationByUser\": \"å¼ ä¸ä¸°\", \"operationByUserId\": \"W00001\"}}, \"packageId\": \"1651473882002_6355127\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagement\", \"actionId\": \"updateItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1651473882002_6355127\", \"timestamp\": \"2022-05-02T14:44:42+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:44:42+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,NULL,NULL,'classManagement','deleteItem','✅班级查询-删除信息','sql','{}','{\"table\": \"class\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"id\": 124}, \"pageId\": \"classManagement\", \"actionId\": \"deleteItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651060528850_7401331\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagement\", \"actionId\": \"deleteItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1651060528850_7401331\", \"timestamp\": \"2022-04-27T19:55:29+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-27T19:55:29+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,NULL,NULL,'studentManagement','selectItemList','✅学生查询-查询列表','sql','{}','{\"table\": \"student\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagement\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"operationAt\"}], \"actionId\": \"selectItemList\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651473923348_3170712\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651473923348_3170712\", \"timestamp\": \"2022-05-02T14:45:24+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:45:24+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,NULL,NULL,'studentManagement','insertItem','✅学生查询-添加成员','sql','{}','{\"table\": \"student\", \"operation\": \"jhInsert\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagement\", \"actionId\": \"insertItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"studentId\": \"Z00001\"}}, \"packageId\": \"1651061540028_1671730\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [94], \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagement\", \"actionId\": \"insertItem\", \"resultData\": {\"rows\": [94]}}, \"packageId\": \"1651061540028_1671730\", \"timestamp\": \"2022-04-27T20:12:21+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-27T20:12:21+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,NULL,NULL,'studentManagement','updateItem','✅学生查询-更新成员','sql','{}','{\"table\": \"student\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"id\": 49}, \"pageId\": \"studentManagement\", \"actionId\": \"updateItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"name\": \"æµè¯\", \"gender\": \"female\", \"remarks\": null, \"menPaiId\": null, \"operation\": \"jhUpdate\", \"studentId\": \"D00001\", \"bodyHeight\": null, \"menPaiName\": null, \"dateOfBirth\": null, \"operationAt\": \"2022-04-27T19:44:20+08:00\", \"studentStatus\": null, \"operationByUser\": \"å¼ ä¸ä¸°\", \"operationByUserId\": \"W00001\"}}, \"packageId\": \"1651473922265_5617981\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagement\", \"actionId\": \"updateItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1651473922265_5617981\", \"timestamp\": \"2022-05-02T14:45:23+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:45:23+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (23,NULL,NULL,'studentManagement','deleteItem','✅学生查询-删除信息','sql','{}','{\"table\": \"student\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"studentId\": \"Z00001\"}, \"pageId\": \"studentManagement\", \"actionId\": \"deleteItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651061798588_1485814\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagement\", \"actionId\": \"deleteItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1651061798588_1485814\", \"timestamp\": \"2022-04-27T20:16:39+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-27T20:16:39+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,NULL,NULL,'studentManagementOfOneClass','selectItemList','✅班级的学生管理-查询当前学生下的班级列表','sql','{}','{\"table\": \"view01_student_class\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"classId\": \"æ­¦å½01ç­\"}, \"pageId\": \"studentManagementOfOneClass\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"operationAt\"}], \"actionId\": \"selectItemList\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651473902396_6292219\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651473902396_6292219\", \"timestamp\": \"2022-05-02T14:45:03+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:45:03+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,NULL,NULL,'studentManagementOfOneClass','insertItem','✅班级的学生管理-建立关系','sql','{}','{\"table\": \"student_class\", \"operation\": \"jhInsert\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagementOfOneClass\", \"actionId\": \"insertItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"classId\": \"æ­¦å½01ç­\", \"studentId\": \"H00001\"}}, \"packageId\": \"1651473901465_5832532\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [103], \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagementOfOneClass\", \"actionId\": \"insertItem\", \"resultData\": {\"rows\": [103]}}, \"packageId\": \"1651473901465_5832532\", \"timestamp\": \"2022-05-02T14:45:02+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:45:02+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,NULL,NULL,'studentManagementOfOneClass','updateItem','✅班级的学生管理-更新数据','sql','{}','{\"table\": \"student_class\", \"operation\": \"jhUpdate\"}','{}','{}','jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,NULL,NULL,'studentManagementOfOneClass','deleteItem','✅班级的学生管理-删除信息','sql','{}','{\"table\": \"student_class\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"id\": 92}, \"pageId\": \"studentManagementOfOneClass\", \"actionId\": \"deleteItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651473892222_4296375\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagementOfOneClass\", \"actionId\": \"deleteItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1651473892222_4296375\", \"timestamp\": \"2022-05-02T14:44:53+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:44:53+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,NULL,NULL,'studentManagementOfOneClass','selectStudentItemList','✅班级查询-查询列表','sql','{}','{\"table\": \"student\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentManagementOfOneClass\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"operationAt\"}], \"actionId\": \"selectStudentItemList\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651473885733_7034062\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651473885733_7034062\", \"timestamp\": \"2022-05-02T14:44:46+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T14:44:46+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (40,NULL,NULL,'classManagementOfOneStudent','selectItemList','✅学生的班级管理-查询当前班级下的学生列表','sql','{}','{\"table\": \"view01_student_class\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"studentId\": \"D00001\"}, \"pageId\": \"classManagementOfOneStudent\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"operationAt\"}], \"actionId\": \"selectItemList\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651219963554_8128375\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [{\"id\": 100, \"name\": \"æµè¯\", \"gender\": null, \"classId\": \"åå±±01ç­\", \"remarks\": null, \"menPaiId\": \"huashan\", \"operation\": \"jhInsert\", \"studentId\": \"D00001\", \"bodyHeight\": null, \"menPaiName\": \"åå±±\", \"classStatus\": \"æ­£å¸¸\", \"dateOfBirth\": null, \"operationAt\": \"2022-04-29T16:10:13+08:00\", \"studentStatus\": null, \"operationByUser\": \"å¼ ä¸ä¸°\", \"operationByUserId\": \"W00001\"}, {\"id\": 95, \"name\": \"æµè¯\", \"gender\": null, \"classId\": \"åå±±03ç­\", \"remarks\": null, \"menPaiId\": \"huashan\", \"operation\": \"jhInsert\", \"studentId\": \"D00001\", \"bodyHeight\": null, \"menPaiName\": \"åå±±\", \"classStatus\": \"æ­£å¸¸\", \"dateOfBirth\": null, \"operationAt\": \"2022-04-27T21:29:21+08:00\", \"studentStatus\": null, \"operationByUser\": \"å¼ ä¸ä¸°\", \"operationByUserId\": \"W00001\"}], \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagementOfOneStudent\", \"actionId\": \"selectItemList\", \"resultData\": {\"rows\": [{\"id\": 100, \"name\": \"æµè¯\", \"gender\": null, \"classId\": \"åå±±01ç­\", \"remarks\": null, \"menPaiId\": \"huashan\", \"operation\": \"jhInsert\", \"studentId\": \"D00001\", \"bodyHeight\": null, \"menPaiName\": \"åå±±\", \"classStatus\": \"æ­£å¸¸\", \"dateOfBirth\": null, \"operationAt\": \"2022-04-29T16:10:13+08:00\", \"studentStatus\": null, \"operationByUser\": \"å¼ ä¸ä¸°\", \"operationByUserId\": \"W00001\"}, {\"id\": 95, \"name\": \"æµè¯\", \"gender\": null, \"classId\": \"åå±±03ç­\", \"remarks\": null, \"menPaiId\": \"huashan\", \"operation\": \"jhInsert\", \"studentId\": \"D00001\", \"bodyHeight\": null, \"menPaiName\": \"åå±±\", \"classStatus\": \"æ­£å¸¸\", \"dateOfBirth\": null, \"operationAt\": \"2022-04-27T21:29:21+08:00\", \"studentStatus\": null, \"operationByUser\": \"å¼ ä¸ä¸°\", \"operationByUserId\": \"W00001\"}]}}, \"packageId\": \"1651219963554_8128375\", \"timestamp\": \"2022-04-29T16:12:44+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-29T16:12:44+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (41,NULL,NULL,'classManagementOfOneStudent','selectClassItemList','✅学生的班级管理-查询当前班级下的学生列表','sql','{}','{\"table\": \"view01_class_basic\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagementOfOneStudent\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"operationAt\"}], \"actionId\": \"selectClassItemList\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651219790982_6865737\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651219790982_6865737\", \"timestamp\": \"2022-04-29T16:09:51+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-29T16:09:51+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (42,NULL,NULL,'classManagementOfOneStudent','insertItem','✅学生的班级管理-建立关系','sql','{}','{\"table\": \"student_class\", \"operation\": \"jhInsert\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagementOfOneStudent\", \"actionId\": \"insertItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"classId\": \"æ­¦å½02ç­\", \"studentId\": \"D00001\"}}, \"packageId\": \"1651219813875_8599690\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [101], \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagementOfOneStudent\", \"actionId\": \"insertItem\", \"resultData\": {\"rows\": [101]}}, \"packageId\": \"1651219813875_8599690\", \"timestamp\": \"2022-04-29T16:10:14+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-29T16:10:14+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (43,NULL,NULL,'classManagementOfOneStudent','updateItem','✅学生的班级管理-更新数据','sql','{}','{\"table\": \"student_class\", \"operation\": \"jhUpdate\"}','{}','{}','jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (44,NULL,NULL,'classManagementOfOneStudent','deleteItem','✅学生的班级管理-删除信息','sql','{}','{\"table\": \"student_class\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"id\": 101}, \"pageId\": \"classManagementOfOneStudent\", \"actionId\": \"deleteItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651219962532_3521497\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"classManagementOfOneStudent\", \"actionId\": \"deleteItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1651219962532_3521497\", \"timestamp\": \"2022-04-29T16:12:43+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-29T16:12:43+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (45,NULL,NULL,'classManagementOfOneStudent','selectAllList','✅学生查询-查询列表','sql','{}','{\"table\": \"class\", \"operation\": \"select\"}','{}','{}','jhInsert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (50,NULL,NULL,'studentClass','deleteItem','✅班级查询-删除信息','sql','{}','{\"table\": \"student_class\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs_demo_basic_3table\", \"where\": {\"studentId\": \"Z00001\"}, \"pageId\": \"studentClass\", \"actionId\": \"deleteItem\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651061799369_3905277\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 0, \"appId\": \"jianghujs_demo_basic_3table\", \"pageId\": \"studentClass\", \"actionId\": \"deleteItem\", \"resultData\": {\"rows\": 0}}, \"packageId\": \"1651061799369_3905277\", \"timestamp\": \"2022-04-27T20:16:39+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-27T20:16:39+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `resourceId_index` (`resourceId`),
  KEY `packageId_index` (`packageId`)
) ENGINE = InnoDB AUTO_INCREMENT = 1597 COMMENT = '文件表; ';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 6 COMMENT = '角色表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _role
# ------------------------------------------------------------

INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'appAdmin','系统管理员','','insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,'zhaosheng','招生','','insert',NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,'fenban','分班','','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COMMENT 'ui 动作数据',
  `appDataSchema` json DEFAULT NULL COMMENT 'ui 校验数据',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 COMMENT = 'ui 施工方案';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'classManagement','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'classManagement','ui','openCreateDialog','✅打开抽屉','{\"main\": [{\"function\": \"openCreateDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'classManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (4,'classManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (5,'classManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'classManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (7,'classManagement','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doDeleteItem\"}, {\"function\": \"doDeleteClass\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,'studentManagement','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'studentManagement','ui','getUserInfo','✅获取用户数据','{\"main\": [{\"function\": \"doGetUserInfo\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'studentManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'studentManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,'studentManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\":[{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'studentManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmUpdateItemDialog\"}], \"main\":[{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (16,'studentManagement','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\":[{\"function\": \"prepareItemData\"}, {\"function\": \"doDeleteItem\"}, {\"function\": \"doDeleteStudentClass\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'classManagementOfOneStudent','ui','refreshTableData','✅获取表格数据','{\"main\":[{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'classManagementOfOneStudent','ui','getDrawerTableData','✅获取内列表数据','{\"main\":[{\"function\": \"getDrawerTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (24,'classManagementOfOneStudent','ui','allotClass','✅同步数据','{\"before\": [{\"function\": \"confirmAllotClassDialog\"}], \"main\":[{\"function\": \"doAllotClass\"}, {\"function\": \"closeDrawerShow\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"clearItemSelectedClass\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (26,'classManagementOfOneStudent','ui','buildRelation','✅同步数据','{\"before\": [{\"function\": \"confirmAllotClassDialog\"}], \"main\":[{\"function\": \"doBuildRelation\"}, {\"function\": \"closeDrawerShow\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (27,'classManagementOfOneStudent','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteStudentForClassDialog\"}], \"main\":[{\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,'studentManagementOfOneClass','ui','refreshTableData','✅获取表格数据','{\"main\":[{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'studentManagementOfOneClass','ui','getDrawerTableData','✅获取内列表数据','{\"main\":[{\"function\": \"getDrawerTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'studentManagementOfOneClass','ui','allotStudent','✅同步数据','{\"before\": [{\"function\": \"confirmAllotStudentDialog\"}], \"main\":[{\"function\": \"doAllotStudent\"}, {\"function\": \"closeDrawerShow\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"clearItemSelectedClass\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'studentManagementOfOneClass','ui','buildRelation','✅同步数据','{\"before\": [{\"function\": \"confirmAllotStudentDialog\"}], \"main\":[{\"function\": \"doBuildRelation\"}, {\"function\": \"closeDrawerShow\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'studentManagementOfOneClass','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteStudentForClassDialog\"}], \"main\":[{\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL COMMENT '自增id; 用于生成userId',
  `userId` varchar(255) DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名(登陆)',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户账号状态：活跃或关闭',
  `userType` varchar(255) DEFAULT NULL COMMENT '用户类型; staff, student.',
  `userConfig` text COMMENT '配置信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_index` (`username`),
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 COMMENT = '用户表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`userConfig`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (43,NULL,'W00001','张三丰','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`userConfig`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (44,NULL,'W00002','张无忌','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`userConfig`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (45,NULL,'G00001','洪七公','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`userConfig`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,NULL,'G00002','郭靖','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`userConfig`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (47,NULL,'H00001','岳不群','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`userConfig`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,NULL,'H00002','令狐冲','123456','38d61d315e62546fe7f1013e31d42f57','Xs4JSZnhiwsR','active',NULL,NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`),
  KEY `userId_index` (`userId`)
) ENGINE = InnoDB AUTO_INCREMENT = 586 COMMENT = '用户群组角色关联表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (568,'admin','adminGroup','appAdmin','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (569,'W00001','wudang','fenban','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (570,'W00002','wudang','zhaosheng','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (573,'G00001','gaibang','fenban','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (574,'G00002','gaibang','zhaosheng','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (577,'H00001','huashan','fenban','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (578,'H00002','huashan','zhaosheng','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 34 COMMENT = '用户群组角色 - 页面 映射表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'*','public','*','login','allow','登陆页; 开放给所有用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'*','login','*','manual','allow','操作手册页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'*','login','*','help','allow','帮助页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'*','*','zhaosheng','studentManagement','allow','学生管理页面; 开放给招生人员;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'*','*','fenban','*','allow','所有页面; 开放给分班人员;','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 137 COMMENT = '用户群组角色 - 请求资源 映射表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login.passwordLogin','allow','登陆resource, 开放给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'*','public','*','allPage.getConstantList','allow','查询常量resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'*','login','*','allPage.logout','allow','登出resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'*','login','*','allPage.refreshToken','allow','刷新authToken resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'*','login','*','allPage.userInfo','allow','用户个人信息resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'*','login','*','allPage.uploadByBase64','allow','上传文件resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'*','login','*','allPage.uploadByStream','allow','上传文件resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (135,'*','*','zhaosheng','studentManagement.*','allow','学生管理 resource; 开放给招生人员;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (136,'*','*','fenban','*','allow','所有resource; 开放给分班人员;','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(255) DEFAULT NULL COMMENT 'auth token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `userId_index` (`userId`),
  KEY `userId_deviceId_index` (`userId`, `deviceId`) USING BTREE,
  KEY `authToken_index` (`authToken`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 COMMENT = '用户session表; deviceId 维度;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: class
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classId` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `menPaiId` varchar(255) DEFAULT NULL COMMENT '门派ID',
  `menPaiName` varchar(255) DEFAULT NULL COMMENT '门派名',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `classStatus` varchar(255) DEFAULT 'active' COMMENT '班级状态',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 125;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: class
# ------------------------------------------------------------

INSERT INTO `class` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (111,'武当01班','wudang','武当',NULL,'正常','jhUpdate','W00001','张三丰','2022-05-02T14:44:42+08:00');
INSERT INTO `class` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (112,'武当02班','wudang','武当',NULL,'正常','jhUpdate','W00001','张三丰','2022-04-27T19:52:53+08:00');
INSERT INTO `class` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (117,'丐帮01班','gaibang','丐帮',NULL,'正常','jhUpdate','W00001','张三丰','2022-04-27T19:52:53+08:00');
INSERT INTO `class` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (118,'丐帮02班','gaibang','丐帮',NULL,'正常','jhUpdate','W00001','张三丰','2022-04-27T19:52:53+08:00');
INSERT INTO `class` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (120,'华山03班','huashan','华山',NULL,'正常','jhUpdate','W00001','张三丰','2022-04-27T19:52:53+08:00');
INSERT INTO `class` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (122,'华山01班','huashan','华山',NULL,'正常','jhUpdate','W00001','张三丰','2022-04-27T19:52:53+08:00');
INSERT INTO `class` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (123,'华山02班','huashan','华山',NULL,'正常','jhUpdate','W00001','张三丰','2022-04-27T19:52:53+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) DEFAULT NULL COMMENT '学生ID',
  `menPaiId` varchar(255) DEFAULT NULL COMMENT '门派ID',
  `menPaiName` varchar(255) DEFAULT NULL COMMENT '门派名',
  `name` varchar(255) DEFAULT NULL COMMENT '学生名字',
  `gender` varchar(255) DEFAULT NULL COMMENT '性别',
  `dateOfBirth` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `bodyHeight` varchar(255) DEFAULT NULL COMMENT '身高',
  `studentStatus` varchar(255) DEFAULT NULL COMMENT '学生状态',
  `remarks` mediumtext COMMENT '备注',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: student
# ------------------------------------------------------------

INSERT INTO `student` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'E00001',NULL,NULL,'张三丰','male',NULL,NULL,NULL,NULL,'jhUpdate','W00001','张三丰','2022-04-27T19:39:54+08:00');
INSERT INTO `student` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'W00001',NULL,NULL,'学生2',NULL,NULL,NULL,'正常',NULL,'jhUpdate','W00001','张三丰','2022-04-27T19:40:26+08:00');
INSERT INTO `student` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'C00002',NULL,NULL,'测试',NULL,NULL,NULL,NULL,NULL,'jhUpdate','W00001','张三丰','2022-04-27T19:43:49+08:00');
INSERT INTO `student` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'C00003',NULL,NULL,'测试',NULL,NULL,NULL,NULL,NULL,'jhUpdate','W00001','张三丰','2022-04-27T19:43:56+08:00');
INSERT INTO `student` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,'C00004',NULL,NULL,'测试',NULL,NULL,NULL,NULL,NULL,'jhUpdate','W00001','张三丰','2022-04-27T19:44:02+08:00');
INSERT INTO `student` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,'H00001',NULL,NULL,'测试',NULL,NULL,NULL,NULL,NULL,'jhUpdate','W00001','张三丰','2022-04-27T19:44:15+08:00');
INSERT INTO `student` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (49,'D00001',NULL,NULL,'测试','female',NULL,NULL,NULL,NULL,'jhUpdate','W00001','张三丰','2022-05-02T14:45:22+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: student_class
# ------------------------------------------------------------

DROP TABLE IF EXISTS `student_class`;
CREATE TABLE `student_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) DEFAULT NULL COMMENT '学生ID',
  `classId` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `studentId` (`studentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: student_class
# ------------------------------------------------------------

INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (72,'H00001','华山03班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (73,'H00002','华山03班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (74,'H00003','华山03班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (75,'H00004','华山03班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (76,'H00005','华山03班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (77,'H00001','华山03班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (78,'H00001','华山01班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (79,'H00001','华山02班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (80,'H00001','华山03班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (81,'H00006','华山03班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (82,'H00006','华山01班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (83,'H00006','华山02班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (86,'111','武当02班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (87,'111','丐帮01班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (88,'111','丐帮02班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (89,'111','华山01班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (90,'111','华山02班','insert',NULL,NULL,NULL);
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (93,'W00001','武当01班','insert','W00001','张三丰','2022-02-18T22:12:22+08:00');
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (95,'D00001','华山03班','jhInsert','W00001','张三丰','2022-04-27T21:29:21+08:00');
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (100,'D00001','华山01班','jhInsert','W00001','张三丰','2022-04-29T16:10:13+08:00');
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (102,'D00001','武当01班','jhInsert','W00001','张三丰','2022-05-02T14:45:01+08:00');
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (103,'H00001','武当01班','jhInsert','W00001','张三丰','2022-05-02T14:45:02+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`idSequence` AS `idSequence`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`userType` AS `userType`,
  `_user`.`userConfig` AS `userConfig`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`
from
  `_user`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_class_basic
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_class_basic` AS
select
  `class`.`id` AS `id`,
  `class`.`classId` AS `classId`,
  `class`.`menPaiId` AS `menPaiId`,
  `class`.`menPaiName` AS `menPaiName`,
  count(1) AS `count`,
  `class`.`remarks` AS `remarks`,
  `class`.`classStatus` AS `classStatus`,
  `class`.`operation` AS `operation`,
  `class`.`operationByUserId` AS `operationByUserId`,
  `class`.`operationByUser` AS `operationByUser`,
  `class`.`operationAt` AS `operationAt`
from
  (
  `class`
  left join `student_class` on((`class`.`classId` = `student_class`.`classId`))
  )
group by
  `class`.`classId`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_student_class
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_student_class` AS
select
  distinct `student_class`.`id` AS `id`,
  `student_class`.`classId` AS `classId`,
  `student_class`.`studentId` AS `studentId`,
  `class`.`menPaiId` AS `menPaiId`,
  `class`.`menPaiName` AS `menPaiName`,
  `class`.`remarks` AS `remarks`,
  `class`.`classStatus` AS `classStatus`,
  `student`.`name` AS `name`,
  `student`.`gender` AS `gender`,
  `student`.`dateOfBirth` AS `dateOfBirth`,
  `student`.`bodyHeight` AS `bodyHeight`,
  `student`.`studentStatus` AS `studentStatus`,
  `student_class`.`operation` AS `operation`,
  `student_class`.`operationByUserId` AS `operationByUserId`,
  `student_class`.`operationByUser` AS `operationByUser`,
  `student_class`.`operationAt` AS `operationAt`
from
  (
  (
    `student_class`
    left join `class` on((`student_class`.`classId` = `class`.`classId`))
  )
  left join `student` on(
    (
    `student_class`.`studentId` = `student`.`studentId`
    )
  )
  );





