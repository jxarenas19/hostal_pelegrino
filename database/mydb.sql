/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : mydb

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 11/11/2019 01:05:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cb_menus
-- ----------------------------
DROP TABLE IF EXISTS `cb_menus`;
CREATE TABLE `cb_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_number` int(11) NOT NULL DEFAULT 0,
  `cb_modules_id` int(11) NULL DEFAULT NULL,
  `parent_cb_menus_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cb_menus
-- ----------------------------
INSERT INTO `cb_menus` VALUES (4, 'Habitaciones', NULL, NULL, 'module', 2, 4, NULL);
INSERT INTO `cb_menus` VALUES (8, 'Imagenes', NULL, NULL, 'module', 7, 8, NULL);
INSERT INTO `cb_menus` VALUES (10, 'Acompañantes', NULL, NULL, 'module', 8, 10, NULL);
INSERT INTO `cb_menus` VALUES (11, 'Servicios', NULL, NULL, 'module', 9, 11, NULL);
INSERT INTO `cb_menus` VALUES (12, 'Hostales', NULL, NULL, 'module', 0, 12, NULL);
INSERT INTO `cb_menus` VALUES (15, 'Tipo Habitación', 'fa fa-list-ul', NULL, 'module', 1, 14, NULL);
INSERT INTO `cb_menus` VALUES (18, 'Temporada', NULL, NULL, 'module', 4, 17, NULL);
INSERT INTO `cb_menus` VALUES (20, 'Temporada Fecha', NULL, NULL, 'module', 5, 19, NULL);
INSERT INTO `cb_menus` VALUES (24, 'Reservas', NULL, NULL, 'module', 6, 22, NULL);
INSERT INTO `cb_menus` VALUES (26, 'Precio', NULL, NULL, 'module', 0, 24, NULL);

-- ----------------------------
-- Table structure for cb_modules
-- ----------------------------
DROP TABLE IF EXISTS `cb_modules`;
CREATE TABLE `cb_modules`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_column_build` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cb_modules
-- ----------------------------
INSERT INTO `cb_modules` VALUES (4, 'Habitaciones', 'fa fa-bars', 'hp_habitaciones', 'AdminHabitacionesController', '[{\"column_label\":\"Nombre\",\"column_field\":\"nombre\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Descripci\\u00f3n\",\"column_field\":\"descripcion\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Tipo de Habitaci\\u00f3n\",\"column_field\":\"thabitaciones_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_thabitaciones\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"orden\",\"primary_key\":false,\"display\":false},{\"column\":\"nombre_in\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Hostal\",\"column_field\":\"hostales_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_hostales\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":true,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion\",\"primary_key\":false,\"display\":false},{\"column\":\"tel\",\"primary_key\":false,\"display\":false},{\"column\":\"lat\",\"primary_key\":false,\"display\":false},{\"column\":\"lng\",\"primary_key\":false,\"display\":false},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion_in\",\"primary_key\":false,\"display\":false}]}]');
INSERT INTO `cb_modules` VALUES (8, 'Imagenes', 'fa fa-bars', 'hp_images', 'AdminImagenesController', '[{\"column_label\":\"Nombre\",\"column_field\":\"nombre\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Descripci\\u00f3n\",\"column_field\":\"descripcion\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Url\",\"column_field\":\"url\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Principal\",\"column_field\":\"principal\",\"column_type\":\"radio\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[{\"key\":\"valor\",\"label\":\"True\"},{\"key\":\"valor\",\"label\":\"False\"}],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Hostal\",\"column_field\":\"hostales_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_hostales\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion\",\"primary_key\":false,\"display\":false},{\"column\":\"tel\",\"primary_key\":false,\"display\":false},{\"column\":\"lat\",\"primary_key\":false,\"display\":false},{\"column\":\"lng\",\"primary_key\":false,\"display\":false},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion_in\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Habitaci\\u00f3n\",\"column_field\":\"habitaciones_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_habitaciones\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"thabitaciones_id\",\"primary_key\":false,\"display\":false},{\"column\":\"hostales_id\",\"primary_key\":false,\"display\":false}]}]');
INSERT INTO `cb_modules` VALUES (10, 'Acompañantes', 'fa fa-bars', 'hp_acompañantes', 'AdminAcompañantesController', '[{\"column_label\":\"Nombre\",\"column_field\":\"nombre\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Apellidos\",\"column_field\":\"apellidos\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Nacionalidad\",\"column_field\":\"nacionalidad\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Fecha Nacimiento\",\"column_field\":\"fecha_nacimiento\",\"column_type\":\"date\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":\"d-m-y\",\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"G\\u00e9nero\",\"column_field\":\"genero\",\"column_type\":\"select_option\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[{\"key\":\"male\",\"label\":\"Masculino\"},{\"key\":\"female\",\"label\":\"Femenino\"}],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Reserva\",\"column_field\":\"hp_reservas_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_reservas\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"fecha_ini\",\"primary_key\":false,\"display\":false},{\"column\":\"fecha_fin\",\"primary_key\":false,\"display\":false},{\"column\":\"correo\",\"primary_key\":false,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"apellidos\",\"primary_key\":false,\"display\":false},{\"column\":\"fecha_nacimiento\",\"primary_key\":false,\"display\":false},{\"column\":\"hostales_id\",\"primary_key\":false,\"display\":false},{\"column\":\"numeros_adultos\",\"primary_key\":false,\"display\":false},{\"column\":\"numeros_ni\\u00f1os\",\"primary_key\":false,\"display\":false},{\"column\":\"nacionalidad\",\"primary_key\":false,\"display\":false},{\"column\":\"numero_pasaporte\",\"primary_key\":false,\"display\":false},{\"column\":\"genero\",\"primary_key\":false,\"display\":false},{\"column\":\"hp_habitaciones_id\",\"primary_key\":false,\"display\":false}]}]');
INSERT INTO `cb_modules` VALUES (11, 'Servicios', 'fa fa-bars', 'hp_servicios', 'AdminServiciosController', '[{\"column_label\":\"T\\u00edtulo\",\"column_field\":\"titulo\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Title\",\"column_field\":\"titulo_in\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Descripci\\u00f3n\",\"column_field\":\"descripcion\",\"column_type\":\"text_area\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Description\",\"column_field\":\"descripcion_in\",\"column_type\":\"text_area\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Precio\",\"column_field\":\"precio\",\"column_type\":\"money\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Hostal\",\"column_field\":\"hp_hostales_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_hostales\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion\",\"primary_key\":false,\"display\":false},{\"column\":\"tel\",\"primary_key\":false,\"display\":false},{\"column\":\"lat\",\"primary_key\":false,\"display\":false},{\"column\":\"lng\",\"primary_key\":false,\"display\":false},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion_in\",\"primary_key\":false,\"display\":false}]}]');
INSERT INTO `cb_modules` VALUES (12, 'Hostales', 'fa fa-bars', 'hp_hostales', 'AdminHostalesController', '[{\"column_label\":\"Nombre\",\"column_field\":\"nombre\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Peque\\u00f1a Descripci\\u00f3n\",\"column_field\":\"mini_descripcion\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Descripci\\u00f3n\",\"column_field\":\"descripcion\",\"column_type\":\"text_area\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Direcci\\u00f3n\",\"column_field\":\"direccion\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Tel\\u00e9fono\",\"column_field\":\"tel\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Latitud\",\"column_field\":\"lat\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":true,\"column_edit\":true,\"column_add\":true,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Longitud\",\"column_field\":\"lng\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":true,\"column_edit\":true,\"column_add\":true,\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Correo\",\"column_field\":\"email\",\"column_type\":\"email\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Short Description\",\"column_field\":\"mini_descripcion_in\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Description\",\"column_field\":\"descripcion_in\",\"column_type\":\"text_area\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":null,\"column_text_min\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Address\",\"column_field\":\"direccion_in\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');
INSERT INTO `cb_modules` VALUES (14, 'Tipo Habitación', 'fa fa-bars', 'hp_thabitaciones', 'AdminTipoHabitaciónController', '[{\"column_label\":\"Nombre\",\"column_field\":\"nombre\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Descripci\\u00f3n\",\"column_field\":\"descripcion\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Description\",\"column_field\":\"descripcion_in\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":false,\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Name\",\"column_field\":\"nombre_in\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_text_display_limit\":\"255\",\"column_text_max\":\"255\",\"column_text_min\":null,\"column_date_format\":null,\"column_option_table\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');
INSERT INTO `cb_modules` VALUES (17, 'Temporada', 'fa fa-bars', 'hp_temporada', 'AdminTemporadaController', '[{\"column_label\":\"Nombre\",\"column_field\":\"nombre\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Name\",\"column_field\":\"nombre_in\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');
INSERT INTO `cb_modules` VALUES (19, 'Temporada Fecha', 'fa fa-bars', 'hp_temp_fechas', 'AdminTemporadaFechaController', '[{\"column_label\":\"Fecha Inicio\",\"column_field\":\"fecha_inicio\",\"column_type\":\"date\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":\"d-m-y\",\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Fecha Fin\",\"column_field\":\"fecha_fin\",\"column_type\":\"date\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":\"d-m-y\",\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Temporada\",\"column_field\":\"hp_temporada_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_temporada\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":true,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"nombre_in\",\"primary_key\":false,\"display\":false}]}]');
INSERT INTO `cb_modules` VALUES (22, 'Reservas', 'fa fa-bars', 'hp_reservas', 'AdminReservasController', '[{\"column_label\":\"Fecha Inicio\",\"column_field\":\"fecha_ini\",\"column_type\":\"date\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":\"d-m-y\",\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Fecha Fin\",\"column_field\":\"fecha_fin\",\"column_type\":\"date\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":\"d-m-y\",\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Correo\",\"column_field\":\"correo\",\"column_type\":\"email\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Nombre\",\"column_field\":\"nombre\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Apellidos\",\"column_field\":\"apellidos\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Fecha Nacimiento\",\"column_field\":\"fecha_nacimiento\",\"column_type\":\"date\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":\"d-m-y\",\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Hostal\",\"column_field\":\"hostales_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_hostales\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion\",\"primary_key\":false,\"display\":false},{\"column\":\"tel\",\"primary_key\":false,\"display\":false},{\"column\":\"lat\",\"primary_key\":false,\"display\":false},{\"column\":\"lng\",\"primary_key\":false,\"display\":false},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion_in\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"N\\u00famero Adultos\",\"column_field\":\"numeros_adultos\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"N\\u00famero Ni\\u00f1os\",\"column_field\":\"numeros_ni\\u00f1os\",\"column_type\":\"number\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Nacionalidad\",\"column_field\":\"nacionalidad\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Pasaporte\",\"column_field\":\"numero_pasaporte\",\"column_type\":\"text\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"G\\u00e9nero\",\"column_field\":\"genero\",\"column_type\":\"select_option\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[{\"key\":\"male\",\"label\":\"Masculino\"},{\"key\":\"female\",\"label\":\"Femenino\"}],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]},{\"column_label\":\"Habitaci\\u00f3n\",\"column_field\":\"hp_habitaciones_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_habitaciones\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":\"hostales_id\",\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"thabitaciones_id\",\"primary_key\":false,\"display\":false},{\"column\":\"hostales_id\",\"primary_key\":false,\"display\":false}]}]');
INSERT INTO `cb_modules` VALUES (24, 'Precio', 'fa fa-bars', 'hp_precio', 'AdminPrecioController', '[{\"column_label\":\"Hostal\",\"column_field\":\"hostales_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_hostales\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion\",\"primary_key\":false,\"display\":false},{\"column\":\"tel\",\"primary_key\":false,\"display\":false},{\"column\":\"lat\",\"primary_key\":false,\"display\":false},{\"column\":\"lng\",\"primary_key\":false,\"display\":false},{\"column\":\"email\",\"primary_key\":false,\"display\":false},{\"column\":\"mini_descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion_in\",\"primary_key\":false,\"display\":false},{\"column\":\"direccion_in\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Habitaci\\u00f3n\",\"column_field\":\"habitaciones_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_habitaciones\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":\"hostales_id\",\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"descripcion\",\"primary_key\":false,\"display\":false},{\"column\":\"thabitaciones_id\",\"primary_key\":false,\"display\":false},{\"column\":\"hostales_id\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Temporada\",\"column_field\":\"temporada_id\",\"column_type\":\"select_table\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":\"hp_temporada\",\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":\"id\",\"column_option_display\":\"nombre\",\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[{\"column\":\"id\",\"primary_key\":true,\"display\":false},{\"column\":\"nombre\",\"primary_key\":false,\"display\":false},{\"column\":\"nombre_in\",\"primary_key\":false,\"display\":false}]},{\"column_label\":\"Precio\",\"column_field\":\"precio\",\"column_type\":\"money\",\"column_file_encrypt\":\"on\",\"column_image_width\":null,\"column_image_height\":null,\"column_option_table\":null,\"column_date_format\":null,\"column_text_display_limit\":150,\"column_text_max\":255,\"column_text_min\":0,\"column_money_prefix\":null,\"column_money_precision\":null,\"column_money_thousand_separator\":null,\"column_money_decimal_separator\":null,\"column_option_value\":null,\"column_option_display\":null,\"column_option_sql_condition\":null,\"column_options\":[],\"column_sql_query\":null,\"column_help\":null,\"column_mandatory\":\"on\",\"column_browse\":\"on\",\"column_detail\":\"on\",\"column_edit\":\"on\",\"column_add\":\"on\",\"column_filterable\":null,\"column_foreign\":null,\"listTableColumns\":[]}]');

-- ----------------------------
-- Table structure for cb_role_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cb_role_privileges`;
CREATE TABLE `cb_role_privileges`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cb_roles_id` int(11) NOT NULL,
  `cb_menus_id` int(11) NOT NULL,
  `can_browse` tinyint(4) NOT NULL DEFAULT 1,
  `can_create` tinyint(4) NOT NULL DEFAULT 1,
  `can_read` tinyint(4) NOT NULL DEFAULT 1,
  `can_update` tinyint(4) NOT NULL DEFAULT 1,
  `can_delete` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cb_role_privileges
-- ----------------------------
INSERT INTO `cb_role_privileges` VALUES (1, 1, 10, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (2, 1, 4, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (3, 1, 12, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (4, 1, 8, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (5, 1, 6, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (6, 1, 9, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (7, 1, 11, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (9, 1, 5, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (11, 1, 15, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (12, 1, 18, 1, 1, 1, 1, 1);
INSERT INTO `cb_role_privileges` VALUES (13, 1, 20, 1, 1, 1, 1, 1);

-- ----------------------------
-- Table structure for cb_roles
-- ----------------------------
DROP TABLE IF EXISTS `cb_roles`;
CREATE TABLE `cb_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cb_roles
-- ----------------------------
INSERT INTO `cb_roles` VALUES (1, 'Administrador');

-- ----------------------------
-- Table structure for custom
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom`  (
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hp_acompañantes
-- ----------------------------
DROP TABLE IF EXISTS `hp_acompañantes`;
CREATE TABLE `hp_acompañantes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellidos` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nacionalidad` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_reservas_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_hp_acompañantes_hp_reservas1_idx`(`hp_reservas_id`) USING BTREE,
  CONSTRAINT `fk_hp_acompañantes_hp_reservas1` FOREIGN KEY (`hp_reservas_id`) REFERENCES `hp_reservas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_acompañantes
-- ----------------------------
INSERT INTO `hp_acompañantes` VALUES (1, 'Norvelaynes', 'Chacon', 'Cubana', '2010-11-19', 'female', 1);
INSERT INTO `hp_acompañantes` VALUES (2, 'Diane Chanel', 'Diaz Chacón', 'Cubana', '2020-11-12', 'female', 1);

-- ----------------------------
-- Table structure for hp_facilidades
-- ----------------------------
DROP TABLE IF EXISTS `hp_facilidades`;
CREATE TABLE `hp_facilidades`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hp_habitaciones
-- ----------------------------
DROP TABLE IF EXISTS `hp_habitaciones`;
CREATE TABLE `hp_habitaciones`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `thabitaciones_id` int(11) NOT NULL,
  `hostales_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_habitaciones_thabitaciones_idx`(`thabitaciones_id`) USING BTREE,
  INDEX `fk_habitaciones_hostales1_idx`(`hostales_id`) USING BTREE,
  CONSTRAINT `fk_habitaciones_hostales1` FOREIGN KEY (`hostales_id`) REFERENCES `hp_hostales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_habitaciones_thabitaciones` FOREIGN KEY (`thabitaciones_id`) REFERENCES `hp_thabitaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_habitaciones
-- ----------------------------
INSERT INTO `hp_habitaciones` VALUES (1, 'Single', NULL, 1, 3);
INSERT INTO `hp_habitaciones` VALUES (2, 'Single in double', NULL, 2, 3);
INSERT INTO `hp_habitaciones` VALUES (3, 'Double', NULL, 3, 3);
INSERT INTO `hp_habitaciones` VALUES (4, 'Triple', NULL, 4, 3);
INSERT INTO `hp_habitaciones` VALUES (5, 'Single', NULL, 1, 4);

-- ----------------------------
-- Table structure for hp_hostales
-- ----------------------------
DROP TABLE IF EXISTS `hp_hostales`;
CREATE TABLE `hp_hostales`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mini_descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `direccion` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lat` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lng` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mini_descripcion_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `direccion_in` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_hostales
-- ----------------------------
INSERT INTO `hp_hostales` VALUES (3, 'Hostal Peregrino El Encinar', 'Se encuentra ubicado en el corazón de la Habana Vieja, a unos metros de la Plaza de la Catedral', 'Se encuentra ubicado en el corazón de la Habana Vieja, a unos metros de la Plaza de la Catedral. Cuenta con cuatro habitaciones con aire acondicionado, baño privado, agua caliente 24 horas, secadora de pelo, minibar, TV, caja de seguridad y radio/reloj-despertador. La terraza del hostal tiene vista al centro histórico y a la entrada de la bahía y a las fortalezas.', 'Chacon, #60 1er y 2do piso – entre Cuba y Aguiar.Habana Vieja. La Habana. Cuba.', '+53 7 8601257 / +53 7 8618027', '23.142717', '-82.354044', 'info@hostalperegrino.com', 'It is a hostel located in the heart of Old Havana, at just a few meters from the Plaza de la Catedral', 'It is a hostel located in the heart of Old Havana, at just a few meters from the Plaza de la Catedral. The hostel has 4 rooms with Air Conditioner, private bathroom, hot water 24 hours, hairdryer, minibar, TV, safe box and radio. The hostel’s roof has a view to the historical centre, the bay entrance and its fortress.', 'Chacón, 60 – 1st and 2nd floor – between Cuba and Aguiar.Old Town. La Habana. Cuba.');
INSERT INTO `hp_hostales` VALUES (4, 'Hostal Peregrino Consulado', 'Hostal con cinco habitaciones y tres apartamentos adjuntos, situado muy cerca de Prado y La Habana Vieja', 'Hostal con cinco habitaciones y tres apartamentos adjuntos, situado muy cerca de Prado y La Habana Vieja. Dos de las habitaciones son dúplex, para familias o grupos, con dos niveles: en el primero tiene una cama doble y en el segundo dos camas personales. Habitaciones con balcón, aire acondicionado, baño privado con agua caliente 24 horas y secadora de pelo, TV, minibar, caja de seguridad y equipo de música.', 'Consulado, 152 – 1er piso – entre Colón y Trocadero.Centro Habana. La Habana. Cuba', '+53 7 8601257 / +53 7 8618027', '23.139799', '-82.360041', 'hostalperegrino@gmail.com', 'The hostal has five rooms and three attached apartments, very close to Prado, and Havana Vieja', 'The hostal has five rooms and three attached apartments, very close to Prado, and Havana Vieja. Rooms with balcony, air conditioner, own bath and 24 hours hot water, hairdryer , TV, minibar, safe box and stereo. Two of the rooms are duplex, suitable for families or groups. These room has two levels: one double bed on the first and two single beds in the second, with the same amenities of the other rooms of the hostal.', 'Consulado, 152 – 1st floor – between Colón and Trocadero.Centro Habana. La Habana. Cuba');
INSERT INTO `hp_hostales` VALUES (5, 'Hostal Peregrino Lealtad', 'Está situado en el centro de La Habana (Centro Habana), al lado del Malecón (la avenida principal de la ciudad)', 'Está situado en el centro de La Habana (Centro Habana), al lado del Malecón (la avenida principal de la ciudad), entre las dos principales áreas de interés turísticos: La Habana Vieja y Vedado (La Rampa), a una distancia que permite ir caminando a ambas zonas y muy cerca de Casa de la Música, Academia de salsa, zona comercial, etc. Cuenta con dos habitaciones con terraza, aire acondicionado, baño privado con agua caliente 24 horas y secadora de pelo, TV, minibar, caja de seguridad y radio/reloj-despertador.', 'Lealtad, 203 -1er piso – entre Concordia y Virtudes.Centro Habana.', '+53 7 8601257 / +53 7 8618027', '23.138731', '-82.367049', 'hostalperegrino@gmail.com', 'The hostal is located in the heart of La Habana, next to Malecón (the main street of the city)', 'The hostal is located in the heart of La Habana, next to Malecón (the main street of the city), between the most important areas: La Habana Vieja and Vedado (La Rampa), a walking distance from both and very close to Casa de la Música, Academia de salsa, Shopping centre, etc. Rooms with terrace, air conditioner, own bath and 24 hours hot water, hairdryer , TV, minibar, safe box and radio.', 'Lealtad, 203 -1st floor – between Concordia and Virtudes.Centro Habana.');
INSERT INTO `hp_hostales` VALUES (6, 'Hostal Peregrino Vedado', 'Hostal situado en el corazón del Vedado, una de las dos áreas turísticas de la ciudad.', 'Hostal situado en el corazón del Vedado, una de las dos áreas turísticas de la ciudad. Está muy cerca de la zona de vida nocturna (La Rampa) con cabarets, bares y clubes, Plaza de la Revolución, Universidad de La Habana y del malecón. Tiene cuatro habitaciones con aire acondicionado, baño privado con agua caliente 24 horas y secadora de pelo, TV, minibar, caja de seguridad y radio/reloj-despertador. Tiene dos agradables terrazas para ser usadas como áreas de descanso.', 'Calle 9na,406 entre G y F. Vedado. La Habana. Cuba', '+53 7 8601257 / +53 7 8618027', '23.07938', '-82.48847', 'hostalperegrino@gmail.com', 'This hostal is located in Vedado, one of the most important touristic areas of La Habana', 'This hostal is located in Vedado, one of the most important touristic areas of La Habana: very close to the nightlife zone, cabarets, bars, clubs (La Rampa), Plaza de la Revolucion, University and Malecon. Four air conditioned rooms with private bathroom and 24 hours hot water, hairdryer , TV, minibar, safe box and radio/clock-alarm. The hostal has also two nice terraces as realaxation areas.', '9th Street, 406 between G and F. Vedado. La Habana. Cuba');

-- ----------------------------
-- Table structure for hp_images
-- ----------------------------
DROP TABLE IF EXISTS `hp_images`;
CREATE TABLE `hp_images`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descripcion` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `principal` tinyint(1) NOT NULL DEFAULT 0,
  `hostales_id` int(11) NULL DEFAULT NULL,
  `habitaciones_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_images_hostales1_idx`(`hostales_id`) USING BTREE,
  INDEX `fk_images_habitaciones1_idx`(`habitaciones_id`) USING BTREE,
  CONSTRAINT `fk_images_habitaciones1` FOREIGN KEY (`habitaciones_id`) REFERENCES `hp_habitaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_images_hostales1` FOREIGN KEY (`hostales_id`) REFERENCES `hp_hostales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_images
-- ----------------------------
INSERT INTO `hp_images` VALUES (1, 'Banner', 'Imagen de Arriba', '/img/mainbanner.jpg', 1, 3, NULL);

-- ----------------------------
-- Table structure for hp_precio
-- ----------------------------
DROP TABLE IF EXISTS `hp_precio`;
CREATE TABLE `hp_precio`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostales_id` int(11) NOT NULL,
  `habitaciones_id` int(11) NOT NULL,
  `temporada_id` int(11) NOT NULL,
  `precio` decimal(65, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_precio_habitaciones1_idx`(`habitaciones_id`) USING BTREE,
  INDEX `fk_precio_temporada1_idx`(`temporada_id`) USING BTREE,
  INDEX `fk_precio_hostales1_idx`(`hostales_id`) USING BTREE,
  CONSTRAINT `fk_precio_habitaciones1` FOREIGN KEY (`habitaciones_id`) REFERENCES `hp_habitaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_precio_temporada1` FOREIGN KEY (`temporada_id`) REFERENCES `hp_temporada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hp_precio_hp_hostales1` FOREIGN KEY (`hostales_id`) REFERENCES `hp_hostales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_precio
-- ----------------------------
INSERT INTO `hp_precio` VALUES (1, 3, 1, 1, 30);
INSERT INTO `hp_precio` VALUES (2, 3, 2, 1, 35);
INSERT INTO `hp_precio` VALUES (3, 3, 3, 1, 40);
INSERT INTO `hp_precio` VALUES (4, 3, 4, 1, 45);
INSERT INTO `hp_precio` VALUES (5, 3, 2, 3, 30);
INSERT INTO `hp_precio` VALUES (7, 3, 3, 3, 30);
INSERT INTO `hp_precio` VALUES (8, 3, 1, 5, 35);
INSERT INTO `hp_precio` VALUES (9, 3, 2, 5, 50);
INSERT INTO `hp_precio` VALUES (10, 3, 3, 5, 60);
INSERT INTO `hp_precio` VALUES (11, 3, 1, 1, 30);

-- ----------------------------
-- Table structure for hp_reservas
-- ----------------------------
DROP TABLE IF EXISTS `hp_reservas`;
CREATE TABLE `hp_reservas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_ini` date NULL DEFAULT NULL,
  `fecha_fin` date NULL DEFAULT NULL,
  `correo` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `apellidos` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_nacimiento` date NULL DEFAULT NULL,
  `hostales_id` int(11) NOT NULL,
  `numeros_adultos` int(11) NOT NULL,
  `numeros_niños` int(11) NULL DEFAULT NULL,
  `nacionalidad` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `numero_pasaporte` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `genero` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hp_habitaciones_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_reservas_hostales1_idx`(`hostales_id`) USING BTREE,
  INDEX `fk_hp_reservas_hp_habitaciones1_idx`(`hp_habitaciones_id`) USING BTREE,
  CONSTRAINT `fk_hp_reservas_hp_habitaciones1` FOREIGN KEY (`hp_habitaciones_id`) REFERENCES `hp_habitaciones` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_reservas_hostales1` FOREIGN KEY (`hostales_id`) REFERENCES `hp_hostales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_reservas
-- ----------------------------
INSERT INTO `hp_reservas` VALUES (1, '2001-11-19', '2003-11-19', 'sdsd@sdsd.com', 'Julio', 'Arenas', '2003-02-16', 3, 2, 0, 'Alemana', '232c2', 'male', 1);

-- ----------------------------
-- Table structure for hp_servicios
-- ----------------------------
DROP TABLE IF EXISTS `hp_servicios`;
CREATE TABLE `hp_servicios`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titulo_in` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `descripcion_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `precio` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hp_hostales_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_hp_servicios_hp_hostales1`(`hp_hostales_id`) USING BTREE,
  CONSTRAINT `fk_hp_servicios_hp_hostales1` FOREIGN KEY (`hp_hostales_id`) REFERENCES `hp_hostales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_servicios
-- ----------------------------
INSERT INTO `hp_servicios` VALUES (1, 'Servicio de recogida al aereopuerto', 'Picking up service', 'Incluye la recogida por un taxista profesional en un auto oficial. Es un modo fácil, seguro y personalizado de comenzar el viaje en Cuba. Será recibido en el lobby del aeropuerto por una persona con un cartel con sus nombres escritos en él. Precio del servicio desde el aeropuerto de La Habana: 30.00 CUC (el precio ya incluye la espera en el aeropuerto). Para recogida desde otros aeropuertos debe contarnos directamente.', 'A professional driver with official license will pick you up at the airport. It is a safe, easy and customized beginning. If you choose this option you will be met at the airport lobby, where you must look for the person who has a poster with your names. Price of the service from Havana airport: 30.00 CUC one way (the price includes the waiting time). For airport picking up service from other airport, please, contact us directly.', '30', NULL);
INSERT INTO `hp_servicios` VALUES (2, 'Desayuno', 'Breakfast', 'El desayuno es un buffet que incluye: jugos, frutas, pan, mantequilla y miel, café, leche, té, yogurt, chocolate, vegetales, pancake, jamón, tortilla, pastel/bizcochos. El precio es por persona', 'Available on request. Breakfast includes juice, fruits, bread, butter, honey, pastry, milk, coffee, tea, yogurt, omelette, ham, vegetables, hot chocalate, and pancakes. The price is per person', '5', NULL);

-- ----------------------------
-- Table structure for hp_temp_fechas
-- ----------------------------
DROP TABLE IF EXISTS `hp_temp_fechas`;
CREATE TABLE `hp_temp_fechas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `hp_temporada_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_hp_temp_fechas_hp_temporada1_idx`(`hp_temporada_id`) USING BTREE,
  CONSTRAINT `fk_hp_temp_fechas_hp_temporada1` FOREIGN KEY (`hp_temporada_id`) REFERENCES `hp_temporada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_temp_fechas
-- ----------------------------
INSERT INTO `hp_temp_fechas` VALUES (1, '2001-07-19', '2031-08-19', 1);
INSERT INTO `hp_temp_fechas` VALUES (2, '2001-11-19', '2030-04-20', 1);
INSERT INTO `hp_temp_fechas` VALUES (3, '2001-05-19', '2030-06-19', 3);
INSERT INTO `hp_temp_fechas` VALUES (4, '2001-09-19', '2031-10-19', 3);
INSERT INTO `hp_temp_fechas` VALUES (5, '2020-12-19', '2007-01-20', 5);
INSERT INTO `hp_temp_fechas` VALUES (6, '2001-05-19', '2007-05-19', 5);

-- ----------------------------
-- Table structure for hp_temporada
-- ----------------------------
DROP TABLE IF EXISTS `hp_temporada`;
CREATE TABLE `hp_temporada`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nombre_in` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_temporada
-- ----------------------------
INSERT INTO `hp_temporada` VALUES (1, 'Temporada alta', 'High season');
INSERT INTO `hp_temporada` VALUES (3, 'Temporada baja', 'Low season');
INSERT INTO `hp_temporada` VALUES (5, 'Temporada extrema alta', 'Extremely high season');

-- ----------------------------
-- Table structure for hp_thabitaciones
-- ----------------------------
DROP TABLE IF EXISTS `hp_thabitaciones`;
CREATE TABLE `hp_thabitaciones`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `descripcion_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `orden` int(255) NULL DEFAULT 1,
  `nombre_in` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_thabitaciones
-- ----------------------------
INSERT INTO `hp_thabitaciones` VALUES (1, 'Single', 'La habitación single es una habitación más pequeña que el resto de las habitaciones, pero con todas las comodidades', 'Single room is an smaller room but with all amenities', 1, 'Single');
INSERT INTO `hp_thabitaciones` VALUES (2, 'Single en doble', 'Una persona alojada en una de las habitaciones principales', 'One person staying in one of the main rooms', 2, 'Single in double');
INSERT INTO `hp_thabitaciones` VALUES (3, 'Doble', NULL, NULL, 3, 'Double');
INSERT INTO `hp_thabitaciones` VALUES (4, 'Triple', NULL, NULL, 4, 'Triple');
INSERT INTO `hp_thabitaciones` VALUES (5, 'Duplex', NULL, NULL, 1, 'Duplex');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_08_07_152421_modify_users', 1);
INSERT INTO `migrations` VALUES (4, '2016_08_07_152421_table_menus', 1);
INSERT INTO `migrations` VALUES (5, '2016_08_07_152421_table_modules', 1);
INSERT INTO `migrations` VALUES (6, '2016_08_07_152421_table_role_privileges', 1);
INSERT INTO `migrations` VALUES (7, '2016_08_07_152421_table_roles', 1);
INSERT INTO `migrations` VALUES (8, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_11_01_214430_Custom', 1);
INSERT INTO `migrations` VALUES (10, '2019_11_02_221404_Prueba', 1);
INSERT INTO `migrations` VALUES (11, '2019_11_06_103957_add_column_name_temporada', 2);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prueba
-- ----------------------------
DROP TABLE IF EXISTS `prueba`;
CREATE TABLE `prueba`  (
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cb_roles_id` int(11) NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `login_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin@admin.com', NULL, '$2y$10$AvKrXrTkm2A2jg5hApjYm.vYcVGVTIHDdvHVap15Ini96zeGNp0Ha', NULL, NULL, NULL, NULL, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', '2019-11-10 22:30:26');

SET FOREIGN_KEY_CHECKS = 1;
