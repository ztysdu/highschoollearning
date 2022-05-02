/*
 Navicat Premium Data Transfer

 Source Server         : db4
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : db4

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 28/09/2020 20:35:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissions_group_id_b120cbf9`(`group_id`) USING BTREE,
  INDEX `auth_group_permissions_permission_id_84c5c92e`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  INDEX `auth_permission_content_type_id_2f476e4b`(`content_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 57 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add h class', 6, 'add_hclass');
INSERT INTO `auth_permission` VALUES (22, 'Can change h class', 6, 'change_hclass');
INSERT INTO `auth_permission` VALUES (23, 'Can delete h class', 6, 'delete_hclass');
INSERT INTO `auth_permission` VALUES (24, 'Can view h class', 6, 'view_hclass');
INSERT INTO `auth_permission` VALUES (25, 'Can add 用户', 7, 'add_huser');
INSERT INTO `auth_permission` VALUES (26, 'Can change 用户', 7, 'change_huser');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 用户', 7, 'delete_huser');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户', 7, 'view_huser');
INSERT INTO `auth_permission` VALUES (29, 'Can add tag', 8, 'add_tag');
INSERT INTO `auth_permission` VALUES (30, 'Can change tag', 8, 'change_tag');
INSERT INTO `auth_permission` VALUES (31, 'Can delete tag', 8, 'delete_tag');
INSERT INTO `auth_permission` VALUES (32, 'Can view tag', 8, 'view_tag');
INSERT INTO `auth_permission` VALUES (33, 'Can add 知识点', 9, 'add_knowledgepoint');
INSERT INTO `auth_permission` VALUES (34, 'Can change 知识点', 9, 'change_knowledgepoint');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 知识点', 9, 'delete_knowledgepoint');
INSERT INTO `auth_permission` VALUES (36, 'Can view 知识点', 9, 'view_knowledgepoint');
INSERT INTO `auth_permission` VALUES (37, 'Can add exam record', 10, 'add_examrecord');
INSERT INTO `auth_permission` VALUES (38, 'Can change exam record', 10, 'change_examrecord');
INSERT INTO `auth_permission` VALUES (39, 'Can delete exam record', 10, 'delete_examrecord');
INSERT INTO `auth_permission` VALUES (40, 'Can view exam record', 10, 'view_examrecord');
INSERT INTO `auth_permission` VALUES (41, 'Can add 考试', 11, 'add_exam');
INSERT INTO `auth_permission` VALUES (42, 'Can change 考试', 11, 'change_exam');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 考试', 11, 'delete_exam');
INSERT INTO `auth_permission` VALUES (44, 'Can view 考试', 11, 'view_exam');
INSERT INTO `auth_permission` VALUES (45, 'Can add 考试试题', 12, 'add_examinationquestion');
INSERT INTO `auth_permission` VALUES (46, 'Can change 考试试题', 12, 'change_examinationquestion');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 考试试题', 12, 'delete_examinationquestion');
INSERT INTO `auth_permission` VALUES (48, 'Can view 考试试题', 12, 'view_examinationquestion');
INSERT INTO `auth_permission` VALUES (49, 'Can add test paper', 13, 'add_testpaper');
INSERT INTO `auth_permission` VALUES (50, 'Can change test paper', 13, 'change_testpaper');
INSERT INTO `auth_permission` VALUES (51, 'Can delete test paper', 13, 'delete_testpaper');
INSERT INTO `auth_permission` VALUES (52, 'Can view test paper', 13, 'view_testpaper');
INSERT INTO `auth_permission` VALUES (53, 'Can add select', 14, 'add_select');
INSERT INTO `auth_permission` VALUES (54, 'Can change select', 14, 'change_select');
INSERT INTO `auth_permission` VALUES (55, 'Can delete select', 14, 'delete_select');
INSERT INTO `auth_permission` VALUES (56, 'Can view select', 14, 'view_select');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'huser', 'hclass');
INSERT INTO `django_content_type` VALUES (7, 'huser', 'huser');
INSERT INTO `django_content_type` VALUES (8, 'student', 'tag');
INSERT INTO `django_content_type` VALUES (9, 'student', 'knowledgepoint');
INSERT INTO `django_content_type` VALUES (10, 'student', 'examrecord');
INSERT INTO `django_content_type` VALUES (11, 'teacher', 'exam');
INSERT INTO `django_content_type` VALUES (12, 'teacher', 'examinationquestion');
INSERT INTO `django_content_type` VALUES (13, 'teacher', 'testpaper');
INSERT INTO `django_content_type` VALUES (14, 'teacher', 'select');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-09-28 11:51:11.631406');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-09-28 11:51:11.640382');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-09-28 11:51:11.654345');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-09-28 11:51:11.682270');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-09-28 11:51:11.685262');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-09-28 11:51:11.688254');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-09-28 11:51:11.692243');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-09-28 11:51:11.692243');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-09-28 11:51:11.696233');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-09-28 11:51:11.699225');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-09-28 11:51:11.702217');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-09-28 11:51:11.708201');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-09-28 11:51:11.712191');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2020-09-28 11:51:11.715182');
INSERT INTO `django_migrations` VALUES (15, 'huser', '0001_initial', '2020-09-28 11:51:11.732137');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0001_initial', '2020-09-28 11:51:11.773028');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2020-09-28 11:51:11.789983');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-28 11:51:11.794969');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2020-09-28 11:51:11.798959');
INSERT INTO `django_migrations` VALUES (20, 'teacher', '0001_initial', '2020-09-28 11:51:11.824889');
INSERT INTO `django_migrations` VALUES (21, 'teacher', '0002_exam_questions', '2020-09-28 11:51:11.842840');
INSERT INTO `django_migrations` VALUES (22, 'teacher', '0003_auto_20200921_1616', '2020-09-28 11:51:11.871764');
INSERT INTO `django_migrations` VALUES (23, 'teacher', '0004_examinationquestion_explain', '2020-09-28 11:51:11.878745');
INSERT INTO `django_migrations` VALUES (24, 'teacher', '0005_auto_20200921_2024', '2020-09-28 11:51:11.902682');
INSERT INTO `django_migrations` VALUES (25, 'student', '0001_initial', '2020-09-28 11:51:11.929637');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('c84vt098ji2mp7u9rm6nih2n9uhgpcox', '.eJxVjEsOwjAMBe-SNYoSJ7UDS_Y9Q-U4Li2gVOpnhbg7VOoCtm9m3st0vK1Dty06d2MxF-PN6XfLLA-tOyh3rrfJylTXecx2V-xBF9tORZ_Xw_07GHgZvjWA9CKhJ03ZA2XCSIqBCjSSsmJBRy4iBN-zD8IKriGOZ3ApOSA07w_ggTcN:1kMs5c:4IS9LUPRL_XsHJ5O9S9-qEhwGWBzkIEqVAZZUyxPq14', '2020-10-12 12:17:08.439383');

-- ----------------------------
-- Table structure for huser_hclass
-- ----------------------------
DROP TABLE IF EXISTS `huser_hclass`;
CREATE TABLE `huser_hclass`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huser_hclass
-- ----------------------------
INSERT INTO `huser_hclass` VALUES (1, '一班');

-- ----------------------------
-- Table structure for huser_huser
-- ----------------------------
DROP TABLE IF EXISTS `huser_huser`;
CREATE TABLE `huser_huser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_teacher` tinyint(1) NOT NULL,
  `hclass_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `huser_huser_hclass_id_76419eb7`(`hclass_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of huser_huser
-- ----------------------------
INSERT INTO `huser_huser` VALUES (1, 'pbkdf2_sha256$216000$nXbRfkI47DSs$7K6ROUnjgXrcgGPgaoqMqCcSnKsACEVYL++8GoM96nc=', '2020-09-28 12:17:08.438386', 1, 'admin', '', '', '', 1, 1, '2020-09-28 12:17:03.623480', 1, 1);

-- ----------------------------
-- Table structure for huser_huser_groups
-- ----------------------------
DROP TABLE IF EXISTS `huser_huser_groups`;
CREATE TABLE `huser_huser_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `huser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `huser_huser_groups_huser_id_group_id_2ada6631_uniq`(`huser_id`, `group_id`) USING BTREE,
  INDEX `huser_huser_groups_huser_id_022587f3`(`huser_id`) USING BTREE,
  INDEX `huser_huser_groups_group_id_8f9d9bb5`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of huser_huser_groups
-- ----------------------------

-- ----------------------------
-- Table structure for huser_huser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `huser_huser_user_permissions`;
CREATE TABLE `huser_huser_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `huser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `huser_huser_user_permiss_huser_id_permission_id_f57cfc24_uniq`(`huser_id`, `permission_id`) USING BTREE,
  INDEX `huser_huser_user_permissions_huser_id_3d835475`(`huser_id`) USING BTREE,
  INDEX `huser_huser_user_permissions_permission_id_bb55ae3e`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of huser_huser_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for student_examrecord
-- ----------------------------
DROP TABLE IF EXISTS `student_examrecord`;
CREATE TABLE `student_examrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submit_time` datetime(6) NOT NULL,
  `correct_rate` double NULL DEFAULT NULL,
  `exam_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_examrecord_exam_id_f329252f`(`exam_id`) USING BTREE,
  INDEX `student_examrecord_user_id_d014e503`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of student_examrecord
-- ----------------------------

-- ----------------------------
-- Table structure for student_examrecord_wrong
-- ----------------------------
DROP TABLE IF EXISTS `student_examrecord_wrong`;
CREATE TABLE `student_examrecord_wrong`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examrecord_id` int(11) NOT NULL,
  `examinationquestion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `student_examrecord_wrong_examrecord_id_examinatio_abb11fe1_uniq`(`examrecord_id`, `examinationquestion_id`) USING BTREE,
  INDEX `student_examrecord_wrong_examrecord_id_02f130a7`(`examrecord_id`) USING BTREE,
  INDEX `student_examrecord_wrong_examinationquestion_id_aa286723`(`examinationquestion_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of student_examrecord_wrong
-- ----------------------------

-- ----------------------------
-- Table structure for student_knowledgepoint
-- ----------------------------
DROP TABLE IF EXISTS `student_knowledgepoint`;
CREATE TABLE `student_knowledgepoint`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `video` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `audio` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `student_knowledgepoint_tag_id_1e9a38eb`(`tag_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_knowledgepoint
-- ----------------------------

-- ----------------------------
-- Table structure for student_tag
-- ----------------------------
DROP TABLE IF EXISTS `student_tag`;
CREATE TABLE `student_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(54) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student_tag
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_exam
-- ----------------------------
DROP TABLE IF EXISTS `teacher_exam`;
CREATE TABLE `teacher_exam`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `hclass_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacher_exam_hclass_id_28548b58`(`hclass_id`) USING BTREE,
  INDEX `teacher_exam_teacher_id_2dcb1c55`(`teacher_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_exam
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_exam_questions
-- ----------------------------
DROP TABLE IF EXISTS `teacher_exam_questions`;
CREATE TABLE `teacher_exam_questions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `examinationquestion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `teacher_exam_questions_exam_id_examinationquest_6f065400_uniq`(`exam_id`, `examinationquestion_id`) USING BTREE,
  INDEX `teacher_exam_questions_exam_id_5a2b9fd8`(`exam_id`) USING BTREE,
  INDEX `teacher_exam_questions_examinationquestion_id_c12c5ee7`(`examinationquestion_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of teacher_exam_questions
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_examinationquestion
-- ----------------------------
DROP TABLE IF EXISTS `teacher_examinationquestion`;
CREATE TABLE `teacher_examinationquestion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `answer` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `test_paper_id` int(11) NOT NULL,
  `explain` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacher_examinationquestion_test_paper_id_0ad2eb65`(`test_paper_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_examinationquestion
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_select
-- ----------------------------
DROP TABLE IF EXISTS `teacher_select`;
CREATE TABLE `teacher_select`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `select_choice` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `select_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `teacher_select_question_id_0c257b36`(`question_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_select
-- ----------------------------

-- ----------------------------
-- Table structure for teacher_testpaper
-- ----------------------------
DROP TABLE IF EXISTS `teacher_testpaper`;
CREATE TABLE `teacher_testpaper`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_paper_name` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher_testpaper
-- ----------------------------
INSERT INTO `teacher_testpaper` VALUES (1, '2016年');
INSERT INTO `teacher_testpaper` VALUES (2, '2017年');
INSERT INTO `teacher_testpaper` VALUES (3, '2018年');
INSERT INTO `teacher_testpaper` VALUES (4, '2019年');
INSERT INTO `teacher_testpaper` VALUES (5, '2020年');

SET FOREIGN_KEY_CHECKS = 1;
