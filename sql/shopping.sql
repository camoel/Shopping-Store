/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : shopping

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 17/04/2024 11:01:10
*/

 create database  shopping;
use shopping;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `useraddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '地址信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 5, '李华', '四川省攀枝花市攀枝花学院', '1588377994');
INSERT INTO `address` VALUES (2, 6, '李华', '四川省攀枝花市攀枝花学院', '15584809899');
INSERT INTO `address` VALUES (3, 6, '李华', '四川省成都市龙泉驿区', '15884850919');
INSERT INTO `address` VALUES (4, 6, '李华', '四川省内江市隆昌市', '15884850919');
INSERT INTO `address` VALUES (5, 6, '李华', '江西省南昌市', '15884850919');
INSERT INTO `address` VALUES (6, 6, '李华', '江苏省南京市', '15884859019');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1712403156035-admin.jpg', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商家姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商家介绍',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (1, 'pipa', '123456', '鲜野山珍', 'http://localhost:9090/files/1711185287644-鲜野山珍.png', 'BUSINESS', '15883490578', 'pipa@qq.com', '本公司始终坚持“诚信做事，感恩做人”的运营宗旨，深入产地后方进行产品源头把关，尽最大的努力把产地优质的产品高效快速的送达到客户手中。同时携手社会各界爱心人士和社会各大公益机构为西部教育援助与贫困山区产业扶贫添砖加瓦。公司在多元化，规范化和专业化运营的同时，不忘初心，勉励前行，始终朝着为社会创造更多价值的方向稳步前进。', '审核通过');
INSERT INTO `business` VALUES (2, 'juzi', '123456', 'juzi', NULL, 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (5, 'mangguo', '123456', 'mangguo', NULL, 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (6, 'yyny', '123456', '百农生鲜', 'http://localhost:9090/files/1711597500637-bnsx.jpg', 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (7, 'lymm', '123456', 'lymm', NULL, 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (8, 'zzzm', '123456', 'zzzm', NULL, 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (9, 'mmhc', '123456', 'mmhc', NULL, 'BUSINESS', NULL, NULL, NULL, '审核通过');
INSERT INTO `business` VALUES (10, 'qcrd', '123456', 'qcrd', NULL, 'BUSINESS', NULL, NULL, NULL, '审核通过');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  `num` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (8, 6, 6, 6, 1);
INSERT INTO `cart` VALUES (13, 5, 4, 6, 1);
INSERT INTO `cart` VALUES (14, 6, 5, 6, 2);
INSERT INTO `cart` VALUES (16, 6, 13, 6, 1);

-- ----------------------------
-- Table structure for chat_group
-- ----------------------------
DROP TABLE IF EXISTS `chat_group`;
CREATE TABLE `chat_group`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `chat_user_id` int NULL DEFAULT NULL COMMENT '聊天用户ID',
  `user_id` int NULL DEFAULT NULL COMMENT '当前用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '聊天组' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat_group
-- ----------------------------
INSERT INTO `chat_group` VALUES (19, 1, 6);
INSERT INTO `chat_group` VALUES (20, 6, 1);

-- ----------------------------
-- Table structure for chat_info
-- ----------------------------
DROP TABLE IF EXISTS `chat_info`;
CREATE TABLE `chat_info`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `chat_user_id` int NULL DEFAULT NULL COMMENT '聊天用户ID',
  `user_id` int NULL DEFAULT NULL COMMENT '当前用户ID',
  `text` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '聊天内容',
  `isread` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '否' COMMENT '是否已读',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '聊天信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat_info
-- ----------------------------
INSERT INTO `chat_info` VALUES (6, 1, 6, '你好', '是', '2024-04-17 09:57:16');
INSERT INTO `chat_info` VALUES (7, 6, 1, '你好', '否', '2024-04-17 09:59:52');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (3, 5, 2, 1);
INSERT INTO `collect` VALUES (4, 5, 13, 6);
INSERT INTO `collect` VALUES (5, 5, 3, 5);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '店铺ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 5, 2, 1, '枇杷很好吃', '2024-03-28 08:11:04');
INSERT INTO `comment` VALUES (2, 5, 2, 1, '物美价廉，值得购买！', '2024-03-28 13:31:04');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品图片',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品介绍',
  `price` double NULL DEFAULT NULL COMMENT '商品价格',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '计件单位',
  `count` int NULL DEFAULT 0 COMMENT '商品销量',
  `type_id` int NULL DEFAULT NULL COMMENT '分类ID',
  `business_id` int NULL DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (2, '枇杷', 'http://localhost:9090/files/1711336815066-pipa.jpg', '<p><img src=\"http://localhost:9090/files/1711342911423-pipajs1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711342922039-pipajs.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 13, '斤', 0, 8, 1);
INSERT INTO `goods` VALUES (3, '攀枝花凯特芒大芒果新鲜水果', 'http://localhost:9090/files/1711595469325-mangguo.jpg', '<p><img src=\"http://localhost:9090/files/1711595559736-mangguojs.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711595575417-mangguojs1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 5, '斤', 0, 8, 5);
INSERT INTO `goods` VALUES (4, '米易县大红西红柿，石头番茄，硬粉', 'http://localhost:9090/files/1711597529659-xihongshi.jpg', '<p><img src=\"http://localhost:9090/files/1711597574773-xihongshijs.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1711597581939-xihongshijs1.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2, '斤', 0, 7, 6);
INSERT INTO `goods` VALUES (5, '油底肉', 'http://localhost:9090/files/1711597602726-1667023380508.jpg', '', 25, '袋', 0, 4, 6);
INSERT INTO `goods` VALUES (6, '石榴', 'http://localhost:9090/files/1711597679930-shiliu.jpg', '', 8, '斤', 0, 8, 6);
INSERT INTO `goods` VALUES (7, '芒果干', 'http://localhost:9090/files/1711597708087-1615784800752.jpg', '', 9.9, '袋', 0, 4, 6);
INSERT INTO `goods` VALUES (8, '桑葚', 'http://localhost:9090/files/1711597766203-1615784689576.jpg', '', 10, '瓶', 0, 4, 6);
INSERT INTO `goods` VALUES (9, '乌骨土鸡 粮食饲养乌皮土鸡', 'http://localhost:9090/files/1711597974898-wuguji.jpg', '', 22, '斤', 0, 6, 6);
INSERT INTO `goods` VALUES (10, '澳洲淡水龙虾<绿色天然>', 'http://localhost:9090/files/1711598135589-longxia.jpg', '', 45, '斤', 0, 5, 6);
INSERT INTO `goods` VALUES (11, '大红袍花椒批发食用花椒', 'http://localhost:9090/files/1711598284065-huajiao.jpg', '', 23, '斤', 0, 3, 6);
INSERT INTO `goods` VALUES (12, '多花黄精种苗批发 云南黄精苗价格 贵州高杆不倒黄精种植技术', 'http://localhost:9090/files/1711598399178-huangjingzhongmiao.jpg', '', 0.6, '株', 0, 2, 6);
INSERT INTO `goods` VALUES (13, '红叶樱花 樱花树苗庭院绿化植物大型风景树乔木盆栽地栽晚樱南北方种植', 'http://localhost:9090/files/1711598494716-hongyeyinghua.jpg', '', 3, '棵', 0, 1, 6);
INSERT INTO `goods` VALUES (14, '桑葚', 'http://localhost:9090/files/1711630568144-1615784689576.jpg', '<p><img src=\"http://localhost:9090/files/1711630586543-1615784689576.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 12, 'ping', 0, 4, 1);
INSERT INTO `goods` VALUES (15, '米易枇杷新鲜应季水果枇杷果当季高山甜', 'http://localhost:9090/files/1713256761819-屏幕截图 2024-04-16 163736.jpg', '<p><img src=\"http://localhost:9090/files/1713256815255-屏幕截图 2024-04-16 163803.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713256824572-屏幕截图 2024-04-16 163857.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 10, '斤', 0, 8, 1);
INSERT INTO `goods` VALUES (16, '释迦果', 'http://localhost:9090/files/1713257001427-屏幕截图 2024-04-16 164137.jpg', '<p style=\"text-align:center;\"><img src=\"http://localhost:9090/files/1713257038200-屏幕截图 2024-04-16 164156.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713257045672-屏幕截图 2024-04-16 164304.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 5, '斤', 0, 8, 1);
INSERT INTO `goods` VALUES (17, '攀枝花露天蓝莓', 'http://localhost:9090/files/1713257413285-屏幕截图 2024-04-16 164801.jpg', '<p><img src=\"http://localhost:9090/files/1713257423558-屏幕截图 2024-04-16 164847.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713257433740-屏幕截图 2024-04-16 164914.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 20, '斤', 0, 8, 1);
INSERT INTO `goods` VALUES (18, '大凉山丑苹果', 'http://localhost:9090/files/1713258054385-屏幕截图 2024-04-16 165930.jpg', '<p><img src=\"http://localhost:9090/files/1713258079973-屏幕截图 2024-04-16 165953.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713258085661-屏幕截图 2024-04-16 170032.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3.5, '斤', 0, 8, 1);
INSERT INTO `goods` VALUES (19, '毛桃黑美人', 'http://localhost:9090/files/1713258199281-屏幕截图 2024-04-16 170250.jpg', '<p><img src=\"http://localhost:9090/files/1713258222708-屏幕截图 2024-04-16 170304.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713258299984-屏幕截图 2024-04-16 170439.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 5.5, '斤', 0, 8, 1);
INSERT INTO `goods` VALUES (20, '四川攀枝花本地高山沃柑', 'http://localhost:9090/files/1713258427634-屏幕截图 2024-04-16 170647.jpg', '<p><img src=\"http://localhost:9090/files/1713258453721-屏幕截图 2024-04-16 170600.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713258459278-屏幕截图 2024-04-16 170621.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2, '斤', 0, 8, 1);
INSERT INTO `goods` VALUES (21, '黄鳝苗', 'http://localhost:9090/files/1713258735356-屏幕截图 2024-04-16 171118.jpg', '<p><img src=\"http://localhost:9090/files/1713258754513-屏幕截图 2024-04-16 171144.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713258759529-屏幕截图 2024-04-16 171158.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1, '尾', 0, 5, 2);
INSERT INTO `goods` VALUES (22, '广草鱼苗优良品种抗病力强生长速度快', 'http://localhost:9090/files/1713258903425-屏幕截图 2024-04-16 171417.jpg', '<p><img src=\"http://localhost:9090/files/1713258922601-屏幕截图 2024-04-16 171432.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713258928076-屏幕截图 2024-04-16 171447.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 0.48, '尾', 0, 5, 2);
INSERT INTO `goods` VALUES (23, '桑葚干', 'http://localhost:9090/files/1713259197118-屏幕截图 2024-04-16 171757.jpg', '<p><img src=\"http://localhost:9090/files/1713259220136-屏幕截图 2024-04-16 171917.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713259228714-屏幕截图 2024-04-16 171824.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 15, '斤', 0, 4, 5);
INSERT INTO `goods` VALUES (24, '桑果酒 桑葚酒', 'http://localhost:9090/files/1713259370333-屏幕截图 2024-04-16 172106.jpg', '<p><img src=\"http://localhost:9090/files/1713259399748-屏幕截图 2024-04-16 172225.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713259405338-屏幕截图 2024-04-16 172142.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 88, '瓶', 0, 4, 5);
INSERT INTO `goods` VALUES (25, '速冻熟玉米', 'http://localhost:9090/files/1713259548290-屏幕截图 2024-04-16 172453.jpg', '<p><img src=\"http://localhost:9090/files/1713259557247-屏幕截图 2024-04-16 172507.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713259563637-屏幕截图 2024-04-16 172522.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2.5, '斤', 0, 4, 5);
INSERT INTO `goods` VALUES (26, '土蜂蜜', 'http://localhost:9090/files/1713259672912-屏幕截图 2024-04-16 172655.jpg', '<p><img src=\"http://localhost:9090/files/1713259682491-屏幕截图 2024-04-16 172716.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713259688252-屏幕截图 2024-04-16 172728.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 70, '斤', 0, 4, 5);
INSERT INTO `goods` VALUES (27, '菊花，7月菊、婺源皇菊，金丝皇菊', 'http://localhost:9090/files/1713259790166-屏幕截图 2024-04-16 172909.jpg', '<p><img src=\"http://localhost:9090/files/1713259808279-屏幕截图 2024-04-16 172923.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713259816062-屏幕截图 2024-04-16 172937.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 35, '斤', 0, 4, 5);
INSERT INTO `goods` VALUES (28, '核桃油', 'http://localhost:9090/files/1713260162580-屏幕截图 2024-04-16 173433.jpg', '<p><img src=\"http://localhost:9090/files/1713260170944-屏幕截图 2024-04-16 173446.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713260177869-屏幕截图 2024-04-16 173500.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 55, '斤', 0, 3, 7);
INSERT INTO `goods` VALUES (29, '桑葚果酱 天然桑葚膏', 'http://localhost:9090/files/1713260313421-屏幕截图 2024-04-16 173716.jpg', '<p><img src=\"http://localhost:9090/files/1713260322096-屏幕截图 2024-04-16 173729.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713260327114-屏幕截图 2024-04-16 173743.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 34, '斤', 0, 4, 7);
INSERT INTO `goods` VALUES (30, '青花椒', 'http://localhost:9090/files/1713260409080-屏幕截图 2024-04-16 173929.jpg', '<p><img src=\"http://localhost:9090/files/1713260445387-屏幕截图 2024-04-16 173942.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713260451791-屏幕截图 2024-04-16 173955.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 26, '斤', 0, 3, 7);
INSERT INTO `goods` VALUES (31, '高海拔花椒', 'http://localhost:9090/files/1713260569419-屏幕截图 2024-04-16 174200.jpg', '<p><img src=\"http://localhost:9090/files/1713260576822-屏幕截图 2024-04-16 174147.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713260584001-屏幕截图 2024-04-16 174215.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 36, '斤', 0, 3, 7);
INSERT INTO `goods` VALUES (32, '苦荞面粉', 'http://localhost:9090/files/1713260678655-屏幕截图 2024-04-16 174343.jpg', '<p><img src=\"http://localhost:9090/files/1713260686248-屏幕截图 2024-04-16 174355.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713260691978-屏幕截图 2024-04-16 174409.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 68, '斤', 0, 3, 7);
INSERT INTO `goods` VALUES (33, '玉米面条（可用于牛肉，羊肉米线，炸酱面，凉面，炒面，酸辣）等', 'http://localhost:9090/files/1713260798428-屏幕截图 2024-04-16 174544.jpg', '<p><img src=\"http://localhost:9090/files/1713260805758-屏幕截图 2024-04-16 174614.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3, '斤', 0, 3, 7);
INSERT INTO `goods` VALUES (34, '九华山散养竹林鸡', 'http://localhost:9090/files/1713261062407-屏幕截图 2024-04-16 175014.jpg', '<p><img src=\"http://localhost:9090/files/1713261071650-屏幕截图 2024-04-16 174937.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713261078416-屏幕截图 2024-04-16 175027.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 17, '斤', 0, 6, 10);
INSERT INTO `goods` VALUES (35, '牛肉干', 'http://localhost:9090/files/1713261229784-屏幕截图 2024-04-16 175246.jpg', '<p><img src=\"http://localhost:9090/files/1713261282694-屏幕截图 2024-04-16 175430.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713261288751-屏幕截图 2024-04-16 175319.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 80, '斤', 0, 6, 10);
INSERT INTO `goods` VALUES (36, '纯放养黑山羊', 'http://localhost:9090/files/1713261346662-屏幕截图 2024-04-16 175519.jpg', '<p><img src=\"http://localhost:9090/files/1713261353114-屏幕截图 2024-04-16 175519.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1600, '只', 0, 6, 10);
INSERT INTO `goods` VALUES (37, '蜂蛹', 'http://localhost:9090/files/1713261420862-屏幕截图 2024-04-16 175625.jpg', '<p><img src=\"http://localhost:9090/files/1713261427708-屏幕截图 2024-04-16 175638.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 100, '斤', 0, 6, 10);
INSERT INTO `goods` VALUES (38, '土鸡蛋', 'http://localhost:9090/files/1713261501199-屏幕截图 2024-04-16 175732.jpg', '<p><img src=\"http://localhost:9090/files/1713261550590-屏幕截图 2024-04-16 175753.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713261556584-屏幕截图 2024-04-16 175809.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 3, '个', 0, 6, 10);
INSERT INTO `goods` VALUES (39, '耐热翠绿条长豆角种子', 'http://localhost:9090/files/1713261682674-屏幕截图 2024-04-16 180003.jpg', '<p><img src=\"http://localhost:9090/files/1713261690758-屏幕截图 2024-04-16 180036.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713261696120-屏幕截图 2024-04-16 180020.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 45, '袋', 0, 2, 8);
INSERT INTO `goods` VALUES (40, '金煌芒果苗', 'http://localhost:9090/files/1713261831316-屏幕截图 2024-04-16 180246.jpg', '<p><img src=\"http://localhost:9090/files/1713261837927-屏幕截图 2024-04-16 180301.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713261843330-屏幕截图 2024-04-16 180317.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 2, '株', 0, 2, 8);
INSERT INTO `goods` VALUES (41, '毛桃苗', 'http://localhost:9090/files/1713262014892-屏幕截图 2024-04-16 180517.jpg', '<p><img src=\"http://localhost:9090/files/1713261984187-屏幕截图 2024-04-16 180530.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1713261991037-屏幕截图 2024-04-16 180555.jpg\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 1, '棵', 0, 2, 8);
INSERT INTO `goods` VALUES (42, '美丽木棉 攀枝花树', 'http://localhost:9090/files/1713262165505-屏幕截图 2024-04-16 180815.jpg', '', 800, '棵', 0, 1, 9);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (4, '第14周农产品行情', '小龙虾热度增幅领跑，鸡蛋价格延涨，西瓜行情企稳。', '2024-04-14', 'admin');
INSERT INTO `notice` VALUES (5, '今日优惠', '部分商品七折促销', '2024-04-14', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单ID',
  `goods_id` int NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int NULL DEFAULT NULL COMMENT '商家ID',
  `num` int NULL DEFAULT NULL COMMENT '商品数量',
  `user_id` int NULL DEFAULT NULL COMMENT '用户ID',
  `price` double NULL DEFAULT NULL COMMENT '商品总价',
  `address_id` int NULL DEFAULT NULL COMMENT '地址ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, '20240328011948', 2, 1, 1, 5, 13, 1, '已评价', '2024-03-28');
INSERT INTO `orders` VALUES (2, '20240328124528', 2, 1, 2, 5, 26, 1, '已评价', NULL);
INSERT INTO `orders` VALUES (3, '20240328124528', 13, 6, 1, 5, 3, 1, '已完成', NULL);
INSERT INTO `orders` VALUES (4, '20240328204128', 7, 6, 2, 5, 19.8, 1, '待发货', NULL);
INSERT INTO `orders` VALUES (5, '20240328204128', 3, 5, 2, 5, 10, 1, '待发货', NULL);
INSERT INTO `orders` VALUES (6, '20240328204800', 3, 5, 1, 5, 5, 1, '待发货', NULL);
INSERT INTO `orders` VALUES (7, '20240328210010', 2, 1, 1, 5, 13, 1, '待收货', NULL);
INSERT INTO `orders` VALUES (8, '20240405213740', 8, 6, 1, 5, 10, 1, '待发货', NULL);
INSERT INTO `orders` VALUES (9, '20240406002227', 11, 6, 1, 5, 23, 1, '待发货', NULL);
INSERT INTO `orders` VALUES (10, '20240416194102', 2, 1, 1, 6, 13, 2, '待发货', '2024-04-16');
INSERT INTO `orders` VALUES (11, '20240416210717', 13, 6, 1, 6, 3, 2, '待发货', '2024-04-16');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '苗木花草', '乔木/灌木/竹类植物/棕榈类植物', 'http://localhost:9090/files/1711107091390-cate-mmhc.png');
INSERT INTO `type` VALUES (2, '种子种苗', '水果种苗/花草类种子/蔬菜种子/水果类种子/粮油类种子/苗木类种子', 'http://localhost:9090/files/1711107493130-cate-zzzm.png');
INSERT INTO `type` VALUES (3, '粮油米面', '食用油/调味品/香辛料/谷物粉淀粉', 'http://localhost:9090/files/1711107552147-cate-lymm.png');
INSERT INTO `type` VALUES (4, '农副加工', '干果坚果/茶叶/肉制品加工/水产加工', 'http://localhost:9090/files/1711107739542-nfjg.png');
INSERT INTO `type` VALUES (5, '水产', '水产种苗/虾类/贝类/食用鱼类', 'http://localhost:9090/files/1711107759837-shuichan.png');
INSERT INTO `type` VALUES (6, '禽畜肉蛋', '禽畜苗/蛋类/活畜/活禽', 'http://localhost:9090/files/1711107786935-cate-qcrd.png');
INSERT INTO `type` VALUES (7, '蔬菜', '葱姜蒜类/根茎菜类/叶菜类/豆菜类', 'http://localhost:9090/files/1711107810701-cate-sczw.png');
INSERT INTO `type` VALUES (8, '水果', '热带水果/柑橘类/浆果类/瓜果类', 'http://localhost:9090/files/1711107829563-cate-sgzw.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (5, 'tom', '123456', 'Tom', 'http://localhost:9090/files/1711596791880-李华.jpg', 'USER', '1588377994', 'Tom@qq.com');
INSERT INTO `user` VALUES (6, '李华', '123456', '李华', 'http://localhost:9090/files/1711604658390-张飞jpg.jpg', 'USER', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
