-- MySQL dump 10.13  Distrib 8.4.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online_examination_system
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES (8,'t_question','试题列表',NULL,NULL,'Question','crud','element-plus','com.ruoyi.exam','exam','question','试题列表','group','0','/','{\"parentMenuId\":\"\"}','admin','2024-07-09 21:27:48','','2024-07-09 21:31:44',NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES (65,8,'id','题目ID','int','Long','id','1','1','0','0',NULL,'1','1','EQ','input','',1,'admin','2024-07-09 21:27:48','','2024-07-09 21:31:44'),(66,8,'question_type','题型','int','Long','questionType','0','0','0','1','1','1','1','EQ','select','question_type',2,'admin','2024-07-09 21:27:48','','2024-07-09 21:31:44'),(67,8,'subject_id','学科','int','Long','subjectId','0','0','0','1','1','1','1','EQ','select','exam_subject',3,'admin','2024-07-09 21:27:48','','2024-07-09 21:31:44'),(68,8,'score','分值','int','Long','score','0','0','0','1','1','1','0','EQ','input','',4,'admin','2024-07-09 21:27:48','','2024-07-09 21:31:44'),(69,8,'correct','答案','text','String','correct','0','0','0','1','1','0','0','EQ','textarea','',5,'admin','2024-07-09 21:27:48','','2024-07-09 21:31:44'),(70,8,'content','题干','longtext','String','content','0','0','0','1','1','1','1','LIKE','textarea','',6,'admin','2024-07-09 21:27:48','','2024-07-09 21:31:44'),(71,8,'options','选项','text','String','options','0','0','0','1','1','1','0','EQ','textarea','',7,'admin','2024-07-09 21:27:48','','2024-07-09 21:31:44'),(72,8,'image','图片','varchar(255)','String','image','0','0','0','1','1','1','0','EQ','imageUpload','',8,'admin','2024-07-09 21:27:48','','2024-07-09 21:31:44');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2024-07-06 13:01:13','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2024-07-06 13:01:13','',NULL,'初始化密码 123456'),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2024-07-06 13:01:13','',NULL,'深色主题theme-dark，浅色主题theme-light'),(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2024-07-06 13:01:13','',NULL,'是否开启验证码功能（true开启，false关闭）'),(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2024-07-06 13:01:13','',NULL,'是否开启注册用户功能（true开启，false关闭）'),(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2024-07-06 13:01:13','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2024-07-06 13:01:11','',NULL);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2024-07-06 13:01:13','',NULL,'性别男'),(2,2,'女','1','sys_user_sex','','','N','0','admin','2024-07-06 13:01:13','',NULL,'性别女'),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2024-07-06 13:01:13','',NULL,'性别未知'),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2024-07-06 13:01:13','',NULL,'显示菜单'),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'隐藏菜单'),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2024-07-06 13:01:13','',NULL,'正常状态'),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'停用状态'),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2024-07-06 13:01:13','',NULL,'正常状态'),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'停用状态'),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2024-07-06 13:01:13','',NULL,'默认分组'),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2024-07-06 13:01:13','',NULL,'系统分组'),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2024-07-06 13:01:13','',NULL,'系统默认是'),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'系统默认否'),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2024-07-06 13:01:13','',NULL,'通知'),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2024-07-06 13:01:13','',NULL,'公告'),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2024-07-06 13:01:13','',NULL,'正常状态'),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'关闭状态'),(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2024-07-06 13:01:13','',NULL,'其他操作'),(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2024-07-06 13:01:13','',NULL,'新增操作'),(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2024-07-06 13:01:13','',NULL,'修改操作'),(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'删除操作'),(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2024-07-06 13:01:13','',NULL,'授权操作'),(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2024-07-06 13:01:13','',NULL,'导出操作'),(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2024-07-06 13:01:13','',NULL,'导入操作'),(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'强退操作'),(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2024-07-06 13:01:13','',NULL,'生成操作'),(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'清空操作'),(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2024-07-06 13:01:13','',NULL,'正常状态'),(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2024-07-06 13:01:13','',NULL,'停用状态'),(100,1,'单选题','1','question_type',NULL,'default','N','0','admin','2024-07-06 13:39:12','admin','2024-07-11 20:56:10',NULL),(101,2,'多选题','2','question_type',NULL,'default','N','0','admin','2024-07-06 13:39:20','admin','2024-07-11 20:56:13',NULL),(102,3,'判断题','3','question_type',NULL,'default','N','0','admin','2024-07-06 13:39:29','admin','2024-07-11 20:56:17',NULL),(103,1,'java','1','exam_subject',NULL,'default','N','0','admin','2024-07-06 16:57:11','admin','2024-07-11 20:56:31',NULL),(104,2,'python','2','exam_subject',NULL,'default','N','0','admin','2024-07-06 16:57:18','admin','2024-07-11 20:56:34',NULL),(105,3,'c++','3','exam_subject',NULL,'default','N','0','admin','2024-07-06 16:57:24','admin','2024-07-11 20:56:37',NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2024-07-06 13:01:13','',NULL,'用户性别列表'),(2,'菜单状态','sys_show_hide','0','admin','2024-07-06 13:01:13','',NULL,'菜单状态列表'),(3,'系统开关','sys_normal_disable','0','admin','2024-07-06 13:01:13','',NULL,'系统开关列表'),(4,'任务状态','sys_job_status','0','admin','2024-07-06 13:01:13','',NULL,'任务状态列表'),(5,'任务分组','sys_job_group','0','admin','2024-07-06 13:01:13','',NULL,'任务分组列表'),(6,'系统是否','sys_yes_no','0','admin','2024-07-06 13:01:13','',NULL,'系统是否列表'),(7,'通知类型','sys_notice_type','0','admin','2024-07-06 13:01:13','',NULL,'通知类型列表'),(8,'通知状态','sys_notice_status','0','admin','2024-07-06 13:01:13','',NULL,'通知状态列表'),(9,'操作类型','sys_oper_type','0','admin','2024-07-06 13:01:13','',NULL,'操作类型列表'),(10,'系统状态','sys_common_status','0','admin','2024-07-06 13:01:13','',NULL,'登录状态列表'),(100,'试题类型','question_type','0','admin','2024-07-06 13:38:30','',NULL,NULL),(101,'学科','exam_subject','0','admin','2024-07-06 16:57:01','',NULL,NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2024-07-06 13:01:13','',NULL,''),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2024-07-06 13:01:13','',NULL,''),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2024-07-06 13:01:13','',NULL,'');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-06 13:03:58'),(101,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-07-06 14:51:04'),(102,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-06 14:51:08'),(103,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-06 15:40:22'),(104,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-06 16:37:18'),(105,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-06 21:16:35'),(106,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-06 22:18:42'),(107,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-06 22:29:29'),(108,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-06 22:37:10'),(109,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-07 15:51:26'),(110,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-07 16:24:01'),(111,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-07 17:13:31'),(112,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-07 18:17:32'),(113,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-07 18:47:14'),(114,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-07 20:37:08'),(115,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-07 22:06:45'),(116,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-07 22:17:06'),(117,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-08 10:13:55'),(118,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-08 10:37:23'),(119,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-08 11:08:31'),(120,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-08 11:53:11'),(121,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-08 20:26:49'),(122,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-08 21:06:20'),(123,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-08 21:08:45'),(124,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-08 21:14:16'),(125,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 10:04:49'),(126,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-07-09 10:30:16'),(127,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 10:30:19'),(128,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 10:44:37'),(129,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 13:37:09'),(130,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 13:50:00'),(131,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 13:50:09'),(132,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 13:50:15'),(133,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 13:50:18'),(134,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 13:50:28'),(135,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 13:50:37'),(136,'test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 13:53:35'),(137,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 13:53:38'),(138,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 13:54:11'),(139,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 13:54:14'),(140,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 13:59:53'),(141,'student_test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 14:00:03'),(142,'student_test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 14:00:19'),(143,'teacher_test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 14:00:30'),(144,'teacher_test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 14:01:47'),(145,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 14:01:50'),(146,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 16:35:03'),(147,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 16:50:15'),(148,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-07-09 17:05:49'),(149,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 17:05:53'),(150,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 17:50:10'),(151,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 18:32:39'),(152,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 18:46:28'),(153,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 18:50:36'),(154,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 18:55:21'),(155,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 18:55:45'),(156,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 18:57:30'),(157,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 18:57:47'),(158,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 18:58:48'),(159,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 18:59:06'),(160,'teacher_test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 18:59:21'),(161,'teacher_test','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-09 19:00:34'),(162,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 19:00:37'),(163,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 19:47:00'),(164,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 19:53:00'),(165,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 20:04:21'),(166,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 20:37:09'),(167,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 20:46:04'),(168,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 20:58:01'),(169,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 21:02:01'),(170,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 21:08:20'),(171,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 21:20:01'),(172,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 21:27:36'),(173,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-09 21:37:05'),(174,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-10 01:05:09'),(175,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-07-10 19:11:41'),(176,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-10 19:11:46'),(177,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-10 19:21:13'),(178,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-10 19:51:22'),(179,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-07-11 00:46:49'),(180,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-07-11 00:46:51'),(181,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-07-11 00:46:59'),(182,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-11 00:47:03'),(183,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-11 19:59:00'),(184,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-11 22:03:02'),(185,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-12 01:21:38'),(186,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','退出成功','2024-07-12 01:33:54'),(187,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码已失效','2024-07-12 01:39:43'),(188,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-12 01:39:47'),(189,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-12 12:40:48'),(190,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-12 17:04:00'),(191,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-12 20:19:11'),(192,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-13 00:35:10'),(193,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-13 10:34:09'),(194,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','1','验证码错误','2024-07-13 12:13:53'),(195,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-13 12:13:56'),(196,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-14 23:57:06'),(197,'admin','127.0.0.1','内网IP','Chrome 12','Windows 10','0','登录成功','2024-07-15 01:44:17');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) DEFAULT '' COMMENT '路由名称',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2093 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,'','',1,0,'M','0','0','','system','admin','2024-07-06 13:01:12','',NULL,'系统管理目录'),(3,'系统工具',0,3,'tool',NULL,'','',1,0,'M','0','0','','tool','admin','2024-07-06 13:01:12','',NULL,'系统工具目录'),(100,'用户管理',1,1,'user','system/user/index','','',1,0,'C','0','0','system:user:list','user','admin','2024-07-06 13:01:12','',NULL,'用户管理菜单'),(101,'角色管理',1,2,'role','system/role/index','','',1,0,'C','0','0','system:role:list','peoples','admin','2024-07-06 13:01:12','',NULL,'角色管理菜单'),(102,'菜单管理',1,3,'menu','system/menu/index','','',1,0,'C','0','0','system:menu:list','tree-table','admin','2024-07-06 13:01:12','',NULL,'菜单管理菜单'),(105,'字典管理',1,6,'dict','system/dict/index','','',1,0,'C','0','0','system:dict:list','dict','admin','2024-07-06 13:01:12','',NULL,'字典管理菜单'),(106,'参数设置',1,7,'config','system/config/index','','',1,0,'C','0','0','system:config:list','edit','admin','2024-07-06 13:01:12','',NULL,'参数设置菜单'),(115,'表单构建',3,1,'build','tool/build/index','','',1,0,'C','0','0','tool:build:list','build','admin','2024-07-06 13:01:12','',NULL,'表单构建菜单'),(116,'代码生成',3,2,'gen','tool/gen/index','','',1,0,'C','0','0','tool:gen:list','code','admin','2024-07-06 13:01:12','',NULL,'代码生成菜单'),(117,'系统接口',3,3,'swagger','tool/swagger/index','','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2024-07-06 13:01:12','',NULL,'系统接口菜单'),(1000,'用户查询',100,1,'','','','',1,0,'F','0','0','system:user:query','#','admin','2024-07-06 13:01:12','',NULL,''),(1001,'用户新增',100,2,'','','','',1,0,'F','0','0','system:user:add','#','admin','2024-07-06 13:01:12','',NULL,''),(1002,'用户修改',100,3,'','','','',1,0,'F','0','0','system:user:edit','#','admin','2024-07-06 13:01:12','',NULL,''),(1003,'用户删除',100,4,'','','','',1,0,'F','0','0','system:user:remove','#','admin','2024-07-06 13:01:12','',NULL,''),(1004,'用户导出',100,5,'','','','',1,0,'F','0','0','system:user:export','#','admin','2024-07-06 13:01:12','',NULL,''),(1005,'用户导入',100,6,'','','','',1,0,'F','0','0','system:user:import','#','admin','2024-07-06 13:01:12','',NULL,''),(1006,'重置密码',100,7,'','','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2024-07-06 13:01:12','',NULL,''),(1007,'角色查询',101,1,'','','','',1,0,'F','0','0','system:role:query','#','admin','2024-07-06 13:01:12','',NULL,''),(1008,'角色新增',101,2,'','','','',1,0,'F','0','0','system:role:add','#','admin','2024-07-06 13:01:12','',NULL,''),(1009,'角色修改',101,3,'','','','',1,0,'F','0','0','system:role:edit','#','admin','2024-07-06 13:01:12','',NULL,''),(1010,'角色删除',101,4,'','','','',1,0,'F','0','0','system:role:remove','#','admin','2024-07-06 13:01:12','',NULL,''),(1011,'角色导出',101,5,'','','','',1,0,'F','0','0','system:role:export','#','admin','2024-07-06 13:01:12','',NULL,''),(1012,'菜单查询',102,1,'','','','',1,0,'F','0','0','system:menu:query','#','admin','2024-07-06 13:01:12','',NULL,''),(1013,'菜单新增',102,2,'','','','',1,0,'F','0','0','system:menu:add','#','admin','2024-07-06 13:01:12','',NULL,''),(1014,'菜单修改',102,3,'','','','',1,0,'F','0','0','system:menu:edit','#','admin','2024-07-06 13:01:12','',NULL,''),(1015,'菜单删除',102,4,'','','','',1,0,'F','0','0','system:menu:remove','#','admin','2024-07-06 13:01:12','',NULL,''),(1025,'字典查询',105,1,'#','','','',1,0,'F','0','0','system:dict:query','#','admin','2024-07-06 13:01:12','',NULL,''),(1026,'字典新增',105,2,'#','','','',1,0,'F','0','0','system:dict:add','#','admin','2024-07-06 13:01:12','',NULL,''),(1027,'字典修改',105,3,'#','','','',1,0,'F','0','0','system:dict:edit','#','admin','2024-07-06 13:01:12','',NULL,''),(1028,'字典删除',105,4,'#','','','',1,0,'F','0','0','system:dict:remove','#','admin','2024-07-06 13:01:12','',NULL,''),(1029,'字典导出',105,5,'#','','','',1,0,'F','0','0','system:dict:export','#','admin','2024-07-06 13:01:12','',NULL,''),(1030,'参数查询',106,1,'#','','','',1,0,'F','0','0','system:config:query','#','admin','2024-07-06 13:01:12','',NULL,''),(1031,'参数新增',106,2,'#','','','',1,0,'F','0','0','system:config:add','#','admin','2024-07-06 13:01:12','',NULL,''),(1032,'参数修改',106,3,'#','','','',1,0,'F','0','0','system:config:edit','#','admin','2024-07-06 13:01:12','',NULL,''),(1033,'参数删除',106,4,'#','','','',1,0,'F','0','0','system:config:remove','#','admin','2024-07-06 13:01:12','',NULL,''),(1034,'参数导出',106,5,'#','','','',1,0,'F','0','0','system:config:export','#','admin','2024-07-06 13:01:12','',NULL,''),(1055,'生成查询',116,1,'#','','','',1,0,'F','0','0','tool:gen:query','#','admin','2024-07-06 13:01:12','',NULL,''),(1056,'生成修改',116,2,'#','','','',1,0,'F','0','0','tool:gen:edit','#','admin','2024-07-06 13:01:12','',NULL,''),(1057,'生成删除',116,3,'#','','','',1,0,'F','0','0','tool:gen:remove','#','admin','2024-07-06 13:01:12','',NULL,''),(1058,'导入代码',116,4,'#','','','',1,0,'F','0','0','tool:gen:import','#','admin','2024-07-06 13:01:12','',NULL,''),(1059,'预览代码',116,5,'#','','','',1,0,'F','0','0','tool:gen:preview','#','admin','2024-07-06 13:01:12','',NULL,''),(1060,'生成代码',116,6,'#','','','',1,0,'F','0','0','tool:gen:code','#','admin','2024-07-06 13:01:12','',NULL,''),(2038,'题库管理',0,1,'exam',NULL,NULL,'',1,0,'M','0','0','','education','admin','2024-07-07 16:30:53','admin','2024-07-07 19:07:08',''),(2047,'答题系统',0,2,'/',NULL,NULL,'',1,0,'M','0','0','','example','admin','2024-07-07 19:11:42','admin','2024-07-15 02:35:40',''),(2048,'开始答题',2047,1,'exam-entry','exam/ExamEntry',NULL,'',1,0,'C','0','0','exam:test','checkbox','admin','2024-07-07 22:12:15','admin','2024-07-15 02:35:54',''),(2086,'试题列表',2038,1,'question','exam/question/index',NULL,'',1,0,'C','0','0','exam:question:list','edit','admin','2024-07-09 21:34:37','admin','2024-07-10 01:05:42','试题列表菜单'),(2087,'试题列表查询',2086,1,'#','',NULL,'',1,0,'F','0','0','exam:question:query','#','admin','2024-07-09 21:34:38','',NULL,''),(2088,'试题列表新增',2086,2,'#','',NULL,'',1,0,'F','0','0','exam:question:add','#','admin','2024-07-09 21:34:38','',NULL,''),(2089,'试题列表修改',2086,3,'#','',NULL,'',1,0,'F','0','0','exam:question:edit','#','admin','2024-07-09 21:34:38','',NULL,''),(2090,'试题列表删除',2086,4,'#','',NULL,'',1,0,'F','0','0','exam:question:remove','#','admin','2024-07-09 21:34:38','',NULL,''),(2091,'试题列表导出',2086,5,'#','',NULL,'',1,0,'F','0','0','exam:question:export','#','admin','2024-07-09 21:34:38','',NULL,''),(2092,'历史成绩',2047,1,'score-history','exam/ScoreHistory',NULL,'',1,0,'C','0','0','','log','admin','2024-07-15 02:26:55','admin','2024-07-15 02:35:57','');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',_binary '新版本内容','0','admin','2024-07-06 13:01:13','',NULL,'管理员'),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',_binary '维护内容','0','admin','2024-07-06 13:01:13','',NULL,'管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (100,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"t_question\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 13:27:30',190),(101,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"试题类型\",\"dictType\":\"question_type\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 13:38:30',52),(102,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"单选题\",\"dictSort\":1,\"dictType\":\"question_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 13:39:12',20),(103,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"多选题\",\"dictSort\":2,\"dictType\":\"question_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 13:39:20',16),(104,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"判断题\",\"dictSort\":3,\"dictType\":\"question_type\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 13:39:29',15),(105,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"TQuestion\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":2,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":3,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"试题分值\",\"columnId\":4,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 13:50:44',187),(106,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-06 13:50:47',682),(107,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"TQuestion\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 13:50:44\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":2,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 13:50:44\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":3,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 13:50:44\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"试题分值\",\"columnId\":4,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"inser','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 14:55:16',138),(108,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-06 14:55:19',721),(109,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 14:55:16\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":2,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 14:55:16\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":3,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 14:55:16\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"试题分值\",\"columnId\":4,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 15:41:56',151),(110,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-06 15:42:04',507),(111,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 15:41:56\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":2,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 15:41:56\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":3,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 15:41:56\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"试题分值\",\"columnId\":4,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:27:30\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 15:43:43',118),(112,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-06 15:43:45',104),(113,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"题库管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"questions\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:38:40',77),(114,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-06 15:44:30\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"题目列表\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:39:33',19),(115,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2024','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:40:31',32),(116,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-06 15:44:30\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"题目列表\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:40:39',17),(117,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-06 15:44:30\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"题目列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:40:45',15),(118,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/1','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:52:02',103),(119,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"t_question\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:52:07',194),(120,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:52:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":14,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:52:07\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":15,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:52:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"试题分值\",\"columnId\":16,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:52:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequir','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:56:24',124),(121,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin','研发部门','/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"学科\",\"dictType\":\"exam_subject\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:57:01',19),(122,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"java\",\"dictSort\":1,\"dictType\":\"exam_subject\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:57:11',17),(123,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"python\",\"dictSort\":2,\"dictType\":\"exam_subject\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:57:18',19),(124,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"c++\",\"dictSort\":3,\"dictType\":\"exam_subject\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:57:24',11),(125,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:52:07\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 16:56:24\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":14,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:52:07\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 16:56:24\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":15,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:52:07\",\"dictType\":\"exam_subject\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 16:56:24\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"试题分值\",\"columnId\":16,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:52:07\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increme','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 16:57:51',61),(126,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-06 16:57:56',551),(127,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>java中的哪一个关键字用于继承一个类？</p><p>A.implements</p><p>B.extends</p><p>C.inherits</p><p>D.superclass</p>\",\"correct\":\"B\",\"createTime\":\"2024-07-06 17:03:15\",\"difficult\":1,\"gradeLevel\":1,\"id\":1,\"params\":{},\"questionType\":0,\"score\":10,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 17:03:15',419),(128,'试题列表',2,'com.ruoyi.exam.controller.QuestionController.edit()','PUT',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>java中的哪一个关键字用于继承一个类？</p><p>A.implements</p><p>B.extends</p><p>C.inherits</p><p>D.superclass</p>\",\"correct\":\"B\",\"createTime\":\"2024-07-06 17:03:15\",\"difficult\":1,\"gradeLevel\":1,\"id\":1,\"params\":{},\"questionType\":0,\"score\":10,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 17:03:41',13),(129,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-06 16:59:05\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2025,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 17:04:03',34),(130,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/danXuan\",\"createBy\":\"admin\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"单选题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"question/danXuan\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 17:09:59',58),(131,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/2','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 22:20:10',122),(132,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"t_question\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 22:20:14',168),(133,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":25,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 22:20:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":26,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 22:20:14\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":27,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 22:20:14\",\"dictType\":\"exam_subject\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"分值\",\"columnId\":28,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 22:20:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 22:24:13',105),(134,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-06 22:24:16',573),(135,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":25,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 22:20:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 22:24:12\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":26,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 22:20:14\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 22:24:12\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":27,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 22:20:14\",\"dictType\":\"exam_subject\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-07-06 22:24:12\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"分值\",\"columnId\":28,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-06 22:20:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 22:33:56',120),(136,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-06 22:33:59',495),(137,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"Java中的哪一个关键字用于继承一个类？\\nA.implements\\nB.extends\\nC.inherits\\nD.superclass\",\"correct\":\"B\",\"createTime\":\"2024-07-06 22:37:59\",\"difficult\":1,\"gradeLevel\":1,\"id\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 22:37:59',29),(138,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-06 22:26:02\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2032,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-06 22:38:25',26),(139,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"题库管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"exam\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 16:30:53',95),(140,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createBy\":\"admin\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"question\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 16:32:15',16),(141,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-07 16:32:15\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2039,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 16:33:26',19),(142,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2032','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2024-07-07 16:33:30',10),(143,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-07 16:33:55\",\"difficult\":1,\"gradeLevel\":1,\"id\":2,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 16:33:55',34),(144,'试题列表',3,'com.ruoyi.exam.controller.QuestionController.remove()','DELETE',1,'admin','研发部门','/exam/question/2','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 16:34:49',24),(145,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"答题系统\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"exam\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 17:28:33',32),(146,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-07 16:32:15\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2039,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"exam/question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 18:40:52',84),(147,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2039','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 18:41:11',142),(148,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-07 18:42:37\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2041,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 18:47:50',69),(149,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-07 18:42:37\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2041,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"exam/question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 18:56:25',83),(150,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-07 18:42:37\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2041,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 18:58:06',45),(151,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-07-07 16:30:53\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2038,\"menuName\":\"题库管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"#\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 19:06:41',73),(152,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-07-07 16:30:53\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2038,\"menuName\":\"题库管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"exam\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 19:07:08',23),(153,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-07 18:42:37\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2041,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 19:07:22',18),(154,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-07 18:42:37\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2041,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 19:09:25',31),(155,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2040','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 19:09:55',38),(156,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-07 18:42:37\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2041,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 19:10:21',23),(157,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"答题系统\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"paper\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 19:11:42',23),(158,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/test/index\",\"createBy\":\"admin\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"exam:test\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-07 22:12:15',47),(159,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/test/choose_subject\",\"createTime\":\"2024-07-07 22:12:15\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"exam:test\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-08 21:42:44',105),(160,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"答题界面\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":2047,\"path\":\"/exam/test/ExamPage\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-08 22:17:05',59),(161,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/test/ExamPage\",\"createTime\":\"2024-07-08 22:17:05\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"答题界面\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2047,\"path\":\"/exam/test/ExamPage\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-08 22:17:43',27),(162,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/test/ExamPage\",\"createTime\":\"2024-07-08 22:17:05\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"答题界面\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2047,\"path\":\"/paper/test\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-08 22:18:39',22),(163,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/test/ExamPage\",\"createTime\":\"2024-07-08 22:17:05\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"答题界面\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2047,\"path\":\"paper/testing\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-08 22:20:44',18),(164,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/test/ExamPage\",\"createTime\":\"2024-07-08 22:17:05\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"答题界面\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2047,\"path\":\"testing\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-08 22:22:06',19),(165,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/2049','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-08 22:53:17',150),(166,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','DELETE',1,'admin','研发部门','/system/role/2','127.0.0.1','内网IP','{}',NULL,1,'普通角色已分配,不能删除','2024-07-09 13:39:25',38),(167,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','研发部门','/system/user/2','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:39:33',84),(168,'角色管理',3,'com.ruoyi.web.controller.system.SysRoleController.remove()','DELETE',1,'admin','研发部门','/system/role/2','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:39:37',51),(169,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.add()','POST',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2038,2041,2042,2043,2044,2045,2046,2047,2048],\"params\":{},\"roleId\":100,\"roleKey\":\"teacher\",\"roleName\":\"教师\",\"roleSort\":2,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:39:57',37),(170,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"测试\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":100,\"userName\":\"test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:49:55',182),(171,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 13:49:55\",\"delFlag\":\"0\",\"email\":\"\",\"loginDate\":\"2024-07-09 13:50:09\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"测试\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:50:25',32),(172,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.add()','POST',1,'admin','研发部门','/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2047,2048],\"params\":{},\"roleId\":101,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":3,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:58:24',28),(173,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"student_test\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":101,\"userName\":\"student_test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:58:44',93),(174,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin','研发部门','/system/user/100','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:59:02',19),(175,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"老师测试\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":102,\"userName\":\"teacher_test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:59:17',106),(176,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 13:58:44\",\"delFlag\":\"0\",\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"student_test\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[101],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"student_test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 13:59:25',20),(177,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin','研发部门','/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 13:58:44\",\"delFlag\":\"0\",\"email\":\"\",\"loginDate\":\"2024-07-09 14:00:04\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"学生测试\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"student\",\"roleName\":\"学生\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"student_test\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 14:12:37',36),(178,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/103','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2024-07-09 14:14:05',4),(179,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin','研发部门','/system/menu/103','127.0.0.1','内网IP','{}','{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}',0,NULL,'2024-07-09 14:19:50',5),(180,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/3','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 19:39:06',163),(181,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"t_question\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 19:39:11',127),(182,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:39:11\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":38,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:39:11\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":39,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:39:11\",\"dictType\":\"exam_subject\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"分值\",\"columnId\":40,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:39:11\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 19:41:06',106),(183,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-09 19:41:13',725),(184,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p><img src=\\\"/dev-api/profile/upload/2024/07/09/23e09b216a2e8ca021a4fd3287a84d94_20240709194424A002.png\\\"></p>\",\"correct\":\"1\",\"createTime\":\"2024-07-09 19:44:30\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_time\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,                                       correct,             content,                                       create_time )           values ( ?,             ?,             ?,                                       ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_time\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'create_time\' in \'field list\'','2024-07-09 19:44:31',467),(185,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p><img src=\\\"/dev-api/profile/upload/2024/07/09/9b6597ed372fce24b3e1afbd4197b8ac_20240709194713A001.jpg\\\"></p>\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 19:47:17',217),(186,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p><img src=\\\"/dev-api/profile/upload/2024/07/09/9b6597ed372fce24b3e1afbd4197b8ac_20240709194713A001.jpg\\\"></p>\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 19:47:21',11),(187,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>111</p>\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 19:47:35',6),(188,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/4','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 19:53:56',67),(189,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"t_question\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 19:54:01',136),(190,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":44,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:54:00\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":45,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:54:00\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":46,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:54:00\",\"dictType\":\"exam_subject\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"分值\",\"columnId\":47,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:54:00\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 19:58:40',83),(191,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-09 19:58:43',398),(192,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>1</p>\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:04:34',132),(193,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>1</p>\",\"correct\":\"A\",\"option\":\"1\",\"params\":{},\"questionType\":0,\"score\":10,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            10,\n            \'A\',\n \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            10,\n            \'A\',\n \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            10,\n            \'A\',\n \' at line 7','2024-07-09 20:05:11',7),(194,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>1</p>\",\"correct\":\"A\",\"option\":\"1\",\"params\":{},\"questionType\":0,\"score\":10,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            10,\n            \'A\',\n \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            10,\n            \'A\',\n \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            10,\n            \'A\',\n \' at line 7','2024-07-09 20:05:14',5),(195,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"id\":1,\"params\":{},\"questionType\":0,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 20:08:16',26),(196,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>1</p>\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:09:52',9),(197,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>1</p>\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 0,\n            0,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:21:16',31),(198,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":44,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:54:00\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-07-09 19:58:40\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":45,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:54:00\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-07-09 19:58:40\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":46,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:54:00\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-07-09 19:58:40\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"分值\",\"columnId\":47,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 19:54:00\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEd','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 20:29:43',372),(199,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-09 20:29:46',550),(200,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>1</p>\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:32:47',657),(201,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:37:21\",\"difficult\":1,\"gradeLevel\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             grade_level,             difficult,             correct,             content,                                       create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'','2024-07-09 20:37:21',132),(202,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:37:25\",\"difficult\":1,\"gradeLevel\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             grade_level,             difficult,             correct,             content,                                       create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'','2024-07-09 20:37:25',7),(203,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:37:26\",\"difficult\":1,\"gradeLevel\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             grade_level,             difficult,             correct,             content,                                       create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'','2024-07-09 20:37:26',6),(204,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:37:27\",\"difficult\":1,\"gradeLevel\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             grade_level,             difficult,             correct,             content,                                       create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'','2024-07-09 20:37:27',6),(205,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:37:29\",\"difficult\":1,\"gradeLevel\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             grade_level,             difficult,             correct,             content,                                       create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'','2024-07-09 20:37:29',10),(206,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:37:30\",\"difficult\":1,\"gradeLevel\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             grade_level,             difficult,             correct,             content,                                       create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'','2024-07-09 20:37:30',9),(207,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:37:31\",\"difficult\":1,\"gradeLevel\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             grade_level,             difficult,             correct,             content,                                       create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'','2024-07-09 20:37:32',5),(208,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:37:34\",\"difficult\":1,\"gradeLevel\":1,\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             grade_level,             difficult,             correct,             content,                                       create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'grade_level\' in \'field list\'','2024-07-09 20:37:34',9),(209,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"createTime\":\"2024-07-09 20:42:34\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,               correct,             content )           values ( ?,             ?,             ?,                                       ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLException: Column count doesn\'t match value count at row 1\n; bad SQL grammar []; nested exception is java.sql.SQLException: Column count doesn\'t match value count at row 1','2024-07-09 20:42:34',363),(210,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/5','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 20:43:43',76),(211,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"t_question\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 20:46:14',168),(212,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":51,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 20:46:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":52,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 20:46:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":53,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 20:46:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"分值\",\"columnId\":54,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 20:46:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaFiel','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 20:48:10',217),(213,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-09 20:48:13',409),(214,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:50:50',312),(215,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:51:13',26),(216,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"id\":2,\"params\":{},\"questionType\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 20:54:46',210),(217,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"id\":3,\"params\":{},\"questionType\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 20:55:39',13),(218,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:56:02',11),(219,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"option\":\"\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:56:08',5),(220,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"\",\"correct\":\"1\",\"option\":\"\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:56:14',4),(221,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"\",\"correct\":\"\",\"option\":\"\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'\',\n   \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'\',\n   \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'\',\n   \' at line 7','2024-07-09 20:56:17',6),(222,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"option\":\"1\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\r\n### The error may exist in file [D:\\Desktop\\基于ruoyi框架的在线考试系统\\后端\\RuoYi-Vue\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score,             correct,             content,             option )           values ( ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'option ) \n         values ( 1,\n            1,\n            1,\n            \'1\',\n  \' at line 7','2024-07-09 20:58:14',135),(223,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/6','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:02:09',108),(224,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"t_question\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:02:12',145),(225,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":58,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 21:02:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":59,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 21:02:12\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":60,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 21:02:12\",\"dictType\":\"exam_subject\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"分值\",\"columnId\":61,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 21:02:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:04:26',94),(226,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-09 21:04:29',431),(227,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>1</p>\",\"correct\":\"1\",\"id\":1,\"options\":\"1\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:08:32',34),(228,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>11</p>\",\"correct\":\"1\",\"id\":2,\"options\":\"1\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:08:48',17),(229,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>11<img src=\\\"/dev-api/profile/upload/2024/07/09/23e09b216a2e8ca021a4fd3287a84d94_20240709210908A001.png\\\"></p>\",\"correct\":\"1\",\"id\":3,\"options\":\"1\",\"params\":{},\"questionType\":2,\"score\":1,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:09:13',17),(230,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"<p>11<img src=\\\"/dev-api/profile/upload/2024/07/09/3C14B22FD90C861E93405CEB9DE7FA61_20240709210951A002.jpg\\\"></p>\",\"correct\":\"1\",\"id\":4,\"options\":\"1\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:09:57',16),(231,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin','研发部门','/tool/gen/7','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:27:45',83),(232,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin','研发部门','/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"t_question\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:27:48',135),(233,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin','研发部门','/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"question\",\"className\":\"Question\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"题目ID\",\"columnId\":65,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 21:27:48\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"QuestionType\",\"columnComment\":\"题型\",\"columnId\":66,\"columnName\":\"question_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 21:27:48\",\"dictType\":\"question_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"questionType\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SubjectId\",\"columnComment\":\"学科\",\"columnId\":67,\"columnName\":\"subject_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 21:27:48\",\"dictType\":\"exam_subject\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"subjectId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Score\",\"columnComment\":\"分值\",\"columnId\":68,\"columnName\":\"score\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-07-09 21:27:48\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:31:44',105),(234,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin','研发部门','/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"t_question\"}',NULL,0,NULL,'2024-07-09 21:31:47',373),(235,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"1\",\"correct\":\"1\",\"id\":5,\"image\":\"/profile/upload/2024/07/09/23e09b216a2e8ca021a4fd3287a84d94_20240709213717A001.png\",\"options\":\"1\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:37:22',36),(236,'试题列表',3,'com.ruoyi.exam.controller.QuestionController.remove()','DELETE',1,'admin','研发部门','/exam/question/5','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-09 21:46:56',66),(237,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/question/index\",\"createTime\":\"2024-07-09 21:34:37\",\"icon\":\"edit\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2086,\"menuName\":\"试题列表\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2038,\"path\":\"question\",\"perms\":\"exam:question:list\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-10 01:05:42',47),(238,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"id\":6,\"image\":\"/profile/upload/2024/07/10/3C14B22FD90C861E93405CEB9DE7FA61_20240710010558A001.jpg\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-10 01:06:00',20),(239,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"id\":7,\"image\":\"https://yukipedia.oss-cn-hangzhou.aliyuncs.com/75aa55f4-20fc-431a-95e4-166f17de9ae5.jpg\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-10 19:35:35',227),(240,'试题列表',3,'com.ruoyi.exam.controller.QuestionController.remove()','DELETE',1,'admin','研发部门','/exam/question/7','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-10 19:35:38',23),(241,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"ExamEntryView\",\"createTime\":\"2024-07-07 22:12:15\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"exam:test\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:00:30',37),(242,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"Java中的接口不能包含方法实现。\",\"correct\":\"A\",\"id\":45,\"image\":\"https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/d256b35d-9ae1-4ee9-b514-727b74d301f2.jpg\",\"options\":\"A:HashSet,B:Array,C:LinkedList,D:TreeSet\",\"params\":{},\"questionType\":0,\"score\":5,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:48:36',58),(243,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"params\":{},\"questionType\":0,\"score\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'options\' doesn\'t have a default value\r\n### The error may exist in file [E:\\online_examination_system\\online_examination_system\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,                          score )           values ( ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'options\' doesn\'t have a default value\n; Field \'options\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'options\' doesn\'t have a default value','2024-07-11 20:50:25',239),(244,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'options\' doesn\'t have a default value\r\n### The error may exist in file [E:\\online_examination_system\\online_examination_system\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( question_type,             subject_id,             score )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'options\' doesn\'t have a default value\n; Field \'options\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'options\' doesn\'t have a default value','2024-07-11 20:50:30',4),(245,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"id\":46,\"options\":\"A:HashSet,B:Array,C:LinkedList,D:TreeSet\",\"params\":{},\"questionType\":0,\"score\":1,\"subjectId\":0}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:50:37',12),(246,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:39:12\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"单选题\",\"dictSort\":1,\"dictType\":\"question_type\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:56:10',27),(247,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:39:20\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"多选题\",\"dictSort\":2,\"dictType\":\"question_type\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:56:13',24),(248,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-07-06 13:39:29\",\"default\":false,\"dictCode\":102,\"dictLabel\":\"判断题\",\"dictSort\":3,\"dictType\":\"question_type\",\"dictValue\":\"3\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:56:17',26),(249,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:57:11\",\"default\":false,\"dictCode\":103,\"dictLabel\":\"java\",\"dictSort\":1,\"dictType\":\"exam_subject\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:56:32',24),(250,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:57:18\",\"default\":false,\"dictCode\":104,\"dictLabel\":\"python\",\"dictSort\":2,\"dictType\":\"exam_subject\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:56:34',14),(251,'字典数据',2,'com.ruoyi.web.controller.system.SysDictDataController.edit()','PUT',1,'admin','研发部门','/system/dict/data','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2024-07-06 16:57:24\",\"default\":false,\"dictCode\":105,\"dictLabel\":\"c++\",\"dictSort\":3,\"dictType\":\"exam_subject\",\"dictValue\":\"3\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:56:37',25),(252,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"以下哪一个是Java中的集合类？\",\"correct\":\"A\",\"id\":47,\"image\":\"https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/d0db48d5-d9c7-4908-86aa-5705800cf0ae.jpg\",\"options\":\"A:ArrayList,B:HashSet,C:HashMap,D:LinkedList\",\"params\":{},\"questionType\":1,\"score\":10,\"subjectId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-11 20:57:25',11),(253,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"ExamEntry\",\"createTime\":\"2024-07-07 22:12:15\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"exam:test\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-13 02:38:21',38),(254,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ExamEntry\",\"createTime\":\"2024-07-07 22:12:15\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"exam:test\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-13 02:42:07',49),(255,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"video-test\",\"correct\":\"A\",\"id\":494,\"image\":\"https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/cf056776-2f99-4a23-a1b9-e6f6b8bd6a5d.jpg\",\"options\":\"A:HashSet,B:Array,C:LinkedList,D:TreeSet\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 01:01:15',52),(256,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"video-test\",\"correct\":\"A\",\"id\":495,\"image\":\"https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/708395b7-a2f8-4fb0-9ea5-7af1ef17f233.jpg\",\"options\":\"A:HashSet,B:Array,C:LinkedList,D:TreeSet\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 01:05:39',41),(257,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"dasd a\",\"correct\":\"d sad\",\"id\":496,\"image\":\"https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/4befb5b8-a9c3-4ec0-b7ea-6bc1fa2eee72.jpg\",\"options\":\"大苏打撒\",\"params\":{},\"questionType\":1,\"score\":1,\"subjectId\":1,\"video\":\"https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/02adf822-dda4-4e0a-ac2e-1f71a51264ce.mp4\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 01:16:08',15),(258,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"params\":{},\"score\":0,\"video\":\"https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/c47b2cf1-767c-4aaa-8054-f2fc7ae178b0.mp4\"}',NULL,1,'\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'options\' doesn\'t have a default value\r\n### The error may exist in file [E:\\online_examination_system\\online_examination_system\\ruoyi-exam\\target\\classes\\mapper\\exam\\QuestionMapper.xml]\r\n### The error may involve com.ruoyi.exam.mapper.QuestionMapper.insertQuestion-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into t_question          ( score,                                                                 video )           values ( ?,                                                                 ? )\r\n### Cause: java.sql.SQLException: Field \'options\' doesn\'t have a default value\n; Field \'options\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'options\' doesn\'t have a default value','2024-07-15 01:47:11',106),(259,'试题列表',1,'com.ruoyi.exam.controller.QuestionController.add()','POST',1,'admin','研发部门','/exam/question','127.0.0.1','内网IP','{\"content\":\"video-test\",\"correct\":\"A\",\"id\":847,\"options\":\"A:HashSet,B:Array,C:LinkedList,D:TreeSet\",\"params\":{},\"questionType\":1,\"score\":10,\"subjectId\":1,\"video\":\"https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/1e71c79b-9fee-4cf4-8f23-8bff26ca295c.mp4\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:23:14',66),(260,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"历史成绩\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2047,\"path\":\"1\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:26:55',25),(261,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-07-15 02:26:55\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2092,\"menuName\":\"历史成绩\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:27:24',20),(262,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ExamEntry\",\"createTime\":\"2024-07-07 22:12:15\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"exam:test\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:27:28',60),(263,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ScoreHistory\",\"createTime\":\"2024-07-15 02:26:55\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2092,\"menuName\":\"历史成绩\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:27:50',27),(264,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ScoreHistory\",\"createTime\":\"2024-07-15 02:26:55\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2092,\"menuName\":\"历史成绩\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"test\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:28:27',26),(265,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ScoreHistory\",\"createTime\":\"2024-07-15 02:26:55\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2092,\"menuName\":\"历史成绩\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"score-history\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:32:55',50),(266,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ExamEntry\",\"createTime\":\"2024-07-07 22:12:15\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"exam\",\"perms\":\"exam:test\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:33:13',25),(267,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-07-07 19:11:42\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2047,\"menuName\":\"答题系统\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"exam\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:34:20',19),(268,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ExamEntry\",\"createTime\":\"2024-07-07 22:12:15\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"/\",\"perms\":\"exam:test\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:35:11',20),(269,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2024-07-07 19:11:42\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2047,\"menuName\":\"答题系统\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"/\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:35:40',57),(270,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ExamEntry\",\"createTime\":\"2024-07-07 22:12:15\",\"icon\":\"checkbox\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"开始答题\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"exam-entry\",\"perms\":\"exam:test\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:35:54',15),(271,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin','研发部门','/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"exam/ScoreHistory\",\"createTime\":\"2024-07-15 02:26:55\",\"icon\":\"log\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2092,\"menuName\":\"历史成绩\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2047,\"path\":\"score-history\",\"perms\":\"\",\"routeName\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2024-07-15 02:35:57',35);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2024-07-06 13:01:11','',NULL,''),(2,'se','项目经理',2,'0','admin','2024-07-06 13:01:11','',NULL,''),(3,'hr','人力资源',3,'0','admin','2024-07-06 13:01:11','',NULL,''),(4,'user','普通员工',4,'0','admin','2024-07-06 13:01:11','',NULL,'');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2024-07-06 13:01:11','',NULL,'超级管理员'),(2,'普通角色','common',2,'2',1,1,'0','2','admin','2024-07-06 13:01:11','',NULL,'普通角色'),(100,'教师','teacher',2,'1',1,1,'0','0','admin','2024-07-09 13:39:57','',NULL,NULL),(101,'学生','student',3,'1',1,1,'0','0','admin','2024-07-09 13:58:24','',NULL,NULL);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (100,2038),(100,2041),(100,2042),(100,2043),(100,2044),(100,2045),(100,2046),(100,2047),(100,2048),(101,2047),(101,2048);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2024-07-15 01:44:17','admin','2024-07-06 13:01:11','','2024-07-15 01:44:17','管理员'),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','2','127.0.0.1','2024-07-06 13:01:11','admin','2024-07-06 13:01:11','',NULL,'测试员'),(100,NULL,'test','测试','00','','','0','','$2a$10$uCn73LQ5cosZumPUzYXB6e4n3MK8DLqF01NQMFq9grCqZWCmGoIua','0','2','127.0.0.1','2024-07-09 13:50:38','admin','2024-07-09 13:49:55','admin','2024-07-09 13:50:37',NULL),(101,NULL,'student_test','学生测试','00','','','0','','$2a$10$g.SHWcJiV3vqFBaHM6x4xumLkkDdXsz6DyAFXIQmLlcSnKmeAotJ6','0','0','127.0.0.1','2024-07-09 14:00:04','admin','2024-07-09 13:58:44','admin','2024-07-09 14:12:37',NULL),(102,NULL,'teacher_test','老师测试','00','','','0','','$2a$10$lImew5SBknfF1Jmc0qrr5.z1NFqYYB6kNAenrH60G64u/PmW72Dx.','0','0','127.0.0.1','2024-07-09 18:59:21','admin','2024-07-09 13:59:17','','2024-07-09 18:59:21',NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(101,101),(102,100);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_exam_answer`
--

DROP TABLE IF EXISTS `t_exam_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_exam_answer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `exam_id` bigint NOT NULL,
  `question_id` bigint NOT NULL,
  `user_answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `exam_id` (`exam_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `t_exam_answer_ibfk_1` FOREIGN KEY (`exam_id`) REFERENCES `t_exam_result` (`id`) ON DELETE CASCADE,
  CONSTRAINT `t_exam_answer_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `t_question` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=615 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_exam_answer`
--

LOCK TABLES `t_exam_answer` WRITE;
/*!40000 ALTER TABLE `t_exam_answer` DISABLE KEYS */;
INSERT INTO `t_exam_answer` VALUES (1,6,45,'A',1),(2,6,47,'A',1),(3,7,45,NULL,0),(4,7,47,NULL,0),(6,8,47,NULL,0),(26,9,219,NULL,0),(28,9,215,NULL,0),(30,9,218,NULL,0),(109,13,218,NULL,0),(127,14,215,NULL,0),(133,14,217,NULL,0),(134,14,45,NULL,0),(154,15,493,NULL,0),(169,16,491,NULL,0),(191,17,216,NULL,0),(211,18,218,NULL,0),(233,19,491,NULL,0),(268,21,45,'A',1),(291,22,47,'A',1),(306,23,45,'A',1),(327,24,491,NULL,0),(329,24,45,NULL,0),(350,25,491,NULL,0),(366,26,219,NULL,0),(369,26,217,NULL,0),(407,28,217,NULL,0),(412,28,492,NULL,0),(413,28,47,NULL,0),(448,30,215,NULL,0),(469,31,492,NULL,0),(494,32,491,NULL,0),(508,33,215,'B',0),(572,36,493,NULL,0),(591,37,218,NULL,0),(605,38,47,NULL,0),(606,38,494,NULL,0),(607,38,45,NULL,0),(608,38,215,NULL,0),(609,38,492,NULL,0),(610,38,493,NULL,0),(611,38,491,NULL,0),(612,38,218,NULL,0),(613,38,847,NULL,0),(614,38,219,NULL,0);
/*!40000 ALTER TABLE `t_exam_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_exam_result`
--

DROP TABLE IF EXISTS `t_exam_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_exam_result` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `score` int NOT NULL,
  `exam_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_exam_result_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_exam_result`
--

LOCK TABLES `t_exam_result` WRITE;
/*!40000 ALTER TABLE `t_exam_result` DISABLE KEYS */;
INSERT INTO `t_exam_result` VALUES (2,1,10,'2024-07-12 20:30:56'),(3,1,10,'2024-07-12 20:31:44'),(4,1,60,'2024-07-12 20:46:25'),(5,1,15,'2024-07-12 21:17:04'),(6,1,15,'2024-07-12 21:19:45'),(7,1,0,'2024-07-12 21:30:22'),(8,1,0,'2024-07-12 21:50:57'),(9,1,0,'2024-07-12 21:56:43'),(10,1,10,'2024-07-12 22:28:57'),(11,1,0,'2024-07-12 22:36:34'),(12,1,0,'2024-07-13 00:44:13'),(13,1,10,'2024-07-13 00:47:22'),(14,1,0,'2024-07-13 00:51:37'),(15,1,0,'2024-07-13 00:52:26'),(16,1,0,'2024-07-13 01:39:10'),(17,1,0,'2024-07-13 01:42:18'),(18,1,0,'2024-07-13 01:43:11'),(19,1,30,'2024-07-13 01:59:47'),(20,1,0,'2024-07-13 02:14:21'),(21,1,15,'2024-07-13 02:19:18'),(22,1,10,'2024-07-13 02:33:16'),(23,1,5,'2024-07-13 02:38:34'),(24,1,0,'2024-07-13 02:45:47'),(25,1,0,'2024-07-13 10:34:20'),(26,1,0,'2024-07-13 12:14:05'),(27,1,10,'2024-07-13 12:57:38'),(28,1,0,'2024-07-13 13:17:11'),(29,1,0,'2024-07-13 13:18:07'),(30,1,0,'2024-07-13 13:19:48'),(31,1,0,'2024-07-13 13:23:11'),(32,1,10,'2024-07-13 13:24:13'),(33,1,120,'2024-07-13 13:26:14'),(34,1,0,'2024-07-13 13:27:04'),(35,1,0,'2024-07-13 13:30:26'),(36,1,40,'2024-07-15 00:00:19'),(37,1,0,'2024-07-15 01:44:24'),(38,1,0,'2024-07-15 02:42:01');
/*!40000 ALTER TABLE `t_exam_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_question`
--

DROP TABLE IF EXISTS `t_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_type` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `correct` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `options` text COLLATE utf8mb4_general_ci NOT NULL,
  `explanation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=848 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_question`
--

LOCK TABLES `t_question` WRITE;
/*!40000 ALTER TABLE `t_question` DISABLE KEYS */;
INSERT INTO `t_question` VALUES (45,1,1,5,'A','Java中的接口不能包含方法实现。','A:HashSet,B:Array,C:LinkedList,D:TreeSet',NULL,'https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/d256b35d-9ae1-4ee9-b514-727b74d301f2.jpg',NULL),(47,1,1,10,'A','以下哪一个是Java中的集合类？','A:ArrayList,B:HashSet,C:HashMap,D:LinkedList',NULL,'https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/d0db48d5-d9c7-4908-86aa-5705800cf0ae.jpg',NULL),(215,1,1,10,'C','给出下面代码，关于该程序以下哪个说法是正确的？','A:编译时将产生错误,B:编译时正确，运行时将产生错误,C:输出零,D:输出空',NULL,'https://s2.loli.net/2024/07/12/y2VgtQEp54DejZx.png',NULL),(216,1,1,10,'D','有以下方法的定义，请选择该方法的返回类型（ ）。','A:byte,B:short,C:int,D:double',NULL,'https://s2.loli.net/2024/07/12/SGRtMiIwgoWAcO8.png',NULL),(217,1,1,10,'D','有以下程序片段，下列哪个选项不能插入到行1。','A:import java.awt.*,B:package mypackage,C:class OtherClass{ },D:public class MyClass{ }',NULL,'https://s2.loli.net/2024/07/12/jEVnWrZCsxkNfuH.png',NULL),(218,1,1,10,'D','下面的程序创建了一个文件输出流对象，用来向文件test.txt中输出数据，假设程序当前目录下不存在文件test.txt，编译下面的程序Test.java后，将该程序运行3次，则文件test.txt 的内容是( )：','A:ABCABC,B:ABCDE,C:Test,D:ABCDE ABCDE ABCDE',NULL,'https://s2.loli.net/2024/07/12/ncUyM3vwjHrRISV.png',NULL),(219,1,1,10,'A','下列代码的输出结果是 ：','A:parent\nchild\nchild,B:parent\nchild\nparent,C:parent\nchild,D:编译错误',NULL,'https://s2.loli.net/2024/07/12/JKdyRkfguqcNeYF.png',NULL),(491,1,2,10,'C','在Python3中，有关字符串的运算结果为：','A:12，12,B:15，15,C:12，15,D:None，None',NULL,'https://s2.loli.net/2024/07/12/5yVum9fTibNJcLK.png',NULL),(492,1,2,10,'C','Which numbers are printed?','A:2 4 6,B:0  1  2  4  5  6,C:0  1  4  5,D:0  1  4  5  6  7  8  9,E:1  2  4  5  6',NULL,'https://s2.loli.net/2024/07/12/VnqBN3bRSPEFHkY.png',NULL),(493,1,2,10,'A','下列代码输出为：','A:True,B:False,C:语法错误,D:P',NULL,'https://s2.loli.net/2024/07/12/P1RpaSDH3VxfzFC.png',NULL),(494,1,1,1,'A','video-test','A:HashSet,B:Array,C:LinkedList,D:TreeSet',NULL,'https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/cf056776-2f99-4a23-a1b9-e6f6b8bd6a5d.jpg',NULL),(847,1,1,10,'A','video-test','A:HashSet,B:Array,C:LinkedList,D:TreeSet',NULL,NULL,'https://rainbow-web-tlias.oss-cn-hangzhou.aliyuncs.com/1e71c79b-9fee-4cf4-8f23-8bff26ca295c.mp4');
/*!40000 ALTER TABLE `t_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_subject`
--

DROP TABLE IF EXISTS `t_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `level` int DEFAULT NULL,
  `level_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order_by` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_subject`
--

LOCK TABLES `t_subject` WRITE;
/*!40000 ALTER TABLE `t_subject` DISABLE KEYS */;
INSERT INTO `t_subject` VALUES (1,'Mathematics',1,'Grade 9',NULL,1),(2,'Science',1,'Grade 10',NULL,2);
/*!40000 ALTER TABLE `t_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_text_content`
--

DROP TABLE IF EXISTS `t_text_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_text_content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_text_content`
--

LOCK TABLES `t_text_content` WRITE;
/*!40000 ALTER TABLE `t_text_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_text_content` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-15 15:40:30
