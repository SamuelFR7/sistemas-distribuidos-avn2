/*
 Navicat PostgreSQL Data Transfer

 Source Server         : Local
 Source Server Type    : PostgreSQL
 Source Server Version : 150001 (150001)
 Source Host           : localhost:5432
 Source Catalog        : hotels
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 150001 (150001)
 File Encoding         : 65001

 Date: 02/05/2024 20:15:18
*/


-- ----------------------------
-- Table structure for hotels
-- ----------------------------
DROP TABLE IF EXISTS "public"."hotels";
CREATE TABLE "public"."hotels" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "city" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) NOT NULL DEFAULT now(),
  "updated_at" timestamp(6)
)
;
ALTER TABLE "public"."hotels" OWNER TO "hotels";

-- ----------------------------
-- Records of hotels
-- ----------------------------
BEGIN;
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('zq2udbwmyhyyccmjvrjcpqhg', 'VONRUEDEN, FRAMI AND BOYER', 'BOBBIEVIEW', '2023-09-14 09:03:18.968', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('gb791glycyw2xnre9vnup2xk', 'SCHULIST AND SONS', 'NORTH HAYLEEBORO', '2023-07-18 07:07:38.245', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('snq57yo7rx7qw2czetqbsyxk', 'HUDSON, CORKERY AND KEEBLER', 'MACEYSTEAD', '2023-06-01 21:46:15.764', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('z1593dy2zbgnl4fm5a6rd8bx', 'VEUM - MERTZ', 'ALBANY', '2024-01-22 23:59:47.949', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('n8lisuen8grczlsnzxa03umb', 'MILLER, MUELLER AND MAGGIO', 'NORTH ADELINECHESTER', '2023-09-10 01:48:33.081', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('jgy76wmbg4sfsm2nnuemd615', 'JACOBS LLC', 'FORT LUISVIEW', '2023-09-02 23:17:13.078', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('hxo5c4ho7ps901e86wg2tnyx', 'HODKIEWICZ - NADER', 'DONNELLYCESTER', '2023-08-10 01:06:57.326', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('rwe6k0447f5dgd5r0cayswl1', 'HERMAN AND SONS', 'NORTH ISRAELBURGH', '2023-05-20 10:52:43.205', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('du67fogwpg8so75mqixpj5mn', 'NADER GROUP', 'ANDERSONTOWN', '2023-12-07 01:16:24.258', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('xtja6ckcideofwbgvcuoxl6p', 'BEIER, YUNDT AND HETTINGER', 'SATTERFIELDFURT', '2023-06-30 16:47:54.423', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('lcssqodbkd990jtx4ickgyks', 'LOWE - HAMMES', 'HOMENICKTOWN', '2024-03-04 09:03:38.988', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('o71q1denvo1se0rw1qgldyb7', 'CUMMINGS, CONROY AND CORWIN', 'NORFOLK', '2023-11-11 09:42:56.519', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('qt2zob1ct4gssh0v9ahjv5z2', 'METZ, FAY AND FRAMI', 'NORTH SHANA', '2024-04-22 23:38:05.79', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('skrbg6a5nqs67iiyaeyb9ho7', 'HAMMES GROUP', 'ROCHESTER HILLS', '2024-02-26 15:46:32.331', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('xc97jfvscbtffv0ijr48ld45', 'HACKETT INC', 'EAST NILSFORT', '2023-12-25 11:25:50.964', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('v3mfeywz0czq762840c2slqu', 'STARK AND SONS', 'SOUTH KRISTY', '2024-04-20 02:07:56.263', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('n8mro0u4hn7vtuoubm26abeu', 'LINDGREN LLC', 'SOUTH SIM', '2023-11-16 02:43:04.377', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('ol3e8ydoe91qo1dbkf8l3lzr', 'GRAHAM, BERGNAUM AND WALKER', 'HANSENBURY', '2023-09-15 01:27:58.284', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('uqbks071pg8ng15ra242t5ys', 'KOSS, ROWE AND DOOLEY', 'SOUTH CARLEYVIEW', '2024-02-21 08:08:28.145', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('kmwsnfdmdnsunz9hsqm6hho9', 'SKILES, BINS AND PREDOVIC', 'WEST NAPOLEON', '2024-03-14 20:10:16.936', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('lu9xhplweobq5d9cpkarderd', 'WITTING - KOEPP', 'HAYDENHAVEN', '2024-02-26 23:56:03.238', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('ukmnqmuu0oyvcdqy9iz2qsn5', 'MCGLYNN, LEMKE AND CUMMERATA', 'MERTIEBURGH', '2024-03-19 00:42:46.569', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('gtmbfg3uk431coav9h8yvj3d', 'COLE LLC', 'GINAHAVEN', '2023-09-16 11:37:54.852', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('o430g237x4akwtzm2o8jcxfg', 'BREITENBERG AND SONS', 'EAST ELMO', '2023-09-16 06:32:13.867', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('zs7lt8jjpkzzp8itjyl3iqpw', 'FEEST LLC', 'MERTIEFIELD', '2024-03-07 22:35:48.718', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('lwvtk0azpk4x09hfu2zhu7h4', 'KLOCKO - CHAMPLIN', 'BOSTON', '2023-12-04 15:32:36.838', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('j8shxb0jfux5zhydyuooxyga', 'ROGAHN - CROOKS', 'RUSSELMOUTH', '2023-11-13 18:12:42.249', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('dbs3flyq954zcor880p6axpo', 'HEATHCOTE, HALEY AND ROSENBAUM', 'OAKLAND', '2023-07-05 22:59:27.283', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('tjwv5pntth7kry4p9jzohsah', 'OBERBRUNNER LLC', 'AIDASIDE', '2023-05-26 14:58:27.926', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('zda5sqlldagk1nqy1teeiuaw', 'BOGAN LLC', 'BASHIRIANCHESTER', '2024-01-20 00:14:04.482', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('wc2juvha03h7hx9yb7hfvjo2', 'JOHNSTON INC', 'WEST ALEXANNE', '2023-10-08 04:59:37.884', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('krl6e6cb0emkd5iuput8uweu', 'LABADIE, WHITE AND GRADY', 'NORTH BRYCE', '2023-05-12 17:07:01.52', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('econlnh3snug3tx080xan5cy', 'BERGSTROM - GORCZANY', 'HAAGBURY', '2023-09-30 14:16:24.171', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('ew7rcagdcyxk4bv5utrztrc8', 'O''HARA INC', 'NEW JIMMIE', '2023-09-21 08:47:59.965', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('s7kpy4pcd5l7qwfjkncoci4q', 'RUSSEL INC', 'CASSANDRAFIELD', '2023-11-26 06:07:04.707', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('lgxg5a3d75vtsa9sy7utxp52', 'OSINSKI - KERLUKE', 'AURORA', '2023-10-08 03:26:10.535', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('q0emio1793a7eq7dyycig09p', 'MUELLER INC', 'WALNUT CREEK', '2023-06-22 10:19:57.269', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('d7o8tv08zk675ct4yctlvxmj', 'REYNOLDS - WEST', 'JEFFERYBURY', '2023-08-04 09:24:22.713', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('yc1k6kf9xjdamtjsarh9wda5', 'ORTIZ GROUP', 'NEW MONTETON', '2024-02-18 19:12:58.058', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('qquxii9on3wnnip9adjq53gx', 'WEISSNAT LLC', 'SOUTH STEVE', '2024-04-06 12:25:33.171', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('oe3w7keunjwwb0mmzbe4q8vd', 'MURAZIK GROUP', 'LAKE AYANABORO', '2023-10-15 13:52:46.208', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('zrxyu6slbb5719en2rmtc1ls', 'TOY - GOTTLIEB', 'ADAMSFORT', '2024-02-27 07:34:43.045', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('fam0b5hdmz0ul4rbr02llabr', 'MRAZ INC', 'SWANIAWSKISIDE', '2024-04-16 14:51:20.864', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('ayjmfy8eme569me4yywnkga7', 'LUBOWITZ, NADER AND SCHROEDER', 'JACKLYNLAND', '2023-06-10 04:51:05.259', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('zjztlv37lxqccnyobw9dgyzi', 'BAYER, KULAS AND LESCH', 'DWIGHTTOWN', '2023-09-17 18:17:56.029', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('meauokpmjgjk4c8dz5zns3pj', 'NADER, SATTERFIELD AND LIND', 'GAILVIEW', '2023-06-17 10:43:37.555', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('qw6n3sbn00flviiiyvh5fcya', 'BINS LLC', 'EAST ISRAEL', '2023-06-28 23:40:13.074', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('rb3lgks66pqhqq8l8h4bxpff', 'EMARD LLC', 'FORT HUNTER', '2023-09-24 10:20:12.294', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('yc1qtmtfilms7brwey63r4u1', 'RAU, SPINKA AND MARQUARDT', 'NORTH CRISTOBALTOWN', '2023-10-25 17:00:51.83', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('bjmsnqurbyxria312tk7a90c', 'MAGGIO, STOLTENBERG AND ROSENBAUM', 'HALEYBORO', '2023-09-07 00:53:08.562', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('myb4zau7xvtwpj1qqbvgmsx9', 'ROMAGUERA - HAAG', 'NORTH LITTLE ROCK', '2023-09-18 00:43:59.9', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('poch5mdnxi2ynckq4bwcuwze', 'KOHLER, LUETTGEN AND REILLY', 'TULARE', '2023-11-15 00:18:12.249', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('busvzpkovj16tqrqlf0lzlry', 'REINGER, LUEILWITZ AND HILLL', 'SUNNYVALE', '2023-10-15 00:57:56.754', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('egav9bhl6ukb4ll8hxjrnvmr', 'KOVACEK - BRADTKE', 'SOUTH JERAMIE', '2023-11-10 20:52:39.275', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('s32qb4oifjbt3x6g6jy91k58', 'BERNIER LLC', 'BEATTYTOWN', '2024-01-28 21:52:25.605', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('u7pwphufh5adexuuan8dd90z', 'KEEBLER GROUP', 'VANCEFORT', '2024-02-08 15:16:52.689', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('pypq6wxkivb3iun7ugyo76zj', 'MARVIN LLC', 'LAKE IDELLAWORTH', '2023-12-24 22:32:07.594', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('tv5rnbcir3he3curfdciqql3', 'MARVIN INC', 'ALVACHESTER', '2024-04-04 17:52:14.747', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('q7v4xqq059v7a5sh6upur567', 'WOLF - ZIEME', 'LAKE NATHAN', '2024-01-26 15:00:20.034', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('epc8st2k30v0cuj2jhxpedow', 'HESSEL, BRADTKE AND SENGER', 'KEEGANLAND', '2023-10-21 03:35:19.678', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('zeg42imp7t7rybr9aanxz4c0', 'KUHN GROUP', 'NORTH KENNA', '2024-04-25 05:26:05.643', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('nn8tg0k51qu979f6agem8l1b', 'JAKUBOWSKI - LUBOWITZ', 'JUDDBOROUGH', '2024-02-25 14:10:45.995', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('z9uqe63xn33abmp2lciq1dlw', 'HIRTHE - ONDRICKA', 'CHARLOTTESVILLE', '2023-08-10 06:45:03.177', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('durohmkd6n2sa5t3goasn8ro', 'THIEL - DARE', 'SOUTH DELPHASIDE', '2023-11-10 09:31:49.588', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('wo41vl0mgd8opan73wgar4xn', 'BRAKUS, WILLIAMSON AND FRAMI', 'HAMPTON', '2023-08-22 08:14:18.575', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('i94zsio97gz30tjo9zvl4xbo', 'RUECKER, WILLMS AND STREICH', 'ETTIEFURT', '2023-12-16 10:10:55.795', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('hkzbk63wlq53lenraoppjfsv', 'HAMILL AND SONS', 'COON RAPIDS', '2023-10-12 13:50:14.432', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('skzfialzton8r0abw821mj1a', 'RATH - KEELING', 'SOUTH MACY', '2023-12-30 07:28:20.811', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('hxt5vt10vs2q0j2wf2phf21a', 'BLANDA, CARTWRIGHT AND CORMIER', 'GARRISONVILLE', '2024-04-20 14:30:22.049', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('jc9eub00a3o2idleyblxo65a', 'BECKER AND SONS', 'LEDNERSTEAD', '2023-09-15 13:39:32.492', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('e9o6f2h4ia66yuv6scqit0rz', 'SCHOWALTER - MURRAY', 'WEST MAJORSHIRE', '2023-10-14 11:15:48.584', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('y3g936ikbwax9p4v3elzwoof', 'GLEICHNER - ZIEME', 'LAKE FOREST', '2023-08-30 06:31:19.833', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('ntenikturfdrka1jztnwn57z', 'KREIGER - TORP', 'FORT SALLY', '2023-08-14 07:52:41.011', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('eouga0340d8zld9pvpywqq2v', 'NADER GROUP', 'WEST KAYLIE', '2023-11-18 05:01:30.376', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('wcwjwv33fdoiuvsg7bh6pwqm', 'WILLMS - RATH', 'WEST VALLEY CITY', '2023-08-03 09:08:23.813', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('i91685flflodthlcdy5ju88c', 'KRIS, KEMMER AND KIEHN', 'EAST IANSTEAD', '2023-08-04 00:52:40.33', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('a92cykatcnfbftlxsogihchg', 'SCHILLER - GOODWIN', 'ZELDAPORT', '2023-09-10 05:47:39.905', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('d85w841cx9qg74ijlpz7ih8h', 'MACGYVER, WINTHEISER AND COLLIER', 'PORT HANSBORO', '2024-03-18 16:23:57.496', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('ixvx2dccaczc5hth0hqqzbrx', 'DIBBERT - KERLUKE', 'ZIEMANNSTAD', '2024-01-22 04:38:16.137', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('wrasc9hdl4gzq207pg2qqlnb', 'HAND - KOELPIN', 'PORT BERRY', '2024-02-15 21:14:22.27', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('nsyxgn1kd0kav66o12036rpq', 'HUELS INC', 'BARNSTABLE TOWN', '2023-05-28 11:14:43.415', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('n7fppdqh3mg3cog3t991o0n2', 'VEUM - FAY', 'KARIFIELD', '2023-09-17 10:35:21.356', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('z6pc3lkffnvak1lieo0w4eey', 'SCHUSTER, LESCH AND WEBER', 'LOURDESPORT', '2023-05-15 13:58:51.033', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('i2bcu6x9qc1bao1kaish9r7s', 'DICKI, LOWE AND HEANEY', 'NEW KATHRYNESIDE', '2023-11-08 15:50:52.057', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('anfj6tct99wqge0ashghvgf5', 'SANFORD, BORER AND OLSON', 'FORT GREGORY', '2024-03-16 04:11:04.776', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('wmjs9yb0y4dr8uc05vx34xzs', 'O''KEEFE - STARK', 'EAST AUBREYLAND', '2024-04-22 02:00:54.514', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('xcdse4xa1595ntm39bizjuxt', 'OSINSKI, REINGER AND MOEN', 'DAYTONA BEACH', '2023-11-09 11:47:01.099', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('gkduh2d0x05ie6hnu718ae9q', 'FRANECKI LLC', 'SCHOWALTERTON', '2023-10-07 08:21:42.89', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('i013qrisw4gb83jgxecwm7sc', 'SCHULTZ, STEHR AND HYATT', 'PAGACBURGH', '2023-11-23 20:49:57.052', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('xut2u0fnn0t7n2iwkh890pl2', 'ROHAN LLC', 'FORT RANDIBURGH', '2023-08-15 02:10:10.192', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('a3f5x014qzx29g0znumgy5by', 'GUSIKOWSKI, CRONIN AND STROMAN', 'LAKE DESIREEBURY', '2024-03-02 09:39:30.541', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('z8tzb8nzr6vj5x9bv48htbyc', 'CRONA AND SONS', 'WHITTIER', '2023-12-26 10:36:07.644', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('cdniwvrbk9ez8uaj1wo3utmy', 'CARROLL GROUP', 'CARTERSIDE', '2024-01-24 17:43:39.039', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('wf9jzqcskyqdnfg5qg3vmc41', 'ROHAN - LESCH', 'SOUTH ARTHUR', '2023-11-07 14:07:00.232', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('wg1fajk5ldc6vg6baw6wscyb', 'LEHNER - TORPHY', 'TORRANCE', '2023-10-01 03:40:15.652', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('chibzi7px5ai88nry7p79dgc', 'VOLKMAN - CARTER', 'STOLTENBERGSTEAD', '2024-02-03 23:13:07.425', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('w8rnw8b16aa1dsuaei6rqrxr', 'HARVEY - CRONA', 'FORT THADDEUSBERG', '2023-07-19 01:40:57.193', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('nn6ahg008i0ka0hpdtg4y529', 'DICKINSON, HAMILL AND TOY', 'SOUTH ERYNCHESTER', '2024-04-28 00:57:05.799', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('cd2r4v7omp2awgx316sqshdl', 'SHANAHAN - WITTING', 'LAKE META', '2023-11-25 08:00:06.109', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('gldpcxyrnqzgpyw12q0p40tt', 'LYNCH AND SONS', 'ALEXANDERFURT', '2024-04-19 07:23:41.842', NULL);
INSERT INTO "public"."hotels" ("id", "name", "city", "created_at", "updated_at") VALUES ('k9k8aegemv1st0lfo00d9md9', 'KIHN GROUP', 'FOUNTAIN VALLEY', '2023-11-21 15:54:55.413', NULL);
COMMIT;

-- ----------------------------
-- Table structure for reservations
-- ----------------------------
DROP TABLE IF EXISTS "public"."reservations";
CREATE TABLE "public"."reservations" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "room_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "start_date" date NOT NULL,
  "end_date" date NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default",
  "canceled" bool NOT NULL DEFAULT false
)
;
ALTER TABLE "public"."reservations" OWNER TO "hotels";

-- ----------------------------
-- Records of reservations
-- ----------------------------
BEGIN;
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('kgv0935sq5y9728wzigxowok', 'x69slmrdf1n2dnbietizntt4', '2023-09-16', '2023-09-16', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ks0gpkb14gr68skpt26j878j', 'oh0u8vvxaqjc0202rgf45t1c', '2023-10-27', '2023-10-27', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('oi5c9mdrwzyxzjcgnv0h04od', 'yaonrzmsuwzg8ehsnccexsrw', '2023-06-13', '2023-06-14', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('v8zo8zkjpxyv3kwemcoeu39b', 'xzm9jud1ltb94irp5fdcaspn', '2023-09-13', '2023-09-13', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('kjug9hq2uhun3wr4dn85tdxq', 'dapn7fm1z4qocmjhkxhqyof9', '2023-09-27', '2023-09-27', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('esazx6ch2fs0vb6psjr26yqc', 'yaonrzmsuwzg8ehsnccexsrw', '2023-08-24', '2023-08-25', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('gwl28wtgeaajqq8opqgld7r8', 'd5fnnloi6ise1ytykgeqkv1k', '2024-03-22', '2024-03-23', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('qmj6r43mxt63uw59kwn8i22a', 'peogjjkwpw0xe6kuesnl87gl', '2023-06-13', '2023-06-14', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('jjqeop5yuwxca9cb1a9r95m9', 'uzhivozhawj8sy1hgmj2kie3', '2023-09-25', '2023-09-25', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('zqu96woo3dnva1eubiqw29ur', 'l6l5sx5yf1v2rcuuq0s8d5mx', '2024-04-30', '2024-05-01', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('za8wa0wr3v0vqsow7i03nlxh', 'tat6sr3t69rfb5w7ajnl92z5', '2023-09-18', '2023-09-18', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('znmfz12gm1zkooqieb5zx6xd', 'zqw2uqs39eu5jb2m3gepk25s', '2023-07-03', '2023-07-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('isyhaq6e4xoxxc2ffqhyjhvn', 'cdcl4dpx3q14gfbbmuvbkg5i', '2023-12-31', '2024-01-01', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('bvwctereyuoqxib123ys72rf', 'k7krdxytaonqucy593jrgtwf', '2023-09-17', '2023-09-17', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('twnd6tw7f7ucyojf5i8k94ko', 'lmj4zla7p84ckrom1a64te7b', '2023-05-14', '2023-05-15', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('j6xc9qsfovvtb0pn1an6meuy', 'e6h04o6ko7xauvipylz0l9aw', '2024-01-15', '2024-01-15', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('qpihgwezljmbtowead88vru6', 'b4jnm0b4byngbw1yawqyswcb', '2024-02-01', '2024-02-02', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('vlwlk4n22kz6amo8nkedtpra', 'sp3f2xvoc48u47ekwiq84z65', '2023-05-22', '2023-05-23', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('t66aminefg1e8dvev81z19yy', 'lmj4zla7p84ckrom1a64te7b', '2024-01-07', '2024-01-08', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('bch8qsrqtcq42a7guqkdhj3t', 'k7krdxytaonqucy593jrgtwf', '2023-07-11', '2023-07-12', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('e7wx8h40npsosqm2ymsws0wz', 'i2d9m1dckhn8lt6w0o57tjqe', '2023-08-22', '2023-08-22', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('elm3i00fezsuq5zmd5h6h15r', 'voxbvi2jod9g46aiuppkpxwo', '2023-07-28', '2023-07-28', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('mxk825am2ue0uy9bz9i402av', 'tx21bk7o8jy1o3fq0nz8twsj', '2023-12-03', '2023-12-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('vww8uqv1uocrpeumj5aimtsa', 'k7krdxytaonqucy593jrgtwf', '2023-12-28', '2023-12-29', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('jargktpbb7sncrw3z7mue0xi', 'zqw2uqs39eu5jb2m3gepk25s', '2024-01-28', '2024-01-28', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('jiqrznyui9uxawnwoozsf7y7', 'ru04z01rl8el18aveu90pdqw', '2023-07-02', '2023-07-03', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ntyqmcch0rqzafbu2ww340z6', 'ru04z01rl8el18aveu90pdqw', '2024-01-05', '2024-01-05', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('hgmlbzgez6gmywy3mm7zk3te', 'l4dqv6ge9abqdnu605iy5nim', '2023-10-15', '2023-10-15', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('iky4p18k9rijdj7v6wpbdjew', 'xzm9jud1ltb94irp5fdcaspn', '2023-06-27', '2023-06-27', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('mwejtt04gvy154sqtiuyobtl', 'sp3f2xvoc48u47ekwiq84z65', '2023-09-04', '2023-09-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ufgz6oswz5z7yzyxw66exuhe', 'dz1r1mxbhi72bhs25fg7i3f5', '2023-10-24', '2023-10-25', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('erzgivhuz0mrq2qhjubtxc7b', 'zqw2uqs39eu5jb2m3gepk25s', '2024-05-01', '2024-05-02', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ueuuveriw9xkiyd390rar2ki', 'yaonrzmsuwzg8ehsnccexsrw', '2023-12-22', '2023-12-22', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('qe34yravbp2iplqw1ruwk94r', 'f4pqvjikpv30ycpe8jtycn9x', '2023-12-04', '2023-12-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('nxqds4jsgw2jaxrabtfyypn0', 'wmpsjq2atlo72pry4pasjqgi', '2024-02-25', '2024-02-26', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('a98gb3atjv42jocho5cuwygd', 'yq8poh1n9wg1miroooy3n4fe', '2023-12-05', '2023-12-05', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('yf3zyxbgw0nfdubixw99oogj', 'utryvnpzseo3ymzigbp7ft9i', '2023-10-15', '2023-10-16', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('t0o8logmt13s2c7guz3s5ast', 'c3or14l3d3n6q8bwpfm5xx7f', '2024-01-04', '2024-01-05', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('yvd1qx5lah4kdk0gtgd04i00', 'l6l5sx5yf1v2rcuuq0s8d5mx', '2023-12-02', '2023-12-03', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('jk61m2sehr6dgvfm3mgdrfnt', 'e6h04o6ko7xauvipylz0l9aw', '2023-12-21', '2023-12-22', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('bmi3mz5x7b8c4i03kj9wjpdf', 'lmj4zla7p84ckrom1a64te7b', '2024-02-29', '2024-03-01', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('z5ipclsqkpxqqpyva57bx90d', 'imn5tnir1fk12i3va6cz7nn6', '2023-06-25', '2023-06-26', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('i4rdxv5x2cwtoqtyzwme3hmp', 'l6l5sx5yf1v2rcuuq0s8d5mx', '2023-07-05', '2023-07-06', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('kfn2s9a7yg9utkhwaf1kbv1r', 'svnfr7z881mf1g6espari9vn', '2024-01-27', '2024-01-28', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('fd5v696sgkn8rdck6wilxxqq', 'sp3f2xvoc48u47ekwiq84z65', '2024-03-24', '2024-03-25', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('etw3ztvwlq2965ctt70tt2im', 'cvkklxlqsd3u0twdesrfn2zv', '2023-07-19', '2023-07-20', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('x9cwmbw58vs27x0ezskrxh76', 'u4dwcqr7neq76182227bzd2d', '2023-07-17', '2023-07-18', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('hxyhtuqyd747jrph1dozv9jl', 'pn58wrsgll7c7jwczmxmubi6', '2023-10-25', '2023-10-26', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('hxw6j1gic4dukq52muaqcycs', 'lmj4zla7p84ckrom1a64te7b', '2023-09-27', '2023-09-27', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ciyoqb0x9ryp19e1rju4j899', 'svnfr7z881mf1g6espari9vn', '2024-01-24', '2024-01-25', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('llyyzstuz7enppu8o84n6rvx', 'svnfr7z881mf1g6espari9vn', '2023-12-10', '2023-12-11', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('kqc8j8kp5dif7bhbnbnn4rav', 'i7hyaziyfdpoey83mrk2fpsg', '2023-09-16', '2023-09-16', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('vhu8dix2iq7wf7530mm4rdac', 'dapn7fm1z4qocmjhkxhqyof9', '2024-04-25', '2024-04-25', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('b3nhgkj765w67sb5pb5kc9gs', 'tkjo8r7hqg1gbonvump3zjq2', '2023-10-17', '2023-10-17', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('pi5lscl1b2f2kn79qut0pkgw', 'xjt6ed7k2x9aiypz04whmf1d', '2024-01-30', '2024-01-31', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('g8yf4lcf2gqz9ngusmec20s8', 'voxbvi2jod9g46aiuppkpxwo', '2024-04-20', '2024-04-21', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('bb8oa3i8rx6qrd0j1nhiktj9', 'dapn7fm1z4qocmjhkxhqyof9', '2023-12-11', '2023-12-11', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ipsbxcd7pbm6luc6og05ouyj', 'u4dwcqr7neq76182227bzd2d', '2023-08-30', '2023-08-30', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('j2onl1svw0kxik8as18ynr62', 'hp1tcby1i0azj1siajtznsic', '2024-01-16', '2024-01-17', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('sc3lotdyfzvs9wor03y4gj3t', 'uo15v1v7gkl1hpe0iqhk7z03', '2023-10-27', '2023-10-28', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('t1bpyoqn0ooll5h2ziykso9b', 'uo15v1v7gkl1hpe0iqhk7z03', '2023-06-13', '2023-06-14', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('f0obhfuqopywtsiuqcv54r14', 'e6h04o6ko7xauvipylz0l9aw', '2023-10-03', '2023-10-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('yptjfyikezttgtt8oai5ppgz', 'uo15v1v7gkl1hpe0iqhk7z03', '2023-12-03', '2023-12-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('n1gz8gq81rikrauhjyacfoyy', 'tkjo8r7hqg1gbonvump3zjq2', '2023-10-19', '2023-10-20', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('hc05pcbygkp30tvqbdrfp7l2', 'x69slmrdf1n2dnbietizntt4', '2024-02-24', '2024-02-25', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('v7p18j7sc6gw0zw98x5jdi8u', 'xzm9jud1ltb94irp5fdcaspn', '2023-05-20', '2023-05-20', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('nvfknovh1wusjogerobh32z6', 'voxbvi2jod9g46aiuppkpxwo', '2023-12-20', '2023-12-20', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('h7n20q684cqnmdg59n73xhhu', 'sp3f2xvoc48u47ekwiq84z65', '2024-04-25', '2024-04-26', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('y2lagptl7mqsbkm73mkvjxeg', 'uo15v1v7gkl1hpe0iqhk7z03', '2023-07-01', '2023-07-02', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('b1oatvirj3tznw50icvha08z', 'cvkklxlqsd3u0twdesrfn2zv', '2024-01-26', '2024-01-27', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('p72fcxv3dmxzlq9gh4beyaau', 'yq8poh1n9wg1miroooy3n4fe', '2024-04-16', '2024-04-16', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('gsifakyhfyx63oclf8js5t16', 'u4dwcqr7neq76182227bzd2d', '2023-09-07', '2023-09-08', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('spjhkif1nh445dxv5pt2ewz0', 'utryvnpzseo3ymzigbp7ft9i', '2024-03-24', '2024-03-24', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('fzy7jgwxxgfp6t6m3kzllcqt', 'yq8poh1n9wg1miroooy3n4fe', '2023-09-21', '2023-09-21', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('b1twtaoymada9pyckurnm9u8', 'zqw2uqs39eu5jb2m3gepk25s', '2023-11-10', '2023-11-11', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ob1aw3grzk7ti3peu3vwjxzm', 'wjnlyf2a9er5mvh898ylz01h', '2024-02-20', '2024-02-21', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('v3mgfmbv9cttezc04a4dgsva', 'oh0u8vvxaqjc0202rgf45t1c', '2024-02-08', '2024-02-08', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('y14m5jr2ierw3oy2jb9ecb89', 'i7hyaziyfdpoey83mrk2fpsg', '2024-02-06', '2024-02-06', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('c48618qmhcrbabau94f5lkpf', 'htv0shs120bcok3pk2tsz2of', '2024-04-25', '2024-04-26', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('knq66yibz5emns8ye8h7ditr', 'htv0shs120bcok3pk2tsz2of', '2023-10-27', '2023-10-28', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('p8rjlr5sx4cxkfe2gbr9dw3q', 'i7hyaziyfdpoey83mrk2fpsg', '2024-02-15', '2024-02-16', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('bv4ebjv6r951drp2czfzvvto', 'wmpsjq2atlo72pry4pasjqgi', '2023-10-25', '2023-10-25', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('x9be93f484lswencen57nzo0', 'lmj4zla7p84ckrom1a64te7b', '2023-07-02', '2023-07-02', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('dvwoh1liaisysthgbsvcj5p0', 'ru04z01rl8el18aveu90pdqw', '2023-08-08', '2023-08-08', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('yy4fhhd8ajfphnoi44praoup', 'l4dqv6ge9abqdnu605iy5nim', '2023-12-23', '2023-12-24', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('v6cqpy4oebo6wsgr6wf5v623', 'xjt6ed7k2x9aiypz04whmf1d', '2024-02-04', '2024-02-05', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ux7j842jkg0pnjk78lw7mmva', 'yaonrzmsuwzg8ehsnccexsrw', '2023-12-05', '2023-12-06', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('sdoj1zq70uye0yvq6p7zt1og', 'i2d9m1dckhn8lt6w0o57tjqe', '2023-05-28', '2023-05-29', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('e9ozq7duym93qou1nk3888wm', 'f4pqvjikpv30ycpe8jtycn9x', '2023-06-04', '2023-06-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('eqbdmz44sh3n7xt046aalk89', 'dapn7fm1z4qocmjhkxhqyof9', '2023-07-08', '2023-07-09', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('xvl4p7puub2e00zbvfj2mxpb', 'w34yu13whba15uqj7891wvza', '2024-04-01', '2024-04-02', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('k12g4mtytahadazwfare4kp1', 'l6l5sx5yf1v2rcuuq0s8d5mx', '2023-09-09', '2023-09-09', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('k68jwzuv1gy8vaa5f317q04w', 'htv0shs120bcok3pk2tsz2of', '2023-11-16', '2023-11-17', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('s9x0teb669as42d34268ez1u', 'uzhivozhawj8sy1hgmj2kie3', '2023-11-20', '2023-11-21', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('vyh8yzva1nbf4doljdaykrwj', 'jizn2w2p9hmlsrxd4hyni8dq', '2024-02-03', '2024-02-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('qr74hnv70w4xrxqkb5oxcnou', 'htv0shs120bcok3pk2tsz2of', '2024-04-20', '2024-04-20', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('tdjzjwy4qrryefgxxqhbmb22', 'dz1r1mxbhi72bhs25fg7i3f5', '2024-02-09', '2024-02-09', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('i4f7qmu8j01kkqul922wowgv', 'r0llwkpnx6f8saadxqsj2b5r', '2024-02-03', '2024-02-04', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('hg7kndqndu47fzj3bzcvkhj8', 'e6h04o6ko7xauvipylz0l9aw', '2024-01-28', '2024-01-28', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('ddp9o54pkjvbibd65bzxt40c', 'i7hyaziyfdpoey83mrk2fpsg', '2023-11-24', '2023-11-24', NULL, 'f');
INSERT INTO "public"."reservations" ("id", "room_id", "start_date", "end_date", "email", "canceled") VALUES ('zxzttp9gdgekg4s8s1vf6tec', 'l6l5sx5yf1v2rcuuq0s8d5mx', '2023-06-03', '2023-06-04', NULL, 'f');
COMMIT;

-- ----------------------------
-- Table structure for rooms
-- ----------------------------
DROP TABLE IF EXISTS "public"."rooms";
CREATE TABLE "public"."rooms" (
  "id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "hotel_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
ALTER TABLE "public"."rooms" OWNER TO "hotels";

-- ----------------------------
-- Records of rooms
-- ----------------------------
BEGIN;
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('yaonrzmsuwzg8ehsnccexsrw', 'lgxg5a3d75vtsa9sy7utxp52');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('voxbvi2jod9g46aiuppkpxwo', 'ew7rcagdcyxk4bv5utrztrc8');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('z29r5hashjy3tvk6wa09n2vs', 'lgxg5a3d75vtsa9sy7utxp52');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('zqw2uqs39eu5jb2m3gepk25s', 'anfj6tct99wqge0ashghvgf5');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('dz1r1mxbhi72bhs25fg7i3f5', 'gtmbfg3uk431coav9h8yvj3d');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('imn5tnir1fk12i3va6cz7nn6', 'zrxyu6slbb5719en2rmtc1ls');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('f4pqvjikpv30ycpe8jtycn9x', 'i94zsio97gz30tjo9zvl4xbo');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('cdcl4dpx3q14gfbbmuvbkg5i', 'z9uqe63xn33abmp2lciq1dlw');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('dsb35qxsgxt2stumy4yx7bqz', 'z8tzb8nzr6vj5x9bv48htbyc');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('u4dwcqr7neq76182227bzd2d', 'y3g936ikbwax9p4v3elzwoof');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('oh0u8vvxaqjc0202rgf45t1c', 'gkduh2d0x05ie6hnu718ae9q');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('uo15v1v7gkl1hpe0iqhk7z03', 'zq2udbwmyhyyccmjvrjcpqhg');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('hp1tcby1i0azj1siajtznsic', 'z8tzb8nzr6vj5x9bv48htbyc');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('b4jnm0b4byngbw1yawqyswcb', 'lcssqodbkd990jtx4ickgyks');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('jizn2w2p9hmlsrxd4hyni8dq', 'du67fogwpg8so75mqixpj5mn');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('tkjo8r7hqg1gbonvump3zjq2', 'xut2u0fnn0t7n2iwkh890pl2');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('i2d9m1dckhn8lt6w0o57tjqe', 'zda5sqlldagk1nqy1teeiuaw');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('pn58wrsgll7c7jwczmxmubi6', 's7kpy4pcd5l7qwfjkncoci4q');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('x69slmrdf1n2dnbietizntt4', 'v3mfeywz0czq762840c2slqu');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('l6l5sx5yf1v2rcuuq0s8d5mx', 'q7v4xqq059v7a5sh6upur567');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('tx21bk7o8jy1o3fq0nz8twsj', 'wmjs9yb0y4dr8uc05vx34xzs');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('i7hyaziyfdpoey83mrk2fpsg', 'z6pc3lkffnvak1lieo0w4eey');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('l4dqv6ge9abqdnu605iy5nim', 'lwvtk0azpk4x09hfu2zhu7h4');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('e6h04o6ko7xauvipylz0l9aw', 'z6pc3lkffnvak1lieo0w4eey');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('jhuq4p56m1g0qqkb6qb2d7cw', 'durohmkd6n2sa5t3goasn8ro');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('xzm9jud1ltb94irp5fdcaspn', 'wmjs9yb0y4dr8uc05vx34xzs');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('gj30etqp147tiwoyxgbla13p', 'wf9jzqcskyqdnfg5qg3vmc41');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('cvkklxlqsd3u0twdesrfn2zv', 'a92cykatcnfbftlxsogihchg');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('w34yu13whba15uqj7891wvza', 'kmwsnfdmdnsunz9hsqm6hho9');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('xjt6ed7k2x9aiypz04whmf1d', 'tjwv5pntth7kry4p9jzohsah');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('lmj4zla7p84ckrom1a64te7b', 'a92cykatcnfbftlxsogihchg');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('uzhivozhawj8sy1hgmj2kie3', 'gldpcxyrnqzgpyw12q0p40tt');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('jbo2cvi6qvvo22vhblh7xifz', 'rwe6k0447f5dgd5r0cayswl1');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('htv0shs120bcok3pk2tsz2of', 'gkduh2d0x05ie6hnu718ae9q');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('tat6sr3t69rfb5w7ajnl92z5', 'tjwv5pntth7kry4p9jzohsah');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('wmpsjq2atlo72pry4pasjqgi', 'zrxyu6slbb5719en2rmtc1ls');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('sp3f2xvoc48u47ekwiq84z65', 'q7v4xqq059v7a5sh6upur567');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('d5fnnloi6ise1ytykgeqkv1k', 'xtja6ckcideofwbgvcuoxl6p');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('yq8poh1n9wg1miroooy3n4fe', 'wcwjwv33fdoiuvsg7bh6pwqm');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('utryvnpzseo3ymzigbp7ft9i', 'tjwv5pntth7kry4p9jzohsah');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('l3dtyeenn4isjkfni4zfp5yw', 'krl6e6cb0emkd5iuput8uweu');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('nos49d0do80fffseesfawe51', 'krl6e6cb0emkd5iuput8uweu');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('wjnlyf2a9er5mvh898ylz01h', 'zs7lt8jjpkzzp8itjyl3iqpw');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('skqgwjufuc322gi56c1j6bub', 'wrasc9hdl4gzq207pg2qqlnb');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('peogjjkwpw0xe6kuesnl87gl', 'du67fogwpg8so75mqixpj5mn');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('svnfr7z881mf1g6espari9vn', 'wrasc9hdl4gzq207pg2qqlnb');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('c3or14l3d3n6q8bwpfm5xx7f', 'skzfialzton8r0abw821mj1a');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('dapn7fm1z4qocmjhkxhqyof9', 'q0emio1793a7eq7dyycig09p');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('k7krdxytaonqucy593jrgtwf', 'qw6n3sbn00flviiiyvh5fcya');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('ru04z01rl8el18aveu90pdqw', 'zs7lt8jjpkzzp8itjyl3iqpw');
INSERT INTO "public"."rooms" ("id", "hotel_id") VALUES ('r0llwkpnx6f8saadxqsj2b5r', 'i013qrisw4gb83jgxecwm7sc');
COMMIT;

-- ----------------------------
-- Primary Key structure for table hotels
-- ----------------------------
ALTER TABLE "public"."hotels" ADD CONSTRAINT "hotels_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table reservations
-- ----------------------------
ALTER TABLE "public"."reservations" ADD CONSTRAINT "reservations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table rooms
-- ----------------------------
ALTER TABLE "public"."rooms" ADD CONSTRAINT "rooms_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table reservations
-- ----------------------------
ALTER TABLE "public"."reservations" ADD CONSTRAINT "reservations_room_id_rooms_id_fk" FOREIGN KEY ("room_id") REFERENCES "public"."rooms" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table rooms
-- ----------------------------
ALTER TABLE "public"."rooms" ADD CONSTRAINT "rooms_hotel_id_hotels_id_fk" FOREIGN KEY ("hotel_id") REFERENCES "public"."hotels" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
