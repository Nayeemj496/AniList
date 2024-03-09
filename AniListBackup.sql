/*
 Navicat Premium Data Transfer

 Source Server         : Oracle
 Source Server Type    : Oracle
 Source Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 Source Host           : localhost:1521
 Source Schema         : ANILIST

 Target Server Type    : Oracle
 Target Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 File Encoding         : 65001

 Date: 09/03/2024 14:43:40
*/


-- ----------------------------
-- Table structure for ANIME
-- ----------------------------
DROP TABLE "ANIME";
CREATE TABLE "ANIME" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "ROMAJI" VARCHAR2(200 BYTE) VISIBLE,
  "ENGLISH" VARCHAR2(200 BYTE) VISIBLE NOT NULL,
  "NATIVE" VARCHAR2(200 BYTE) VISIBLE,
  "FORMAT" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "DESCRIPTION" VARCHAR2(3000 BYTE) VISIBLE NOT NULL,
  "START_YEAR" NUMBER VISIBLE NOT NULL,
  "START_MONTH" NUMBER VISIBLE,
  "START_DAY" NUMBER VISIBLE,
  "END_YEAR" NUMBER VISIBLE,
  "END_MONTH" NUMBER VISIBLE,
  "END_DAY" NUMBER VISIBLE,
  "SEASON" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "SEASON_YEAR" NUMBER VISIBLE NOT NULL,
  "EPISODES" NUMBER VISIBLE,
  "DURATION" NUMBER VISIBLE NOT NULL,
  "COUNTRY_OF_ORIGIN" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "SOURCE" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "COVER_IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "COVER_IMAGE_COLOR" VARCHAR2(10 BYTE) VISIBLE,
  "BANNER_IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "ANIME_URL" VARCHAR2(500 BYTE) VISIBLE,
  "MANGA_ID" NUMBER VISIBLE,
  "DATE_OF_CREATION" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME
-- ----------------------------
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('3', 'Shingeki no Kyojin Kouhen: Jiyuu no Tsubasa', 'Attack on Titan Part II: Wings of Freedom', '劇場版「進撃の巨人」後編～自由の翼～', 'MOVIE', 'FINISHED', 'A recompilation of the anime series. The new films will feature new dubbing and a 5.1ch remaster with returning voice cast members. The second film will cover 14 through 25.', '2015', '6', '27', '2015', '6', '27', 'SPRING', '2015', '1', '120', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20692-fSDEpfDtDg9u.png', '#e4a15d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20692.jpg', 'https://twitter.com/anime_shingeki?t=04jzwzKIHFFQ-Wvg6npMsw&s=09', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('4', 'Shingeki no Kyojin 2', 'Attack on Titan Season 2', '進撃の巨人２', 'TV', 'FINISHED', 'Eren Jaeger swore to wipe out every last Titan, but in a battle for his life he wound up becoming the thing he hates most. With his new powers, he fights for humanity''s freedom facing the monsters that threaten his home. After a bittersweet victory against the Female Titan, Eren finds no time to rest—a horde of Titans is approaching Wall Rose and the battle for humanity continues!<br><br>

(Source: Funimation)', '2017', '4', '1', '2017', '6', '17', 'SPRING', '2017', '12', '25', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20958-HuFJyr54Mmir.jpg', '#6AA66F', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20958-Y7eQdz9VENBD.jpg', 'http://shingeki.tv/season2/', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('5', 'Shingeki! Kyojin Chuugakkou', 'Attack on Titan: Junior High', '進撃！巨人中学校', 'TV', 'FINISHED', 'The school comedy story is set in a junior high school and centers on the original manga''s characters such as Eren and Mikasa as they battle with Titans. The spin-off incorporates gags while using Shingeki no Kyojin''s story and notable scenes as its basis.', '2015', '10', '4', '2015', '12', '20', 'FALL', '2015', '12', '18', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b21281-GwCKcZii6fVf.jpg', '#f1e4c9', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/n21281-NJqGktD33FWm.jpg', 'http://kyojinchu.tv/', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('6', 'Shingeki no Kyojin OVA', 'Attack on Titan OVA', '進撃の巨人 OVA', 'OVA', 'FINISHED', 'OVA 1: An old journal is found by Levi and Erwin when they conduct the surveillance operation outside the wall. The contents of "Ilse''s Journal" result in some unexpected actions from Hange.
<br>
OVA 2: Another story of the 104th Trainee Squad.
<br>
OVA 3: Will depict a "memorable episode before the 104th Training Corps became unified."
<br><br>
(Source: Anime News Network)', '2013', '12', '9', '2014', '8', '8', 'FALL', '2013', '3', '25', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx18397-AnpwhLkSjYL1.jpg', '#c9e4ae', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/18397-rG4Vpg67Kr0j.jpg', 'https://www.crunchyroll.com/attack-on-titan', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('7', 'Shingeki no Kyojin: Chronicle', 'Attack on Titan ~Chronicle~', '進撃の巨人 〜クロニクル〜', 'MOVIE', 'FINISHED', 'Movie compiling the first 3 seasons of <i>Shingeki no Kyojin</i>.', '2020', '7', '17', '2020', '7', '17', 'SUMMER', '2020', '1', '120', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx119113-IzVI5oZ0og8O.jpg', '#f1785d', NULL, 'https://shingeki.tv/movie_chronicle/', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('8', 'Shingeki no Kyojin Gaiden: Kuinaki Sentaku', 'Attack on Titan: No Regrets', '進撃の巨人 外伝 悔いなき選択', 'OVA', 'FINISHED', 'This prequel to megahit Attack on Titan answers the questions: How did Captain Levi of the Survey Corps go from street thug to humanity''s strongest soldier? And how did Commander Erwin become a cold, calculating leader, ready to sacrifice anything to save the human race? The fires that forged this bond of loyalty and trust were intense indeed!
<br><br>
(Source: Anime News Network, revised)', '2014', '12', '9', '2015', '4', '9', 'WINTER', '2015', '2', '28', 'JP', 'VISUAL_NOVEL', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20811-IvXLdxZkYNcP.jpg', NULL, 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20811-xIuYL1yGMT5S.jpg', 'https://www.crunchyroll.com/attack-on-titan', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('1', 'Shingeki no Kyojin', 'Attack on Titan', '進撃の巨人', 'TV', 'FINISHED', 'Several hundred years ago, humans were nearly exterminated by titans. Titans are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source. A small percentage of humanity survived by walling themselves in a city protected by extremely high walls, even taller than the biggest of titans.<br><br>
Flash forward to the present and the city has not seen a titan in over 100 years. Teenage boy Eren and his foster sister Mikasa witness something horrific as the city walls are destroyed by a colossal titan that appears out of thin air. As the smaller titans flood the city, the two kids watch in horror as their mother is eaten alive. Eren vows that he will murder every single titan and take revenge for all of mankind.<br><br>
(Source: MangaHelpers) ', '2013', '4', '7', '2013', '9', '28', 'SPRING', '2013', '25', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx16498-C6FPmWm59CyP.jpg', '#e4a15d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/16498-8jpFCOcDmneX.jpg', 'http://www.crunchyroll.com/attack-on-titan', '1', TO_DATE('2024-03-01 00:12:37', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('2', 'Shingeki no Kyojin Zenpen: Guren no Yumiya', 'Attack on Titan Part I: Crimson Bow and Arrow', '劇場版「進撃の巨人」前編～紅蓮の弓矢～', 'MOVIE', 'FINISHED', 'A recompilation of the anime series. The new films will feature new dubbing and a 5.1ch remaster with returning voice cast members. The first film will cover episodes 1 through 13.', '2014', '11', '22', '2014', '11', '22', 'FALL', '2014', '1', '118', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20691-dnv0rkpbgBDJ.png', '#e47835', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20691-xKJkvnhezBb0.jpg', 'https://twitter.com/anime_shingeki?t=04jzwzKIHFFQ-Wvg6npMsw&s=09', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('9', 'Shingeki no Kyojin: LOST GIRLS', 'Attack on Titan: Lost Girls', '進撃の巨人 LOST GIRLS', 'OVA', 'FINISHED', 'A three-part OVA adapting the "Shingeki no Kyojin: Lost Girls" spinoff novel that will be bundled with the 24th, 25th and 26th limited edition volumes of the manga.<br>
<br>
<strong>Wall Sina, Goodbye:</strong><br>
Annie Leonhart has a job to do—and a resulting absence that must stay off her record at all costs. With no one else to turn to, she asks her comrade Hitch Dreyse to cover for her. She agrees but puts forward a single condition: Annie must solve the fruitless missing person case Hitch was assigned. The case revolves around Carly Stratmann, a university graduate and the daughter of wealthy businessman Elliot Stratmann. With only a single day to solve the case and the underground of the Stohess District crawling with thugs, Annie must put her all into finding this girl. Yet, every answer she uncovers only leads to further questions—how has the illegal drug coderoin found its way to Stohess, what is Elliot hiding, and where has Carly disappeared to?<br>
<br>
<strong>Lost in the Cruel World:</strong><br>
With worry for Eren Yeager gripping her heart, Mikasa Ackerman begins to remember. She remembers her conversations with Armin Arlert, her concern for her friends, and most painfully, the time she had almost lost everything. As fear takes control, she begins to experience an alternate version of her past—some things can be changed, but are there events so inescapable that she can''t even prevent them in her dreams?
', '2017', '12', '8', '2018', '8', '9', 'FALL', '2017', '3', '25', 'JP', 'LIGHT_NOVEL', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx99634-9u4hdvWwmC2s.png', '#aed6ff', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/99634-m8hKbCnDL2ue.png', 'http://shingeki.tv/season2/', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('10', 'Shingeki no Kyojin: Chimi Kyara Gekijou - Tondeke! Kunren Heidan', 'Attack on Titan Picture Drama', '「進撃の巨人」ちみキャラ劇場"とんでけ! 訓練兵団"', 'SPECIAL', 'FINISHED', 'Specials included in BD/DVD.', '2013', '7', '17', '2014', '3', '19', 'SUMMER', '2013', '9', '11', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/19391.jpg', '#936b28', NULL, 'http://shingeki.tv/', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('13', 'Jujutsu Kaisen', 'JUJUTSU KAISEN', '呪術廻戦', 'TV', 'FINISHED', 'A boy fights... for "the right death."<br>
<br>
Hardship, regret, shame: the negative feelings that humans feel become Curses that lurk in our everyday lives. The Curses run rampant throughout the world, capable of leading people to terrible misfortune and even death. What''s more, the Curses can only be exorcised by another Curse.<br>
<br>
Itadori Yuji is a boy with tremendous physical strength, though he lives a completely ordinary high school life. One day, to save a friend who has been attacked by Curses, he eats the finger of the Double-Faced Specter, taking the Curse into his own soul. From then on, he shares one body with the Double-Faced Specter. Guided by the most powerful of sorcerers, Gojou Satoru, Itadori is admitted to the Tokyo Metropolitan Technical High School of Sorcery, an organization that fights the Curses... and thus begins the heroic tale of a boy who became a Curse to exorcise a Curse, a life from which he could never turn back.
<br><br>
(Source: Crunchyroll)<br>
<br>
<i>Note: The first episode received an early web premiere on September 19th, 2020. The regular TV broadcast started on October 3rd, 2020.</i>', '2020', '10', '3', '2021', '3', '27', 'FALL', '2020', '24', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx113415-bbBWj4pEFseh.jpg', '#e45d5d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/113415-jQBSkxWAAk83.jpg', 'https://jujutsukaisen.jp/', '5', TO_DATE('2024-03-01 00:13:17', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('11', 'DEATH NOTE', 'Death Note', 'DEATH NOTE', 'TV', 'FINISHED', 'Light Yagami is a genius high school student who is about to learn about life through a book of death. When a bored shinigami, a God of Death, named Ryuk drops a black notepad called a <i>Death Note</i>, Light receives power over life and death with the stroke of a pen. Determined to use this dark gift for the best, Light sets out to rid the world of evil… namely, the people he believes to be evil. Should anyone hold such power?<br>
<br>
The consequences of Light’s actions will set the world ablaze.<br>
<br>
(Source: Viz Media)', '2006', '10', '4', '2007', '6', '27', 'FALL', '2006', '37', '23', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1535-lawCwhzhi96X.jpg', NULL, 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/1535.jpg', 'http://www.hulu.com/death-note', '2', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('12', 'DEATH NOTE Rewrite', 'Death Note: Relight', 'DEATH NOTE リライト', 'SPECIAL', 'FINISHED', '1. Genshisuru Kami (Visions of a God)<br>
A two hour episode of Death Note, mainly a compilation of the confrontations between Light and L, re-edited from Ryuk''s perspective with new dialogue and soundtrack along with additional animation that could not be included in the original series.  An Unnamed Shinigami comes to Ryuk to question him about his new story in the human world.<br><br>
2. Eru o Tsugu Mono (L''s Successors)<br>
This story continues where the previous left off, continuing the story of Light. As the previous special told Light and L''s battles, this story does the same with the conflicts between Light, Mello, and Near.  <br><br>
(Source: Wikipedia)', '2007', '8', '31', '2008', '8', '22', 'SUMMER', '2007', '2', '112', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b2994-mlofkz5GpkIu.jpg', '#f1e450', NULL, NULL, '2', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('14', 'Jujutsu Kaisen 0', 'JUJUTSU KAISEN 0', '呪術廻戦 0', 'MOVIE', 'FINISHED', 'Yuta Okkotsu is a nervous high school student who is suffering from a serious problem—his childhood friend Rika has turned into a curse and won''t leave him alone. Since Rika is no ordinary curse, his plight is noticed by Satoru Gojo, a teacher at Jujutsu High, a school where fledgling exorcists learn how to combat curses. Gojo convinces Yuta to enroll, but can he learn enough in time to confront the curse that haunts him?
<br><br>
(Source: Viz Media)', '2021', '12', '24', '2021', '12', '24', 'FALL', '2021', '1', '105', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx131573-rpl82vDEDRm6.jpg', '#f1c95d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/131573-3veuVz5p0z2I.jpg', 'https://jujutsukaisen-movie.jp/', '5', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('15', 'Jujutsu Kaisen 2nd Season', 'JUJUTSU KAISEN Season 2', '呪術廻戦 第2期', 'TV', 'FINISHED', 'The second season of <i>Jujutsu Kaisen</i>.<br>
<br>
The past comes to light when second-year students Satoru Gojou and Suguru Getou are tasked with escorting young Riko Amanai to Master Tengen. But when a non-sorcerer user tries to kill them, their mission to protect the Star Plasma Vessel threatens to turn them into bitter enemies and cement their destinies—one as the world’s strongest sorcerer, and the other its most twisted curse user!<br>
<br>
(Source: Crunchyroll)', '2023', '7', '6', '2023', '12', '28', 'SUMMER', '2023', '23', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx145064-oNJZtLWdXtvy.jpg', '#aeaee4', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/145064-esDtAY2He7sk.jpg', 'https://jujutsukaisen.jp/', '5', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('16', 'BLEACH: Sennen Kessen-hen', 'BLEACH: Thousand-Year Blood War', 'BLEACH 千年血戦篇', 'TV', 'FINISHED', 'Was it all just a coincidence, or was it inevitable?
<br><br>
Ichigo Kurosaki gained the powers of a Soul Reaper through a chance encounter. As a Substitute
Soul Reaper, Ichigo became caught in the turmoil of the Soul Society, a place where deceased
souls gather. But with help from his friends, Ichigo overcame every challenge to become even
stronger.
<br><br>
When new Soul Reapers and a new enemy appear in his hometown of Karakura, Ichigo jumps
back into the battlefield with his Zanpakuto to help those in need. Meanwhile, the Soul Society
is observing a sudden surge in the number of Hollows being destroyed in the World of the Living.
They also receive separate reports of residents in the Rukon District having gone missing. Finally,
the Seireitei, home of the Soul Reapers, comes under attack by a group calling themselves the
Wandenreich.
<br><br>
Led by Yhwach, the father of all Quincies, the Wandenreich declare war against the Soul Reapers
with the following message: <i>"Five days from now, the Soul Society will be annihilated by the
Wandenreich."</i>
<br><br>
The history and truth kept hidden by the Soul Reapers for a thousand long years is finally brought
to light.
<br><br>
All things must come to an end as Ichigo Kurosaki''s final battle begins!', '2022', '10', '11', '2022', '12', '27', 'FALL', '2022', '13', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx116674-p3zK4PUX2Aag.jpg', '#e45043', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/116674-l2YlIyJzvGSV.jpg', 'https://twitter.com/bleachanimation', '4', TO_DATE('2024-03-01 00:13:06', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('17', 'BLEACH', 'Bleach', 'BLEACH', 'TV', 'FINISHED', 'Ichigo Kurosaki is a rather normal high school student apart from the fact he has the ability to see ghosts. This ability never impacted his life in a major way until the day he encounters the Shinigami Kuchiki Rukia, who saves him and his family''s lives from a Hollow, a corrupt spirit that devours human souls. 
<br><br>
Wounded during the fight against the Hollow, Rukia chooses the only option available to defeat the monster and passes her Shinigami powers to Ichigo. Now forced to act as a substitute until Rukia recovers, Ichigo hunts down the Hollows that plague his town. 


', '2004', '10', '5', '2012', '3', '27', 'FALL', '2004', '366', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx269-KxkqTIuQgJ6v.png', '#f19335', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/269-08ar2HJOUAuL.jpg', 'http://www.crunchyroll.com/bleach', '4', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('18', 'BLEACH: Sennen Kessen-hen - Ketsubetsu-tan', 'BLEACH: Thousand-Year Blood War - The Separation', 'BLEACH 千年血戦篇-訣別譚-', 'TV', 'FINISHED', 'The second part of <i>BLEACH: Sennen Kessen-hen</i>. 
<br><br>
After a brutal surprise attack by the forces of Quincy King Yhwach, the resident Reapers of the Soul Society lick their wounds and mourn their losses. Many of the surviving Soul Reaper captains train to battle without their Bankai, the ultimate technique wielded by the fiercest warriors.
<br><br>
In the previous assault, Ichigo Kurosaki narrowly managed to help fend off Yhwach''s fearsome wrath. However, to ultimately defeat his godly adversary and save his allies, Ichigo must now undergo severe training that will push him beyond his physical, emotional, and mental limits.
<br><br>
Though Yhwach already holds the upper hand in this ongoing blood feud, he also successfully recruits Uryuu Ishida, Ichigo''s close friend and rival, to be his successor. Yhwach strikes out once again at the weakened Soul Society, intent on finally obliterating his long-standing enemies. As Ichigo struggles to attain new power, the Soul Reaper captains fight for survival and borrowed time.
<br><br>
(Source: MAL Rewrite)', '2023', '7', '8', '2023', '9', '30', 'SUMMER', '2023', '13', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx159322-Sp1GflRhE6Po.jpg', '#4386e4', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/159322-biJjvtNkhkxR.jpg', 'https://twitter.com/BLEACHanimation/', '4', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('19', 'NARUTO', 'Naruto', 'NARUTO -ナルト-', 'TV', 'FINISHED', 'Naruto Uzumaki, a hyperactive and knuckle-headed ninja, lives in Konohagakure, the Hidden Leaf village. Moments prior to his birth, a huge demon known as the Kyuubi, the Nine-tailed Fox, attacked Konohagakure and wreaked havoc. In order to put an end to the Kyuubi''s rampage, the leader of the village, the 4th Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto. <br><br>
Shunned because of the presence of the Kyuubi inside him, Naruto struggles to find his place in the village. He strives to become the Hokage of Konohagakure, and he meets many friends and foes along the way. <br><br>
(Source: MAL Rewrite)', '2002', '10', '3', '2007', '2', '8', 'FALL', '2002', '220', '23', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20-YJvLbgJQPCoI.jpg', '#e47850', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20-HHxhPj5JD13a.jpg', 'http://www.crunchyroll.com/naruto', '3', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('20', 'NARUTO: Shippuuden', 'Naruto: Shippuden', 'NARUTO -ナルト- 疾風伝', 'TV', 'FINISHED', 'Naruto: Shippuuden is the continuation of the original animated TV series Naruto. The story revolves around an older and slightly more matured Uzumaki Naruto and his quest to save his friend Uchiha Sasuke from the grips of the snake-like Shinobi, Orochimaru. After 2 and a half years Naruto finally returns to his village of Konoha, and sets about putting his ambitions to work, though it will not be easy, as he has amassed a few (more dangerous) enemies, in the likes of the shinobi organization; Akatsuki. <br><br>
(Source: Anime News Network)', '2007', '2', '15', '2017', '3', '23', 'WINTER', '2007', '500', '23', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1735-Az5gbEdWeotG.png', '#e4865d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/1735.jpg', 'http://www.crunchyroll.com/naruto-shippuden', '3', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('21', 'NARUTO: Dai Katsugeki! Yuki Hime Ninpouchou Dattebayo!!', 'Naruto the Movie: Ninja Clash in the Land of Snow', '劇場版 NARUTO -ナルト- 大活劇!雪姫忍法帖だってばよ!!', 'MOVIE', 'FINISHED', 'Kakashi orders Naruto, Sasuke, and Sakura to watch a movie before their next mission. Naruto is a big fan of the lead actress. After the movie, they see the heroine in person and being chased. They help her and Naruto asks for an autograph but she wouldn''t give him one. When the three returns, Kakashi tells them about their mission: to escort the actress to the Snow Country to film a new movie.
<br><br>
(Source: Anime News Network)', '2004', '8', '21', '2004', '8', '21', 'SUMMER', '2004', '1', '90', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx442-VJbmIVTgmne3.png', '#e46b50', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/442-Mi9O1QwTaXqQ.jpg', 'https://www.crunchyroll.com/naruto-the-movie-ninja-clash-in-the-land-of-snow', '3', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('25', 'Shingeki no Kyojin 3', 'Attack on Titan Season 3', '進撃の巨人３', 'TV', 'FINISHED', 'Eren and his companions in the 104th are assigned to the newly-formed Levi Squad, whose assignment is to keep Eren and Historia safe given Eren''s newly-discovered power and Historia''s knowledge and pedigree. Levi and Erwin have good reason to be concerned, because the priest of the Church that Hanji had hidden away was found tortured to death, making it clear that the Military Police are involved with the cover-up. Things get more harrowing when the MPs make a move on Erwin and the Levi Squad narrowly avoids capture. Eren is also having problems with his Titan transformation, and a deadly killer has been hired to secure Eren and Historia, one Levi knows all too well from his youth.<br>
<br>
(Source: Anime News Network)', '2018', '7', '23', '2018', '10', '15', 'SUMMER', '2018', '12', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx99147-5RXELRvwjFl6.jpg', '#4386e4', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/99147-HACsFVrynFf5.jpg', 'http://shingeki.tv/season3/', '1', TO_DATE('2024-03-01 00:12:56', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('22', 'NARUTO: Takigakure no Shitou - Ore ga Eiyuu Dattebayo!', 'Naruto: The Lost Story - Mission: Protect the Waterfall Village', 'NARUTO -ナルト- 滝隠れの死闘 オレが英雄だってばよ！', 'SPECIAL', 'FINISHED', 'A routine rank-C mission turned into a full-blown battle as the Hidden Fall village is attacked by enemy ninjas. Now Naruto, Sasuke and Sakura must help the leader of the Hidden Fall, Shibuki, protect his village and show him what being a hero is all about.
<br><br>
(Source: Anime News Network)', '2003', '12', '20', '2003', '12', '20', 'WINTER', '2003', '1', '40', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/594.jpg', '#d6ae5d', NULL, NULL, '3', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('26', 'Shingeki no Kyojin: The Final Season', 'Attack on Titan Final Season', '進撃の巨人 The Final Season', 'TV', 'FINISHED', 'It’s been four years since the Scout Regiment reached the shoreline, and the world looks different now. Things are heating up as the fate of the Scout Regiment—and the people of Paradis—are determined at last. However, Eren is missing. Will he reappear before age-old tensions between Marleyans and Eldians result in the war of all wars?<br>
<br>
(Source: Crunchyroll)', '2020', '12', '7', '2021', '3', '29', 'WINTER', '2021', '16', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx110277-qDRIhu50PXzz.jpg', '#ae5d1a', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/110277-iuGn6F5bK1U1.jpg', 'https://shingeki.tv/final/', '1', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('23', 'NARUTO: Dai Gekitotsu! Maboroshi no Chitei Iseki Dattebayo', 'Naruto the Movie: Legend of the Stone of Gelel', '劇場版 NARUTO -ナルト- 大激突!幻の地底遺跡だってばよ', 'MOVIE', 'FINISHED', 'Naruto, Shikamaru, and Sakura are executing their mission of delivering a lost pet to a certain village. However, right in the midst of things, troops led by the mysterious knight, Temujin, attack them. In the violent battle, the three become separated. Temujin challenges Naruto to a fight and at the end of the fierce battle, both fall together from a high cliff. Furthermore, Shikamaru, having been left behind, beholds a giant moving fortress as it appears before his very eyes. In order to get a grasp on the situation, he infiltrates the fortress by himself, however once there he witnesses a frightening sight...
<br><br>
(Source: Anime News Network)', '2005', '8', '6', '2005', '8', '6', 'SUMMER', '2005', '1', '97', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx936-P1ogcIs07UR8.jpg', '#f18643', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/936-q1NJoF3NDEjF.jpg', 'https://www.crunchyroll.com/naruto-the-movie-legend-of-the-stone-of-gelel', '3', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID", "DATE_OF_CREATION") VALUES ('24', 'NARUTO: Dai Koufun! Mikazukijima no Animal Panic Dattebayo!', 'Naruto the Movie: Guardians of the Crescent Moon Kingdom', '劇場版 NARUTO -ナルト- 大興奮!みかづき島のアニマル騒動だってばよ', 'MOVIE', 'FINISHED', 'Led by Kakashi Hatake, Naruto Uzumaki, Sakura Haruno, and Rock Lee are tasked to escort the extravagant Prince Michiru Tsuki and his spoiled son Hikaru to the prosperous Land of Moon when the two return from a long trip around the world. As if guarding two whimsical high-ranked individuals was not challenging enough, the prince''s reckless decision to acquire an entire circus during their journey—mainly to entertain Hikaru''s wish of owning the saber-toothed tiger featured in the show—further propels the mission into disarray.<br>
<br>
Just as things are finally settling down, the arrival of Michiru''s convoy at the Land of Moon is met with an unforeseen crisis—the greedy Chief Minister Shabadaba has taken over the country with the assistance of mysterious, powerful ninjas. While Kakashi''s team relentlessly fights the enemy by any means necessary, the two princes are forced to confront a new outlook on life through adversity.<br><br>
(Source: MAL Rewrite)', '2006', '8', '5', '2006', '8', '5', 'SUMMER', '2006', '1', '94', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx2144-9FITEzdGnlWC.jpg', '#e48650', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/2144-KnEAcgexm2SI.jpg', 'https://www.crunchyroll.com/naruto-the-movie-guardians-of-the-crescent-moon-kingdom', '3', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for ANIME_GENRE
-- ----------------------------
DROP TABLE "ANIME_GENRE";
CREATE TABLE "ANIME_GENRE" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "GENRE_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME_GENRE
-- ----------------------------
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('1', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('1', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('1', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('1', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('2', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('2', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('2', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('3', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('3', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('3', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('4', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('4', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('4', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('4', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('5', '6');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('5', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('5', '11');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('6', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('6', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('6', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('6', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('7', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('7', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('7', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('7', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('8', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('8', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('9', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('9', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('9', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('9', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('10', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('10', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('10', '6');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('10', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('11', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('11', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('11', '13');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('11', '14');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('12', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('12', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('12', '13');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('12', '14');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('13', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('13', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('13', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('14', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('14', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('15', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('15', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('15', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('16', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('16', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('16', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('17', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('17', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('17', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('18', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('18', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('18', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('19', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('19', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('19', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('19', '6');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('19', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('19', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('20', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('20', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('20', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('20', '6');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('20', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('20', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('21', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('21', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('21', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('21', '6');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('21', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('22', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('22', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('22', '6');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('23', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('23', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('23', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('23', '6');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('23', '7');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('24', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('24', '2');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('25', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('25', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('25', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('25', '8');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('26', '1');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('26', '3');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('26', '5');
INSERT INTO "ANIME_GENRE" ("ANIME_ID", "GENRE_ID") VALUES ('26', '8');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for ANIME_PRODUCER
-- ----------------------------
DROP TABLE "ANIME_PRODUCER";
CREATE TABLE "ANIME_PRODUCER" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "PRODUCER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME_PRODUCER
-- ----------------------------
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('1', '1');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for ANIME_RELATED
-- ----------------------------
DROP TABLE "ANIME_RELATED";
CREATE TABLE "ANIME_RELATED" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "RELATED_ANIME_ID" NUMBER VISIBLE NOT NULL,
  "RELATION_TYPE" VARCHAR2(50 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME_RELATED
-- ----------------------------
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '2', 'Alternative');
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('11', '12', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('12', '11', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('13', '14', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('13', '15', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('14', '13', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('14', '15', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('15', '13', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('15', '14', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('16', '17', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('16', '18', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('17', '16', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('17', '18', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('18', '16', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('18', '17', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('19', '20', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('19', '21', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('19', '22', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('19', '23', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('19', '24', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('20', '19', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('20', '21', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('20', '22', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('20', '23', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('20', '24', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('21', '19', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('21', '20', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('21', '22', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('21', '23', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('21', '24', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('22', '19', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('22', '20', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('22', '21', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('22', '23', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('22', '24', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('23', '19', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('23', '20', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('23', '21', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('23', '22', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('23', '24', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('24', '19', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('24', '20', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('24', '21', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('24', '22', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('24', '23', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('25', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '1', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '2', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '3', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '4', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '5', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '6', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '7', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '8', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '9', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '10', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('26', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('2', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('3', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('4', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('5', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('6', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('7', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('8', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('9', '26', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '25', NULL);
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('10', '26', NULL);
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for ANIME_STAFF
-- ----------------------------
DROP TABLE "ANIME_STAFF";
CREATE TABLE "ANIME_STAFF" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "STAFF_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME_STAFF
-- ----------------------------
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('2', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('2', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('2', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('3', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('3', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('3', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('9', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('9', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('9', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('10', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('10', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('10', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('19', '4');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('19', '5');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('19', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('25', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('25', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('25', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('26', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('26', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('26', '3');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for ANIME_STUDIO
-- ----------------------------
DROP TABLE "ANIME_STUDIO";
CREATE TABLE "ANIME_STUDIO" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "STUDIO_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME_STUDIO
-- ----------------------------
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('1', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('2', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('3', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('4', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('5', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('6', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('7', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('8', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('9', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('10', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('11', '3');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('12', '3');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('13', '2');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('14', '2');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('15', '2');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('16', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('17', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('18', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('19', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('20', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('21', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('22', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('23', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('24', '4');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('25', '1');
INSERT INTO "ANIME_STUDIO" ("ANIME_ID", "STUDIO_ID") VALUES ('26', '2');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for CATEGORY
-- ----------------------------
DROP TABLE "CATEGORY";
CREATE TABLE "CATEGORY" (
  "CATEGORY_ID" NUMBER VISIBLE NOT NULL,
  "CATEGORY_NAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CATEGORY
-- ----------------------------
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('1', 'GENERAL');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('2', 'ANIME');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('3', 'MANGA');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('4', 'RELEASE DISCUSSION');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('5', 'SITE ANNOUNCEMENTS');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('6', 'NEWS');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('7', 'MUSIC');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('8', 'RECOMMENDATIONS');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('9', 'SITE FEEDBACK');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('10', 'BUG REPORTS');
INSERT INTO "CATEGORY" ("CATEGORY_ID", "CATEGORY_NAME") VALUES ('11', 'MISC');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for CHARACTER
-- ----------------------------
DROP TABLE "CHARACTER";
CREATE TABLE "CHARACTER" (
  "CHARACTER_ID" NUMBER VISIBLE NOT NULL,
  "FULL_NAME" VARCHAR2(200 BYTE) VISIBLE NOT NULL,
  "NATIVE" VARCHAR2(200 BYTE) VISIBLE,
  "IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "DESCRIPTION" CLOB VISIBLE,
  "MANGA_ID" NUMBER VISIBLE,
  "VA_ID" NUMBER VISIBLE,
  "ROLE" VARCHAR2(100 BYTE) VISIBLE,
  "GENDER" VARCHAR2(20 BYTE) VISIBLE,
  "AGE" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CHARACTER
-- ----------------------------
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE") VALUES ('1', 'Levi', 'リヴァイ', 'https://s4.anilist.co/file/anilistcdn/character/large/b45627-CR68RyZmddGG.png', NULL, '1', '1', 'SUPPORTING', 'MALE', '30');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE") VALUES ('2', 'Armin Arlert', 'アルミン・アルレルト', 'https://s4.anilist.co/file/anilistcdn/character/large/b46494-g7xYYuBtYPnO.png', NULL, '1', '2', 'MAIN', 'MALE', '19');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE") VALUES ('3', 'Erwin Smith', 'エルヴィン・スミス', 'https://s4.anilist.co/file/anilistcdn/character/large/b46496-Mu86MENd5wNB.png', NULL, '1', '3', 'SUPPORTING', 'MALE', NULL);
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE") VALUES ('4', 'Eren Yeager', 'エレン・イェーガー', 'https://s4.anilist.co/file/anilistcdn/character/large/b40882-dsj7IP943WFF.jpg', '__Initial Height__: 170 cm (5''7")
__Affiliation:__ Survey Corps

Eren was born to [Carla](https://anilist.co/character/62475) and [Grisha Yeager](https://anilist.co/character/62477) in Shiganshina District on March 30th, 835, in the southern region of Wall Maria. He grew up in the town with his parents and foster sister [Mikasa](https://anilist.co/character/40881), who moved in with the Yeagers as a child. Eren spends most of his time with Mikasa and their mutual best friend [Armin](https://anilist.co/character/46494), whom the pair often defend from neighborhood bullies.  

Eren is a passionate, determined, hardheaded, and impulsive young man. When they were children, Armin showed him a book depicting the wonders of the outside world. Eren grew to share Armin''s curiosity of the world beyond the Walls and resolved to see it for himself. This dream inspired his admiration of the Survey Corps and his desire to join their ranks as soon as he became eligible for enrollment. 

When the Titans break through Wall Maria into Shiganshina, Eren is forced to watch on as his mother is trapped under the rubble of their house and eaten by a titan. Forever changed from this event, Eren vows to kill every last titan.', '1', '4', 'MAIN', 'MALE', '19');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE") VALUES ('5', 'Naruto Uzumaki', 'うずまきナルト', 'https://s4.anilist.co/file/anilistcdn/character/large/b17-IazKGogQwJ1p.png', NULL, '3', '5', 'MAIN', 'MALE', '17');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE") VALUES ('6', 'Sasuke Uchiha', 'うちはサスケ', 'https://s4.anilist.co/file/anilistcdn/character/large/b13-SISLEw1oAD7a.png', NULL, '3', '6', 'MAIN', 'MALE', '17');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE") VALUES ('7', 'Kakashi Hatake', 'はたけカカシ', 'https://s4.anilist.co/file/anilistcdn/character/large/b85-mkVBh2yjxjmx.png', NULL, '3', '7', 'MAIN', 'MALE', '29');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for COMMENTT
-- ----------------------------
DROP TABLE "COMMENTT";
CREATE TABLE "COMMENTT" (
  "COMMENT_ID" NUMBER VISIBLE DEFAULT "ANILIST"."COMMENT_SEQ"."NEXTVAL" NOT NULL,
  "COMMENT_BODY" VARCHAR2(3000 BYTE) VISIBLE,
  "PARENT_COMMENT_ID" NUMBER VISIBLE,
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "THREAD_ID" NUMBER VISIBLE NOT NULL,
  "DATE_OF_CREATION" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of COMMENTT
-- ----------------------------
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('46', 'hello fifth', '21', '1', '5', TO_DATE('2024-03-08 23:39:49', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('51', 'testing some some problems', '48', '1', '5', TO_DATE('2024-03-08 23:56:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('81', 'root comment child one', '68', '1', '5', TO_DATE('2024-03-09 12:04:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('82', 'nothing to ask', '81', '1', '5', TO_DATE('2024-03-09 12:13:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('3', 'hello', NULL, '1', '5', TO_DATE('2024-03-07 16:02:30', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('4', 'hi', '7', '1', '5', TO_DATE('2024-03-07 16:02:56', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('5', 'hello hello', NULL, '1', '21', TO_DATE('2024-03-07 16:28:29', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('6', 'hello hello', NULL, '2', '21', TO_DATE('2024-03-07 17:06:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('7', 'hello hello', '3', '2', '5', TO_DATE('2024-03-07 17:10:42', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('47', 'hello hello hello hello hello', '41', '1', '5', TO_DATE('2024-03-08 23:40:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('21', 'hello', NULL, '1', '5', TO_DATE('2024-03-07 19:19:55', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('43', 'hello for second', '21', '1', '5', TO_DATE('2024-03-08 23:13:29', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('48', 'testing some problems yet', '47', '1', '5', TO_DATE('2024-03-08 23:41:44', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('54', 'hello again all completed', NULL, '1', '5', TO_DATE('2024-03-09 00:37:46', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('64', 'testing again again', '63', '1', '42', TO_DATE('2024-03-09 00:49:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('66', 'hello for fifth comment child', '50', '2', '5', TO_DATE('2024-03-09 01:42:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('68', 'root comment', NULL, '21', '5', TO_DATE('2024-03-09 01:43:58', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('41', 'hello hello hello hello', '4', '1', '5', TO_DATE('2024-03-08 23:11:31', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('44', 'hello for third', '21', '1', '5', TO_DATE('2024-03-08 23:36:18', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('49', 'now no problems there', '41', '1', '5', TO_DATE('2024-03-08 23:41:59', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('52', 'test for root comment', NULL, '1', '5', TO_DATE('2024-03-09 00:35:09', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('53', 'test for root comment again', NULL, '1', '5', TO_DATE('2024-03-09 00:36:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('55', 'testing some some some problems again again', '51', '1', '5', TO_DATE('2024-03-09 00:38:06', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('56', 'second thread testing', NULL, '1', '21', TO_DATE('2024-03-09 00:39:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('58', 'testing thread for me', NULL, '21', '61', TO_DATE('2024-03-09 00:40:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('60', 'hello my friends', NULL, '1', '41', TO_DATE('2024-03-09 00:47:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('62', 'testing thread', NULL, '1', '42', TO_DATE('2024-03-09 00:49:23', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('67', 'hello again all completed child', '54', '21', '5', TO_DATE('2024-03-09 01:43:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('42', 'hello for first', '21', '1', '5', TO_DATE('2024-03-08 23:12:52', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('45', 'hello fourth', '21', '1', '5', TO_DATE('2024-03-08 23:39:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('50', 'hello for fifth', '46', '1', '5', TO_DATE('2024-03-08 23:42:30', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('57', 'let''s go ', '5', '1', '21', TO_DATE('2024-03-09 00:39:30', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('59', 'testing thread for me again', '58', '21', '61', TO_DATE('2024-03-09 00:41:06', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('61', 'hello again', '60', '1', '41', TO_DATE('2024-03-09 00:47:28', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('63', 'testing again', NULL, '1', '42', TO_DATE('2024-03-09 00:49:31', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "COMMENTT" ("COMMENT_ID", "COMMENT_BODY", "PARENT_COMMENT_ID", "USER_ID", "THREAD_ID", "DATE_OF_CREATION") VALUES ('65', 'hello for root comment second', '21', '2', '5', TO_DATE('2024-03-09 01:42:06', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for DATABASE_LOG
-- ----------------------------
DROP TABLE "DATABASE_LOG";
CREATE TABLE "DATABASE_LOG" (
  "USERNAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "PARAMETER" VARCHAR2(500 BYTE) VISIBLE,
  "EVENT_TYPE" VARCHAR2(500 BYTE) VISIBLE NOT NULL,
  "DATE_OF_CREATION" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of DATABASE_LOG
-- ----------------------------
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'STAFF_ID: 4', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-03 20:07:37', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('bladeRunner', 'CHARACTER_ID: 4', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 20:08:51', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('bladeRunner', 'CHARACTER_ID: 4', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 20:09:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'STAFF_ID: 4', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-03 20:09:49', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'CHARACTER_ID: 4', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-09 11:37:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'CHARACTER_ID: 4', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 00:20:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'CHARACTER_ID: 2', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 00:37:25', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'CHARACTER_ID: 2', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 00:46:31', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'CHARACTER_ID: 2', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 00:47:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'STAFF_ID: 1', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-03 00:47:34', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('bladeRunner', 'USER_ID: 21, VA_ID: 3', 'Procedure: UPDATE_USER_LIKES_VA(USER_ID, VA_ID)', TO_DATE('2024-03-03 01:01:56', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('Nayeemj496', 'USER_ID: 2, VA_ID: 3', 'Procedure: UPDATE_USER_LIKES_VA(USER_ID, VA_ID)', TO_DATE('2024-03-03 01:03:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('bladeRunner', 'USER_ID: 21, VA_ID: 3', 'Procedure: UPDATE_USER_LIKES_VA(USER_ID, VA_ID)', TO_DATE('2024-03-03 01:02:06', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('Nayeemj496', 'CHARACTER_ID: 3', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 01:03:27', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('Nayeemj496', 'STAFF_ID: 4', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-03 20:12:59', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('Nayeemj496', 'STAFF_ID: 4', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-03 20:14:48', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('Nayeemj496', 'STAFF_ID: 4', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-03 20:18:52', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'STAFF_ID: 1', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-08 01:30:15', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'STAFF_ID: 1', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-03 19:23:31', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('nayeem.j.i', 'STAFF_ID: 1', 'Function: GET_STAFF_LIKES_COUNT(STAFF_ID)', TO_DATE('2024-03-03 19:24:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('Nayeemj496', 'CHARACTER_ID: 4', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 20:17:43', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('bladeRunner', 'CHARACTER_ID: 4', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 20:12:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "DATABASE_LOG" ("USERNAME", "PARAMETER", "EVENT_TYPE", "DATE_OF_CREATION") VALUES ('bladeRunner', 'CHARACTER_ID: 4', 'Function: GET_CHARACTER_LIKES_COUNT(CHARACTER_ID)', TO_DATE('2024-03-03 20:12:25', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for GENRE
-- ----------------------------
DROP TABLE "GENRE";
CREATE TABLE "GENRE" (
  "GENRE_ID" NUMBER VISIBLE NOT NULL,
  "GENRE_NAME" VARCHAR2(20 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of GENRE
-- ----------------------------
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('1', 'Action');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('2', 'Adventure');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('3', 'Drama');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('4', 'Sci-Fi');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('5', 'Mystery');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('6', 'Comedy');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('7', 'Supernatural');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('8', 'Fantasy');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('9', 'Sports');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('10', 'Romance');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('11', 'Slice of Life');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('12', 'Horror');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('13', 'Psychological');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('14', 'Thriller');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('15', 'Ecchi');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('16', 'Mecha');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('17', 'Music');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('18', 'Mahou Shoujo');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for HAS
-- ----------------------------
DROP TABLE "HAS";
CREATE TABLE "HAS" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "CHARACTER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of HAS
-- ----------------------------
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('1', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('1', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('1', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('1', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('5', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('5', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('5', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('5', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('6', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('6', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('6', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('6', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('7', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('7', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('7', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('7', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('8', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('8', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('8', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('8', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('9', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('9', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('9', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('9', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('10', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('10', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('10', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('10', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('19', '5');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('19', '6');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('19', '7');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('25', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('25', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('25', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('25', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('26', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('26', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('26', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('26', '4');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for MANGA
-- ----------------------------
DROP TABLE "MANGA";
CREATE TABLE "MANGA" (
  "MANGA_ID" NUMBER VISIBLE NOT NULL,
  "ROMAJI" VARCHAR2(200 BYTE) VISIBLE,
  "ENGLISH" VARCHAR2(200 BYTE) VISIBLE,
  "NATIVE" VARCHAR2(200 BYTE) VISIBLE,
  "FORMAT" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "DESCRIPTION" VARCHAR2(3000 BYTE) VISIBLE NOT NULL,
  "START_YEAR" NUMBER VISIBLE NOT NULL,
  "START_MONTH" NUMBER VISIBLE,
  "START_DAY" NUMBER VISIBLE,
  "END_YEAR" NUMBER VISIBLE,
  "END_MONTH" NUMBER VISIBLE,
  "END_DAY" NUMBER VISIBLE,
  "CHAPTERS" NUMBER VISIBLE,
  "VOLUMES" NUMBER VISIBLE,
  "COUNTRY_OF_ORIGIN" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "SOURCE" VARCHAR2(20 BYTE) VISIBLE NOT NULL,
  "COVER_IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "COVER_IMAGE_COLOR" VARCHAR2(10 BYTE) VISIBLE,
  "BANNER_IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "MANGA_URL" VARCHAR2(500 BYTE) VISIBLE,
  "DATE_OF_CREATION" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MANGA
-- ----------------------------
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL", "DATE_OF_CREATION") VALUES ('1', 'Shingeki no Kyojin', 'Attack on Titan', '進撃の巨人', 'MANGA', 'FINISHED', 'In this post-apocalyptic sci-fi story, humanity has been devastated by the bizarre, giant humanoids known as the Titans. Little is known about where they came from or why they are bent on consuming mankind. Seemingly unintelligent, they have roamed the world for years, killing everyone they see. For the past century, what''s left of man has hidden in a giant, three-walled city. People believe their 50-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything.
<br><br>
(Source: Kodansha USA)
<br><br>
<i>Note: Includes 2 extra chapters.</i>', '2009', '9', '9', '2021', '4', '9', '141', '34', 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx53390-1RsuABC34P9D.jpg', '#d6431a', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/53390-6Uru5rrjh8zv.jpg', 'https://pocket.shonenmagazine.com/episode/13932016480029113127', TO_DATE('2024-03-01 00:12:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL", "DATE_OF_CREATION") VALUES ('2', 'DEATH NOTE', 'Death Note', 'DEATH NOTE', 'MANGA', 'FINISHED', '<b>When Light Yagami finds a notebook giving him power over death, will he use it for good—or evil?</b><br><br>Light Yagami is an ace student with great prospects—and he’s bored out of his mind. But all that changes when he finds the Death Note, a notebook dropped by a rogue Shinigami death god. Any human whose name is written in the notebook dies, and Light has vowed to use the power of the Death Note to rid the world of evil. But will Light succeed in his noble goal, or will the Death Note turn him into the very thing he fights against?<br><br>(Source: Viz Media)', '2003', '12', '1', '2006', '5', '15', '108', '12', 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx30021-FE6kmrfpuKyb.jpg', '#f1e4ae', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/n30021-eZbrTpIjv10E.jpg', 'https://mangaplus.shueisha.co.jp/titles/100008', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL", "DATE_OF_CREATION") VALUES ('3', 'NARUTO', 'Naruto', 'NARUTO -ナルト-', 'MANGA', 'FINISHED', 'Before Naruto''s birth, a great demon fox had attacked the Hidden Leaf Village. A man known as the 4th Hokage sealed the demon inside the newly born Naruto, causing him to unknowingly grow up detested by his fellow villagers. Despite his lack of talent in many areas of ninjutsu, Naruto strives for only one goal: to gain the title of Hokage, the strongest ninja in his village. Desiring the respect he never received, Naruto works towards his dream with fellow friends Sasuke and Sakura and mentor Kakashi as they go through many trials and battles that come with being a ninja. ', '1999', '9', '21', '2014', '11', '10', '700', '72', 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/nx30011-9yUF1dXWgDOx.jpg', '#fe7828', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/30011-pkX1O0EFqvV7.jpg', 'https://mangaplus.shueisha.co.jp/titles/100018', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL", "DATE_OF_CREATION") VALUES ('4', 'BLEACH', 'Bleach', 'BLEACH', 'MANGA', 'FINISHED', 'Ichigo Kurosaki has always been able to see ghosts, but this ability doesn''t change his life nearly as much as his close encounter with Rukia Kuchiki, a Soul Reaper and member of the mysterious Soul Society. While fighting a Hollow, an evil spirit that preys on humans who display psychic energy, Rukia attempts to lend Ichigo some of her powers so that he can save his family; but much to her surprise, Ichigo absorbs every last drop of her energy. Now a full-fledged Soul Reaper himself, Ichigo quickly learns that the world he inhabits is one full of dangerous spirits and, along with Rukia— who is slowly regaining her powers— it''s Ichigo''s job to protect the innocent from Hollows and help the spirits themselves find peace.<br><br>
(Source: Viz Media)<br><br>
<i>Note: Chapter count includes the 12-chapter “Turn Back The Pendulum” side story and 8 extra chapters.</i>', '2001', '8', '7', '2016', '8', '23', '706', '74', 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx30012-z7U138mUaPdN.png', '#3586e4', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/30012-RpbdVc2yNxhw.jpg', 'https://www.viz.com/shonenjump/chapters/bleach', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL", "DATE_OF_CREATION") VALUES ('5', 'Jujutsu Kaisen', 'Jujutsu Kaisen', '呪術廻戦', 'MANGA', 'RELEASING', 'Although Yuji Itadori looks like your average teenager, his immense physical strength is something to behold! Every sports club wants him to join, but Itadori would rather hang out with the school outcasts in the Occult Research Club. One day, the club manages to get their hands on a sealed cursed object. Little do they know the terror they’ll unleash when they break the seal…
<br><br>
(Source: Viz Media)
<br><br>
<i>Notes:<br>
- Ranked 1st in Japan''s Bookstore Employees Top Manga of 2018.<br>
- Nominated for the 25th Annual Tezuka Osamu Cultural Prize in 2021.<br>
- Nominated for the 65th Shogakukan Manga Award in the Shounen Category in 2019.</i>', '2018', '3', '5', NULL, NULL, NULL, NULL, NULL, 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx101517-H3TdM3g5ZUe9.jpg', '#e4a15d', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/101517-FrJtb3Th3HtF.jpg', 'https://www.shonenjump.com/j/rensai/jujutsu.html', TO_DATE('2024-02-29 23:58:12', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for MANGA_GENRE
-- ----------------------------
DROP TABLE "MANGA_GENRE";
CREATE TABLE "MANGA_GENRE" (
  "MANGA_ID" NUMBER VISIBLE NOT NULL,
  "GENRE_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MANGA_GENRE
-- ----------------------------
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('1', '1');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('1', '3');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('1', '5');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('1', '8');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('2', '5');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('2', '7');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('2', '13');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('2', '14');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('3', '1');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('3', '2');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('3', '3');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('3', '6');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('3', '7');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('3', '8');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('4', '1');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('4', '2');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('4', '7');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('5', '1');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('5', '3');
INSERT INTO "MANGA_GENRE" ("MANGA_ID", "GENRE_ID") VALUES ('5', '7');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for MANGA_STAFF
-- ----------------------------
DROP TABLE "MANGA_STAFF";
CREATE TABLE "MANGA_STAFF" (
  "MANGA_ID" NUMBER VISIBLE NOT NULL,
  "STAFF_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of MANGA_STAFF
-- ----------------------------
INSERT INTO "MANGA_STAFF" ("MANGA_ID", "STAFF_ID") VALUES ('1', '1');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for PRODUCER
-- ----------------------------
DROP TABLE "PRODUCER";
CREATE TABLE "PRODUCER" (
  "PRODUCER_ID" NUMBER VISIBLE NOT NULL,
  "PRODUCER_NAME" VARCHAR2(100 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of PRODUCER
-- ----------------------------
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('1', 'Bandai Visual');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('2', 'Bandai Entertainment');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('3', 'Manga Entertainment');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('4', 'Funimation');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('5', 'Nippon Victor');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('6', 'Arts Pro');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('7', 'Dentsu');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('8', 'TV Tokyo');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('9', 'NAS');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('10', 'Nihon Ad Systems');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('11', 'Sentai Filmworks');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('12', 'TV Tokyo Music');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('13', 'Animation Planet');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('14', 'Nomad');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('15', 'Genco');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('16', 'Viz Media');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('17', 'Asmik Ace');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('18', 'Discotek');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('19', 'Fuji TV');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('20', 'OB Planning');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('21', 'Studio Jack');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('22', 'VAP');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('23', 'Nippon Television Network');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('24', 'Aniplex');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('25', 'Shueisha');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('26', 'KSS');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('27', 'SME Visual Works');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('28', 'Rakuonsha');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('29', '4Kids Entertainment');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('30', 'TAP');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('31', 'Asatsu DK');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('32', 'Magic Bus');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('33', 'Mushi Production');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('34', 'Studio Guts');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('35', 'Asahi Production');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('36', 'Avex Pictures');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('37', 'Trans Arts');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('38', 'Marvelous Entertainment');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('39', 'Sotsu');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('40', 'Starchild Records');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('41', 'Media Factory');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('42', 'DAX Production');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('43', 'GDH');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('44', 'Pony Canyon');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('45', 'CBC');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('46', 'Group TAC');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('47', 'Rondo Robe');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('48', 'Pioneer LDC');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('49', 'd-rights');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('50', 'NBCUniversal Entertainment Japan');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('51', 'ADV Films');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('52', 'Kadokawa Shoten');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('53', 'GKids');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('54', 'Madman Entertainment');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('55', 'Movic');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('56', 'Sega Games');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('57', 'Toei Animation');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('58', 'Selecta Visión');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('59', 'Media Blasters');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('60', 'NYAV Post');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('61', 'Hakusensha');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('62', 'Kodansha');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('63', 'Aniplex of America');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('64', 'Studio DEEN');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('65', 'Sony Music Entertainment');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('66', 'Mainichi Broadcasting System');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('67', 'Toho');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('68', 'Yomiko Advertising');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('69', 'Bandai');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('70', 'CyberConnect2');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('71', 'AnimEigo');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('72', 'TBS');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('73', 'AIC');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('74', 'Lantis');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('75', 'Cosmic Ray');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('76', 'Tohokushinsha Film Corporation');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('77', 'Sony Pictures Entertainment');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('78', 'Yomiuri Advertising');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('79', 'Youmex');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('80', 'Toshiba EMI');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('81', 'feel.');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('82', 'Hal Film Maker');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('83', 'Mellow Head');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('84', 'Memory-Tech');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('85', 'Imagica');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('86', 'J.C. Staff');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('87', 'Marvelous Interactive');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('88', 'Kadokawa Pictures USA');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('89', 'Happinet Pictures');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('90', 'Sogo Vision');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('91', 'The Right Stuf International');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('92', 'Omnibus Japan');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('93', 'Xebec');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('94', 'Studio Hibari');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('95', 'Shouchiku');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('96', 'Apollon');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('97', 'TV Asahi');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('98', 'Victor Entertainment');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('99', 'Key');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('100', 'Animax');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('101', 'Toei Video');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('102', 'Sunny Side Up');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('103', 'NHK');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('104', 'm.o.e.');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('105', 'SoftX');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('106', 'Trinet Entertainment');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for REVIEW_ANIME
-- ----------------------------
DROP TABLE "REVIEW_ANIME";
CREATE TABLE "REVIEW_ANIME" (
  "REVIEW_ANIME_ID" NUMBER VISIBLE DEFAULT "ANILIST"."REVIEW_ANIME_ID_SEQ"."NEXTVAL" NOT NULL,
  "REVIEW_ANIME_TEXT" VARCHAR2(3000 BYTE) VISIBLE NOT NULL,
  "DATE_OF_CREATION_ANIME" DATE VISIBLE DEFAULT SYSDATE,
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "USER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEW_ANIME
-- ----------------------------
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('81', 'Title: A Journey of Growth and Friendship: A Review of Naruto Shippuden

Naruto Shippuden is not merely an anime; it''s an odyssey, a saga of growth, friendship, and perseverance that has captivated audiences worldwide. Building upon the foundation laid by its predecessor, Naruto, this series delves deeper into the lives of its characters, exploring their pasts, struggles, and aspirations with remarkable depth and nuance.

At its core, Naruto Shippuden continues the story of Naruto Uzumaki, a young ninja with dreams of becoming the strongest ninja and the leader of his village, the Hokage. However, the series transcends its shonen battle anime roots by delving into themes of redemption, sacrifice, and the consequences of one''s actions. The character development is unparalleled, with each major figure undergoing significant growth and transformation throughout the series.

One of the most compelling aspects of Naruto Shippuden is its exploration of the bonds between characters. From Naruto''s unwavering friendship with Sasuke to the complex relationship between Naruto and his mentor, Jiraiya, the series highlights the power of camaraderie in the face of adversity. The emotional depth of these relationships adds layers of complexity to the narrative, resonating with audiences on a profound level.

Moreover, Naruto Shippuden excels in its world-building, immersing viewers in a rich and vibrant universe filled with diverse cultures, landscapes, and mythologies. The lore surrounding the ninja villages, the mystical powers of chakra, and the history of conflicts adds depth and intrigue to the story, enriching the viewing experience.

Of course, no review of Naruto Shippuden would be complete without mentioning its breathtaking action sequences. From epic ninja battles to heart-pounding showdowns between rival clans, the series delivers adrenaline-pumping combat that never fails to impress. The choreography, animation, and soundtrack work in harmony to create truly memorable moments that leave a lasting impression.

However, Naruto Shippuden is not without its flaws. Pacing issues occasionally arise, particularly during filler arcs, where the narrative veers away from the main storyline. While these filler episodes provide additional context and character development, they can sometimes feel disconnected from the overarching plot, testing the patience of viewers eager to see the story progress.

In conclusion, Naruto Shippuden is a masterpiece of anime storytelling, blending action, drama, and character-driven narrative to create a truly unforgettable experience. Despite its occasional missteps, the series remains a shining example of the power of friendship, perseverance, and the indomitable human spirit. Whether you''re a longtime fan or a newcomer to the world of ninja, Naruto Shippuden is essential viewing for anyone seeking a compelling and immersive anime adventure.', TO_DATE('2024-02-28 01:07:56', 'SYYYY-MM-DD HH24:MI:SS'), '20', '1');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('1', 'attack on titan final season one', TO_DATE('2024-02-22 00:44:09', 'SYYYY-MM-DD HH24:MI:SS'), '26', '1');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('25', 'Title: "Jujutsu Kaisen 0: A Gripping Tale of Supernatural Intrigue and Emotional Resonance"

"Jujutsu Kaisen 0" ventures into the heart of darkness, weaving a captivating narrative that entwines supernatural battles with raw human emotion. Set in the same universe as the beloved anime and manga series "Jujutsu Kaisen," this movie serves as a prequel, delving into the origins of cursed energy and the enigmatic figure, Yuta Okkotsu.

From its opening scenes, the film immerses viewers in a world teetering on the brink of chaos, where curses lurk in the shadows and unsuspecting civilians fall prey to their malevolent influence. Yuta Okkotsu, a high school student burdened by tragedy and cursed energy, emerges as the central protagonist, grappling with inner demons while navigating the perilous landscape of sorcery.

The animation is nothing short of breathtaking, with fluid fight sequences that leap off the screen and meticulous attention to detail in character designs and environments. Each frame pulsates with energy, drawing viewers deeper into the supernatural realm of jujutsu sorcery.

However, what truly sets "Jujutsu Kaisen 0" apart is its emotional depth. Amidst the flurry of battles and mystical encounters, the film explores themes of loss, friendship, and redemption with a poignancy that resonates long after the credits roll. Yuta''s journey is one of self-discovery and acceptance, as he grapples with the weight of his past and learns to harness his cursed abilities for the greater good.

The supporting cast adds layers of complexity to the narrative, from the enigmatic Satoru Gojo to the fiercely loyal Rika Orimoto. Each character brings their own struggles and motivations to the forefront, enriching the tapestry of the story and forging genuine connections with the audience.

"Jujutsu Kaisen 0" is a triumph on multiple fronts—a visual spectacle that dazzles the senses, a narrative masterpiece that tugs at the heartstrings, and a testament to the enduring power of friendship and resilience in the face of adversity. Whether you''re a seasoned fan of the franchise or a newcomer to the world of jujutsu sorcery, this movie is an absolute must-watch, destined to leave an indelible mark on the annals of anime history.', TO_DATE('2024-02-22 23:14:00', 'SYYYY-MM-DD HH24:MI:SS'), '14', '1');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('26', 'Title: "Jujutsu Kaisen Season 2: A Riveting Continuation of Supernatural Battles and Emotional Growth"

"Jujutsu Kaisen Season 2" picks up right where its predecessor left off, diving deeper into the world of curses, sorcery, and the indomitable spirit of its characters. From exhilarating battles to profound character development, the second season delivers on all fronts, solidifying its place as a standout in the shounen genre.

One of the most compelling aspects of the season is its exploration of the intricate dynamics between the characters. Yuji Itadori continues to grapple with his newfound powers and the weight of his destiny, while his comrades at Tokyo Metropolitan Curse Technical College (Jujutsu High) confront their own demons both literally and figuratively. The bonds forged through shared struggles and triumphs are tested as alliances are formed, shattered, and redefined amidst the chaos of battle.

The animation remains top-notch, with stunningly choreographed fight sequences that showcase the full extent of each character''s abilities. Whether it''s Gojo''s effortless mastery of cursed energy or Nobara''s unyielding resolve in the face of adversity, every moment is brought to life with breathtaking detail and fluidity.

Beyond the action-packed scenes, "Jujutsu Kaisen Season 2" delves into deeper themes of morality, sacrifice, and the nature of power. As the stakes escalate and new threats emerge, the characters are forced to confront difficult choices that challenge their convictions and redefine their understanding of right and wrong. The moral ambiguity of certain characters adds layers of complexity to the narrative, blurring the lines between hero and villain and keeping viewers on the edge of their seats until the very end.

Of course, no review of "Jujutsu Kaisen" would be complete without mentioning its memorable cast of characters. From the charismatic and enigmatic Satoru Gojo to the hot-headed yet fiercely loyal Megumi Fushiguro, each character brings their own unique flavor to the story, contributing to its rich tapestry of personalities and perspectives.

In conclusion, "Jujutsu Kaisen Season 2" is a tour de force of storytelling, animation, and character development that surpasses the already high expectations set by its predecessor. With its blend of heart-pounding action, thought-provoking themes, and unforgettable characters, it cements its status as a modern classic in the world of anime. Whether you''re a die-hard fan or a newcomer to the series, this season is not to be missed.', TO_DATE('2024-02-23 01:00:48', 'SYYYY-MM-DD HH24:MI:SS'), '15', '1');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('27', '"Death Note" is not your typical anime—it''s a psychological thriller that grabs hold of your mind and refuses to let go. The premise is deceptively simple: when high school student Light Yagami discovers a mysterious notebook that grants him the power to kill anyone whose name he writes in it, he sets out on a quest to rid the world of criminals and create a utopia ruled by his own sense of justice. However, as Light''s actions attract the attention of law enforcement and a brilliant detective known only as L, the line between right and wrong becomes increasingly blurred, leading to a deadly game of cat and mouse that will keep you on the edge of your seat until the very end.

What sets "Death Note" apart is its masterful storytelling and complex characters. Light Yagami is not your typical protagonist—in fact, he''s more of an anti-hero whose descent into darkness is as captivating as it is disturbing. As he wrestles with the moral implications of his actions and grapples with the consequences of playing god, viewers are forced to confront their own notions of justice and morality. Similarly, L is a fascinating foil to Light, with his enigmatic demeanor and unorthodox methods keeping both Light and the audience guessing at every turn.

The animation is sleek and stylish, with dynamic visuals that perfectly complement the tension-filled atmosphere of the series. Each episode is meticulously crafted to keep viewers guessing, with plot twists and turns that will leave you questioning everything you thought you knew.

In conclusion, "Death Note" is a must-watch for any fan of suspenseful storytelling and intricate character dynamics. Its thought-provoking themes and gripping plot will keep you hooked from beginning to end, leaving you eagerly anticipating each new revelation and dreading the inevitable conclusion. If you''re in the mood for a mind-bending thriller that will keep you guessing until the very end, look no further than "Death Note."', TO_DATE('2024-02-23 01:04:15', 'SYYYY-MM-DD HH24:MI:SS'), '11', '2');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('61', 'testing', TO_DATE('2024-02-26 15:08:50', 'SYYYY-MM-DD HH24:MI:SS'), '13', '2');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('41', '"Attack on Titan: Lost Girls" offers a captivating departure from the relentless action and intrigue of its parent series, delving into the hidden narratives and emotional depths of its characters. Comprising three episodes, this OVA spin-off shines a spotlight on Annie Leonhart and Mikasa Ackerman, two enigmatic figures whose stories intertwine with the larger tapestry of the Attack on Titan universe.

The first episode centers on Annie Leonhart, peeling back the layers of her stoic facade to reveal the vulnerable soul beneath. Through her encounters with a young girl named Carly Stratmann, Annie is confronted with the harsh realities of life within the walls and the moral ambiguity of her role as a soldier. As the episode unfolds, viewers are drawn into Annie''s internal struggle, grappling with themes of identity, duty, and the pursuit of freedom.

The second episode shifts focus to Mikasa Ackerman, offering a poignant exploration of her complex relationship with Eren Yeager and the traumas that have shaped her into the fierce warrior she is today. Through a series of flashbacks, viewers gain insight into Mikasa''s origins and the profound impact of loss and survival on her psyche. As she grapples with her feelings of guilt and devotion, Mikasa''s journey becomes a poignant reflection on the enduring power of love and loyalty in a world ravaged by war.

Visually, "Lost Girls" is a feast for the eyes, with fluid animation and stunning cinematography capturing the grim beauty of the Attack on Titan universe. The voice performances are equally impressive, with Yui Ishikawa and Yū Shimamura delivering nuanced portrayals that breathe life into their respective characters.

What sets "Lost Girls" apart is its exploration of themes that resonate far beyond the confines of its fictional world. Through the struggles of Annie and Mikasa, viewers are invited to contemplate the complexities of human nature, the meaning of freedom, and the enduring bonds that connect us all. In doing so, "Lost Girls" transcends its status as a mere spin-off, offering a profound meditation on the human condition itself.

While "Lost Girls" may leave some questions unanswered, its rich character development and emotional depth make it a compelling addition to the Attack on Titan canon. Whether you''re a longtime fan of the series or a newcomer seeking a deeper understanding of its characters, "Attack on Titan: Lost Girls" is an essential watch that will linger in your thoughts long after the credits roll.', TO_DATE('2024-02-23 11:31:33', 'SYYYY-MM-DD HH24:MI:SS'), '9', '2');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('42', '"Attack on Titan: Lost Girls" ventures into the untold stories residing within the expansive world of Hajime Isayama''s acclaimed manga and anime series. This spin-off, composed of three episodes, delves deep into the lives of Annie Leonhart and Mikasa Ackerman, two pivotal characters in the main narrative, offering a poignant exploration of their personal struggles and motivations.

The beauty of "Lost Girls" lies in its ability to peel back the layers of its characters, revealing vulnerabilities and complexities that were previously shrouded. Annie Leonhart, known for her stoic demeanor and enigmatic personality, takes center stage in the first episode. As she navigates the harsh realities of life within the walls, viewers are provided with insight into her inner turmoil and the moral dilemmas she grapples with. Through her encounters with a young girl named Carly Stratmann, Annie''s humanity shines through, offering a glimpse of the person behind the soldier.

The second episode shifts focus to Mikasa Ackerman, delving into her past and the events that shaped her into the formidable warrior she is today. "Lost Girls" explores Mikasa''s unwavering loyalty to Eren Yeager and her relentless pursuit of protecting him, shedding light on the depths of her devotion and the emotional scars she carries from her childhood.

The animation in "Lost Girls" is stunning, capturing the gritty atmosphere of the Attack on Titan universe while also showcasing moments of quiet introspection with breathtaking beauty. The voice performances are equally captivating, with Yui Ishikawa and Yū Shimamura delivering compelling portrayals of Mikasa and Annie, respectively.

One of the greatest strengths of "Lost Girls" is its ability to expand upon the themes of the main series, particularly the nature of freedom and the impact of war on individuals. Through the experiences of Annie and Mikasa, viewers are prompted to reflect on the complexities of human nature and the choices we make in the face of adversity.

While "Lost Girls" may not provide answers to all the questions it raises, it serves as a thought-provoking addition to the Attack on Titan universe, enriching the narrative tapestry with its deep character explorations and emotional resonance. Whether you''re a die-hard fan of the series or someone looking for a compelling story of humanity amidst chaos, "Attack on Titan: Lost Girls" is a must-watch.', TO_DATE('2024-02-23 11:31:38', 'SYYYY-MM-DD HH24:MI:SS'), '9', '1');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('121', 'Title: "Bleach: A Rollercoaster of Emotions and Epic Battles"

Bleach is a rollercoaster ride of emotions, from heart-pounding action to moments of heartfelt camaraderie. This anime effortlessly blends intense battles with touching character development, creating an unforgettable viewing experience.

At its core, Bleach follows the journey of Ichigo Kurosaki, a high school student who gains the abilities of a soul reaper and must protect the living world from malevolent spirits known as Hollows. Alongside his friends and allies, Ichigo navigates the dangers of the spirit world while confronting his own inner demons.

What makes Bleach stand out is its ability to balance epic battles with moments of genuine emotion. From the bonds forged between characters to the sacrifices made in the name of protecting others, the series explores complex themes of friendship, loyalty, and self-discovery. Viewers will find themselves laughing, crying, and cheering alongside the characters as they face both external threats and internal struggles.

Of course, one of the highlights of Bleach is its adrenaline-pumping fight scenes. Whether it''s Ichigo unleashing his Bankai or captains showcasing their Zanpakuto abilities, each battle is choreographed with precision and flair. The animation is top-notch, with fluid movements and dynamic camera angles that draw viewers into the action.

In addition to its stellar storytelling and action-packed sequences, Bleach also boasts a diverse cast of characters, each with their own motivations and personalities. From the stoic and honorable Byakuya Kuchiki to the quirky and eccentric Kisuke Urahara, there''s someone for everyone to root for.

Overall, Bleach is a masterpiece of the shonen genre. With its compelling narrative, well-developed characters, and stunning visuals, it''s a series that will leave a lasting impression on anyone who watches it.', TO_DATE('2024-03-01 21:30:28', 'SYYYY-MM-DD HH24:MI:SS'), '17', '1');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('101', ' Attack on Titan is a masterpiece of storytelling that seamlessly weaves together action, drama, and emotion. The series delves deep into the human psyche, exploring themes of survival, sacrifice, and the consequences of war. Through its richly developed characters and intricate plot, it keeps viewers engaged and emotionally invested. While the pacing can be slow at times, the payoff is always worth it, leaving a lasting impact long after the credits roll.', TO_DATE('2024-03-01 00:52:25', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('102', 'Attack on Titan delivers an adrenaline-fueled ride from start to finish. With its intense action sequences, jaw-dropping animation, and a plot filled with twists and turns, this anime keeps you on the edge of your seat. The character development is top-notch, making you deeply invested in the struggles of humanity against the monstrous Titans. However, the dark and often gruesome themes might not be suitable for everyone.', TO_DATE('2024-03-01 00:52:29', 'SYYYY-MM-DD HH24:MI:SS'), '1', '1');
INSERT INTO "REVIEW_ANIME" ("REVIEW_ANIME_ID", "REVIEW_ANIME_TEXT", "DATE_OF_CREATION_ANIME", "ANIME_ID", "USER_ID") VALUES ('122', 'Title: "Bleach: A Shining Gem in the Shonen Genre"

Bleach is a captivating journey through the world of soul reapers, spirits, and the afterlife. From its gripping storyline to its memorable characters, this anime stands out as a shining gem in the shonen genre.

One of the most compelling aspects of Bleach is its intricate world-building. The Soul Society, Hueco Mundo, and the human world are all meticulously crafted, each with its own set of rules and inhabitants. As protagonist Ichigo Kurosaki discovers his newfound powers as a soul reaper, viewers are taken on a thrilling adventure filled with action, mystery, and suspense.

What truly sets Bleach apart, however, is its characters. From the determined and hot-headed Ichigo to the enigmatic and charismatic captain of the 10th Division, Toshiro Hitsugaya, each character is well-developed and leaves a lasting impression. The relationships and dynamics between the characters add depth to the story, making it all the more engaging.

Of course, no review of Bleach would be complete without mentioning its exhilarating fight scenes. Whether it''s Ichigo facing off against powerful foes or the epic battles between captains and Espadas, the action sequences in Bleach are nothing short of spectacular. Each fight is beautifully animated and keeps viewers on the edge of their seats.

Overall, Bleach is a must-watch for any anime fan. With its compelling story, memorable characters, and breathtaking action, it''s a series that will leave you wanting more long after the final episode.', TO_DATE('2024-03-01 21:30:34', 'SYYYY-MM-DD HH24:MI:SS'), '17', '21');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for REVIEW_MANGA
-- ----------------------------
DROP TABLE "REVIEW_MANGA";
CREATE TABLE "REVIEW_MANGA" (
  "REVIEW_MANGA_ID" NUMBER VISIBLE DEFAULT "ANILIST"."REVIEW_MANGA_ID_SEQ"."NEXTVAL" NOT NULL,
  "REVIEW_MANGA_TEXT" VARCHAR2(3000 BYTE) VISIBLE NOT NULL,
  "DATE_OF_CREATION_MANGA" DATE VISIBLE DEFAULT SYSDATE,
  "MANGA_ID" NUMBER VISIBLE NOT NULL,
  "USER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEW_MANGA
-- ----------------------------
INSERT INTO "REVIEW_MANGA" ("REVIEW_MANGA_ID", "REVIEW_MANGA_TEXT", "DATE_OF_CREATION_MANGA", "MANGA_ID", "USER_ID") VALUES ('21', 'As one delves into the world of manga, few series possess the gripping intensity and profound storytelling found within the pages of Hajime Isayama''s "Attack on Titan." From its inception to its epic conclusion, this manga stands as a towering achievement in the genre, captivating readers with its relentless action, complex characters, and thought-provoking themes.

At its core, "Attack on Titan" explores the darkest facets of humanity''s struggle for survival in a world overrun by colossal, man-eating creatures known as Titans. The narrative begins within the confines of the last bastion of humanity, the walled city of Paradis, which faces constant threat from the Titans lurking beyond its towering ramparts. Through the eyes of protagonist Eren Yeager and his comrades, readers are thrust into a harrowing tale of warfare, betrayal, and the quest for freedom.

One of the manga''s greatest strengths lies in its ability to keep readers on the edge of their seats with its unpredictable twists and turns. Isayama masterfully crafts a narrative that constantly defies expectations, subverting traditional tropes and keeping readers guessing at every turn. Just when one believes they have unraveled the mysteries of the Titans, new revelations emerge that shatter preconceived notions and propel the story into even darker territory.

Moreover, "Attack on Titan" boasts a rich ensemble cast of characters, each with their own motivations, flaws, and moral complexities. From the determined idealism of Eren Yeager to the stoic resolve of Captain Levi, every character feels intricately woven into the fabric of the narrative, driving the story forward with their personal struggles and triumphs. Isayama''s nuanced portrayal of human nature adds a layer of depth to the series, forcing readers to confront the moral ambiguity that pervades every aspect of the characters'' lives.

Beyond its pulse-pounding action and compelling characters, "Attack on Titan" also grapples with profound thematic material that resonates on a deeply emotional level. Themes of freedom, sacrifice, and the cyclical nature of violence permeate the narrative, challenging readers to ponder the true cost of humanity''s survival in the face of overwhelming adversity.

In conclusion, "Attack on Titan" stands as a tour de force in the world of manga, offering a thrilling, thought-provoking journey that leaves a lasting impact on its audience. With its stunning artwork, intricate plot twists, and profound thematic depth, this series cements itself as a timeless classic that will continue to captivate readers for generations to come. Whether you''re a seasoned manga aficionado or a newcomer to the medium, "Attack on Titan" is an essential read that demands to be experienced.', TO_DATE('2024-02-27 22:59:59', 'SYYYY-MM-DD HH24:MI:SS'), '1', '2');
INSERT INTO "REVIEW_MANGA" ("REVIEW_MANGA_ID", "REVIEW_MANGA_TEXT", "DATE_OF_CREATION_MANGA", "MANGA_ID", "USER_ID") VALUES ('1', 'death note one', TO_DATE('2024-02-22 00:43:09', 'SYYYY-MM-DD HH24:MI:SS'), '2', '1');
INSERT INTO "REVIEW_MANGA" ("REVIEW_MANGA_ID", "REVIEW_MANGA_TEXT", "DATE_OF_CREATION_MANGA", "MANGA_ID", "USER_ID") VALUES ('2', 'death note two', TO_DATE('2024-02-22 00:43:29', 'SYYYY-MM-DD HH24:MI:SS'), '2', '1');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for STAFF
-- ----------------------------
DROP TABLE "STAFF";
CREATE TABLE "STAFF" (
  "STAFF_ID" NUMBER VISIBLE NOT NULL,
  "FULL_NAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "NATIVE" VARCHAR2(100 BYTE) VISIBLE,
  "IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "DESCRIPTION" CLOB VISIBLE,
  "DATE_OF_BIRTH_YEAR" NUMBER VISIBLE,
  "DATE_OF_BIRTH_MONTH" NUMBER VISIBLE,
  "DATE_OF_BIRTH_DAY" NUMBER VISIBLE,
  "DATE_OF_DEATH_YEAR" NUMBER VISIBLE,
  "DATE_OF_DEATH_MONTH" NUMBER VISIBLE,
  "DATE_OF_DEATH_DAY" NUMBER VISIBLE,
  "YEARS_ACTIVE_START" NUMBER VISIBLE,
  "YEARS_ACTIVE_END" NUMBER VISIBLE,
  "HOME_TOWN" VARCHAR2(200 BYTE) VISIBLE,
  "ROLE" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "GENDER" VARCHAR2(20 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of STAFF
-- ----------------------------
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER") VALUES ('1', 'Hajime Isayama', '諫山創', 'https://s4.anilist.co/file/anilistcdn/staff/large/n106705-ttS2qZpF2FTZ.jpg', '<br>[Official Blog](http://blog.livedoor.jp/isayamahazime/)

After graduating from Oita Prefectural Hitarinkou High School, he matriculated in the cartoon design program of the cartoon arts department at Kyushu Designer Gakuin. After graduating, he moved to Tokyo and started drawing his manga works.

In 2006, he applied for the Magazine Grand Prix known as MGP promoted by Kodansha Ltd. and his work <em>Attack on Titan</em> was given the "Fine Work" award. Originally, he offered his work to the Weekly Shonen Jump department at Shueisha, where he was advised to modify his style and story to be more suitable for Weekly Shonen Jump. He declined and instead, decided to take it to the Weekly Shonen Magazine department at Kodansha Ltd.

In 2008, he applied for the 80th Weekly Shonen Magazine Freshman Manga Award, where his work "Heart Break One" was given the Special Encouragement Award. His other work "orz" was chosen as a selected work in the 81st Weekly Shonen Magazine Freshman Manga Award.

In 2009, his first serialized work _Attack on Titan_ appeared in Bessatsu Shonen Magazine, a monthly magazine. It later was awarded the Shonen category of the 35th Kodansha Manga Award in 2011.', '1986', '8', '29', NULL, NULL, NULL, '2009', NULL, 'Hita, Oita Prefecture, Japan', 'Original Creator', 'MALE');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER") VALUES ('2', 'Tetsurou Araki', '荒木哲郎', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100088-tFWlDxGJEPlk.png', NULL, '1976', '11', '5', NULL, NULL, NULL, '1999', NULL, 'Sayama, Saitama Prefecture, Japan', 'Director', 'MALE');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER") VALUES ('3', 'Yasuko Kobayashi', '小林靖子', 'https://s4.anilist.co/file/anilistcdn/staff/large/n102071-gPeWt6xwz2Dr.png', NULL, '1965', '4', '7', NULL, NULL, NULL, '1993', NULL, 'Tokyo,Japan', 'Series Composition', 'FEMALE');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER") VALUES ('4', 'Masashi Kishimoto', '岸本斉史', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96879-f6xMfzTXvLUn.png', NULL, '1974', '11', '8', NULL, NULL, NULL, NULL, NULL, 'Nagi, Okayama Prefecture, Japan', 'Original Creator', 'MALE');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER") VALUES ('5', 'Toshio Masuda', '増田俊郎', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100358-aZOoLnr0hB7J.jpg', NULL, '1959', '10', '28', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan', 'Music', 'MALE');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DESCRIPTION", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER") VALUES ('6', 'Hayato Date', '伊達勇登', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100843-OzHTHWCy8ODG.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1997', NULL, 'null', 'Director', 'MALE');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for STUDIO
-- ----------------------------
DROP TABLE "STUDIO";
CREATE TABLE "STUDIO" (
  "STUDIO_ID" NUMBER VISIBLE NOT NULL,
  "STUDIO_NAME" VARCHAR2(200 BYTE) VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of STUDIO
-- ----------------------------
INSERT INTO "STUDIO" ("STUDIO_ID", "STUDIO_NAME") VALUES ('1', 'Wit Studio');
INSERT INTO "STUDIO" ("STUDIO_ID", "STUDIO_NAME") VALUES ('2', 'MAPPA');
INSERT INTO "STUDIO" ("STUDIO_ID", "STUDIO_NAME") VALUES ('3', 'MADHOUSE');
INSERT INTO "STUDIO" ("STUDIO_ID", "STUDIO_NAME") VALUES ('4', 'Studio Pierrot');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for THREAD
-- ----------------------------
DROP TABLE "THREAD";
CREATE TABLE "THREAD" (
  "THREAD_ID" NUMBER VISIBLE DEFAULT "ANILIST"."THREAD_SEQ"."NEXTVAL" NOT NULL,
  "THREAD_TITLE" VARCHAR2(1000 BYTE) VISIBLE NOT NULL,
  "THREAD_BODY" VARCHAR2(3000 BYTE) VISIBLE NOT NULL,
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "ANIME_ID" NUMBER VISIBLE,
  "MANGA_ID" NUMBER VISIBLE,
  "DATE_OF_CREATION" DATE VISIBLE DEFAULT SYSDATE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of THREAD
-- ----------------------------
INSERT INTO "THREAD" ("THREAD_ID", "THREAD_TITLE", "THREAD_BODY", "USER_ID", "ANIME_ID", "MANGA_ID", "DATE_OF_CREATION") VALUES ('21', 'testing thread again', 'testing thread again', '1', '16', NULL, TO_DATE('2024-03-07 16:27:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "THREAD" ("THREAD_ID", "THREAD_TITLE", "THREAD_BODY", "USER_ID", "ANIME_ID", "MANGA_ID", "DATE_OF_CREATION") VALUES ('81', 'project submission discussion', 'CSE 216 Database Management System', '1', NULL, NULL, TO_DATE('2024-03-09 12:06:08', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "THREAD" ("THREAD_ID", "THREAD_TITLE", "THREAD_BODY", "USER_ID", "ANIME_ID", "MANGA_ID", "DATE_OF_CREATION") VALUES ('41', 'testing thread again!!', 'testing thread again!!', '1', NULL, '4', TO_DATE('2024-03-07 19:11:30', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "THREAD" ("THREAD_ID", "THREAD_TITLE", "THREAD_BODY", "USER_ID", "ANIME_ID", "MANGA_ID", "DATE_OF_CREATION") VALUES ('42', 'testing ', 'testing ', '1', '16', NULL, TO_DATE('2024-03-07 20:36:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "THREAD" ("THREAD_ID", "THREAD_TITLE", "THREAD_BODY", "USER_ID", "ANIME_ID", "MANGA_ID", "DATE_OF_CREATION") VALUES ('5', 'Ask something about the user''s profile above you', 'It''s important to have a discussion with user above you!', '1', '17', NULL, TO_DATE('2024-03-06 21:51:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "THREAD" ("THREAD_ID", "THREAD_TITLE", "THREAD_BODY", "USER_ID", "ANIME_ID", "MANGA_ID", "DATE_OF_CREATION") VALUES ('61', 'new new new', 'new new new new new', '1', '19', NULL, TO_DATE('2024-03-08 12:52:12', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for THREAD_CATEGORY
-- ----------------------------
DROP TABLE "THREAD_CATEGORY";
CREATE TABLE "THREAD_CATEGORY" (
  "THREAD_ID" NUMBER VISIBLE NOT NULL,
  "CATEGORY_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of THREAD_CATEGORY
-- ----------------------------
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('5', '1');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('5', '2');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('5', '3');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('42', '2');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('42', '5');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('42', '6');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('61', '4');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('61', '5');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('61', '6');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('61', '7');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('61', '8');
INSERT INTO "THREAD_CATEGORY" ("THREAD_ID", "CATEGORY_ID") VALUES ('81', '11');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USERR
-- ----------------------------
DROP TABLE "USERR";
CREATE TABLE "USERR" (
  "USER_ID" NUMBER VISIBLE DEFAULT "ANILIST"."USER_ID_SEQ"."NEXTVAL" NOT NULL,
  "USERNAME" VARCHAR2(100 BYTE) VISIBLE,
  "EMAIL_USER" VARCHAR2(100 BYTE) VISIBLE,
  "PASSWORDD" VARCHAR2(100 BYTE) VISIBLE,
  "USER_IMAGE" VARCHAR2(1000 BYTE) VISIBLE,
  "ROLE" VARCHAR2(20 BYTE) VISIBLE,
  "USER_BANNER_IMAGE" VARCHAR2(1000 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USERR
-- ----------------------------
INSERT INTO "USERR" ("USER_ID", "USERNAME", "EMAIL_USER", "PASSWORDD", "USER_IMAGE", "ROLE", "USER_BANNER_IMAGE") VALUES ('2', 'Nayeemj496', 'nayeem03012@gmail.com', '$2b$10$LpPvJNVW5G5LfK3AI7Dn/e10OFTgT1CzaYJLC6zGyYsE2oEauv.z6', 'https://s4.anilist.co/file/anilistcdn/user/avatar/large/b5703740-noHi3t609MNy.png', NULL, 'https://s4.anilist.co/file/anilistcdn/user/banner/b289437-LowBBPfd3VE9.jpg');
INSERT INTO "USERR" ("USER_ID", "USERNAME", "EMAIL_USER", "PASSWORDD", "USER_IMAGE", "ROLE", "USER_BANNER_IMAGE") VALUES ('21', 'bladeRunner', '2105082@ugrad.cse.buet.ac.bd', '$2b$10$CnIayKLmrEUToAjH3sbGaujD9GvqXF./0imblEYT0PKo5tzd8x0b.', 'https://s4.anilist.co/file/anilistcdn/user/avatar/large/b5703740-noHi3t609MNy.png', NULL, 'https://s4.anilist.co/file/anilistcdn/user/banner/b289437-LowBBPfd3VE9.jpg');
INSERT INTO "USERR" ("USER_ID", "USERNAME", "EMAIL_USER", "PASSWORDD", "USER_IMAGE", "ROLE", "USER_BANNER_IMAGE") VALUES ('1', 'nayeem.j.i', 'nayeemj496@gmail.com', '$2b$10$ZSNqHUqVb3pgnOpmPk6mYuLcoDdSlZ17cCLsLBB12aKH5sKwUggEq', 'https://s4.anilist.co/file/anilistcdn/user/avatar/large/b6479204-fG5KGjyYadvp.png', 'ADMIN', 'https://s4.anilist.co/file/anilistcdn/user/banner/b6479204-APJVFG4wGL8H.jpg');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_ANIME
-- ----------------------------
DROP TABLE "USER_ANIME";
CREATE TABLE "USER_ANIME" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) VISIBLE,
  "SCORE" NUMBER VISIBLE,
  "EPISODE_PROGRESS" NUMBER VISIBLE,
  "IS_LIKED" VARCHAR2(10 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_ANIME
-- ----------------------------
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('2', '1', 'PLAN TO WATCH', '6.5', '12', 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('2', '16', 'PLAN_TO_WATCH', '10', NULL, 'TRUE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('1', '2', 'PLAN_TO_WATCH', '9.8', NULL, 'TRUE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('1', '18', 'PLAN_TO_WATCH', NULL, NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('21', '2', 'WATCHING', NULL, NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('1', '1', 'PLAN TO WATCH', '10', '14', 'TRUE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('2', '20', 'WATCHING', '10', NULL, 'TRUE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('2', '18', 'COMPLETED', NULL, NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('2', '25', 'PAUSED', NULL, NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('1', '6', 'COMPLETED', NULL, NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('2', '26', 'PLAN_TO_WATCH', '10', NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('2', '19', 'WATCHING', NULL, NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('1', '25', 'WATCHING', NULL, '15', 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('21', '1', 'COMPLETED', NULL, '10', 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('21', '18', 'WATCHING', NULL, NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('1', '16', 'COMPLETED', NULL, '20', 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('2', '17', 'WATCHING', NULL, NULL, 'FALSE');
INSERT INTO "USER_ANIME" ("USER_ID", "ANIME_ID", "STATUS", "SCORE", "EPISODE_PROGRESS", "IS_LIKED") VALUES ('1', '14', 'COMPLETED', NULL, NULL, 'FALSE');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_ANIME_ACTIVITY
-- ----------------------------
DROP TABLE "USER_ANIME_ACTIVITY";
CREATE TABLE "USER_ANIME_ACTIVITY" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "STATUS" VARCHAR2(50 BYTE) VISIBLE,
  "DATE_OF_CREATION" DATE VISIBLE DEFAULT SYSDATE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_ANIME_ACTIVITY
-- ----------------------------
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '1', 'COMPLETED', TO_DATE('2024-03-01 21:48:03', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'COMPLETED', TO_DATE('2024-03-09 12:04:17', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'WATCHING', TO_DATE('2024-03-09 12:05:09', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '16', 'Watched episode 16 - 20 of', TO_DATE('2024-02-29 15:11:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'PLAN TO WATCH', TO_DATE('2024-03-09 14:20:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'PLAN TO WATCH', TO_DATE('2024-03-02 00:57:14', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'COMPLETED', TO_DATE('2024-03-02 01:06:41', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'WATCHING', TO_DATE('2024-03-02 01:10:26', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '2', 'WATCHING', TO_DATE('2024-03-02 01:23:03', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'Watched episode 1 - 14 of', TO_DATE('2024-02-29 15:42:40', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'WATCHING', TO_DATE('2024-02-29 15:42:22', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('2', '1', 'COMPLETED', TO_DATE('2024-02-29 16:24:34', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '6', 'COMPLETED', TO_DATE('2024-02-29 20:51:35', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('2', '25', 'WATCHING', TO_DATE('2024-02-29 22:26:33', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('2', '25', 'PAUSED', TO_DATE('2024-02-29 22:28:12', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '25', 'Watched episode 1 - 15 of', TO_DATE('2024-02-29 20:51:59', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '16', 'Watched episode 6 - 15 of', TO_DATE('2024-02-29 15:10:55', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '16', 'COMPLETED', TO_DATE('2024-02-29 15:34:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('2', '1', 'PLAN TO WATCH', TO_DATE('2024-03-09 01:28:55', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '25', 'WATCHING', TO_DATE('2024-02-29 22:24:54', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '1', 'WATCHING', TO_DATE('2024-03-01 21:08:41', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '1', 'Watched episode 1 - 10 of', TO_DATE('2024-03-01 21:22:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'PLAN TO WATCH', TO_DATE('2024-03-02 01:06:46', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'PLAN TO WATCH', TO_DATE('2024-03-02 01:10:30', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '18', 'WATCHING', TO_DATE('2024-03-02 01:23:14', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('2', '1', 'WATCHING', TO_DATE('2024-03-09 01:25:58', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '1', 'WATCHING', TO_DATE('2024-03-01 21:28:34', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_ANIME_ACTIVITY" ("USER_ID", "ANIME_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '14', 'COMPLETED', TO_DATE('2024-03-02 21:23:47', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_FOLLOWS_THREAD
-- ----------------------------
DROP TABLE "USER_FOLLOWS_THREAD";
CREATE TABLE "USER_FOLLOWS_THREAD" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "THREAD_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_FOLLOWS_THREAD
-- ----------------------------
INSERT INTO "USER_FOLLOWS_THREAD" ("USER_ID", "THREAD_ID") VALUES ('1', '21');
INSERT INTO "USER_FOLLOWS_THREAD" ("USER_ID", "THREAD_ID") VALUES ('1', '41');
INSERT INTO "USER_FOLLOWS_THREAD" ("USER_ID", "THREAD_ID") VALUES ('1', '42');
INSERT INTO "USER_FOLLOWS_THREAD" ("USER_ID", "THREAD_ID") VALUES ('2', '5');
INSERT INTO "USER_FOLLOWS_THREAD" ("USER_ID", "THREAD_ID") VALUES ('21', '5');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_LIKES_CHARACTER
-- ----------------------------
DROP TABLE "USER_LIKES_CHARACTER";
CREATE TABLE "USER_LIKES_CHARACTER" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "CHARACTER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_LIKES_CHARACTER
-- ----------------------------
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('1', '2');
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('1', '3');
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('1', '5');
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('2', '2');
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('2', '3');
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('2', '4');
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('2', '6');
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('21', '2');
INSERT INTO "USER_LIKES_CHARACTER" ("USER_ID", "CHARACTER_ID") VALUES ('21', '4');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_LIKES_REVIEW_ANIME
-- ----------------------------
DROP TABLE "USER_LIKES_REVIEW_ANIME";
CREATE TABLE "USER_LIKES_REVIEW_ANIME" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "REVIEW_ANIME_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_LIKES_REVIEW_ANIME
-- ----------------------------
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('1', '1');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('1', '25');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('1', '41');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('1', '61');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('2', '1');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('2', '61');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('21', '41');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('21', '81');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('21', '101');
INSERT INTO "USER_LIKES_REVIEW_ANIME" ("USER_ID", "REVIEW_ANIME_ID") VALUES ('21', '122');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_LIKES_REVIEW_MANGA
-- ----------------------------
DROP TABLE "USER_LIKES_REVIEW_MANGA";
CREATE TABLE "USER_LIKES_REVIEW_MANGA" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "REVIEW_MANGA_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_LIKES_REVIEW_MANGA
-- ----------------------------
INSERT INTO "USER_LIKES_REVIEW_MANGA" ("USER_ID", "REVIEW_MANGA_ID") VALUES ('1', '1');
INSERT INTO "USER_LIKES_REVIEW_MANGA" ("USER_ID", "REVIEW_MANGA_ID") VALUES ('1', '2');
INSERT INTO "USER_LIKES_REVIEW_MANGA" ("USER_ID", "REVIEW_MANGA_ID") VALUES ('1', '21');
INSERT INTO "USER_LIKES_REVIEW_MANGA" ("USER_ID", "REVIEW_MANGA_ID") VALUES ('2', '1');
INSERT INTO "USER_LIKES_REVIEW_MANGA" ("USER_ID", "REVIEW_MANGA_ID") VALUES ('21', '2');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_LIKES_STAFF
-- ----------------------------
DROP TABLE "USER_LIKES_STAFF";
CREATE TABLE "USER_LIKES_STAFF" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "STAFF_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_LIKES_STAFF
-- ----------------------------
INSERT INTO "USER_LIKES_STAFF" ("USER_ID", "STAFF_ID") VALUES ('2', '1');
INSERT INTO "USER_LIKES_STAFF" ("USER_ID", "STAFF_ID") VALUES ('2', '4');
INSERT INTO "USER_LIKES_STAFF" ("USER_ID", "STAFF_ID") VALUES ('21', '1');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_LIKES_THREAD
-- ----------------------------
DROP TABLE "USER_LIKES_THREAD";
CREATE TABLE "USER_LIKES_THREAD" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "THREAD_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_LIKES_THREAD
-- ----------------------------
INSERT INTO "USER_LIKES_THREAD" ("USER_ID", "THREAD_ID") VALUES ('1', '21');
INSERT INTO "USER_LIKES_THREAD" ("USER_ID", "THREAD_ID") VALUES ('1', '42');
INSERT INTO "USER_LIKES_THREAD" ("USER_ID", "THREAD_ID") VALUES ('2', '5');
INSERT INTO "USER_LIKES_THREAD" ("USER_ID", "THREAD_ID") VALUES ('21', '5');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_LIKES_VA
-- ----------------------------
DROP TABLE "USER_LIKES_VA";
CREATE TABLE "USER_LIKES_VA" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "VA_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_LIKES_VA
-- ----------------------------
INSERT INTO "USER_LIKES_VA" ("USER_ID", "VA_ID") VALUES ('1', '1');
INSERT INTO "USER_LIKES_VA" ("USER_ID", "VA_ID") VALUES ('1', '4');
INSERT INTO "USER_LIKES_VA" ("USER_ID", "VA_ID") VALUES ('2', '1');
INSERT INTO "USER_LIKES_VA" ("USER_ID", "VA_ID") VALUES ('21', '1');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_MANGA
-- ----------------------------
DROP TABLE "USER_MANGA";
CREATE TABLE "USER_MANGA" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "MANGA_ID" NUMBER VISIBLE NOT NULL,
  "STATUS" VARCHAR2(20 BYTE) VISIBLE,
  "SCORE" NUMBER VISIBLE,
  "IS_LIKED" VARCHAR2(10 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_MANGA
-- ----------------------------
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('1', '1', 'PLAN TO READ', '10', 'TRUE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('2', '5', 'READING', NULL, 'TRUE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('1', '5', 'PLAN TO READ', NULL, 'FALSE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('1', '3', 'COMPLETED', NULL, 'FALSE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('1', '4', 'COMPLETED', NULL, 'TRUE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('2', '3', 'COMPLETED', '8.5', 'FALSE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('2', '4', 'READING', NULL, 'FALSE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('2', '2', 'READING', NULL, 'FALSE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('2', '1', 'PAUSED', NULL, NULL);
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('21', '2', 'READING', NULL, 'FALSE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('21', '4', 'PLAN TO READ', NULL, 'FALSE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('21', '1', 'PLAN TO READ', NULL, 'FALSE');
INSERT INTO "USER_MANGA" ("USER_ID", "MANGA_ID", "STATUS", "SCORE", "IS_LIKED") VALUES ('1', '2', 'PLAN TO READ', '10', 'TRUE');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_MANGA_ACTIVITY
-- ----------------------------
DROP TABLE "USER_MANGA_ACTIVITY";
CREATE TABLE "USER_MANGA_ACTIVITY" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "MANGA_ID" NUMBER VISIBLE NOT NULL,
  "STATUS" VARCHAR2(50 BYTE) VISIBLE,
  "DATE_OF_CREATION" DATE VISIBLE DEFAULT SYSDATE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_MANGA_ACTIVITY
-- ----------------------------
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '1', 'READING', TO_DATE('2024-03-02 01:17:34', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '4', 'PLAN TO READ', TO_DATE('2024-03-02 01:20:57', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '3', 'COMPLETED', TO_DATE('2024-02-29 19:52:41', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '4', 'COMPLETED', TO_DATE('2024-02-29 20:52:19', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'COMPLETED', TO_DATE('2024-02-29 22:47:16', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '5', 'READING', TO_DATE('2024-03-02 21:18:52', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '2', 'PLAN TO READ', TO_DATE('2024-03-09 14:20:21', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('2', '2', 'READING', TO_DATE('2024-02-29 19:48:04', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('2', '1', 'COMPLETED', TO_DATE('2024-02-29 16:50:29', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('2', '1', 'PAUSED', TO_DATE('2024-02-29 16:50:45', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '2', 'READING', TO_DATE('2024-03-01 21:14:06', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '4', 'READING', TO_DATE('2024-03-01 21:28:01', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '1', 'READING', TO_DATE('2024-03-01 21:50:27', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '2', 'READING', TO_DATE('2024-03-01 22:18:04', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('21', '1', 'PLAN TO READ', TO_DATE('2024-03-02 01:17:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '1', 'PLAN TO READ', TO_DATE('2024-03-02 21:08:28', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "USER_MANGA_ACTIVITY" ("USER_ID", "MANGA_ID", "STATUS", "DATE_OF_CREATION") VALUES ('1', '5', 'PLAN TO READ', TO_DATE('2024-03-02 21:21:55', 'SYYYY-MM-DD HH24:MI:SS'));
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for VOICE_ARTIST
-- ----------------------------
DROP TABLE "VOICE_ARTIST";
CREATE TABLE "VOICE_ARTIST" (
  "VA_ID" NUMBER VISIBLE NOT NULL,
  "VA_IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "DESCRIPTION" CLOB VISIBLE,
  "FULL_NAME" VARCHAR2(100 BYTE) VISIBLE NOT NULL,
  "NATIVE" VARCHAR2(100 BYTE) VISIBLE,
  "GENDER" VARCHAR2(20 BYTE) VISIBLE,
  "DATE_OF_BIRTH_YEAR" NUMBER VISIBLE,
  "DATE_OF_BIRTH_MONTH" NUMBER VISIBLE,
  "DATE_OF_BIRTH_DAY" NUMBER VISIBLE,
  "DATE_OF_DEATH_YEAR" NUMBER VISIBLE,
  "DATE_OF_DEATH_MONTH" NUMBER VISIBLE,
  "DATE_OF_DEATH_DAY" NUMBER VISIBLE,
  "YEARS_ACTIVE_START" NUMBER VISIBLE,
  "YEARS_ACTIVE_END" NUMBER VISIBLE,
  "HOME_TOWN" VARCHAR2(200 BYTE) VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1
  MAXEXTENTS 2147483645
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of VOICE_ARTIST
-- ----------------------------
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('1', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95118-oOElrn1aSaiC.png', '<br>[Official Blog](http://blog.livedoor.jp/isayamahazime/)

After graduating from Oita Prefectural Hitarinkou High School, he matriculated in the cartoon design program of the cartoon arts department at Kyushu Designer Gakuin. After graduating, he moved to Tokyo and started drawing his manga works.

In 2006, he applied for the Magazine Grand Prix known as MGP promoted by Kodansha Ltd. and his work <em>Attack on Titan</em> was given the "Fine Work" award. Originally, he offered his work to the Weekly Shonen Jump department at Shueisha, where he was advised to modify his style and story to be more suitable for Weekly Shonen Jump. He declined and instead, decided to take it to the Weekly Shonen Magazine department at Kodansha Ltd.

In 2008, he applied for the 80th Weekly Shonen Magazine Freshman Manga Award, where his work "Heart Break One" was given the Special Encouragement Award. His other work "orz" was chosen as a selected work in the 81st Weekly Shonen Magazine Freshman Manga Award.

In 2009, his first serialized work _Attack on Titan_ appeared in Bessatsu Shonen Magazine, a monthly magazine. It later was awarded the Shonen category of the 35th Kodansha Manga Award in 2011.', 'Hiroshi Kamiya', '神谷浩史', 'MALE', '1975', '1', '28', NULL, NULL, NULL, '1994', NULL, 'Matsudo, Chiba, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('3', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95212-wX1M4LJN96q2.png', NULL, 'Daisuke Ono', '小野大輔', 'MALE', '1978', '5', '4', NULL, NULL, NULL, '2001', NULL, 'Sakawa, Kochi Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('2', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95158-OLhgs8zv5xsp.jpg', NULL, 'Marina Inoue', '井上麻里奈', 'FEMALE', '1985', '1', '20', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('4', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95672-RN4nm0OFwCyU.png', NULL, 'Yuuki Kaji', '梶裕貴', 'MALE', '1985', '9', '3', NULL, NULL, NULL, '2004', NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('5', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95015-QwI9K4FRe4Cq.png', NULL, 'Junko Takeuchi', '竹内順子', 'FEMALE', '1972', '4', '5', NULL, NULL, NULL, '1996', NULL, 'Saitama Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('6', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95016-03m7lAUZBMDv.png', NULL, 'Noriaki Sugiyama', '杉山紀彰', 'MALE', '1974', '3', '9', NULL, NULL, NULL, '1999', NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('7', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95021-9qAoAn6GNZ3S.png', NULL, 'Kazuhiko Inoue', '井上和彦', 'MALE', '1954', '3', '26', NULL, NULL, NULL, '1973', NULL, 'Yokohama City, Kanagawa Prefecture, Japan');
COMMIT;
COMMIT;

-- ----------------------------
-- Function structure for GET_CHARACTER_LIKES_COUNT
-- ----------------------------
CREATE OR REPLACE FUNCTION GET_CHARACTER_LIKES_COUNT(CHARACTERID IN NUMBER)
RETURN NUMBER
IS
    LIKE_COUNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO LIKE_COUNT
    FROM USER_LIKES_CHARACTER
    WHERE CHARACTER_ID = CHARACTERID;

    RETURN LIKE_COUNT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Errors handled');
END;
/

-- ----------------------------
-- Function structure for GET_STAFF_LIKES_COUNT
-- ----------------------------
CREATE OR REPLACE FUNCTION GET_STAFF_LIKES_COUNT(STAFFID IN NUMBER)
RETURN NUMBER
IS
    LIKE_COUNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO LIKE_COUNT
    FROM USER_LIKES_STAFF
    WHERE STAFF_ID = STAFFID;

    RETURN LIKE_COUNT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Errors handled');
END;
/

-- ----------------------------
-- Function structure for UPDATE_USER_BANNER_IMAGE
-- ----------------------------
CREATE OR REPLACE PROCEDURE UPDATE_USER_BANNER_IMAGE(BANNER IN VARCHAR2, USERID IN NUMBER) IS
BEGIN
    UPDATE USERR
    SET USER_BANNER_IMAGE = BANNER 
    WHERE USER_ID = USERID;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Errors handled');
END;
/

-- ----------------------------
-- Function structure for UPDATE_USER_IMAGE
-- ----------------------------
CREATE OR REPLACE PROCEDURE UPDATE_USER_IMAGE(COVER IN VARCHAR2, USERID IN NUMBER) IS
BEGIN
    UPDATE USERR
    SET USER_IMAGE = COVER
    WHERE USER_ID = USERID;
    
    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Errors handled');
END;
/

-- ----------------------------
-- Function structure for UPDATE_USER_LIKES_VA
-- ----------------------------
CREATE OR REPLACE PROCEDURE UPDATE_USER_LIKES_VA(USERID IN INTEGER, VAID IN INTEGER) IS
BEGIN
	INSERT INTO USER_LIKES_VA(USER_ID, VA_ID) VALUES (USERID, VAID);
	COMMIT;
	EXCEPTION 
		WHEN OTHERS THEN
			DBMS_OUTPUT.PUT_LINE('Errors handled');
END;
/

-- ----------------------------
-- Sequence structure for COMMENT_SEQ
-- ----------------------------
DROP SEQUENCE "COMMENT_SEQ";
CREATE SEQUENCE "COMMENT_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for REVIEW_ANIME_ID_SEQ
-- ----------------------------
DROP SEQUENCE "REVIEW_ANIME_ID_SEQ";
CREATE SEQUENCE "REVIEW_ANIME_ID_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for REVIEW_MANGA_ID_SEQ
-- ----------------------------
DROP SEQUENCE "REVIEW_MANGA_ID_SEQ";
CREATE SEQUENCE "REVIEW_MANGA_ID_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for THREAD_SEQ
-- ----------------------------
DROP SEQUENCE "THREAD_SEQ";
CREATE SEQUENCE "THREAD_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for USER_ID_SEQ
-- ----------------------------
DROP SEQUENCE "USER_ID_SEQ";
CREATE SEQUENCE "USER_ID_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table ANIME
-- ----------------------------
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008148" PRIMARY KEY ("ANIME_ID");

-- ----------------------------
-- Checks structure for table ANIME
-- ----------------------------
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008139" CHECK ("FORMAT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008140" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008141" CHECK ("DESCRIPTION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008142" CHECK ("START_YEAR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008143" CHECK ("SEASON" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008144" CHECK ("SEASON_YEAR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008145" CHECK ("DURATION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008146" CHECK ("COUNTRY_OF_ORIGIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008147" CHECK ("SOURCE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008460" CHECK ("ENGLISH" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_GENRE
-- ----------------------------
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008152" PRIMARY KEY ("ANIME_ID", "GENRE_ID");

-- ----------------------------
-- Checks structure for table ANIME_GENRE
-- ----------------------------
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008150" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008151" CHECK ("GENRE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_PRODUCER
-- ----------------------------
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C008162" PRIMARY KEY ("ANIME_ID", "PRODUCER_ID");

-- ----------------------------
-- Checks structure for table ANIME_PRODUCER
-- ----------------------------
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C008160" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C008161" CHECK ("PRODUCER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_RELATED
-- ----------------------------
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C008172" PRIMARY KEY ("ANIME_ID", "RELATED_ANIME_ID");

-- ----------------------------
-- Checks structure for table ANIME_RELATED
-- ----------------------------
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C008170" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C008171" CHECK ("RELATED_ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_STAFF
-- ----------------------------
ALTER TABLE "ANIME_STAFF" ADD CONSTRAINT "SYS_C008189" PRIMARY KEY ("ANIME_ID", "STAFF_ID");

-- ----------------------------
-- Primary Key structure for table ANIME_STUDIO
-- ----------------------------
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008177" PRIMARY KEY ("ANIME_ID", "STUDIO_ID");

-- ----------------------------
-- Checks structure for table ANIME_STUDIO
-- ----------------------------
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008175" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008176" CHECK ("STUDIO_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CATEGORY
-- ----------------------------
ALTER TABLE "CATEGORY" ADD CONSTRAINT "SYS_C008488" PRIMARY KEY ("CATEGORY_ID");

-- ----------------------------
-- Checks structure for table CATEGORY
-- ----------------------------
ALTER TABLE "CATEGORY" ADD CONSTRAINT "SYS_C008487" CHECK ("CATEGORY_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CHARACTER
-- ----------------------------
ALTER TABLE "CHARACTER" ADD CONSTRAINT "SYS_C008183" PRIMARY KEY ("CHARACTER_ID");

-- ----------------------------
-- Checks structure for table CHARACTER
-- ----------------------------
ALTER TABLE "CHARACTER" ADD CONSTRAINT "SYS_C008182" CHECK ("FULL_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table COMMENTT
-- ----------------------------
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C008496" PRIMARY KEY ("COMMENT_ID");

-- ----------------------------
-- Checks structure for table COMMENTT
-- ----------------------------
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C008494" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C008495" CHECK ("THREAD_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Checks structure for table DATABASE_LOG
-- ----------------------------
ALTER TABLE "DATABASE_LOG" ADD CONSTRAINT "SYS_C008431" CHECK ("USERNAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "DATABASE_LOG" ADD CONSTRAINT "SYS_C008432" CHECK ("EVENT_TYPE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table GENRE
-- ----------------------------
ALTER TABLE "GENRE" ADD CONSTRAINT "SYS_C007787" PRIMARY KEY ("GENRE_ID");

-- ----------------------------
-- Checks structure for table GENRE
-- ----------------------------
ALTER TABLE "GENRE" ADD CONSTRAINT "SYS_C007786" CHECK ("GENRE_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table HAS
-- ----------------------------
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C008194" PRIMARY KEY ("ANIME_ID", "CHARACTER_ID");

-- ----------------------------
-- Checks structure for table HAS
-- ----------------------------
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C008192" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C008193" CHECK ("CHARACTER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MANGA
-- ----------------------------
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C008138" PRIMARY KEY ("MANGA_ID");

-- ----------------------------
-- Checks structure for table MANGA
-- ----------------------------
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C008132" CHECK ("FORMAT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C008133" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C008134" CHECK ("DESCRIPTION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C008135" CHECK ("START_YEAR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C008136" CHECK ("COUNTRY_OF_ORIGIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C008137" CHECK ("SOURCE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MANGA_GENRE
-- ----------------------------
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008157" PRIMARY KEY ("MANGA_ID", "GENRE_ID");

-- ----------------------------
-- Checks structure for table MANGA_GENRE
-- ----------------------------
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008155" CHECK ("MANGA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008156" CHECK ("GENRE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MANGA_STAFF
-- ----------------------------
ALTER TABLE "MANGA_STAFF" ADD CONSTRAINT "SYS_C008420" PRIMARY KEY ("MANGA_ID", "STAFF_ID");

-- ----------------------------
-- Checks structure for table MANGA_STAFF
-- ----------------------------
ALTER TABLE "MANGA_STAFF" ADD CONSTRAINT "SYS_C008418" CHECK ("MANGA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA_STAFF" ADD CONSTRAINT "SYS_C008419" CHECK ("STAFF_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRODUCER
-- ----------------------------
ALTER TABLE "PRODUCER" ADD CONSTRAINT "SYS_C008057" PRIMARY KEY ("PRODUCER_ID");

-- ----------------------------
-- Primary Key structure for table REVIEW_ANIME
-- ----------------------------
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C008294" PRIMARY KEY ("REVIEW_ANIME_ID");

-- ----------------------------
-- Checks structure for table REVIEW_ANIME
-- ----------------------------
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C008291" CHECK ("REVIEW_ANIME_TEXT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C008292" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C008293" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REVIEW_MANGA
-- ----------------------------
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C008300" PRIMARY KEY ("REVIEW_MANGA_ID");

-- ----------------------------
-- Checks structure for table REVIEW_MANGA
-- ----------------------------
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C008297" CHECK ("REVIEW_MANGA_TEXT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C008298" CHECK ("MANGA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C008299" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table STAFF
-- ----------------------------
ALTER TABLE "STAFF" ADD CONSTRAINT "SYS_C008188" PRIMARY KEY ("STAFF_ID");

-- ----------------------------
-- Checks structure for table STAFF
-- ----------------------------
ALTER TABLE "STAFF" ADD CONSTRAINT "SYS_C008186" CHECK ("FULL_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "STAFF" ADD CONSTRAINT "SYS_C008187" CHECK ("ROLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table STUDIO
-- ----------------------------
ALTER TABLE "STUDIO" ADD CONSTRAINT "SYS_C008064" PRIMARY KEY ("STUDIO_ID");

-- ----------------------------
-- Checks structure for table STUDIO
-- ----------------------------
ALTER TABLE "STUDIO" ADD CONSTRAINT "SYS_C008063" CHECK ("STUDIO_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table THREAD
-- ----------------------------
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C008456" PRIMARY KEY ("THREAD_ID");

-- ----------------------------
-- Checks structure for table THREAD
-- ----------------------------
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C008453" CHECK ("THREAD_TITLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C008454" CHECK ("THREAD_BODY" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C008455" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table THREAD_CATEGORY
-- ----------------------------
ALTER TABLE "THREAD_CATEGORY" ADD CONSTRAINT "SYS_C008491" PRIMARY KEY ("THREAD_ID", "CATEGORY_ID");

-- ----------------------------
-- Checks structure for table THREAD_CATEGORY
-- ----------------------------
ALTER TABLE "THREAD_CATEGORY" ADD CONSTRAINT "SYS_C008489" CHECK ("THREAD_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "THREAD_CATEGORY" ADD CONSTRAINT "SYS_C008490" CHECK ("CATEGORY_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USERR
-- ----------------------------
ALTER TABLE "USERR" ADD CONSTRAINT "SYS_C007822" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Uniques structure for table USERR
-- ----------------------------
ALTER TABLE "USERR" ADD CONSTRAINT "SYS_C007823" UNIQUE ("USERNAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USERR" ADD CONSTRAINT "SYS_C007824" UNIQUE ("EMAIL_USER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_ANIME
-- ----------------------------
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008332" PRIMARY KEY ("USER_ID", "ANIME_ID");

-- ----------------------------
-- Checks structure for table USER_ANIME
-- ----------------------------
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008330" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008331" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table USER_ANIME
-- ----------------------------
CREATE TRIGGER "UPDATE_USER_ANIME_ACTIVITY_INSERT_VERSION" AFTER INSERT ON "USER_ANIME" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
    FINAL_EPISODE INTEGER := NVL(:NEW.EPISODE_PROGRESS, 0);
    FINAL_STATUS VARCHAR2(20) := :NEW.STATUS;
		STRING VARCHAR2(50);
BEGIN
		DBMS_OUTPUT.PUT_LINE('FINAL_EPISODE: ' || FINAL_EPISODE);

    IF FINAL_STATUS IS NOT NULL THEN
			IF FINAL_EPISODE <> 0 THEN
				STRING := 'Watched episode 1 - ' || FINAL_EPISODE || ' of'; 
				INSERT INTO USER_ANIME_ACTIVITY(USER_ID, ANIME_ID, STATUS) VALUES (:NEW.USER_ID, :NEW.ANIME_ID, STRING);
			ELSE 
				INSERT INTO USER_ANIME_ACTIVITY(USER_ID, ANIME_ID, STATUS) VALUES (:NEW.USER_ID, :NEW.ANIME_ID, FINAL_STATUS);
			END IF;
    END IF;
    
EXCEPTION 
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('OTHER ERRORS');
END;
/
CREATE TRIGGER "UPDATE_USER_ANIME_ACTIVITY_UPDATE_VERSION" AFTER UPDATE ON "USER_ANIME" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
DECLARE
    INITIAL_EPISODE INTEGER := NVL(:OLD.EPISODE_PROGRESS, 0);
    FINAL_EPISODE INTEGER := NVL(:NEW.EPISODE_PROGRESS, 0);
    INITIAL_STATUS VARCHAR2(20) := :OLD.STATUS;
    FINAL_STATUS VARCHAR2(20) := :NEW.STATUS;
		STRING VARCHAR2(50);
BEGIN
		DBMS_OUTPUT.PUT_LINE('FINAL_EPISODE: ' || FINAL_EPISODE || ' INITIAL_EPISODE: '|| INITIAL_EPISODE);

    IF (INITIAL_STATUS IS NULL AND FINAL_STATUS IS NOT NULL) OR (INITIAL_STATUS <> FINAL_STATUS) THEN
        INSERT INTO USER_ANIME_ACTIVITY(USER_ID, ANIME_ID, STATUS) VALUES (:OLD.USER_ID, :OLD.ANIME_ID, FINAL_STATUS);
    END IF;
    
    IF (INITIAL_EPISODE = 0 AND FINAL_EPISODE <> 0) OR (INITIAL_EPISODE < FINAL_EPISODE) THEN
				
        IF (FINAL_EPISODE - INITIAL_EPISODE = 1) THEN
           STRING := 'Watched episode ' || FINAL_EPISODE || ' of';
					 INSERT INTO USER_ANIME_ACTIVITY(USER_ID, ANIME_ID, STATUS) VALUES (:OLD.USER_ID, :OLD.ANIME_ID, STRING);
        ELSIF (FINAL_EPISODE - INITIAL_EPISODE > 1) THEN
						STRING := 'Watched episode ' || (INITIAL_EPISODE + 1) || ' - ' || FINAL_EPISODE || ' of';
					 INSERT INTO USER_ANIME_ACTIVITY(USER_ID, ANIME_ID, STATUS) VALUES (:OLD.USER_ID, :OLD.ANIME_ID, STRING);
        END IF;
    END IF;
    
EXCEPTION 
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('OTHER ERRORS');
END;
/

-- ----------------------------
-- Primary Key structure for table USER_ANIME_ACTIVITY
-- ----------------------------
ALTER TABLE "USER_ANIME_ACTIVITY" ADD CONSTRAINT "SYS_C008406" PRIMARY KEY ("USER_ID", "ANIME_ID", "DATE_OF_CREATION");

-- ----------------------------
-- Checks structure for table USER_ANIME_ACTIVITY
-- ----------------------------
ALTER TABLE "USER_ANIME_ACTIVITY" ADD CONSTRAINT "SYS_C008404" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_ANIME_ACTIVITY" ADD CONSTRAINT "SYS_C008405" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_FOLLOWS_THREAD
-- ----------------------------
ALTER TABLE "USER_FOLLOWS_THREAD" ADD CONSTRAINT "SYS_C008468" PRIMARY KEY ("USER_ID", "THREAD_ID");

-- ----------------------------
-- Checks structure for table USER_FOLLOWS_THREAD
-- ----------------------------
ALTER TABLE "USER_FOLLOWS_THREAD" ADD CONSTRAINT "SYS_C008466" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_FOLLOWS_THREAD" ADD CONSTRAINT "SYS_C008467" CHECK ("THREAD_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_LIKES_CHARACTER
-- ----------------------------
ALTER TABLE "USER_LIKES_CHARACTER" ADD CONSTRAINT "SYS_C008351" PRIMARY KEY ("USER_ID", "CHARACTER_ID");

-- ----------------------------
-- Checks structure for table USER_LIKES_CHARACTER
-- ----------------------------
ALTER TABLE "USER_LIKES_CHARACTER" ADD CONSTRAINT "SYS_C008349" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_CHARACTER" ADD CONSTRAINT "SYS_C008350" CHECK ("CHARACTER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_LIKES_REVIEW_ANIME
-- ----------------------------
ALTER TABLE "USER_LIKES_REVIEW_ANIME" ADD CONSTRAINT "SYS_C008305" PRIMARY KEY ("USER_ID", "REVIEW_ANIME_ID");

-- ----------------------------
-- Checks structure for table USER_LIKES_REVIEW_ANIME
-- ----------------------------
ALTER TABLE "USER_LIKES_REVIEW_ANIME" ADD CONSTRAINT "SYS_C008303" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_REVIEW_ANIME" ADD CONSTRAINT "SYS_C008304" CHECK ("REVIEW_ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_LIKES_REVIEW_MANGA
-- ----------------------------
ALTER TABLE "USER_LIKES_REVIEW_MANGA" ADD CONSTRAINT "SYS_C008314" PRIMARY KEY ("USER_ID", "REVIEW_MANGA_ID");

-- ----------------------------
-- Checks structure for table USER_LIKES_REVIEW_MANGA
-- ----------------------------
ALTER TABLE "USER_LIKES_REVIEW_MANGA" ADD CONSTRAINT "SYS_C008312" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_REVIEW_MANGA" ADD CONSTRAINT "SYS_C008313" CHECK ("REVIEW_MANGA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_LIKES_STAFF
-- ----------------------------
ALTER TABLE "USER_LIKES_STAFF" ADD CONSTRAINT "SYS_C008365" PRIMARY KEY ("USER_ID", "STAFF_ID");

-- ----------------------------
-- Checks structure for table USER_LIKES_STAFF
-- ----------------------------
ALTER TABLE "USER_LIKES_STAFF" ADD CONSTRAINT "SYS_C008363" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_STAFF" ADD CONSTRAINT "SYS_C008364" CHECK ("STAFF_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_LIKES_THREAD
-- ----------------------------
ALTER TABLE "USER_LIKES_THREAD" ADD CONSTRAINT "SYS_C008463" PRIMARY KEY ("USER_ID", "THREAD_ID");

-- ----------------------------
-- Checks structure for table USER_LIKES_THREAD
-- ----------------------------
ALTER TABLE "USER_LIKES_THREAD" ADD CONSTRAINT "SYS_C008461" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_THREAD" ADD CONSTRAINT "SYS_C008462" CHECK ("THREAD_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_LIKES_VA
-- ----------------------------
ALTER TABLE "USER_LIKES_VA" ADD CONSTRAINT "SYS_C008370" PRIMARY KEY ("USER_ID", "VA_ID");

-- ----------------------------
-- Checks structure for table USER_LIKES_VA
-- ----------------------------
ALTER TABLE "USER_LIKES_VA" ADD CONSTRAINT "SYS_C008368" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_VA" ADD CONSTRAINT "SYS_C008369" CHECK ("VA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_MANGA
-- ----------------------------
ALTER TABLE "USER_MANGA" ADD CONSTRAINT "SYS_C008346" PRIMARY KEY ("USER_ID", "MANGA_ID");

-- ----------------------------
-- Checks structure for table USER_MANGA
-- ----------------------------
ALTER TABLE "USER_MANGA" ADD CONSTRAINT "SYS_C008344" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_MANGA" ADD CONSTRAINT "SYS_C008345" CHECK ("MANGA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Triggers structure for table USER_MANGA
-- ----------------------------
CREATE TRIGGER "UPDATE_USER_MANGA_ACTIVITY_INSERT_VERSION" AFTER INSERT ON "USER_MANGA" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN 
	DBMS_OUTPUT.PUT_LINE('IT DOES RUN');
	IF :NEW.STATUS IS NOT NULL THEN
		INSERT INTO USER_MANGA_ACTIVITY(USER_ID, MANGA_ID, STATUS) VALUES (:NEW.USER_ID, :NEW.MANGA_ID, :NEW.STATUS);
	ELSE DBMS_OUTPUT.PUT_LINE('DO NOTHING');
	END IF;
END;
/
CREATE TRIGGER "UPDATE_USER_MANGA_ACTIVITY_UPDATE_VERSION" AFTER UPDATE OF "STATUS" ON "USER_MANGA" REFERENCING OLD AS "OLD" NEW AS "NEW" FOR EACH ROW 
BEGIN
	DBMS_OUTPUT.PUT_LINE('IT DOES RUN UPDATE VERSION');
	IF :OLD.STATUS IS NULL AND :NEW.STATUS IS NOT NULL THEN
		INSERT INTO USER_MANGA_ACTIVITY(USER_ID, MANGA_ID, STATUS) VALUES (:OLD.USER_ID, :OLD.MANGA_ID, :NEW.STATUS);
	ELSIF :OLD.STATUS <> :NEW.STATUS THEN
		INSERT INTO USER_MANGA_ACTIVITY(USER_ID, MANGA_ID, STATUS) VALUES (:OLD.USER_ID, :OLD.MANGA_ID, :NEW.STATUS);
	END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table USER_MANGA_ACTIVITY
-- ----------------------------
ALTER TABLE "USER_MANGA_ACTIVITY" ADD CONSTRAINT "SYS_C008411" PRIMARY KEY ("USER_ID", "MANGA_ID", "DATE_OF_CREATION");

-- ----------------------------
-- Checks structure for table USER_MANGA_ACTIVITY
-- ----------------------------
ALTER TABLE "USER_MANGA_ACTIVITY" ADD CONSTRAINT "SYS_C008409" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_MANGA_ACTIVITY" ADD CONSTRAINT "SYS_C008410" CHECK ("MANGA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table VOICE_ARTIST
-- ----------------------------
ALTER TABLE "VOICE_ARTIST" ADD CONSTRAINT "SYS_C008181" PRIMARY KEY ("VA_ID");

-- ----------------------------
-- Checks structure for table VOICE_ARTIST
-- ----------------------------
ALTER TABLE "VOICE_ARTIST" ADD CONSTRAINT "SYS_C008180" CHECK ("FULL_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME
-- ----------------------------
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C008149" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_GENRE
-- ----------------------------
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008153" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008154" FOREIGN KEY ("GENRE_ID") REFERENCES "GENRE" ("GENRE_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_PRODUCER
-- ----------------------------
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C008163" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C008164" FOREIGN KEY ("PRODUCER_ID") REFERENCES "PRODUCER" ("PRODUCER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_RELATED
-- ----------------------------
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C008173" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C008174" FOREIGN KEY ("RELATED_ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_STAFF
-- ----------------------------
ALTER TABLE "ANIME_STAFF" ADD CONSTRAINT "SYS_C008190" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_STAFF" ADD CONSTRAINT "SYS_C008191" FOREIGN KEY ("STAFF_ID") REFERENCES "STAFF" ("STAFF_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_STUDIO
-- ----------------------------
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008178" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008179" FOREIGN KEY ("STUDIO_ID") REFERENCES "STUDIO" ("STUDIO_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CHARACTER
-- ----------------------------
ALTER TABLE "CHARACTER" ADD CONSTRAINT "SYS_C008184" FOREIGN KEY ("VA_ID") REFERENCES "VOICE_ARTIST" ("VA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "CHARACTER" ADD CONSTRAINT "SYS_C008185" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table COMMENTT
-- ----------------------------
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C008497" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C008498" FOREIGN KEY ("THREAD_ID") REFERENCES "THREAD" ("THREAD_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C008499" FOREIGN KEY ("PARENT_COMMENT_ID") REFERENCES "COMMENTT" ("COMMENT_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table DATABASE_LOG
-- ----------------------------
ALTER TABLE "DATABASE_LOG" ADD CONSTRAINT "SYS_C008433" FOREIGN KEY ("USERNAME") REFERENCES "USERR" ("USERNAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table HAS
-- ----------------------------
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C008195" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C008196" FOREIGN KEY ("CHARACTER_ID") REFERENCES "CHARACTER" ("CHARACTER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MANGA_GENRE
-- ----------------------------
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008158" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008159" FOREIGN KEY ("GENRE_ID") REFERENCES "GENRE" ("GENRE_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MANGA_STAFF
-- ----------------------------
ALTER TABLE "MANGA_STAFF" ADD CONSTRAINT "SYS_C008421" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA_STAFF" ADD CONSTRAINT "SYS_C008422" FOREIGN KEY ("STAFF_ID") REFERENCES "STAFF" ("STAFF_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table REVIEW_ANIME
-- ----------------------------
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C008295" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C008296" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table REVIEW_MANGA
-- ----------------------------
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C008301" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C008302" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table THREAD
-- ----------------------------
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C008457" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C008458" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C008459" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table THREAD_CATEGORY
-- ----------------------------
ALTER TABLE "THREAD_CATEGORY" ADD CONSTRAINT "SYS_C008492" FOREIGN KEY ("THREAD_ID") REFERENCES "THREAD" ("THREAD_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "THREAD_CATEGORY" ADD CONSTRAINT "SYS_C008493" FOREIGN KEY ("CATEGORY_ID") REFERENCES "CATEGORY" ("CATEGORY_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_ANIME
-- ----------------------------
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008333" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008334" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_ANIME_ACTIVITY
-- ----------------------------
ALTER TABLE "USER_ANIME_ACTIVITY" ADD CONSTRAINT "SYS_C008407" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_ANIME_ACTIVITY" ADD CONSTRAINT "SYS_C008408" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_FOLLOWS_THREAD
-- ----------------------------
ALTER TABLE "USER_FOLLOWS_THREAD" ADD CONSTRAINT "SYS_C008469" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_FOLLOWS_THREAD" ADD CONSTRAINT "SYS_C008470" FOREIGN KEY ("THREAD_ID") REFERENCES "THREAD" ("THREAD_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_LIKES_CHARACTER
-- ----------------------------
ALTER TABLE "USER_LIKES_CHARACTER" ADD CONSTRAINT "SYS_C008352" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_CHARACTER" ADD CONSTRAINT "SYS_C008353" FOREIGN KEY ("CHARACTER_ID") REFERENCES "CHARACTER" ("CHARACTER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_LIKES_REVIEW_ANIME
-- ----------------------------
ALTER TABLE "USER_LIKES_REVIEW_ANIME" ADD CONSTRAINT "SYS_C008306" FOREIGN KEY ("REVIEW_ANIME_ID") REFERENCES "REVIEW_ANIME" ("REVIEW_ANIME_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_REVIEW_ANIME" ADD CONSTRAINT "SYS_C008307" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_LIKES_REVIEW_MANGA
-- ----------------------------
ALTER TABLE "USER_LIKES_REVIEW_MANGA" ADD CONSTRAINT "SYS_C008315" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_REVIEW_MANGA" ADD CONSTRAINT "SYS_C008316" FOREIGN KEY ("REVIEW_MANGA_ID") REFERENCES "REVIEW_MANGA" ("REVIEW_MANGA_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_LIKES_STAFF
-- ----------------------------
ALTER TABLE "USER_LIKES_STAFF" ADD CONSTRAINT "SYS_C008366" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_STAFF" ADD CONSTRAINT "SYS_C008367" FOREIGN KEY ("STAFF_ID") REFERENCES "STAFF" ("STAFF_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_LIKES_THREAD
-- ----------------------------
ALTER TABLE "USER_LIKES_THREAD" ADD CONSTRAINT "SYS_C008464" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_THREAD" ADD CONSTRAINT "SYS_C008465" FOREIGN KEY ("THREAD_ID") REFERENCES "THREAD" ("THREAD_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_LIKES_VA
-- ----------------------------
ALTER TABLE "USER_LIKES_VA" ADD CONSTRAINT "SYS_C008371" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_LIKES_VA" ADD CONSTRAINT "SYS_C008372" FOREIGN KEY ("VA_ID") REFERENCES "VOICE_ARTIST" ("VA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_MANGA
-- ----------------------------
ALTER TABLE "USER_MANGA" ADD CONSTRAINT "SYS_C008347" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_MANGA" ADD CONSTRAINT "SYS_C008348" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_MANGA_ACTIVITY
-- ----------------------------
ALTER TABLE "USER_MANGA_ACTIVITY" ADD CONSTRAINT "SYS_C008412" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_MANGA_ACTIVITY" ADD CONSTRAINT "SYS_C008413" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") ON DELETE CASCADE NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
