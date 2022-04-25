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
) ENGINE = InnoDB AUTO_INCREMENT = 14 COMMENT = '页面表; ';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','帮助','',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','登陆','',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (6,'manual','操作手册','showInMenu','0','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (9,'studentManagement','学生管理','showInMenu','1','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,'classManagement','班级管理','showInMenu','2','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'studentManagementOfOneClass','学生管理','dynamicInMenu',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'classManagementOfOneStudent','班级管理','dynamicInMenu',NULL,'insert',NULL,NULL,NULL);



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
) ENGINE = InnoDB AUTO_INCREMENT = 24 COMMENT = '数据历史表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'_user_session',7,'{\"id\":7,\"userId\":\"H00002\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\",\"deviceId\":\"127.0.0.1:7002_Mac.10.15.7_d20c2388_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"offline\",\"authToken\":\"eLoFkn3TUSZFTSW9y5dMVm6_XfosbYM4yXLY\",\"operation\":\"jhInsert\",\"operationByUserId\":null,\"operationByUser\":null,\"operationAt\":\"2022-03-29T15:33:24+08:00\"}','{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"H00002\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7002_Mac.10.15.7_d20c2388_chrome\"},\"appId\":\"jianghujs_demo_basic_3table\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\"},\"packageId\":\"1648539203754_4537922\",\"packageType\":\"httpRequest\"}','jhInsert',NULL,NULL,'2022-03-29T15:33:24+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'_user_session',7,'{\"id\":7,\"userId\":\"H00002\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\",\"deviceId\":\"127.0.0.1:7002_Mac.10.15.7_d20c2388_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"offline\",\"authToken\":\"\",\"operation\":\"jhUpdate\",\"operationByUserId\":\"H00002\",\"operationByUser\":\"令狐冲\",\"operationAt\":\"2022-03-29T15:42:42+08:00\"}','{\"appData\":{\"pageId\":\"allPage\",\"actionId\":\"logout\",\"appId\":\"jianghujs_demo_basic_3table\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\",\"actionData\":{}},\"packageId\":\"1648539761850_4885220\",\"packageType\":\"httpRequest\"}','jhUpdate','H00002','令狐冲','2022-03-29T15:42:42+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'_user_session',8,'{\"id\":8,\"userId\":\"H00001\",\"userIp\":\"127.0.0.1\",\"userIpRegion\":\"\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\",\"deviceId\":\"127.0.0.1:7002_Mac.10.15.7_d20c2388_chrome\",\"deviceType\":\"web\",\"socketStatus\":\"offline\",\"authToken\":\"cwyVB6W_yoeWjSFlwnTnX1KX0xYLb82SVhZo\",\"operation\":\"jhInsert\",\"operationByUserId\":null,\"operationByUser\":null,\"operationAt\":\"2022-03-29T15:42:48+08:00\"}','{\"appData\":{\"pageId\":\"login\",\"actionId\":\"passwordLogin\",\"actionData\":{\"userId\":\"H00001\",\"password\":\"123456\",\"deviceId\":\"127.0.0.1:7002_Mac.10.15.7_d20c2388_chrome\"},\"appId\":\"jianghujs_demo_basic_3table\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\"},\"packageId\":\"1648539767762_3207889\",\"packageType\":\"httpRequest\"}','jhInsert',NULL,NULL,'2022-03-29T15:42:48+08:00');
INSERT INTO `_record_history` (`id`,`table`,`recordId`,`recordContent`,`packageContent`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (23,'student_basic',92,'{\"id\":92,\"studentId\":\"H00001L\",\"menPaiId\":\"huashan\",\"menPaiName\":\"华山\",\"name\":\"刘计\",\"gender\":\"male\",\"dateOfBirth\":\"2022-03-29\",\"bodyHeight\":\"170\",\"studentStatus\":\"正常\",\"remarks\":null,\"operation\":\"jhInsert\",\"operationByUserId\":\"H00001\",\"operationByUser\":\"岳不群\",\"operationAt\":\"2022-03-29T15:43:30+08:00\"}','{\"appData\":{\"pageId\":\"studentManagement\",\"actionId\":\"insertItem\",\"actionData\":{\"studentId\":\"H00001L\",\"name\":\"刘计\",\"gender\":\"male\",\"dateOfBirth\":\"2022-03-29\",\"bodyHeight\":\"170\",\"studentStatus\":\"正常\",\"menPaiId\":\"huashan\",\"menPaiName\":\"华山\"},\"appId\":\"jianghujs_demo_basic_3table\",\"userAgent\":\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.83 Safari/537.36\"},\"packageId\":\"1648539809467_4015295\",\"packageType\":\"httpRequest\"}','jhInsert','H00001','岳不群','2022-03-29T15:43:30+08:00');



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
  `appDataSchema` text COMMENT 'appData 参数校验',
  `resourceData` text COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` text COMMENT '请求Demo',
  `responseDemo` text COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 285 COMMENT = '请求资源表;  resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,NULL,NULL,'login','passwordLogin','✅登陆','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"passwordLogin\" }','','','update',NULL,NULL,'2022-03-29T15:42:48+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,NULL,NULL,'allPage','logout','✅登出','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"logout\" }','','','update',NULL,NULL,'2022-03-29T15:42:42+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (252,NULL,NULL,'allPage','refreshToken','✅刷新authToken','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"refreshToken\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,NULL,NULL,'allPage','userInfo','✅获取用户信息','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"userInfo\" }','','','update',NULL,NULL,'2022-03-29T16:04:37+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (254,NULL,NULL,'allPage','resetPassword','✅修改密码','service',NULL,'{ \"service\": \"user\", \"serviceFunction\": \"resetPassword\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (256,NULL,NULL,'allPage','uploadByStream','✅文件上传(文件流)','service',NULL,'{ \"service\": \"file\", \"serviceFunction\": \"uploadByBase64\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (257,NULL,NULL,'allPage','uploadByBase64','✅文件上传(base64)','service',NULL,'{ \"service\": \"file\", \"serviceFunction\": \"downlaodBase64ByFileId\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (259,NULL,'{ \"before\": [{ \"service\": \"student\", \"serviceFunction\": \"appendStudentInfoToUserInfo\" }], \"after\": [] }','studentManagement','selectItemList','✅学生管理-查询列表','sql',NULL,'{ \"table\": \"student_basic\", \"operation\": \"select\", \"where\": {\"menPaiId\": \"ctx.userInfo.studentInfo.menPaiId\"} }','','','update',NULL,NULL,'2022-03-29T16:04:36+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (262,NULL,'{ \"before\": [{ \"service\": \"student\", \"serviceFunction\": \"appendMenPaiIdToActionData\" }], \"after\": [] }','studentManagement','insertItem','✅学生管理-添加成员','sql',NULL,'{ \"table\": \"student_basic\", \"operation\": \"jhInsert\" }','','','update',NULL,NULL,'2022-03-29T15:43:30+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (263,NULL,NULL,'studentManagement','updateItem','✅学生管理-更新成员','sql',NULL,'{ \"table\": \"student_basic\", \"operation\": \"jhUpdate\" }','','','update',NULL,NULL,'2022-02-18T22:16:15+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (264,NULL,NULL,'studentManagement','deleteItem','✅学生管理-删除信息','sql',NULL,'{ \"table\": \"student_basic\", \"operation\": \"jhDelete\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (265,NULL,'{ \"before\": [{ \"service\": \"student\", \"serviceFunction\": \"appendStudentInfoToUserInfo\" }], \"after\": [] }','classManagement','selectItemList','✅班级管理-查询列表','sql',NULL,'{ \"table\": \"view01_class_basic\", \"operation\": \"select\", \"where\": {\"menPaiId\": \"ctx.userInfo.studentInfo.menPaiId\"} }','','','update',NULL,NULL,'2022-03-29T15:44:50+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (266,NULL,'{ \"before\": [{ \"service\": \"student\", \"serviceFunction\": \"appendMenPaiIdToActionData\" }], \"after\": [] }','classManagement','insertItem','✅班级管理-添加成员','sql',NULL,'{ \"table\": \"class_basic\", \"operation\": \"jhInsert\"}','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (267,NULL,NULL,'classManagement','updateItem','✅班级管理-更新成员','sql',NULL,'{ \"table\": \"class_basic\", \"operation\": \"jhUpdate\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (268,NULL,NULL,'classManagement','deleteItem','✅班级管理-删除信息','sql',NULL,'{ \"table\": \"class_basic\", \"operation\": \"jhDelete\" }','','','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (269,NULL,'','studentManagementOfOneClass','selectItemList','✅学生班级关系-查询列表','sql',NULL,'{ \"table\": \"view01_student_class\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-18T22:14:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (270,NULL,NULL,'studentManagementOfOneClass','insertItem','✅学生班级关系-添加','sql',NULL,'{ \"table\": \"student_class\", \"operation\": \"jhInsert\" }','','','update',NULL,NULL,'2022-02-18T22:12:22+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (271,NULL,NULL,'studentManagementOfOneClass','deleteItem','✅学生班级关系-删除信息','sql',NULL,'{ \"table\": \"student_class\", \"operation\": \"jhDelete\" }','','','update',NULL,NULL,'2022-02-18T22:12:28+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (272,NULL,'{ \"before\": [{ \"service\": \"student\", \"serviceFunction\": \"appendStudentInfoToUserInfo\" }], \"after\": [] }','studentManagementOfOneClass','selectStudentItemList','✅学生班级关系-查询学生列表','sql',NULL,'{ \"table\": \"student_basic\", \"operation\": \"select\", \"where\": {\"menPaiId\": \"ctx.userInfo.studentInfo.menPaiId\"} }','','','update',NULL,NULL,'2022-02-18T22:14:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (281,NULL,NULL,'classManagementOfOneStudent','selectItemList','✅学生班级关系-查询列表','sql',NULL,'{ \"table\": \"view01_student_class\", \"operation\": \"select\" }','','','update',NULL,NULL,'2022-02-18T22:09:56+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (282,NULL,NULL,'classManagementOfOneStudent','insertItem','✅学生班级关系-添加','sql',NULL,'{ \"table\": \"student_class\", \"operation\": \"jhInsert\" }','','','update',NULL,NULL,'2022-02-18T22:09:01+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (283,NULL,NULL,'classManagementOfOneStudent','deleteItem','✅学生班级关系-删除信息','sql',NULL,'{ \"table\": \"student_class\", \"operation\": \"jhDelete\" }','','','update',NULL,NULL,'2022-02-18T22:09:55+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (284,NULL,'{ \"before\": [{ \"service\": \"student\", \"serviceFunction\": \"appendStudentInfoToUserInfo\" }], \"after\": [] }','classManagementOfOneStudent','selectClassItemList','✅学生班级关系-查询班级列表','sql',NULL,'{ \"table\": \"view01_class_basic\", \"operation\": \"select\", \"where\": {\"menPaiId\": \"ctx.userInfo.studentInfo.menPaiId\"} }','','','update',NULL,NULL,'2022-02-18T22:09:50+08:00');



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
) ENGINE = InnoDB AUTO_INCREMENT = 1199 COMMENT = '文件表; ';




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
) ENGINE = InnoDB AUTO_INCREMENT = 9 COMMENT = '用户session表; deviceId 维度;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: class_basic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class_basic`;
CREATE TABLE `class_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classId` varchar(255) DEFAULT NULL COMMENT '班级ID',
  `menPaiId` varchar(255) DEFAULT NULL COMMENT '门派Id; 关联_user_group_role.groupId',
  `menPaiName` varchar(255) DEFAULT NULL COMMENT '门派name; 关联_user_group_role.groupName',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `classStatus` varchar(255) DEFAULT 'active' COMMENT '班级状态',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: class_basic
# ------------------------------------------------------------

INSERT INTO `class_basic` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (111,'武当01班','wudang','武当',NULL,'正常','insert',NULL,NULL,NULL);
INSERT INTO `class_basic` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (112,'武当02班','wudang','武当',NULL,'正常','insert',NULL,NULL,NULL);
INSERT INTO `class_basic` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (117,'丐帮01班','gaibang','丐帮',NULL,'正常','insert',NULL,NULL,NULL);
INSERT INTO `class_basic` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (118,'丐帮02班','gaibang','丐帮',NULL,'正常','insert',NULL,NULL,NULL);
INSERT INTO `class_basic` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (120,'华山03班','huashan','华山',NULL,'正常','insert',NULL,NULL,NULL);
INSERT INTO `class_basic` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (122,'华山01班','huashan','华山',NULL,'正常','insert',NULL,NULL,NULL);
INSERT INTO `class_basic` (`id`,`classId`,`menPaiId`,`menPaiName`,`remarks`,`classStatus`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (123,'华山02班','huashan','华山',NULL,'正常','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: student_basic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `student_basic`;
CREATE TABLE `student_basic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentId` varchar(255) DEFAULT NULL COMMENT '学生ID',
  `menPaiId` varchar(255) DEFAULT NULL COMMENT '门派Id; 关联_user_group_role.groupId',
  `menPaiName` varchar(255) DEFAULT NULL COMMENT '门派name; 关联_user_group_role.groupName',
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
) ENGINE = InnoDB AUTO_INCREMENT = 93;


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: student_basic
# ------------------------------------------------------------

INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'W00001','wudang','武当','张三丰','male','2022-01-25','155','正常','张三丰','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'W00002','wudang','武当','张无忌','male','2022-01-26','169','正常','张无忌','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'W00003','wudang','武当','宋青书','male','2022-01-26','169','正常','宋青书','jhUpdate','W00001','张三丰','2022-02-18T22:16:15+08:00');
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'W00004','wudang','武当','张翠山','male','2022-01-26','169','正常','','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'W00005','wudang','武当','空虚道长','male','2022-01-26','169','正常','','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,'G00001','gaibang','丐帮','洪七公','female','2022-02-01','188','正常','洪七公','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,'G00002','gaibang','丐帮','郭靖','male','2022-02-01','166','正常','郭靖','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (49,'G00003','gaibang','丐帮','黄蓉','male','2022-01-26','169','正常','','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'G00004','gaibang','丐帮','乔峰','male','2022-01-26','169','正常','','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'G00005','gaibang','丐帮','庄聚贤','male','2022-01-26','169','正常','','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (62,'H00001','huashan','华山','岳不群','male','2022-01-25','180','正常','岳不群','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (63,'H00002','huashan','华山','令狐冲','male','2022-01-25','180','正常','令狐冲','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (64,'H00003','huashan','华山','林平之','male','2022-01-26','169','正常','','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (65,'H00004','huashan','华山','风清扬','male','2022-01-26','169','正常','','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (66,'H00005','huashan','华山','岳灵珊','male','2022-01-26','169','正常','','insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (90,'111','huashan','华山','1111','male','2022-02-11','177','正常',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (91,'H00006','huashan','华山','小岳岳','male','2022-02-11','177','正常',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `student_basic` (`id`,`studentId`,`menPaiId`,`menPaiName`,`name`,`gender`,`dateOfBirth`,`bodyHeight`,`studentStatus`,`remarks`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (92,'H00001L','huashan','华山','刘计','male','2022-03-29','170','正常',NULL,'jhInsert','H00001','岳不群','2022-03-29T15:43:30+08:00');



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
) ENGINE = InnoDB AUTO_INCREMENT = 94;


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
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (92,'W00003','武当01班','insert','W00001','张三丰','2022-02-18T22:12:21+08:00');
INSERT INTO `student_class` (`id`,`studentId`,`classId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (93,'W00001','武当01班','insert','W00001','张三丰','2022-02-18T22:12:22+08:00');



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
  `class_basic`.`id` AS `id`,
  `class_basic`.`classId` AS `classId`,
  `class_basic`.`menPaiId` AS `menPaiId`,
  `class_basic`.`menPaiName` AS `menPaiName`,
  count(1) AS `count`,
  `class_basic`.`remarks` AS `remarks`,
  `class_basic`.`classStatus` AS `classStatus`,
  `class_basic`.`operation` AS `operation`,
  `class_basic`.`operationByUserId` AS `operationByUserId`,
  `class_basic`.`operationByUser` AS `operationByUser`,
  `class_basic`.`operationAt` AS `operationAt`
from
  (
  `class_basic`
  left join `student_class` on(
    (
    `class_basic`.`classId` = `student_class`.`classId`
    )
  )
  )
group by
  `class_basic`.`classId`;





# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: view01_student_class
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `view01_student_class` AS
select
  distinct `student_class`.`id` AS `id`,
  `student_class`.`studentId` AS `studentId`,
  `student_class`.`classId` AS `classId`,
  `student_basic`.`name` AS `name`,
  `student_basic`.`gender` AS `gender`,
  `student_basic`.`dateOfBirth` AS `dateOfBirth`,
  `student_basic`.`bodyHeight` AS `bodyHeight`,
  `student_basic`.`studentStatus` AS `studentStatus`,
  `student_basic`.`remarks` AS `studentRemarks`,
  `class_basic`.`remarks` AS `classRemarks`,
  `class_basic`.`classStatus` AS `classStatus`,
  `student_class`.`operation` AS `operation`,
  `student_class`.`operationByUserId` AS `operationByUserId`,
  `student_class`.`operationByUser` AS `operationByUser`,
  `student_class`.`operationAt` AS `operationAt`
from
  (
  (
    `student_class`
    left join `student_basic` on(
    (
      `student_class`.`studentId` = `student_basic`.`studentId`
    )
    )
  )
  left join `class_basic` on(
    (
    `student_class`.`classId` = `class_basic`.`classId`
    )
  )
  );





