/*
 Navicat Premium Data Transfer

 Source Server         : anilist
 Source Server Type    : Oracle
 Source Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 Source Host           : localhost:1521
 Source Schema         : ANILIST

 Target Server Type    : Oracle
 Target Server Version : 190000 (Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 - Production)
 File Encoding         : 65001

 Date: 26/02/2024 03:58:27
*/


-- ----------------------------
-- Table structure for ANIME
-- ----------------------------
DROP TABLE "ANIME";
CREATE TABLE "ANIME" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
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
  "MANGA_ID" NUMBER VISIBLE
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
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('1', 'Shingeki no Kyojin', 'Attack on Titan', '進撃の巨人', 'TV', 'FINISHED', 'Several hundred years ago, humans were nearly exterminated by titans. Titans are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source. A small percentage of humanity survived by walling themselves in a city protected by extremely high walls, even taller than the biggest of titans.<br><br>
Flash forward to the present and the city has not seen a titan in over 100 years. Teenage boy Eren and his foster sister Mikasa witness something horrific as the city walls are destroyed by a colossal titan that appears out of thin air. As the smaller titans flood the city, the two kids watch in horror as their mother is eaten alive. Eren vows that he will murder every single titan and take revenge for all of mankind.<br><br>
(Source: MangaHelpers) ', '2013', '4', '7', '2013', '9', '28', 'SPRING', '2013', '25', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx16498-C6FPmWm59CyP.jpg', '#e4a15d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/16498-8jpFCOcDmneX.jpg', 'http://www.crunchyroll.com/attack-on-titan', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('2', 'Shingeki no Kyojin Zenpen: Guren no Yumiya', 'Attack on Titan Part I: Crimson Bow and Arrow', '劇場版「進撃の巨人」前編～紅蓮の弓矢～', 'MOVIE', 'FINISHED', 'A recompilation of the anime series. The new films will feature new dubbing and a 5.1ch remaster with returning voice cast members. The first film will cover episodes 1 through 13.', '2014', '11', '22', '2014', '11', '22', 'FALL', '2014', '1', '118', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20691-dnv0rkpbgBDJ.png', '#e47835', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20691-xKJkvnhezBb0.jpg', 'https://twitter.com/anime_shingeki?t=04jzwzKIHFFQ-Wvg6npMsw&s=09', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('3', 'Shingeki no Kyojin Kouhen: Jiyuu no Tsubasa', 'Attack on Titan Part II: Wings of Freedom', '劇場版「進撃の巨人」後編～自由の翼～', 'MOVIE', 'FINISHED', 'A recompilation of the anime series. The new films will feature new dubbing and a 5.1ch remaster with returning voice cast members. The second film will cover 14 through 25.', '2015', '6', '27', '2015', '6', '27', 'SPRING', '2015', '1', '120', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20692-fSDEpfDtDg9u.png', '#e4a15d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20692.jpg', 'https://twitter.com/anime_shingeki?t=04jzwzKIHFFQ-Wvg6npMsw&s=09', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('4', 'Shingeki no Kyojin 2', 'Attack on Titan Season 2', '進撃の巨人２', 'TV', 'FINISHED', 'Eren Jaeger swore to wipe out every last Titan, but in a battle for his life he wound up becoming the thing he hates most. With his new powers, he fights for humanity''s freedom facing the monsters that threaten his home. After a bittersweet victory against the Female Titan, Eren finds no time to rest—a horde of Titans is approaching Wall Rose and the battle for humanity continues!<br><br>

(Source: Funimation)', '2017', '4', '1', '2017', '6', '17', 'SPRING', '2017', '12', '25', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20958-HuFJyr54Mmir.jpg', '#6AA66F', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20958-Y7eQdz9VENBD.jpg', 'http://shingeki.tv/season2/', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('5', 'Shingeki! Kyojin Chuugakkou', 'Attack on Titan: Junior High', '進撃！巨人中学校', 'TV', 'FINISHED', 'The school comedy story is set in a junior high school and centers on the original manga''s characters such as Eren and Mikasa as they battle with Titans. The spin-off incorporates gags while using Shingeki no Kyojin''s story and notable scenes as its basis.', '2015', '10', '4', '2015', '12', '20', 'FALL', '2015', '12', '18', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b21281-GwCKcZii6fVf.jpg', '#f1e4c9', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/n21281-NJqGktD33FWm.jpg', 'http://kyojinchu.tv/', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('6', 'Shingeki no Kyojin OVA', 'Attack on Titan OVA', '進撃の巨人 OVA', 'OVA', 'FINISHED', 'OVA 1: An old journal is found by Levi and Erwin when they conduct the surveillance operation outside the wall. The contents of "Ilse''s Journal" result in some unexpected actions from Hange.
<br>
OVA 2: Another story of the 104th Trainee Squad.
<br>
OVA 3: Will depict a "memorable episode before the 104th Training Corps became unified."
<br><br>
(Source: Anime News Network)', '2013', '12', '9', '2014', '8', '8', 'FALL', '2013', '3', '25', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx18397-AnpwhLkSjYL1.jpg', '#c9e4ae', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/18397-rG4Vpg67Kr0j.jpg', 'https://www.crunchyroll.com/attack-on-titan', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('7', 'Shingeki no Kyojin: Chronicle', 'Attack on Titan ~Chronicle~', '進撃の巨人 〜クロニクル〜', 'MOVIE', 'FINISHED', 'Movie compiling the first 3 seasons of <i>Shingeki no Kyojin</i>.', '2020', '7', '17', '2020', '7', '17', 'SUMMER', '2020', '1', '120', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx119113-IzVI5oZ0og8O.jpg', '#f1785d', NULL, 'https://shingeki.tv/movie_chronicle/', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('8', 'Shingeki no Kyojin Gaiden: Kuinaki Sentaku', 'Attack on Titan: No Regrets', '進撃の巨人 外伝 悔いなき選択', 'OVA', 'FINISHED', 'This prequel to megahit Attack on Titan answers the questions: How did Captain Levi of the Survey Corps go from street thug to humanity''s strongest soldier? And how did Commander Erwin become a cold, calculating leader, ready to sacrifice anything to save the human race? The fires that forged this bond of loyalty and trust were intense indeed!
<br><br>
(Source: Anime News Network, revised)', '2014', '12', '9', '2015', '4', '9', 'WINTER', '2015', '2', '28', 'JP', 'VISUAL_NOVEL', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20811-IvXLdxZkYNcP.jpg', NULL, 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20811-xIuYL1yGMT5S.jpg', 'https://www.crunchyroll.com/attack-on-titan', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('9', 'Shingeki no Kyojin: LOST GIRLS', 'Attack on Titan: Lost Girls', '進撃の巨人 LOST GIRLS', 'OVA', 'FINISHED', 'A three-part OVA adapting the "Shingeki no Kyojin: Lost Girls" spinoff novel that will be bundled with the 24th, 25th and 26th limited edition volumes of the manga.<br>
<br>
<strong>Wall Sina, Goodbye:</strong><br>
Annie Leonhart has a job to do—and a resulting absence that must stay off her record at all costs. With no one else to turn to, she asks her comrade Hitch Dreyse to cover for her. She agrees but puts forward a single condition: Annie must solve the fruitless missing person case Hitch was assigned. The case revolves around Carly Stratmann, a university graduate and the daughter of wealthy businessman Elliot Stratmann. With only a single day to solve the case and the underground of the Stohess District crawling with thugs, Annie must put her all into finding this girl. Yet, every answer she uncovers only leads to further questions—how has the illegal drug coderoin found its way to Stohess, what is Elliot hiding, and where has Carly disappeared to?<br>
<br>
<strong>Lost in the Cruel World:</strong><br>
With worry for Eren Yeager gripping her heart, Mikasa Ackerman begins to remember. She remembers her conversations with Armin Arlert, her concern for her friends, and most painfully, the time she had almost lost everything. As fear takes control, she begins to experience an alternate version of her past—some things can be changed, but are there events so inescapable that she can''t even prevent them in her dreams?
', '2017', '12', '8', '2018', '8', '9', 'FALL', '2017', '3', '25', 'JP', 'LIGHT_NOVEL', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/nx99634-9u4hdvWwmC2s.png', '#aed6ff', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/99634-m8hKbCnDL2ue.png', 'http://shingeki.tv/season2/', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('10', 'Shingeki no Kyojin: Chimi Kyara Gekijou - Tondeke! Kunren Heidan', 'Attack on Titan Picture Drama', '「進撃の巨人」ちみキャラ劇場"とんでけ! 訓練兵団"', 'SPECIAL', 'FINISHED', 'Specials included in BD/DVD.', '2013', '7', '17', '2014', '3', '19', 'SUMMER', '2013', '9', '11', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/19391.jpg', '#936b28', NULL, 'http://shingeki.tv/', '1');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('15', 'Jujutsu Kaisen 2nd Season', 'JUJUTSU KAISEN Season 2', '呪術廻戦 第2期', 'TV', 'FINISHED', 'The second season of <i>Jujutsu Kaisen</i>.<br>
<br>
The past comes to light when second-year students Satoru Gojou and Suguru Getou are tasked with escorting young Riko Amanai to Master Tengen. But when a non-sorcerer user tries to kill them, their mission to protect the Star Plasma Vessel threatens to turn them into bitter enemies and cement their destinies—one as the world’s strongest sorcerer, and the other its most twisted curse user!<br>
<br>
(Source: Crunchyroll)', '2023', '7', '6', '2023', '12', '28', 'SUMMER', '2023', '23', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx145064-oNJZtLWdXtvy.jpg', '#aeaee4', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/145064-esDtAY2He7sk.jpg', 'https://jujutsukaisen.jp/', '5');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('11', 'DEATH NOTE', 'Death Note', 'DEATH NOTE', 'TV', 'FINISHED', 'Light Yagami is a genius high school student who is about to learn about life through a book of death. When a bored shinigami, a God of Death, named Ryuk drops a black notepad called a <i>Death Note</i>, Light receives power over life and death with the stroke of a pen. Determined to use this dark gift for the best, Light sets out to rid the world of evil… namely, the people he believes to be evil. Should anyone hold such power?<br>
<br>
The consequences of Light’s actions will set the world ablaze.<br>
<br>
(Source: Viz Media)', '2006', '10', '4', '2007', '6', '27', 'FALL', '2006', '37', '23', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1535-lawCwhzhi96X.jpg', NULL, 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/1535.jpg', 'http://www.hulu.com/death-note', '2');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('12', 'DEATH NOTE Rewrite', 'Death Note: Relight', 'DEATH NOTE リライト', 'SPECIAL', 'FINISHED', '1. Genshisuru Kami (Visions of a God)<br>
A two hour episode of Death Note, mainly a compilation of the confrontations between Light and L, re-edited from Ryuk''s perspective with new dialogue and soundtrack along with additional animation that could not be included in the original series.  An Unnamed Shinigami comes to Ryuk to question him about his new story in the human world.<br><br>
2. Eru o Tsugu Mono (L''s Successors)<br>
This story continues where the previous left off, continuing the story of Light. As the previous special told Light and L''s battles, this story does the same with the conflicts between Light, Mello, and Near.  <br><br>
(Source: Wikipedia)', '2007', '8', '31', '2008', '8', '22', 'SUMMER', '2007', '2', '112', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b2994-mlofkz5GpkIu.jpg', '#f1e450', NULL, NULL, '2');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('13', 'Jujutsu Kaisen', 'JUJUTSU KAISEN', '呪術廻戦', 'TV', 'FINISHED', 'A boy fights... for "the right death."<br>
<br>
Hardship, regret, shame: the negative feelings that humans feel become Curses that lurk in our everyday lives. The Curses run rampant throughout the world, capable of leading people to terrible misfortune and even death. What''s more, the Curses can only be exorcised by another Curse.<br>
<br>
Itadori Yuji is a boy with tremendous physical strength, though he lives a completely ordinary high school life. One day, to save a friend who has been attacked by Curses, he eats the finger of the Double-Faced Specter, taking the Curse into his own soul. From then on, he shares one body with the Double-Faced Specter. Guided by the most powerful of sorcerers, Gojou Satoru, Itadori is admitted to the Tokyo Metropolitan Technical High School of Sorcery, an organization that fights the Curses... and thus begins the heroic tale of a boy who became a Curse to exorcise a Curse, a life from which he could never turn back.
<br><br>
(Source: Crunchyroll)<br>
<br>
<i>Note: The first episode received an early web premiere on September 19th, 2020. The regular TV broadcast started on October 3rd, 2020.</i>', '2020', '10', '3', '2021', '3', '27', 'FALL', '2020', '24', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx113415-bbBWj4pEFseh.jpg', '#e45d5d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/113415-jQBSkxWAAk83.jpg', 'https://jujutsukaisen.jp/', '5');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('14', 'Jujutsu Kaisen 0', 'JUJUTSU KAISEN 0', '呪術廻戦 0', 'MOVIE', 'FINISHED', 'Yuta Okkotsu is a nervous high school student who is suffering from a serious problem—his childhood friend Rika has turned into a curse and won''t leave him alone. Since Rika is no ordinary curse, his plight is noticed by Satoru Gojo, a teacher at Jujutsu High, a school where fledgling exorcists learn how to combat curses. Gojo convinces Yuta to enroll, but can he learn enough in time to confront the curse that haunts him?
<br><br>
(Source: Viz Media)', '2021', '12', '24', '2021', '12', '24', 'FALL', '2021', '1', '105', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx131573-rpl82vDEDRm6.jpg', '#f1c95d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/131573-3veuVz5p0z2I.jpg', 'https://jujutsukaisen-movie.jp/', '5');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('16', 'BLEACH: Sennen Kessen-hen', 'BLEACH: Thousand-Year Blood War', 'BLEACH 千年血戦篇', 'TV', 'FINISHED', 'Was it all just a coincidence, or was it inevitable?
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
All things must come to an end as Ichigo Kurosaki''s final battle begins!', '2022', '10', '11', '2022', '12', '27', 'FALL', '2022', '13', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx116674-p3zK4PUX2Aag.jpg', '#e45043', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/116674-l2YlIyJzvGSV.jpg', 'https://twitter.com/bleachanimation', '4');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('18', 'BLEACH: Sennen Kessen-hen - Ketsubetsu-tan', 'BLEACH: Thousand-Year Blood War - The Separation', 'BLEACH 千年血戦篇-訣別譚-', 'TV', 'FINISHED', 'The second part of <i>BLEACH: Sennen Kessen-hen</i>. 
<br><br>
After a brutal surprise attack by the forces of Quincy King Yhwach, the resident Reapers of the Soul Society lick their wounds and mourn their losses. Many of the surviving Soul Reaper captains train to battle without their Bankai, the ultimate technique wielded by the fiercest warriors.
<br><br>
In the previous assault, Ichigo Kurosaki narrowly managed to help fend off Yhwach''s fearsome wrath. However, to ultimately defeat his godly adversary and save his allies, Ichigo must now undergo severe training that will push him beyond his physical, emotional, and mental limits.
<br><br>
Though Yhwach already holds the upper hand in this ongoing blood feud, he also successfully recruits Uryuu Ishida, Ichigo''s close friend and rival, to be his successor. Yhwach strikes out once again at the weakened Soul Society, intent on finally obliterating his long-standing enemies. As Ichigo struggles to attain new power, the Soul Reaper captains fight for survival and borrowed time.
<br><br>
(Source: MAL Rewrite)', '2023', '7', '8', '2023', '9', '30', 'SUMMER', '2023', '13', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx159322-Sp1GflRhE6Po.jpg', '#4386e4', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/159322-biJjvtNkhkxR.jpg', 'https://twitter.com/BLEACHanimation/', '4');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('17', 'BLEACH', 'Bleach', 'BLEACH', 'TV', 'FINISHED', 'Ichigo Kurosaki is a rather normal high school student apart from the fact he has the ability to see ghosts. This ability never impacted his life in a major way until the day he encounters the Shinigami Kuchiki Rukia, who saves him and his family''s lives from a Hollow, a corrupt spirit that devours human souls. 
<br><br>
Wounded during the fight against the Hollow, Rukia chooses the only option available to defeat the monster and passes her Shinigami powers to Ichigo. Now forced to act as a substitute until Rukia recovers, Ichigo hunts down the Hollows that plague his town. 


', '2004', '10', '5', '2012', '3', '27', 'FALL', '2004', '366', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx269-KxkqTIuQgJ6v.png', '#f19335', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/269-08ar2HJOUAuL.jpg', 'http://www.crunchyroll.com/bleach', '4');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('25', 'Shingeki no Kyojin 3', 'Attack on Titan Season 3', '進撃の巨人３', 'TV', 'FINISHED', 'Eren and his companions in the 104th are assigned to the newly-formed Levi Squad, whose assignment is to keep Eren and Historia safe given Eren''s newly-discovered power and Historia''s knowledge and pedigree. Levi and Erwin have good reason to be concerned, because the priest of the Church that Hanji had hidden away was found tortured to death, making it clear that the Military Police are involved with the cover-up. Things get more harrowing when the MPs make a move on Erwin and the Levi Squad narrowly avoids capture. Eren is also having problems with his Titan transformation, and a deadly killer has been hired to secure Eren and Historia, one Levi knows all too well from his youth.<br>
<br>
(Source: Anime News Network)', '2018', '7', '23', '2018', '10', '15', 'SUMMER', '2018', '12', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx99147-5RXELRvwjFl6.jpg', '#4386e4', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/99147-HACsFVrynFf5.jpg', 'http://shingeki.tv/season3/', NULL);
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('26', 'Shingeki no Kyojin: The Final Season', 'Attack on Titan Final Season', '進撃の巨人 The Final Season', 'TV', 'FINISHED', 'It’s been four years since the Scout Regiment reached the shoreline, and the world looks different now. Things are heating up as the fate of the Scout Regiment—and the people of Paradis—are determined at last. However, Eren is missing. Will he reappear before age-old tensions between Marleyans and Eldians result in the war of all wars?<br>
<br>
(Source: Crunchyroll)', '2020', '12', '7', '2021', '3', '29', 'WINTER', '2021', '16', '24', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx110277-qDRIhu50PXzz.jpg', '#ae5d1a', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/110277-iuGn6F5bK1U1.jpg', 'https://shingeki.tv/final/', NULL);
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('20', 'NARUTO: Shippuuden', 'Naruto: Shippuden', 'NARUTO -ナルト- 疾風伝', 'TV', 'FINISHED', 'Naruto: Shippuuden is the continuation of the original animated TV series Naruto. The story revolves around an older and slightly more matured Uzumaki Naruto and his quest to save his friend Uchiha Sasuke from the grips of the snake-like Shinobi, Orochimaru. After 2 and a half years Naruto finally returns to his village of Konoha, and sets about putting his ambitions to work, though it will not be easy, as he has amassed a few (more dangerous) enemies, in the likes of the shinobi organization; Akatsuki. <br><br>
(Source: Anime News Network)', '2007', '2', '15', '2017', '3', '23', 'WINTER', '2007', '500', '23', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx1735-Az5gbEdWeotG.png', '#e4865d', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/1735.jpg', 'http://www.crunchyroll.com/naruto-shippuden', '3');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('21', 'NARUTO: Dai Katsugeki! Yuki Hime Ninpouchou Dattebayo!!', 'Naruto the Movie: Ninja Clash in the Land of Snow', '劇場版 NARUTO -ナルト- 大活劇!雪姫忍法帖だってばよ!!', 'MOVIE', 'FINISHED', 'Kakashi orders Naruto, Sasuke, and Sakura to watch a movie before their next mission. Naruto is a big fan of the lead actress. After the movie, they see the heroine in person and being chased. They help her and Naruto asks for an autograph but she wouldn''t give him one. When the three returns, Kakashi tells them about their mission: to escort the actress to the Snow Country to film a new movie.
<br><br>
(Source: Anime News Network)', '2004', '8', '21', '2004', '8', '21', 'SUMMER', '2004', '1', '90', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx442-VJbmIVTgmne3.png', '#e46b50', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/442-Mi9O1QwTaXqQ.jpg', 'https://www.crunchyroll.com/naruto-the-movie-ninja-clash-in-the-land-of-snow', '3');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('19', 'NARUTO', 'Naruto', 'NARUTO -ナルト-', 'TV', 'FINISHED', 'Naruto Uzumaki, a hyperactive and knuckle-headed ninja, lives in Konohagakure, the Hidden Leaf village. Moments prior to his birth, a huge demon known as the Kyuubi, the Nine-tailed Fox, attacked Konohagakure and wreaked havoc. In order to put an end to the Kyuubi''s rampage, the leader of the village, the 4th Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto. <br><br>
Shunned because of the presence of the Kyuubi inside him, Naruto struggles to find his place in the village. He strives to become the Hokage of Konohagakure, and he meets many friends and foes along the way. <br><br>
(Source: MAL Rewrite)', '2002', '10', '3', '2007', '2', '8', 'FALL', '2002', '220', '23', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx20-YJvLbgJQPCoI.jpg', '#e47850', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/20-HHxhPj5JD13a.jpg', 'http://www.crunchyroll.com/naruto', '3');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('22', 'NARUTO: Takigakure no Shitou - Ore ga Eiyuu Dattebayo!', 'Naruto: The Lost Story - Mission: Protect the Waterfall Village', 'NARUTO -ナルト- 滝隠れの死闘 オレが英雄だってばよ！', 'SPECIAL', 'FINISHED', 'A routine rank-C mission turned into a full-blown battle as the Hidden Fall village is attacked by enemy ninjas. Now Naruto, Sasuke and Sakura must help the leader of the Hidden Fall, Shibuki, protect his village and show him what being a hero is all about.
<br><br>
(Source: Anime News Network)', '2003', '12', '20', '2003', '12', '20', 'WINTER', '2003', '1', '40', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/594.jpg', '#d6ae5d', NULL, NULL, '3');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('23', 'NARUTO: Dai Gekitotsu! Maboroshi no Chitei Iseki Dattebayo', 'Naruto the Movie: Legend of the Stone of Gelel', '劇場版 NARUTO -ナルト- 大激突!幻の地底遺跡だってばよ', 'MOVIE', 'FINISHED', 'Naruto, Shikamaru, and Sakura are executing their mission of delivering a lost pet to a certain village. However, right in the midst of things, troops led by the mysterious knight, Temujin, attack them. In the violent battle, the three become separated. Temujin challenges Naruto to a fight and at the end of the fierce battle, both fall together from a high cliff. Furthermore, Shikamaru, having been left behind, beholds a giant moving fortress as it appears before his very eyes. In order to get a grasp on the situation, he infiltrates the fortress by himself, however once there he witnesses a frightening sight...
<br><br>
(Source: Anime News Network)', '2005', '8', '6', '2005', '8', '6', 'SUMMER', '2005', '1', '97', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx936-P1ogcIs07UR8.jpg', '#f18643', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/936-q1NJoF3NDEjF.jpg', 'https://www.crunchyroll.com/naruto-the-movie-legend-of-the-stone-of-gelel', '3');
INSERT INTO "ANIME" ("ANIME_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "SEASON", "SEASON_YEAR", "EPISODES", "DURATION", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "ANIME_URL", "MANGA_ID") VALUES ('24', 'NARUTO: Dai Koufun! Mikazukijima no Animal Panic Dattebayo!', 'Naruto the Movie: Guardians of the Crescent Moon Kingdom', '劇場版 NARUTO -ナルト- 大興奮!みかづき島のアニマル騒動だってばよ', 'MOVIE', 'FINISHED', 'Led by Kakashi Hatake, Naruto Uzumaki, Sakura Haruno, and Rock Lee are tasked to escort the extravagant Prince Michiru Tsuki and his spoiled son Hikaru to the prosperous Land of Moon when the two return from a long trip around the world. As if guarding two whimsical high-ranked individuals was not challenging enough, the prince''s reckless decision to acquire an entire circus during their journey—mainly to entertain Hikaru''s wish of owning the saber-toothed tiger featured in the show—further propels the mission into disarray.<br>
<br>
Just as things are finally settling down, the arrival of Michiru''s convoy at the Land of Moon is met with an unforeseen crisis—the greedy Chief Minister Shabadaba has taken over the country with the assistance of mysterious, powerful ninjas. While Kakashi''s team relentlessly fights the enemy by any means necessary, the two princes are forced to confront a new outlook on life through adversity.<br><br>
(Source: MAL Rewrite)', '2006', '8', '5', '2006', '8', '5', 'SUMMER', '2006', '1', '94', 'JP', 'MANGA', 'https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/bx2144-9FITEzdGnlWC.jpg', '#e48650', 'https://s4.anilist.co/file/anilistcdn/media/anime/banner/2144-KnEAcgexm2SI.jpg', 'https://www.crunchyroll.com/naruto-the-movie-guardians-of-the-crescent-moon-kingdom', '3');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for ANIME_CATEGORY
-- ----------------------------
DROP TABLE "ANIME_CATEGORY";
CREATE TABLE "ANIME_CATEGORY" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "CATEGORY_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of ANIME_CATEGORY
-- ----------------------------
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
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('1', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('1', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('1', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('1', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('1', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('2', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('2', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('2', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('2', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('2', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('2', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('3', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('3', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('3', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('3', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('3', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('3', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('4', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('4', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('4', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('4', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('4', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('4', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('5', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('5', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('5', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('5', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('5', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('5', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('6', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('6', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('6', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('6', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('6', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('6', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('7', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('7', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('7', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('7', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('7', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('7', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('8', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('8', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('8', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('8', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('8', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('8', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('9', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('9', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('9', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('9', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('9', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('9', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('10', '1');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('10', '2');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('10', '3');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('10', '4');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('10', '5');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('10', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('11', '7');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('11', '8');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('11', '9');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('11', '10');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('11', '11');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('11', '12');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('11', '13');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('12', '8');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('13', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('13', '12');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('13', '14');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('13', '15');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('14', '6');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('14', '12');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('14', '14');
INSERT INTO "ANIME_PRODUCER" ("ANIME_ID", "PRODUCER_ID") VALUES ('14', '15');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for ANIME_RELATED
-- ----------------------------
DROP TABLE "ANIME_RELATED";
CREATE TABLE "ANIME_RELATED" (
  "ANIME_ID" NUMBER VISIBLE NOT NULL,
  "RELATED_ANIME_ID" NUMBER VISIBLE NOT NULL,
  "RELATION_TYPE" VARCHAR2(1000 BYTE) VISIBLE
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
INSERT INTO "ANIME_RELATED" ("ANIME_ID", "RELATED_ANIME_ID", "RELATION_TYPE") VALUES ('1', '2', NULL);
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
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '4');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '5');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '7');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '8');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '9');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '10');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '11');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '12');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '13');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '14');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '15');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '16');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '17');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '18');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '19');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '20');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '21');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '22');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '23');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '24');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('1', '25');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('2', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('2', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('2', '26');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('2', '27');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('3', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('3', '4');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('3', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('3', '27');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('3', '28');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '4');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '10');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '18');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '29');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '30');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '31');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '32');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '33');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '34');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '35');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '36');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '37');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '38');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '39');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '40');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '41');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '42');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('4', '43');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '44');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '45');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '46');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '47');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '48');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '49');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('5', '50');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '5');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '9');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '51');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '52');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '53');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '54');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('6', '55');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '4');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '5');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '7');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '8');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '9');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '10');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '11');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '12');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '13');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '14');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '15');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '16');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '17');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '18');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '19');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '20');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '21');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '22');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '23');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '24');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('7', '25');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '1');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '2');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '3');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '4');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '5');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '7');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '8');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '9');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '10');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '11');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '12');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '13');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '14');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '15');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '16');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '17');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '18');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '19');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '20');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '21');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '22');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '23');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '24');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('8', '25');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('9', '56');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('10', '6');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('10', '57');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('10', '58');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '59');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '60');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '61');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '62');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '63');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '64');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '65');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '66');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '67');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '68');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '69');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '70');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '71');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '72');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '73');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '74');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '75');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '76');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '77');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '78');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '79');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '80');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '81');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '82');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('11', '83');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '59');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '60');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '61');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '62');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '63');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '64');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '65');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '66');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '67');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '68');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '69');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '70');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '71');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '72');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '73');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '74');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '75');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '76');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '77');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '78');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '79');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '80');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '81');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '82');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('12', '83');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '84');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '85');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '86');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '87');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '88');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '89');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '90');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '91');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '92');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '93');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '94');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '95');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '96');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '97');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '98');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '99');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '100');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '101');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '102');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '103');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '104');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '105');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '106');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '107');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('13', '108');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '84');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '85');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '86');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '87');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '88');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '89');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '90');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '91');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '92');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '93');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '94');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '95');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '96');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '97');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '98');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '99');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '100');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '101');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '102');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '103');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '104');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '105');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '106');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '107');
INSERT INTO "ANIME_STAFF" ("ANIME_ID", "STAFF_ID") VALUES ('14', '108');
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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CATEGORY
-- ----------------------------
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
  "MANGA_ID" NUMBER VISIBLE,
  "VA_ID" NUMBER VISIBLE,
  "ROLE" VARCHAR2(100 BYTE) VISIBLE,
  "GENDER" VARCHAR2(100 BYTE) VISIBLE,
  "AGE" VARCHAR2(100 BYTE) VISIBLE,
  "DESCRIPTION" CLOB VISIBLE
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
ENABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of CHARACTER
-- ----------------------------
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('1', 'Sasha Blouse', 'サシャ・ブラウス', 'https://s4.anilist.co/file/anilistcdn/character/large/b45887-QPtJH0KwqthW.jpg', NULL, '1', 'SUPPORTING', 'Female', '16-', '__Initial Height:__ 168cm
__Affiliations__: Survey Corps

Originally from Dauper, a remote and scarcely populated village of hunters located in a mountain forest in the southern area of Wall Rose. Sasha joined the military as a cadet of the 104th Training Corps, where she ranked 9th upon graduation. She is highly skilled with a bow and arrow and has uncanny intuition, but her eccentricity and unconventional methods make her a poor fit for group operations.

Sasha is a friendly and fun-loving girl. She speaks with a local accent from her home village, but initially hid it out of embarrassment by using overly formal and polite speech. She is a constant food hoarder and is known to have an incredible appetite; eating provided her with considerable gratification and relief, especially during times of great stress, and food was often the only thing on her mind when at ease. 

*Note: Sasha Blouse is the official English translation by Kodansha.*');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('2', 'Hannes', 'ハンネス', 'https://s4.anilist.co/file/anilistcdn/character/large/b46492-5kRaMLDCVD0B.jpg', NULL, '2', 'SUPPORTING', 'Male', NULL, 'A soldier who saves Eren and Mikasa during the prologue. He owes a debt to the Yeager family. 
~!He dies in season two by the Smiling Titan.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('3', 'Hange Zoe', 'ハンジ・ゾエ', 'https://s4.anilist.co/file/anilistcdn/character/large/b71121-7R7CnQd3lHgt.png', NULL, '3', 'SUPPORTING', NULL, NULL, ' __Height__: 170 cm (5''7")
__Position__: Squad Leader, Survey Corps

Being the leader of the Fourth Squad of the Survey Corps, Hange is very passionate and driven in pursuit of new knowledge. They can be seen as very hyperactive, often diving into projects without thought for personal safety (and frightening lots of subordinates in the process), instead of preoccupied with observing and documenting the subjects. Some misunderstand these acts and Hange is seen as eccentric and having more than a few screws loose. They also enjoy discussing this research, but as the lectures can be very long and detail-oriented, not many fellow soldiers find them interesting.

Hange is often excited by Titans and is always eager to experiment with them, coming off as extremely emotional regarding titans. For example, they cry at the amount of pain being caused to a Titan during experimentation.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('4', 'Levi', 'リヴァイ', 'https://s4.anilist.co/file/anilistcdn/character/large/b45627-CR68RyZmddGG.png', NULL, '4', 'SUPPORTING', 'Male', '30s', '__Height:__ 160 cm (5''3") 
__Affiliation:__ Survey Corps; Squad Captain, Special Operations Squad

Squad Captain of the Special Operations Squad (known as Squad Levi) within the Survey Corps. He is known as humanity''s strongest soldier. 

Levi is abrasive, blunt, and has a strong respect for structure and discipline. He is a clean-freak, demanding spotless cleanliness of himself, his equipment, and his environment. Rumors say he was involved in underground crime in his life before coming a soldier. Despite his emotionless and unfriendly demeanor, Levi cares deeply for his squad and greatly values human life. 

_Facts:_
1. Levi suffers from insomnia and sleeps in a chair for an average of 2-3 hours per night
2. Levi has a fondness for black tea and once wanted to open a tea shop
3. Levi takes a 3-minute "Combat-Style" shower
4. Levi''s favorite food is rice');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('126', 'Atsuya Kusakabe', '日下部篤也', 'https://s4.anilist.co/file/anilistcdn/character/large/b205234-nrush17kFWaE.jpg', NULL, '122', 'SUPPORTING', 'Male', NULL, 'Atsuya Kusakabe is a character in Jujutsu Kaisen. He is a Grade 1 Sorcerer, and a teacher at Jujutsu High.

~!At the end of the Shibuya Incident Arc he blocks Kenjaku''s Maximum Uzumaki Technique.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('127', 'Takuma Ino', '猪野琢真', 'https://s4.anilist.co/file/anilistcdn/character/large/b157865-X9ENX9OzWevS.jpg', NULL, '123', 'SUPPORTING', 'Male', '21', '__Species:__ Human
__Occupation:__ Sorcerer
__Affiliation:__ Jujutsu High
__Grade:__ Grade 2 Sorcerer

Takuma Ino is a grade 2 jujutsu sorcerer and a close associate of Kento Nanami who operates out of Tokyo Jujutsu High.

Takuma Ino is a genuine and cheerful person with a more positive outlook on things than most jujutsu sorcerers. He doesn''t believe he''s the smartest person around and has a lot of respect for Nanami. Whenever Ino finds himself in a tough situation, he asks himself what would Nanami do.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('128', 'Larue', 'ラルゥ', 'https://s4.anilist.co/file/anilistcdn/character/large/b268297-zQ48F3PoVldl.png', NULL, '124', 'SUPPORTING', 'Male', NULL, 'A large, shirtless muscular man and an ally of [Suguru Getou](https://anilist.co/character/133699/).');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('129', 'Miguel', 'ミゲル', 'https://s4.anilist.co/file/anilistcdn/character/large/b272175-wBjreG7iB9n2.png', NULL, '125', 'SUPPORTING', 'Male', NULL, 'He was initially one of Suguru Geto''s commanders who wished to see him become king. Following the Night Parade of a Hundred Demons, Miguel was forcefully recruited by Satoru Gojo. He returned to his homeland of Africa and the community of sorcerers there to train Yuta Okkotsu.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('122', 'Momo Nishimiya', '西宮桃', 'https://s4.anilist.co/file/anilistcdn/character/large/b157868-Ui2Wht3M6tlM.png', NULL, '118', 'SUPPORTING', 'Female', '18', '__Species:__ Human
__Occupation:__ Jujutsu Sorcerer
__Affiliation:__  Kyoto Magic Technical College
__Grade:__ Semi-Grade 2 Sorcerer
__Cursed Technique:__ Tool Manipulation

She is a third-year at Kyoto Magic Technical College.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('123', 'Noritoshi  Kamo', '加茂憲紀', 'https://s4.anilist.co/file/anilistcdn/character/large/b157866-UWDtYBoG71PD.png', NULL, '119', 'SUPPORTING', 'Male', NULL, '__Cursed Technique:__ Blood Manipulation
__Grade:__ Semi-Grade 1 Sorcerer

He is a third-year at Kyoto Magic Technical College.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('124', 'Mei Mei', '冥冥', 'https://s4.anilist.co/file/anilistcdn/character/large/b157215-I3TQJu8nkDwD.jpg', NULL, '120', 'SUPPORTING', 'Female', '30', '__Height:__  173 cm
__Occupation:__ Jujutsu Sorcerer
__Affiliation:__ Jujutsu High
__Grade:__ Grade 1 Sorcerer
__Family:__ Ui Ui (Younger Brother)

__Abilities__:
~!
__Weapon Mastery__: Mei Mei wields a large battle-axe. 
__Cursed Technique__: Black Bird Manipulation - Mei Mei is able to control crows as well as see through their eyes, making her technique great for recon.
__Bird Strike__: by forcing a crow to commit suicide, the trade-off is to erase the Cursed Energy limit of a typical weak bird and hurl it at the enemy.
!~

Mei Mei is a grade 1 jujutsu sorcerer who works independently and only in exchange for money. She is also the older sister of Ui Ui. 

~!She was the senpai of Satoru Gojo and Suguru Geto during their time at Jujutsu High.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('125', 'Akari Nitta', '新田明', 'https://s4.anilist.co/file/anilistcdn/character/large/b210846-XcRQ643Ne8Pb.png', NULL, '121', 'SUPPORTING', 'Female', NULL, 'Akari Nitta is an Auxiliary Manager at Jujutsu High. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('5', 'Armin Arlert', 'アルミン・アルレルト', 'https://s4.anilist.co/file/anilistcdn/character/large/b46494-g7xYYuBtYPnO.png', NULL, '5', 'MAIN', 'Male', '15 (850), 19 (854)', '__Height__: 163 cm (5''4")
__Position__: 104th Trainees Squad, Scouting Legion
__Graduation Rank__: Outside the top 10

Eren''s best friend, he is physically and emotionally weak. Even though lacking in actual combat, Armin is a genius on theoretical courses and can make plans even under extreme pressure. Even so, Armin kept on thinking that he is weak. He himself does not notice the things he does for Eren and Mikasa, and believes himself to be completely incompetent and hates himself for having to rely on Eren and Mikasa.

At the end of the Return to Shiganshina arc (ANIME: Season 3 Part 2|MANGA: Volumes 18-22), ~!He inherits the Colossal Titan by eating [Bertolt Hoover](https://anilist.co/character/46488/)!~
At the end of the series, ~!Hange declares Armin Arlert as the 15th commander of the Survey Corps!~

Note: Armin Arlert is the official English translation by Kodansha.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('6', 'Jean Kirstein', 'ジャン・キルシュタイン', 'https://s4.anilist.co/file/anilistcdn/character/large/b46498-ritqAj9FW6jX.png', NULL, '6', 'SUPPORTING', 'Male', '16, 19', '__Height__: 175 cm (5''8"), 190 cm (6''2")
__Affiliations__: Survey Corps

Ranked 6th of the trainee class. Extremely pessimistic about the War with the Titans. Jean hails from Wall Rose''s Trost District, and joined the military with hopes of living a peaceful life within the walls as part of the Military Police Regiment. Seems like he''s amazed by Mikasa''s beauty, and thus hating Eren for always being with her. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('7', 'Erwin Smith', 'エルヴィン・スミス', 'https://s4.anilist.co/file/anilistcdn/character/large/b46496-Mu86MENd5wNB.png', NULL, '7', 'SUPPORTING', 'Male', NULL, '**Height:** 188 cm
**Position:** 13th Commander, Survey Corps

Discerning, intelligent, and widely respected, Erwin is the unshakable and calculated 13th commander of the Survey Corps. While he cares deeply for his men, he does not hesitate to sacrifice them for the good and prosperity of mankind, and his men have proven more than willing to stake their lives at his order. Erwin developed the Long-Distance Enemy Scouting Formation.

~!Due to uncertainty about his future, he later named Hange Zoë as his successor.!~

During the Return to Shiganshina arc (ANIME: Season 3 Part 2 | MANGA: Volumes 18-22): 
~!Erwin gives [Levi Ackermann](https://anilist.co/character/45627/Levi) a final order; to assassinate the [Beast Titan](https://anilist.co/character/125661/Zeke). After this, he chooses to sacrifice his own life alongside the lives of the remaining Survey Corps recruits in a suicide charge to ensure victory against the Beast Titan is achieved.!~ 

~!Erwin is later brought to Levi by [Floch Forster](https://anilist.co/character/127703/Floch-Forster), barely clinging to life. Although Levi initially intends to revive and empower Erwin with the titan serum entrusted to him, he ultimately decides against it and allows him to be put to rest, choosing to revive [someone else](https://anilist.co/character/46494/Armin-Arlert) with the injection.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('8', 'Connie Springer', 'コニー・スプリンガー', 'https://s4.anilist.co/file/anilistcdn/character/large/n46486-izhPjzut6WCZ.png', NULL, '8', 'SUPPORTING', 'Male', '15', '__Height__: 158 cm (5''2")  
__Affiliations__: 104th Trainees Squad, Scouting Legion  
__Graduation Rank__: 8th  

Upbeat and naive, Connie is also extremely dumb for not being able to differentiate left and right. Aims to apply to the scouting legion because he was motivated by Eren. From Ragako District.  ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('77', 'Mary Kenwood', 'メリー・ケンウッド', 'https://s4.anilist.co/file/anilistcdn/character/large/n1933-WNDtxqOr1d51.png', NULL, '75', 'SUPPORTING', 'Female', NULL, '__Birthday:__ November 2  

 Wedy, real name Mary Kenwood, is a professional burglar in the employ of L. She installs bugs in the Yotsuba Group&#039;s meeting room to secretly observe the group&#039;s weekly meetings. She does the same for Higuchi&#039;s car, allowing the team to watch his desperate attempts to kill Matsuda. Since she is a professional criminal, she is known solely in the underworld.    Wedy uses her initial in computer communication; to avoid confusion with Watari (&quot;W&quot;), she deliberately uses the lowercase form, &quot;w&quot;.    She (like Aiber) is referenced to, but does not appear in, Death Note: Another Note.    Ohba said that he created Aiber and Wedy so he could use characters with &quot;special abilities&quot; to advance the storyline. He said that he wanted to use Wedy more than Aiber. As an example he explained a scenario involving Light controlling Wedy, making her place cameras in the headquarters so Misa could see L&#039;s face &quot;... or something.&quot;    According to Obata, he drew Wedy as a female model as he did not know what kind of character she would be. Obata added that Wedy has the &quot;stereotypical female spy look.&quot; Obata believes that if he drew Aiber and Wedy to look &quot;a little bit more original&quot;, Ohba could have included the characters in a larger role in Death Note.     ~!After L&#039;s death, Light kills her using his Death Note; Mary Kenwood dies in a motorcycle accident in Colorado.!~ ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('79', 'Ryuk', 'リューク', 'https://s4.anilist.co/file/anilistcdn/character/large/b75-IkEpzO21LgFy.jpg', NULL, '77', 'MAIN', 'Male', NULL, 'The original Shinigami who dropped the Death Note in the human world, and also love apples, which Light would pick up. Acting out of pure boredom, Ryuk begins the story of Death Note on a whim. Perhaps neutral by nature, Ryuk often refuses to aid Light and instead enjoys watching him struggle for his goal. The most important facet of Ryuk''s character is that he is not Light''s friend. He acts for his own interests and entertainment, and often fails to tell Light key details about the Death Note. Ryuk is selfish, however, and will aid Light if it serves his own goals, such as providing amusement or obtaining apples.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('78', 'Mihael Keehl', 'ミハエル・ケール', 'https://s4.anilist.co/file/anilistcdn/character/large/b463-QBLeLf6XxVg6.png', NULL, '76', 'MAIN', 'Male', '13-15 (Pre-timeskip); 19-20 (Post-timeskip)', 'Mello is the older of L''s two successors raised in Wammy''s House, Watari''s orphanage for gifted children, in Winchester, England, United Kingdom. When it is decided that Mello should work with the other successor, Near, Mello refuses, citing an inability to work with Near, to whom he is considered second. Similar to L''s fondness for sweets, Mello is often seen eating bars of chocolate. How to Read 13 states that Mello has "an excellent mind" and that he "sometimes lets his emotions get in his way." The book cites Mello''s "hatred of Near," which created "a flaw in [Mello''s] personality." The book states that Mello isn''t purely evil, citing his apology and genuine care for Matt''s well-being. Tsugumi Ohba, the writer of Death Note, stated that Mello "works hard for everything." Ohba added that Mello''s name "doesn''t really stand for anything," as opposed to Near''s name standing for Nate River, etc.  Mello is voiced by Nozomu Sasaki in the Japanese anime,  David Hurtwitz in the English version and Javier Olguín in the Latin Spanish dub.   ~!Mello decides to find Kira his own way by joining the Mafia. After obtaining one of the Death Notes from the Kira investigation team by kidnapping Sayu Yagami, Light Yagami sets up a raid that leaves Mello badly scarred and his real name in Light''s hands. After learning that Light is Kira and Near was going to attempt to apprehend him, Mello kidnaps Kiyomi Takada, but is soon killed by Takada''s hidden pages of the Death Note. This action causes Teru Mikami to expose his own Death Note to kill Takada, an action that Near picks up on and is eventually able to use to thwart Light''s plans. Near reflects this during the final showdown and credits Mello as the single most pivotal person in discovering Light''s plans. Hal Lidner further believes that it was Mello''s plan that he would be killed to expose Light''s plan, but Near rejects this theory. His date of death is January 26th, 2010. Age 20.!~  Mello is the narrator of the spinoff novel Death Note - Another Note: The Los Angeles BB Murder Cases.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('80', 'Touta Matsuda', '松田桃太', 'https://s4.anilist.co/file/anilistcdn/character/large/n1906-JCWKEGGook3Z.png', NULL, '78', 'SUPPORTING', 'Male', NULL, '__Height:__  174 cm (5''8")

Tota is known as the most outspoken member of the investigation team. He plays a crucial role in the investigation of the Yotsuba Group after sneaking into the company''s building without the knowledge of the team. His designated investigation team alias is Taro Matsui.  By following L''s instructions, Matsuda gains the trust of the company''s board members, fabricates his death (he uses the alias Taro Matsui) so that Yotsuba members can not kill him), and serves as a temporary decoy to lure the suspect into the Sakura television studio during the second Sakura TV incident. Despite his excitable, naïve personality, Matsuda manages to stay alive through quite a few dangerous times. Matsuda sees Soichiro as his mentor.  While it is clear that most of the investigation team views Kira as an evil criminal, Matsuda often wonders if Kira is performing good deeds, especially since more and more people seem to be agreeing with what he does. Matsuda is scared by Mikami''s intense loyalty to Kira when he hears Mikami''s public announcement on Sakura TV. Matsuda proves to be somewhat supportive and sympathetic towards Kira''s followers nonetheless.  ~! When Light is revealed as Kira at Yellowbox Warehouse, Matsuda is the most shocked of the team. He has always liked Light and is outraged to learn that he had been fooled; he is particularly upset, asserting that Light''s actions had led to the death of Soichiro. Matsuda succeeds in saving Near''s life by shooting Light''s hand, causing him to drop the pen that he was writing Near''s name with. Matsuda shoots him several more times to stop Light from writing Near''s name in his own blood. The enraged Matsuda nearly kills Light with a shot to the head, but he is stopped by the rest of the Japanese investigation team. !~  ~!As shown in the final chapter, Matsuda suspects that to help with Light''s capture, Near has used the Death Note to control Mikami''s actions before killing him, but Ide says that he has no proof and it may be a "wish" on his part, perhaps related to his thinking of Light as a friend.!~ ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('81', 'Rem', 'レム', 'https://s4.anilist.co/file/anilistcdn/character/large/n1905-9GfCvLFKNRLR.png', NULL, '79', 'SUPPORTING', 'Female', NULL, 'Rem is the Shinigami who first gives Misa her Death Note and Shinigami eyes. Similar to Ryuk, Rem possesses two Death Notes; she purposely gives a Death Note to Misa. Rem inherited her second Death Note from Jealous, another Shinigami who died when he saved Misa''s life, and thought it only right to pass it on to Misa. Rem inherits Jealous'' love for Misa as well and is prompt to defend Misa even at the cost of her life. She shows this when she openly shows her lack of trust for Light stating that if Misa dies before her time, Rem will kill Light. In the manga and anime, Rem tells Misa that she is actually a female Shinigami. In the second live-action film, this is not mentioned, leaving it ambiguous.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('9', 'Ymir', 'ユミル', 'https://s4.anilist.co/file/anilistcdn/character/large/b71479-huCD908XIdqv.png', NULL, '9', 'SUPPORTING', 'Female', NULL, '__Height:__ 172 cm (5''7")
__Affiliations:__ 104th Trainees Squad, Scouting Legion

Member of the Scouting Legion. She seems selfish, cynical, bossy, sly, uncooperative, exploitative, and confrontational, but she can apparently be kind, especially to Krista.
~!60 years prior to the story, Ymir was a nameless Eldian girl who lived in the streets of Marley as a beggar with no home. Eventually, she was found by a man who gave her the name "Ymir," after the ancestor, Ymir Fritz. He brought her into a group dedicated to the worship of Ymir. She was acclaimed by many Eldians in the group, and Ymir chose to abide by her new role in order to bring happiness to those around her despite knowing that she did not descend from royalty.!~ ~!When the group was eventually discovered by the Marleyan government, they were brought to Paradis island where they were all turned into pure titans.!~ ~!Ymir roamed the land for 60 years as a mindless titan before coming into contact with Reiner, Bertolt, Annie, and [Marcel Galliard, ](https://anilist.co/character/127683/Marcel-Galliard) the possessor of the Jaw Titan. Marcel sacrifices himself to save Reiner and is eaten by Ymir, who eventually turns back into human form.!~ ~!After keeping her secret for years within the walls, she eventually reveals herself to save Historia, along with the others, at Utgard Castle.!~ ~!She is later willingly taken back to Marley where she passes down the Jaw Titan to Marcel''s brother, [Porco Galliard. ](https://anilist.co/character/125662/Porco-Galliard)!~

(Source: Attack on Titan Wiki)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('10', 'Hugo', 'フーゴ', 'https://s4.anilist.co/file/anilistcdn/character/large/b84307-faKVhlw386q7.jpg', NULL, '10', 'SUPPORTING', 'Male', NULL, NULL);
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('11', 'Eren Yeager', 'エレン・イェーガー', 'https://s4.anilist.co/file/anilistcdn/character/large/b40882-dsj7IP943WFF.jpg', NULL, '11', 'MAIN', 'Male', '15-19', '__Height__: 170 cm (5''7") - 183 cm (6''0")

Eren is Shingeki no Kyojin''s protagonist. His foster sister, Mikasa, notes on numerous occasions that he acts on impulse without thinking things through, and she often pulls/carries/throws him when he starts fighting with others to protect him from himself. Along with Mikasa, he tends to spend his free time with their mutual friend, Armin.  His father is a doctor (who is well respected by Hannes and potentially many more) whilst his mother is a housewife.   ~!When Eren was a child, he saved Mikasa from being sold off when he visited her home with his father. Three men—killers of her parents—were in her house, and he killed two of them—one by slitting his throat and the other by charging at with a quickly assembled spear. Mikasa herself killed the third man after Eren urged her to fight whilst the man strangled Eren. After this, he gave Mikasa his scarf and Eren''s father adopted Mikasa into their family.  Later, when the colossal titan broke through Wall Maria the debris from this attack scattered and hurtled towards his home. He could only watch on as his mother—trapped under the rubble of their house—was eaten by a titan. This event lit the fire of revenge within Eren that he would kill every giant and not live a life cowering in fear.  Sometime after this—before the time skip that jumped a few years ahead, to when he became a soldier—his father injected him with something. It''s unknown what at this time but it turns out, because of the injection, Eren can utilize the ability to transform into a titan himself (which explains how his limbs were able to regenerate) with side effects of high fever and massive stamina drain.!~ ~!It is later revealed that Eren has both the Attack Titan and the Founding Titan.!~  ~!Eren later inherits the Warhammer Titan as well.!~ At the end of the series, ~!Eren is killed by Mikasa.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('12', 'Nick', 'ニック', 'https://s4.anilist.co/file/anilistcdn/character/large/n71453-IxgKWV5eR1pw.jpg', NULL, '12', 'SUPPORTING', NULL, NULL, 'Pastor Nick is a member of a religion that worships the Walls as holy.  He claims that he lost his family as a result of addiction to Vine.   As a religious leader, Pastor Nick used his influence to oppose any modification of the walls, be it permanently sealing the gates or even mounting cannons on the top. Though he claimed it was blasphemy for humans to "maim" the wall,  ~!the real reason was to reduce the risk of workers discovering the Titans within during renovations.!~ (Source: Shingeki no Kyojin Wikia)  Note: Minister Nick is the official English translation by Kodansha.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('13', 'Samuel Linke-Jackson ', 'サムエル・リンケ-ジャクソン', 'https://s4.anilist.co/file/anilistcdn/character/large/b84315-MwzNp8eSjg8v.png', NULL, '13', 'SUPPORTING', 'Male', NULL, 'Samuel is a member of the 104th Trainees Squad.  He appears in Ch. 3. When the Colossal Titan appears outside Trost District, the burst of steam from its body knocks a number of trainees off the Wall. While most are able to switch to their Three Dimensional Maneuver Gear and anchor themselves to the Wall, Samuel is struck in the head by a piece of falling rock and stunned. Sasha saves him from falling to his death by firing one of her grappling hooks into his leg. Eren tells Sasha to take Samuel somewhere safe, then instructs the other trainees to attack the Colossal Titan.

~!He is killed by Connie after being shot three times in the head.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('14', 'Carla Yeager', 'カルラ・イェーガー', 'https://s4.anilist.co/file/anilistcdn/character/large/n62475-CExspVnLfweu.png', NULL, '14', 'SUPPORTING', 'Female', NULL, 'Eren''s mother.   ~!She''s eaten alive in the second chapter.!~ Note: Carla Yeager is the official English translation by Kodansha.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('15', 'Dot Pixis', 'ドット・ピクシス', 'https://s4.anilist.co/file/anilistcdn/character/large/b62485-I0U5Cat3z65K.png', NULL, '15', 'SUPPORTING', 'Male', NULL, 'The highest-ranked Administrator of the Southern Region. Head of the Garrison''s Southern Territories, Pixis is a cunning leader with astute insights. However, he is also an alcoholic who is constantly watched over by his aide, Anka who constantly scolds him for sleeping and drinking during critical moments.

~!He sides with Armin and agrees to use Eren''s Titan ability to reseal the hole in Trost District, saving their lives as they are about to be executed by Kitz and the Garrison.!~
In manga chapter 119,
~!He is turned into a mindless titan by Zeke after drinking the Marleyan wine spiked with Zeke''s spinal fluid. As a titan, he is put out of his misery by Armin and killed with a thunder spear.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('16', 'Kitz Weilman', 'キッツ・ヴェールマン', 'https://s4.anilist.co/file/anilistcdn/character/large/b84325-RGWFyLMV6JZV.jpg', NULL, '16', 'SUPPORTING', 'Male', NULL, NULL);
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('17', 'Petra Ral', 'ペトラ・ラル', 'https://s4.anilist.co/file/anilistcdn/character/large/n62501-CfTtAAgs64nE.jpg', NULL, '17', 'SUPPORTING', NULL, NULL, '__Age:__ Unknown
__Height:__ 158 cm (5''2")
__Affiliations:__ Scouting Legion
__Stats:__ 10 Solo Kills, 48 Kills in a team

Petra Ral is a hand-picked soldier of the Scouting Legion by Levi Ackerman placed in the Special Operations Squad.

~!Died trying to fight the Female Type Titan.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('106', 'Suguru Getou', '夏油傑', 'https://s4.anilist.co/file/anilistcdn/character/large/b133699-FCnXaISgazAi.png', NULL, '103', 'SUPPORTING', 'Male', '27', '__Species:__ Human
__Height:__ 183 cm
__Occupation:__ Curse User
__Grade:__ Special Grade Curse User
__Cursed Technique:__ Cursed Spirit Manipulation

Suguru Getou is an antagonist in both the Jujutsu Kaisen series and its prequel Jujutsu Kaisen 0: Jujutsu High. 

~!He was originally a student of Masamichi Yaga''s alongside Satoru Gojo and Shoko Ieiri at Tokyo Jujutsu High. His experiences as a jujutsu sorcerer bred a deep hatred for non-sorcerers, leading to an incident where Suguru massacred over a hundred civilians in a single night, later being expelled from Jujutsu High and called for immediate execution as a result.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('107', 'Aoi Toudou', '東堂葵', 'https://s4.anilist.co/file/anilistcdn/character/large/b137975-6TH7PiLWJaqy.png', NULL, '104', 'SUPPORTING', 'Male', '18', '__Species:__ Human
__Height:__ 190 cm
__Occupation:__ Sorcerer, Student
__Affiliation:__ Kyoto Jujutsu Technical High School
__Grade:__ Grade 1 Sorcerer

Toudou is a third-year student at Kyoto Jujutsu Technical High School who possesses inhuman physical strength, durability, and speed. 

~!He is able to use a technique called Boogie Woogie, in which he can switch the position of two things that posses a certain amount of curse energy within his range.!~

~!During the Shibuya Incident, Todo had to sever his left hand to avoid being fully transfigured by Mahito, and severely damaged his right palm by slapping Mahito''s hand briefly to swap with Yuji which caused him to no longer be able to use his cursed technique!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('109', 'Mai Zenin', '禪院真依', 'https://s4.anilist.co/file/anilistcdn/character/large/b134168-FdWz5w2LqpeF.jpg', NULL, '5', 'SUPPORTING', 'Female', '16', '__Height:__ 170 cm (5''7")

Mai Zenin is the younger twin sister of [Maki Zenin](https://anilist.co/character/134167/Maki-Zenin). Mai is a grade 3 sorcerer and a second-year at Kyoto Jujutsu Technical High School. As a child, Mai always relied on Maki since she was afraid of Cursed Spirits. 

~!Because Mai and Maki are monozygotic twins, their strength is considerably limited to one another. Monozygotic twins are considered as a single individual in the Jujutsu world and are a sign of bad omen.!~

~!In chapter 149, Mai decides to sacrifice herself in order to make Maki stronger.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('110', 'Yoshinobu Gakuganji', '楽巌寺嘉伸', 'https://s4.anilist.co/file/anilistcdn/character/large/b157867-dHdd8ZECuzHx.png', NULL, '106', 'SUPPORTING', 'Male', '76', 'The principal of Kyoto Jujutsu Technical High School.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('118', 'Yuuta Okkotsu', '乙骨憂太', 'https://s4.anilist.co/file/anilistcdn/character/large/b129571-GHJk7gviHOOw.jpg', NULL, '114', 'MAIN', 'Male', '16-17', '__Species:__ Human
__Occupation:__ Sorcerer, Student
__Affiliation:__ Jujutsu High
__Grade:__ Special Grade Sorcerer

The main protagonist of Jujutsu Kaisen prequel series [Tokyo Metropolitan Curse Technical School](https://anilist.co/manga/105469/Tokyo-Toritsu-Jujutsu-Kodo-Senmon-Gakko). He was initially a Special Grade Cursed Victim haunted by his late childhood friend, Rika Orimoto. [Satoru Gojou](https://anilist.co/character/127691/Satoru-Gojou) mentored Yuuta and enrolled him at Tokyo Jujutsu High.

Yuuta is currently studying overseas.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('108', 'Kasumi Miwa', '三輪霞', 'https://s4.anilist.co/file/anilistcdn/character/large/b156848-Rf0tuoQCNyZV.png', NULL, '105', 'SUPPORTING', 'Female', '17', '__Species:__ Human
__Occupation:__ Jujutsu Sorcerer, Student
__Affiliation:__ Kyoto Metropolitan Curse Technical College
__Grade:__ Grade 3 Sorcerer

A second-year at Kyoto Metropolitan Curse Technical College. Kasumi is a hard-working, restrained, and considerate pacifist. She is also a big fan of [Satoru Gojo](https://anilist.co/character/127691).

~!She has a very close bond with Mechamaru, their friendship is first seen in the Tournament Arc when Miwa offers him a battery telling him not to eat it as Mai and Momo laugh in the background. In the Shibuya Arc, she is seen mourning his death on the train. Over the course of the Tournament Arc and Shibuya Arc it is very apparent their friendship grows as they both strived towards becoming closer to one another. As she mourns his death on the train she holds a mini Mechamaru speaker which tells her to find her happiness. After the recording finishes, she holds the speaker to her heart and cries. The entire Kyoto program seems very distressed by his death on the train. When later entering the battle Miwa is quick to activate her technique out of rage and sadness towards Mahito.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('119', 'Rika Orimoto', '祈本里香', 'https://s4.anilist.co/file/anilistcdn/character/large/b208533-EXiA1hR5l585.jpg', NULL, '115', 'SUPPORTING', 'Female', NULL, 'Rika Orimoto is the childhood friend of Yuta Okkotsu who tragically died when she was hit by a car. Her spirit was cursed, transforming her into a powerful Special Grade Vengeful Cursed Spirit worthy of the moniker "Queen of Curses".');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('120', 'Nanako Hasaba', '枷場菜々子', 'https://s4.anilist.co/file/anilistcdn/character/large/b228987-Su63YTP33b6W.jpg', NULL, '116', 'SUPPORTING', 'Female', '15', 'Nanako Hasaba is a character in Jujutsu Kaisen and Jujutsu Kaisen 0: Jujutsu High. She is [Mimiko](https://anilist.co/character/228986/Mimiko-Hasaba)''s twin sister and they were both allies of Suguru Geto.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('121', 'Mimiko Hasaba', '枷場美々子', 'https://s4.anilist.co/file/anilistcdn/character/large/b228986-TXJuABOhrxRA.jpg', NULL, '117', 'SUPPORTING', 'Female', '15', 'Mimiko Hasaba is a character in Jujutsu Kaisen and Jujutsu Kaisen 0: Jujutsu High. She is an ally of Suguru Geto.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('32', 'Zeke', 'ジーク', 'https://s4.anilist.co/file/anilistcdn/character/large/b125661-FiqFvAtNlL0v.png', NULL, '32', 'SUPPORTING', 'Male', '25-29', '__Height__: 183 cm
__Position__: ~!Marley''s Warchief!~

~!Zeke is the current inheritor of the Beast Titan, and is considered by Reiner Braun to be the strongest Warrior, contrasting Levi Ackerman''s title of "humanity''s strongest soldier".!~

~!Zeke is the war chief of Marley''s Warriors, assigned to take the Founding Titan from inside the Walls.!~

~!He is the son of Grisha and Dina Yeager, the older half-brother of Eren Yeager, and a member of the royal family from his mother''s side. He is revealed to have turned in his parents to the Marleyan Authorities to protect himself and his grandparents.!~ 

~!After betraying Marley, he returns to Paradis island as an ally, but in reality, he plans to euthanize the entire Eldian race to put an end to their suffering. He almost achieves his goal when he finally enters the realm of the Coordinate and meets the founder, Ymir Fritz, but is stopped by Eren, who uses Ymir''s power for his own goal.!~

~!After Ymir Fritz free''s both Armin and Zeke, he appears on the collarbone of the Founding Titan. With one wave to Levi, he is killed in an instant by his arch-enemy.!~ ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('33', 'Anka Rheinberger', 'アンカ・ラインベルガー', 'https://s4.anilist.co/file/anilistcdn/character/large/b84331-9r0TU5kEFitO.png', NULL, '33', 'SUPPORTING', NULL, NULL, NULL);
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('34', 'Nanaba', 'ナナバ', 'https://s4.anilist.co/file/anilistcdn/character/large/b71481-q2pfKJRFiNUE.png', NULL, '34', 'SUPPORTING', 'Female', NULL, '__Height__: 172 cm
__Affiliation__: Scouting Legion Survey Corps');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('35', 'Rene', 'リーネ', 'https://s4.anilist.co/file/anilistcdn/character/large/n75514-kho5WgnvUWWV.jpg', NULL, '35', 'SUPPORTING', 'Female', NULL, 'Member of Scouting Legion that fought the Castle Utgard''s battle.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('36', 'Gelgar', 'ゲルガー', 'https://s4.anilist.co/file/anilistcdn/character/large/n72511-jDEdtgvMh5wM.jpg', NULL, '36', 'SUPPORTING', 'Male', NULL, 'Member of Scouting Legion. Has an undying love for alcohol.

(Source: Attack on Titan Wiki)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('37', 'Henning', 'ヘニング', 'https://s4.anilist.co/file/anilistcdn/character/large/n75512-n4YFjhinWoyj.jpg', NULL, '37', 'SUPPORTING', 'Male', NULL, 'Member of Scouting Legion that fought the Castle Utgard''s battle.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('38', 'Marco Bott', 'マルコ・ボット', 'https://s4.anilist.co/file/anilistcdn/character/large/b62479-mYcTkU1RXymL.jpg', NULL, '38', 'SUPPORTING', 'Male', '16', '__Height__: 178 cm (5''9")
__Affiliations__: 104th Training Corps

Originally from Jinae District. Marco ranked 7th in the 104th Training Corps and is widely respected by other cadets of the 104th. Marco is a very kind, calm, and idealistic person, valuing the good of the group above his own interests, as well as understanding and coping with his own shortcomings and limitations. He is seen as a natural leader, and desires to join the Military Police to serve near the King. 

*Note: Marco Bott is the official English translation by Kodansha.*');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('39', 'Rico Brzenska', 'リコ・ブレツェンスカ', 'https://s4.anilist.co/file/anilistcdn/character/large/b84707-b43XdPG1SCRK.jpg', NULL, '39', 'SUPPORTING', NULL, NULL, 'The Squad Leader of the 1st Division Elite Force of the Stationary Guard.    ~!She is the sole survivor of the elite squads assigned to protect Eren during the liberation of Trost District. She does not trust Eren and still views him as a traitor.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('40', 'Oluo Bozard', 'オルオ・ボザド', 'https://s4.anilist.co/file/anilistcdn/character/large/b71687-jd78w4orXonI.png', NULL, '40', 'SUPPORTING', 'Male', NULL, 'Member of the Scouting Legion. One of Levi''''s team. He is always biting his own tongue when talks about riding a horse.   Stats: 39 Solo Kills  9 Kills in a team    __ _Note:___Oluo is the official English translation by Kodansha.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('41', 'Moses no Haha', 'モーゼスの母', 'https://s4.anilist.co/file/anilistcdn/character/large/n84311-iVwsDOzTSyvJ.png', NULL, '41', 'SUPPORTING', NULL, NULL, NULL);
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('85', 'Quillsh Wammy', 'キルシュワイミー', 'https://s4.anilist.co/file/anilistcdn/character/large/n2179-qF49l5qEurt5.png', NULL, '83', 'SUPPORTING', 'Male', NULL, 'Watari is L''s assistant, providing logistics to the investigation team. Before the team is formed, he is the only person who has seen L, and the only one capable of contacting L directly. Like L, he represents himself with an Old English "W" on computer screens. He is also a fatherly figure to L. On the surface he is Quillsh Wammy, a famous inventor and founder of Wammy''s House, an orphanage for gifted children in Winchester, England. Watari is well trained in espionage and marksmanship.<br>
~!Rem kills Watari, along with L, in order to protect Misa. At the end of the manga, Roger Ruvie, the manager of Wammy House, becomes the new Watari for the third L, Near. !~
');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('82', 'Takuo Shibuimaru', '渋井丸拓男', 'https://s4.anilist.co/file/anilistcdn/character/large/n46237-vSB4bDQ7uajY.png', NULL, '80', 'SUPPORTING', 'Male', NULL, 'Takuo Shibuimaru is the second person that Light kills using his Death Note. Shibuimaru rides a motorcycle and travels with a group of bikers, and starts annoying a woman in the street. After Light hears his name and sees him chasing this woman, Light writes his name down in all variations possibles to write his name, and uses a condition, a death by traffic accident. A truck slams into Shibuimaru''s motorcycle, killing him. In the manga, Shibuimaru and his group harass the woman, while in the anime him and his group try to sexually assault her. In the manga Light feels some guilt since Shibuimaru is not a criminal.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('83', 'Tierry Morello', 'ティエリ・モレロ', 'https://s4.anilist.co/file/anilistcdn/character/large/n1932-eeWL3KSOTlVx.jpg', NULL, '81', 'SUPPORTING', 'Male', NULL, 'A professional con-man, Aiber is hired by L for his skills. He was proven helpful in playing the role of Eraldo Coil in the Yotsuba Arc, and in coaching Misa for her interview with the Yotsuba group. He died from liver cancer on 7 April, 2005. Aiber is also known by his initial &quot;A&quot;, just like &quot;L&quot; and other people who have great influence in the organization that hunts down Kira.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('61', 'Dennis Aiblinger', 'デニス・アイブリンガー', 'https://s4.anilist.co/file/anilistcdn/character/large/b130657-66AtdJLhzfSk.png', NULL, '61', 'SUPPORTING', NULL, NULL, 'Military Police Officer stationed in the Stohess District.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('62', 'Kagami Otoko', '鏡男', 'https://s4.anilist.co/file/anilistcdn/character/large/n131459-F7t4fYXCBirY.png', NULL, '62', 'SUPPORTING', NULL, NULL, 'A hypnotist of Shiganshina District who appears in Mikasa Ackermann''s experience in another life');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('84', 'Souichirou Yagami', '夜神総一郎', 'https://s4.anilist.co/file/anilistcdn/character/large/b1927-iaIWrFITyeJw.jpg', NULL, '82', 'SUPPORTING', 'Male', '48', 'Souichirou Yagami is Light''s father and the leader of the remains of his investigation team under L''s command. He is a kind man with a strong sense of justice. He cares greatly for his family and the members of the Japanese Task Force. He is a serious and responsible man that gains the respect of many. He has a strong sense of duty, and even after the police stop funding the Kira investigation he continues trying to solve the case with the Task Force. Soichiro was responsible for successfully retrieving tape recordings of the Second Kira from Kyosuke. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('86', 'Reiji Namikawa', '奈南川零司', 'https://s4.anilist.co/file/anilistcdn/character/large/n1929-TYRt1UCHOS33.png', NULL, '84', 'SUPPORTING', 'Male', '30', 'Namikawa is the Vice President of Sales. He initially encourages the Yotsuba Kira.   ~!After receiving a telephone call from Light he ceases participation and observes the scenario.!~  How to Read describes him as the &quot;most talented&quot; of the board members who has the potential to &quot;make it to the top&quot; without Kira. He has a talent in shogi at the professional 4-dan level. How to Read 13 states that he detests useless subordinates.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('26', 'Bertolt Hoover', 'ベルトルト・フーバー', 'https://s4.anilist.co/file/anilistcdn/character/large/b46488-wm6HvkdkHoZu.jpg', NULL, '26', 'SUPPORTING', 'Male', '16', '__Height__: 192 cm (6''3")  
__Affiliations__: Scouting Legion  
__Graduation Rank__: 3rd  

Originally he joined the military with aspirations of joining the Military Police and living in the safety of the inner wall.  After seeing Eren''s determination and desire to join the Scouting Legion, he considered himself a coward for wanting to get far away from them. Eventually he graduated in the top ten of his class coming in at third place, and joined the Scouting Legion.   ~!Later it is revealed that he is the Colossal Titan who broke through Wall Maria and infiltrated the walls as a spy.!~ 
~!He was later eaten by Armin, the current possessor of the Colossal Titan.!~ 

Note: Bertolt Hoover is the official English translation by Kodansha.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('27', 'Krista Lenz', 'クリスタ・レンズ', 'https://s4.anilist.co/file/anilistcdn/character/large/b62481-ZZDa7vn17lMU.png', NULL, '27', 'SUPPORTING', 'Female', '15; 19', '__Height__: 145 cm (4''8")
__Affiliations__: 104th Trainees Squad, Scouting Legion
__Graduation Rank__: 10th

Ranked tenth in the trainee class. She is good friends with Ymir.   

~!She''s the illegitimate daughter of Rod Reiss, the true ruler within the walls. After the uprising, she takes her rightful place as the Queen and reveals her true name to be Historia Reiss.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('28', 'Nifa', 'ニファ', 'https://s4.anilist.co/file/anilistcdn/character/large/126849-jH0gw54UpbDQ.jpg', NULL, '28', 'SUPPORTING', NULL, NULL, 'Nifa is a member of the Scout Regiment fourth squad, under the command of Hange Zoë.

(Source: Shingenki no Kyojin Wikia)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('29', 'Mike Zacharias', 'マイク・ザカリアス', 'https://s4.anilist.co/file/anilistcdn/character/large/71119.jpg', NULL, '29', 'SUPPORTING', 'Male', NULL, 'Squad Leader. Sniffing people is his habit. Described as "humanity''s second strongest soldier after Levi," Mike is an extremely strong and durable soldier who believes the fight isn''t over until you stop fighting.

~!After killing multiple titans completely by himself, Mike is trapped by the Beast Titan when it throws his horse at him. The Beast Titan then steals his maneuvering gear, leaving him to be eaten alive by titans.!~

Note: Mike Zacharias is the official English translation by Kodansha.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('30', 'Hitch Dreyse', 'ヒッチ・ドリス', 'https://s4.anilist.co/file/anilistcdn/character/large/b86017-m6vXFRKWMwUo.jpg', NULL, '30', 'SUPPORTING', 'Female', NULL, '**Height:** 168 cm

Member of the Military Police stationed in Stohess District.

Hitch acts immature in certain ways, she has a sarcastic, easygoing personality and seems to mischievously enjoy teasing and needling her fellow officers. She claims she chose to join the Military Police out of laziness, as it is well known that the senior staff are incredibly corrupt and she wanted to benefit from the system herself; however, she did not take into account that, as a new recruit, her superiors would dump all their work on her.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('31', 'Marlo Freudenberg', 'マルロ・フロイデンベルク', 'https://s4.anilist.co/file/anilistcdn/character/large/b71457-7H5bMZezo4ze.png', NULL, '31', 'SUPPORTING', 'Male', NULL, 'Member of the Military Police and a rookie that works with Annie Leonhart.

~!He is killed during Erwin''s suicide charge against the Beast Titan.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('111', 'Masamichi Yaga', '夜蛾正道', 'https://s4.anilist.co/file/anilistcdn/character/large/b189237-ZxNJwVPL8DvW.png', NULL, '107', 'SUPPORTING', 'Male', '47', 'He is the current principal of Tokyo Metropolitan Jujutsu Technical High School, the creator of Panda, and the headmaster of Satoru Gojo, Suguru Geto and Shoko Ieiri.

~!After the Shibuya incident Yaga is given a death penalty by the higher ups for inciting Gojo and Geto in the past and "causing the Shibuya incident".!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('112', 'Shouko Ieiri', '家入硝子', 'https://s4.anilist.co/file/anilistcdn/character/large/b158154-UCqbiULli62P.png', NULL, '108', 'SUPPORTING', 'Female', '28-', '__Species:__ Human
__Height:__ 168 cm
__Occupation:__ Doctor
__Ability:__ Reverse Healing Cursed Technique
__Hobby:__ Drinking Alcohol

Alumnus of Tokyo Jujutsu High, having been classmates with [Satoru Gojo](https://anilist.co/character/127691) and [Suguru Geto](https://anilist.co/character/133699). After graduating into a full-fledged jujutsu sorcerer, Shoko became the school''s primary doctor. 

');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('113', 'Kiyotaka Ijichi', '伊地知潔高', 'https://s4.anilist.co/file/anilistcdn/character/large/b189238-ItSLams6lRk9.png', NULL, '109', 'SUPPORTING', 'Male', '27', 'An assistant manager at Tokyo Prefectural Jujutsu High School.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('114', 'Junpei  Yoshino', '吉野順平', 'https://s4.anilist.co/file/anilistcdn/character/large/b157214-ROBNoXVEXRNy.jpg', NULL, '110', 'SUPPORTING', 'Male', '17', 'A student at Satozakura High School.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('64', 'Teru Mikami', '魅上照', 'https://s4.anilist.co/file/anilistcdn/character/large/n1904-xKw2NgiE6VbU.jpg', NULL, '64', 'SUPPORTING', 'Male', '27', '__Height:__ 175 cm (5''9")

A young man with a strong feeling for justice, and who worships Kira and refers to him as "God". He is prepared to help Kira by any means, even if it means sacrificing his own life.

Mikami works as a lawyer, and was bullied for standing up for what is right when he was younger in school. He was an excellent student and did well academically. He became a prosecuting agent to impose the punishment that criminals deserved.  Mikami lives alone and likes to work out consistently, even on New Year''s Day. He''s maniacally rigorous and punctual, and overall he''s a talented and intelligent person who has the tendency to act in a way that is described as "Kira-like". 

~!In the anime, he kills himself after failing to kill the remaining members of the SPK and the Japanese Task Force.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('115', 'Tsumiki Fushiguro', '伏黒津美紀', 'https://s4.anilist.co/file/anilistcdn/character/large/b193479-aGNRmbU5jNwR.png', NULL, '111', 'BACKGROUND', 'Female', NULL, '~! Megumi''s older sister.!~

~! Tsumiki was unknowingly chosen by Kenjaku to be a participant of the Culling Game and made into the incarnated host of Yorozu !~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('116', 'Wasuke Itadori', '虎杖倭助', 'https://s4.anilist.co/file/anilistcdn/character/large/b194074-SnbrUkHIyM62.png', NULL, '112', 'SUPPORTING', 'Male', NULL, 'Yuji''s Grandfather is shown to be a selfless, caring man who taught Yuji to help others. He was also short tempered and stubborn, to the point he would yell at Yuji for visiting him every day and buying him flowers. This temper meant that nobody else wanted to visit him and he tells his grandson to avoid dying alone.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('117', 'Nobuko Takada', '高田延子', 'https://s4.anilist.co/file/anilistcdn/character/large/b197119-Z2EBJXGTATzN.png', NULL, '113', 'SUPPORTING', 'Female', NULL, '__Height:__ 180 cm

Aoi Toudou''s favorite idol.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('89', 'Naomi Misora', '南空ナオミ', 'https://s4.anilist.co/file/anilistcdn/character/large/n4959-8zrHihQQOYCO.jpg', NULL, '87', 'SUPPORTING', 'Female', '28', 'Naomi is a former FBI agent who is engaged to Raye Penber. After Raye''s death, she decides to search for his killer.  Misora joined the FBI in September 2001. She became a special agent with a speed unusual for a female employee. Misora arrested the perpetrator of the &quot;Los Angeles BB Serial Murder Case&quot; on August 22, 2002. Misora left the FBI in October 2003 and became the fianc&eacute;e of Penber. Misora and Penber plan to marry, move to the United States, and raise a family.  Prior to Penber''s death, he tells Misora in his hotel room that the two went to Japan to meet Misora''s parents and that she should not involve herself too much in Penber''s investigation; Penber is concerned about Misora''s well-being. She suspects that Kira was the last suspect Raye had followed and believes that Kira can kill people with methods other than heart attacks. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('90', 'Kyosuke Higuchi', '火口卿介', 'https://s4.anilist.co/file/anilistcdn/character/large/n1928-u4ybFpwCKqg2.png', NULL, '88', 'SUPPORTING', 'Male', NULL, ' ~!Kyosuke Higuchi is the third Kira, receiving the Death Note from Rem, who was instructed to give it to a "greedy", "forceful", and "selfish" individual who would use the Death Note to attain a higher status that was out of his reach. He was the head of Technology Development at the Yotsuba Corporation, and is part of the Yotsuba Group, eight members of the Yotsuba Corporation that use the Death Note to kill individuals from competing companies to dominate the business industry.!~  ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('91', 'Anthony Carter', 'アンソニー・カーター', 'https://s4.anilist.co/file/anilistcdn/character/large/n23514-xhkKhgd0S5RJ.png', NULL, '89', 'SUPPORTING', 'Male', NULL, 'Anthony Lester, real name Anthony Carter, is the ancient Captain of a special force squad, and is now the SPK&#039;s number 2 and its operation leader. In more of handling urgent matters, he always assists Near. He is an extremely honest person who has Near&#039;s complete trust, this one revealing some of his thought and plans to Lester only. Lester also helps Near with actions he is not used to doing, such as booking a flight on a plane..    He is often called &quot;Commander Lester&quot;, and he is unable to match Near&#039;s in intelligence and analytic skill despite being very intelligent. Nevertheless, being trustworthy, athletic, and a quiet person make him very useful to assist Near. How to Read states that he can be seen as Near&#039;s guardian. He&#039;s also the only member of the SPK that Near is sure has never been seen by Kira.    The one shot happening after the main series reveals he continues to work with Near, the new L, and Halle Lidner. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('42', 'Mikasa no Chichi', 'ミカサの父', 'https://s4.anilist.co/file/anilistcdn/character/large/n84339-O2BcKvQoHT94.jpg', NULL, '42', 'SUPPORTING', 'Male', NULL, 'He and his family lived in a forest within the Shiganshina District.
He seemed to be a lighthearted but hard working man. When asked by Mikasa how babies were made, he jokingly claimed he did not know and suggested she ask Dr. Jaeger when he arrives.
~!It is hinted that Mikasa''s father, or a close relative of his, was driven into poverty due to their business failing. As such, Mikasa''s father and his family lived in the woods within the Shiganshina District to avoid persecution from the government!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('43', 'Mina Carolina', 'ミーナ・カロライナ', 'https://s4.anilist.co/file/anilistcdn/character/large/b83181-EiVdjFn702Mc.png', NULL, '43', 'SUPPORTING', 'Female', NULL, 'Mina appears in Ch. 3. When the Colossal Titan appears outside Trost District, the burst of steam from its body knocks a number of trainees off the Wall. She follows when Eren instructs the other trainees to attack the Colossal Titan. After the second attack of the Colossal Titan, she was assigned to the middle guard along with Eren Yeager and Armin Arlert. Initially tasked with working under the training corps, they eventually were incorporated into the front guard due to the number of titans. Catching the group unaware, a titan lunged at the roof top they were standing on.   When Eren was talking about how killing titans that got in Trost District will get their rank up high, she joined him indicating that she is also signing up for Scouting Legion.   ~! After Eren''s leg got bitten off by one of the titans, She and the other two tries to kill the titan that is responible for biting off Eren''s leg. However, her Three Dimensional Maneuver Gear''s wire was caught by titan''s hand and was knocked over to the wall. When she found out where she was, it was too late for her to escape. She was caught by another titan and her face got bitten off.  !~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('44', 'Kenny Ackerman', 'ケニー・アッカーマン', 'https://s4.anilist.co/file/anilistcdn/character/large/127443-aVMXGOchpsvj.png', NULL, '44', 'SUPPORTING', 'Male', NULL, 'Captain Kenny Ackerman was a member of the Military Police Brigade''s First Interior Squad and also the anti-personnel control squad. He was responsible for the murder of Historia''s mother, Alma. 

In the decades prior to the events of the story, Kenny was an infamous serial killer that stalked victims in the Capitol. His preferred method of killing was to slit the throats of his victims which earned him his infamous handle "Kenny the Ripper", and it was rumoured that he murdered over 100 members of the Military Police Brigade. However decades later his killings ceased and the terror that he once inspired dwindled into an Urban Legend. Kenny trained a young Levi, though they parted ways. Kenny became a member of the 1st Brigade due to Rod''s brother taking an interest in him.


~!It is revealed that Kenny''s younger sister Kuchel gave birth to Levi, making Kenny Levi''s uncle.!~

(Source: MAL)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('45', 'Floch Forster', 'フロック・フォルスター', 'https://s4.anilist.co/file/anilistcdn/character/large/b127703-qNIccR0yPZKu.png', NULL, '45', 'SUPPORTING', 'Male', NULL, 'Floch is a new recruit in the Survey Corps. He joined the Survey Corps during the two months between the attack at Orvud District and the return to Shiganshina District.

~!After the rest of the Yeagerists are killed during the port battle, Floch hides on the ship to Marley. After shooting holes in the fuel tank of the flying boat, Floch is ultimately killed by Mikasa.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('46', 'Eld Gin', 'エルド・ジン', 'https://s4.anilist.co/file/anilistcdn/character/large/b71689-AkkBVdgOWjFU.png', NULL, '46', 'SUPPORTING', 'Male', NULL, '__Stats:__ 14 Solo Kills  / 32 Kills in a team 

Member of the Scouting Legion and one of Levi''s team. 
');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('47', 'Furlan Church', 'ファーラン・チャーチ', 'https://s4.anilist.co/file/anilistcdn/character/large/n87928-Dfg1T9uJBZ4s.jpg', NULL, '47', 'MAIN', NULL, NULL, 'Furlan Church is one of Levi''s companions, the other being Isabel Magnolia. He''s a young man with light colored hair and a strong build. His bangs hang over his forehead, between his eyes.

He was threatened by the Survey Corps in order to force Levi join Erwin''s divison. He''s a very talented 3DMG user, but how he learned to use it and how his group got the equipment is still unknown. Furlan appears to be the person of the trio who keeps things calm and steady. He knows when to give up, though can also be defiant. Levi respects Furlan''s opinion, and Furlan in turn has respect for Levi.

 ~!With Levi joining the Survey Corps, he and Isabel also joined the Corps, only to be killed during the expedition.!~

(Source: Shingeki no Kyojin Wikia)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('48', 'Isabel Magnolia', 'イザベル・マグノリア', 'https://s4.anilist.co/file/anilistcdn/character/large/n87929-FobmgcjvYLJI.jpg', NULL, '48', 'MAIN', NULL, NULL, 'Isabel Magnolia is one of Levi''s companions, the other being Farlan Church. She, Levi and Farlan get caught by the Survey Corps Squad Leaders Erwin Smith and Mike Zacharius. She was threatened by the Survey Corps in order to force Levi join Erwin''s divison. She''s a very talented 3DMG user, but how she learned to use it and how did her group get the equipment is still unkwnown.

Isabel is an energetic character who''s confident in her abilities. She handles the manuever gear well and calmly. She also has a defiant streak, shown when she keeps struggling against the soldier who captured her. She also cares for her friends, sacrificing information to save Levi from getting hurt more.

 ~!
With Levi joining the Survey Corps, she and Farlan too joined the Corps, only to be killed during the expedition.
!~

(Source: shingekinokyojin.wikia)
');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('49', 'Moblit Berner', 'モブリット・バーナー', 'https://s4.anilist.co/file/anilistcdn/character/large/n127573-VSYSvQ1VK1c7.jpg', NULL, '49', 'SUPPORTING', 'Male', NULL, 'He is a member of the Survey Corps and Hanji Zoe''s second-in-command within the Survey Corps fourth squad. He also serves as Hanji''s assistant.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('50', 'Flagon', 'フラゴン', 'https://s4.anilist.co/file/anilistcdn/character/large/n131213-CkQZP1C7OFw5.png', NULL, '50', 'SUPPORTING', NULL, NULL, 'A member of the Scout Regiment and a section commander at the time Levi, Furlan Church, and Isabel Magnolia joined the Military. He disliked the idea of allowing the trio of former thugs to join the Scout Regiment, especially because they were assigned to his squad and were from the Underground city.<br></br>(Source: Attack on Titan Wiki)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('51', 'Nicholas Lovof', 'ニコラス・ロヴォフ', 'https://s4.anilist.co/file/anilistcdn/character/large/n131214-H4OCleYZYXbM.png', NULL, '51', 'SUPPORTING', NULL, NULL, 'An anti-scouting mission faction leader and close associate of the Lang Company. <br></br>(Source: Attack on Titan Wiki)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('52', 'Yan', 'ヤン', 'https://s4.anilist.co/file/anilistcdn/character/large/b137155-iyCqg8hDghuM.png', NULL, '52', 'SUPPORTING', NULL, NULL, 'He is an Underground companion of Levi, Furlan Church, and Isabel Magnolia.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('20', 'Armin no Ojii-san', 'アルミンのお祖父さん', 'https://s4.anilist.co/file/anilistcdn/character/large/b84313-kYfb2g4OR7je.jpg', NULL, '20', 'SUPPORTING', 'Male', NULL, 'The paternal grandfather of Armin Arlert. Before the fall of Wall Maria, He possessed a book containing illegal information about the world beyond the Walls. He gave this book to his grandson, Armin Arlert, who showed it to his best friend Eren, kindling his desire to see the outside world');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('21', 'Reiner Braun', 'ライナー・ブラウン', 'https://s4.anilist.co/file/anilistcdn/character/large/b46484-P6A2GjNQn49F.png', NULL, '21', 'SUPPORTING', 'Male', '17-21', '__Height__: 185 cm (6''1")

Strong willed, with a solid constitution. Most adept at gaining the trust of his comrades. Ranked no 2 of the trainee class. Helps Eren out during his training days.   ~!Later in the story he is revealed as the Armored Titan.!~ 
*Note: Reiner Braun is the official English translation by Kodansha.*');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('18', 'Mikasa Ackerman', 'ミカサ・アッカーマン', 'https://s4.anilist.co/file/anilistcdn/character/large/b40881-F3gr1PkreDvj.png', NULL, '18', 'MAIN', 'Female', '15-19', '__Height:__ 170 cm (5''7") - 176 cm (5''9½")
__Position:__ 104th Training Corps, Scouting Legion
__Graduation Rank:__ 1st

Mikasa is Eren''s foster sister and mutual childhood friend of Armin. Mikasa shares an unbreakable bond with Eren following events in their past and rushes to protect him whenever he is in danger. Mikasa possesses the impressive fighting skill and strength even as a child.

As a teen, Mikasa is considered a genius among all the army trainees and is incredibly skilled at combat and agility. She constantly worries for Eren''s well-being and lives to protect him.

~!When she was young, her parents were killed and she was kidnapped. When Eren found out where she was being held, he outwitted and killed two of the kidnappers, but a third overpowered him and tried to strangle him. Eren desperately urged Mikasa to fight and win, and when she realized that the world could be heartless and merciless, she managed to kill the kidnapper from behind. Later, Eren gave her his scarf, which she constantly wears.!~

');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('19', 'Annie Leonhart', 'アニ・レオンハート', 'https://s4.anilist.co/file/anilistcdn/character/large/b46490-tan274Ifc1Jf.jpg', NULL, '19', 'SUPPORTING', 'Female', '16-20', '__Height__: 153 cm (5")  
__Affiliations__: 104th Trainees Squad, Military Police  
__Graduation Rank__: 4th

A stoic girl, her father trained her in hand to hand combat. She''s a solitary type, and solidarity doesn''t come to her easily.   ~!She is revealed to be the female titan who killed most of the Scouting Legion members and also killed the 2 titans Hanji was researching. She was also aiming to kidnap Eren and bring him ''somewhere''. Later on Mikasa managed to stop her from running away, and when people tried to bring her out of her titan form, reminded of her father, she wrapped herself inside a hard crystal which made it unable to get any information from her.!~ Note: Annie Leonhart is the official English translation by Kodansha.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('24', 'Keith Shadis', 'キース・シャーディス', 'https://s4.anilist.co/file/anilistcdn/character/large/n84305-15nngV5nTUp6.png', NULL, '24', 'SUPPORTING', 'Male', NULL, 'Keith Shadis was the head instructor of the 104th Trainees Squad. He seemed to be a friend or have some sort of relationship with Dr. Grisha, as he knew Eren is the son of the doctor and praised Eren for his effort. 

~!He sacrifices himself by blowing up the Marleyan ship to prevent the Yeagerists from catching the allies!~
');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('25', 'Bart', 'バルト', 'https://s4.anilist.co/file/anilistcdn/character/large/b84327-Wg2P1FSDecGc.jpg', NULL, '25', 'SUPPORTING', NULL, NULL, 'Original anime character. He is a Noble in the District of Marquis and friend of Pixis, who challenges him to leisurely games of chess. In the anime, as Pixis makes to leave upon learning of the invasion of Trost in the year 850, he tries to prevent him from going to the battlefield and instead have Pixis and his men stay and protect him and his property, viewing the lowly commoners being attacked as trash.  

(Source: Wikipedia)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('22', 'Grisha Yeager', 'グリシャ・イェーガー', 'https://s4.anilist.co/file/anilistcdn/character/large/b62477-3AHBGul9bXK8.jpg', NULL, '22', 'SUPPORTING', 'Male', '39', 'Father of Eren. He is a renowned doctor who was well respected in the District of Shiganshina after he saved the village from a mysterious viral epidemic by developing vaccines. He also provides a medical house call service to the people of Shiganshina and to various towns in addition to having a network of contacts within the Corps of the Shiganshina District.  <br>
 ~!In the basement of the Yeager family house he hides a secret which he refers to as the "truth" and upon meeting Eren after the fall of the Wall Maria in the year 845, injects him with a series of chemicals and amnesiacs and entrusts him with the key to the "truth", before disappearing.!~  ~!Inherited the Founding Titan from Frieda Reiss by turning into a Titan and eating her. He then kills every member of the Reiss family except Rod Reiss, who escapes.!~  ~!Grisha was an Eldian restorationist living in a Marleyan internment zone with his first wife of royal blood, [Dina Fritz. ](https://anilist.co/character/133215/Dina-Fritz) He and his wife Dina had a child named Zeke, who Grisha forces into the warrior candidate program to attempt to turn into a titan, to fight alongside the Eldian restorationists. Grisha was shown as an abusive father towards his son, prompting Zeke to betray his parents and the restorationists, revealing them to the Marleyan government. Once all the other Eldian restorationists, including Dina, are turned into Titans on the island of Paradis, Grisha alone is saved by the Owl.!~ 
~!Inherited the Attack Titan from The Owl, [Eren Krueger. ](https://anilist.co/character/131440/Eren-Krueger) He uses this power to escape into Wall Maria where he starts a new life.!~ ~!After the fall of Wall Maria, he entrusts his son Eren with the key to the drawer of his secrets that include information about the outside world. Grisha then injects Eren with titan serum and allows himself to get eaten so he can pass down his Titans and memories to his son.!~

~!It is later revealed that Eren, while in the paths, directed Grisha to kill the Reiss family.!~

Note: Grisha Yeager is the official English translation by Kodansha.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('23', 'Gustav', 'グスタフ', 'https://s4.anilist.co/file/anilistcdn/character/large/b84329-vLIxfAIYGPug.png', NULL, '23', 'SUPPORTING', NULL, NULL, NULL);
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('63', 'Misa Amane', '弥海砂', 'https://s4.anilist.co/file/anilistcdn/character/large/b835-CiZa8y2z2gCz.png', NULL, '63', 'MAIN', 'Female', NULL, '__Born in:__ Kyoto, Japan
__Height:__ 152 cm (4 ft 11 in)

Misa is a famous model, singer and actress and has an immense crush on Light Yagami. She usually refers to herself in the third person by calling herself "Misa-Misa" and tends to be hyperactive. She poses as the second Kira to attract the attention of the first Kira.   

~!She decides to devote her life to Light because he punished the criminal that killed her parents when she was younger; a burglar killed Misa''s parents in front of her eyes. Misa, unable to forgive the killer and wanting to kill the burglar herself, saw multiple delays in the killer''s trial before Kira killed him. The Shinigami who follows her is Rem. Misa also performs two eye trades, cutting her lifespan in half twice; the first was with Rem, and the second with Ryuk. !~  

~!According to How to Read 13, Misa falls into despair after learning of Light''s death through Matsuda. Misa commits suicide one year later on February 14, 2011. It is also revealed that the cloaked woman who appears at the end of the manga is not Misa, but simply a follower of Kira.  At the anime''s finale, Misa''s suicide is neither mentioned nor seen. At the final credits, she is seen standing at the edge of a rooftop, with a sad face looking at the horizon.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('65', 'Shuuichi Aizawa', '相沢周市', 'https://s4.anilist.co/file/anilistcdn/character/large/n3767-pSbmazo2I7ZD.png', NULL, '2', 'SUPPORTING', 'Male', NULL, 'Aizawa, with the investigation team alias of Aihara, leaves the investigation team and remains in the police force after L gives the team members the choice to quit, but continues to assist the investigation team when necessary as a member of the police. Upon L''s death, Aizawa returns to the investigation team to work under Light. Upon hearing that the 13 days rule (refer to written rules of the Death Note) is false, he begins to suspect that Light is actually Kira, and contacts Near. Aizawa passes certain information to Near that leads him to deduce Kira''s real identity (i.e. Light), and Near briefly holds him at the SPK headquarters. Near agrees to release Aizawa and Mogi afterwards. In the finale, he becomes the leader of the investigation team.   Aizawa has a wife and two children; Aizawa''s daughters are named Eriko Aizawa (younger) and Yumi Aizawa (older). ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('66', 'Stephen Loud', 'ステファン・ラウド', 'https://s4.anilist.co/file/anilistcdn/character/large/n3770-tvFv3ulGAmjt.png', NULL, '65', 'SUPPORTING', 'Male', NULL, 'Stephen works for Near as part of his investigation team, along with Lidner and Rester, and later plays an important role in stopping Kira. When suspicions arise towards Mikami, Near assigns Gevanni the task of following him, studying his methodic lifestyle, and finding his connections to the Death Note. Before the final showdown with Light at the warehouse, Near has Gevanni steal both the fake and real Death Notes from Mikami, and tampers one of the fake''s pages. 

He also creates another fake, replacing the real one, that is later used as Light''s ultimate downfall, and ends up being Near''s key to proving Light''s identity as Kira. While looking for the SPK members''s real names, Mikami views his real name as Stephen Loud through his Shinigami Eyes.  

In the one-shot chapter set three years after Light''s death, while he didn''t have any speaking lines and much any involvement in the short story, he did appear in one panel alongside Rester and Lidner. This suggests that he may still be working with them under the new L, Near ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('69', 'Yuri', '百合', 'https://s4.anilist.co/file/anilistcdn/character/large/n53663-kcAGTU7RCaUG.png', NULL, NULL, 'SUPPORTING', 'Female', NULL, 'Yuri is a young girl Light invites on a date to Space Land. He asks her out as part of his plan to help find out Ray Penber''s name, so that he can write it in the Death Note. Light asks her out so that he won''t arouse suspicion, since he is well aware of being followed by Penber.    ~!When the bus is hijacked by Kiichiro Osoreda, he writes a note to Yuri, telling her that he will try to attack the hijacker with a technique his father taught him.   Penber sees this, and warns Light that it''s too risky and to let him handle it. Light replies that he doesn''t know if he should trust Penber, since it is possible that he could be the hijacker''s partner. Yuri nervously questions what Light is saying, and he replies that during hijacks, there are often two criminals working together: one doing the hijacking, and the other disguised as a bystander. To prove that he can be trusted, Penber shows Light his identification, certain that Light cannot be Kira.   Light, now having the information which he needs, drops a piece of paper from his Death Note onto the floor. Osoreda sees this and, as planned, picks it up and reads it, to discover that it is only date plans. When he looks up he sees Ryuk, and starts shooting him, using up all of his bullets. Osoreda then runs off of the bus and gets hits by a car, getting killed, just as Light had specified in his Death Note.   Despite all of this, Yuri seems to recover, and insists on going to Space Land. Apparently she has quite a crush on Light. !~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('70', 'Kiyomi Takada', '高田清美', 'https://s4.anilist.co/file/anilistcdn/character/large/n3765-XmrhzN7qO27e.png', NULL, '69', 'SUPPORTING', 'Female', '18', 'Kiyomi Takada is the former college classmate and girlfriend of Light Yagami who later becomes Kira''s spokeswoman on the NHN television station.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('67', 'Light Yagami', '夜神月', 'https://s4.anilist.co/file/anilistcdn/character/large/b80-GfzIEL4X0dBd.jpg', NULL, '66', 'MAIN', 'Male', '17-23', '__Height:__ 179 cm (5''10")

Light is a third year high school student (12th Grade) at Daikoku Private Academy who also attends supplemental classes at Gamou Prep Academy in the beginning of the story. Light has a father, Soichiro Yagami, who is the head of the Police Force. Light also has a mother, Sachiko Yagami, and a younger sister, Sayu Yagami. In Spring 2004, he becomes a first-year student (freshman) at To-Oh University and gets one of the top scores of its entrance exam.

Nicknamed "Kira", he uses the Death Note to create his ideal world of justice under him; its new God. Though he looks frail, Light is an extremely athletic person, with an aptitude to find an opponent''s weak point. He is a genius, which adds to his notion that only he is fit to judge humanity and steer it on a proper moral course.

~!He gets shot by Matsuda after his plan failed and then dies because Ryuk wrote his name in his Death Note.  (January 28th 2010 in Manga, January 28th 2013 in Anime)!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('68', 'L Lawliet', 'エル・ローライト', 'https://s4.anilist.co/file/anilistcdn/character/large/b71-X7zsL6nWUDmf.png', NULL, '67', 'MAIN', 'Male', '24-25', '**Height**: 179 cm (5''10")
~!**Date of Death**: November 5, 2004 (2007 in anime)!~

L Lawliet is a world-renowned detective who takes on the challenge of catching Kira. In his investigation, L becomes suspicious of [Light Yagami](https://anilist.co/character/80/Light-Yagami) and makes it his goal to prove that Light is Kira.

L is a very slim, pale, tall young man with messy neck-length black hair and black eyes. One of his most noticeable features is the shadow below each of his eyes, a result of him being an insomniac. L is always shown to be wearing a pair of blue jeans and a long-sleeved white shirt. He rarely wears shoes or socks, preferring to go barefoot, even while in public. This was shown when he visited Light''s school and was seen barefoot while sitting on a bench, not bothering to wear his shoes until he got up to walk. L also tends to hunch over when walking.

L is very secretive and only communicates with the world through his assistant, [Watari](https://anilist.co/character/2179/Quillsh-Wammy). He never shows his face to the world in person, instead, representing himself with a capital letter L. After meeting the Japanese Task Force, he requests that the task force refers to him as "Ryuzaki" as an additional safety measure. The Task Force never learns his true name

L is very intelligent, though his disheveled and languid appearance masks his great powers of deduction, and many question his abilities upon viewing him. L tends to second-guess everything he is presented with and is extremely meticulous and analytical. He is good at deceiving his opponents and is willing to take drastic measures to solve a case. He is also shown to have a dry sense of humor, and he isn''t above making sarcastic remarks to people. Although he tends to be polite to some, L can seem condescending at times.

L has several quirks, such as preferring to crouch rather than sit, eating only sweet foods (like desserts, candies, and fruits), and holding items by using only a thumb and a finger. He also has an unusual way of sitting, with both of his feet on the chair. He claims that if he sits normally, his reasoning ability would drop 40%. Interestingly, in the manga, he is seen sitting on the floor in a pose similar to how one would meditate, while thinking deeply about the Kira case. He is often seen arranging objects and very intently stacking, or in other ways playing with, his staple food items. L is almost always encountered while performing actions that are considered inappropriate or rude in public. These actions/habits include biting fingernails, placing feet on furniture, slouching, chewing with an open mouth, talking with his mouth full, and calling out personal observations that may offend others. L suggests that even though he eats only sweet foods, he remains underweight because the brain uses the most calories of any organ in the body.

Using subterfuge, misinformation, disinformation, and analytical knowledge of human nature to help lure a suspected murderer into a false sense of security and possibly make him carelessly over-confident, L sometimes gets what he wants through abnormal or possibly criminal channels. Whenever L gives percentages to indicate how much he suspects a person of committing a crime, such as "five percent," he may in fact be over ninety percent convinced of their culpability. Although L tells Light that he is among the least likely suspects with one of the lowest percentages of probability, in reality, L is "pretty certain" that Light is Kira. As series author [Tsugumi Ohba](https://anilist.co/staff/97111/Tsugumi-Ohba) said, making light of L''s tactics: "The truth is, he''s a liar."

~!After the Task Force catches [Higuchi](https://anilist.co/character/1928/Kyosuke-Higuchi), L discovers the Death Note, how Kira kills, and the Shinigami, [Rem](https://anilist.co/character/1905/Rem). In the Death Note, L discovers a rule where if someone doesn''t write within the notebook within 13 consecutive days, they die. Despite this being a perfect alibi for Light (even though it''s made up), L still suspects him.

A few killings after [Misa](https://anilist.co/character/835/Misa-Amane)''s release, the killings from Kira start up again, resulting in L quarreling with the Task Force as he plans on using the notebook to test the legitimacy of the 13-day rule. However, just then, Watari has died, as he noticed all the data concerning the Kira case has been deleted. Once L figures out Rem must have killed Watari, Rem writes L''s name in the notebook, killing him. As L has a heart attack, Light catches L and holds him by the arms, allowing L to see Light''s smug smirk to show that he was indeed Kira the whole time.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('96', 'Nobara Kugisaki', '釘崎野薔薇', 'https://s4.anilist.co/file/anilistcdn/character/large/b133700-f6sOO3TcgLV6.png', NULL, '94', 'MAIN', 'Female', '16', '__Height:__ 160 cm (5''3")
__Occupation:__ Jujutsu Sorcerer, Student
__Affiliation:__ Tokyo Jujutsu High
__Grade:__ Grade 3 Sorcerer

She is a first-year student and grade 3 jujutsu sorcerer at Tokyo Jujutsu High studying under Satoru Gojo alongside Yuji and Megumi.
 
Nobara is a confident and brash young woman with an unshakable character. More than anything, Nobara is determined to stay true to herself no matter what. She takes great pride in being both a pretty girl and a strong fighter, refusing to let anyone influence her.

Initially, Nobara can appear to be a very obnoxious and arrogant person. She first introduced herself to Yuji and Megumi by expressing how inferior they were. She also argued with Yuji for the greater part of their first mission together. Despite her abrasive attitude, Nobara is actually an incredibly caring and dutiful person, but would never let most people see that side of her. After fighting alongside each other in several missions, Yuji and Megumi grow to become Nobara''s closest allies.


');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('97', 'Satoru Gojou', '五条悟', 'https://s4.anilist.co/file/anilistcdn/character/large/b127691-6m4hNwL2vLML.png', NULL, '95', 'MAIN', 'Male', '28', '__Height:__ >190 cm (6''3")
__Occupation:__ Jujutsu Sorcerer, Teacher
__Affiliation:__ Tokyo Metropolitan Curse Technical College, Gojou Family
__Grade:__ Special Grade Sorcerer
__Cursed Technique:__ Six Eyes, Limitless

Satoru Gojo is one of the main protagonists of the Jujutsu Kaisen series. He is a special-grade jujutsu sorcerer and is widely recognized as the strongest in the world. Satoru is the pride of the Gojo Family, the first person to inherit both the Limitless and the Six Eyes in four hundred years. He works as a teacher at the Tokyo Jujutsu High and uses his influence to protect and train strong young allies
');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('98', 'Sukuna', '宿儺', 'https://s4.anilist.co/file/anilistcdn/character/large/b133701-JVAThWqcAncW.png', NULL, '96', 'SUPPORTING', 'Male', '1000+', '__Species:__ Reincarnated Sorcerer

According to the legend, Sukuna was a demon with the appearance of a human during the prime era of sorcery 1000 years ago, and sorcerers of the era gave their all to defeat him, but to no avail. His body was split into 20 indestructible Special Grade Cursed Objects by Kenjaku, and one of these fingers ended up being consumed by Yuji Itadori in 2018, resulting in his reincarnation.

Sukuna has a sadistic personality and likes to see others suffer. He is also greedy, and always wants to stay in control of the situation without caring about the consequences. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('99', 'Panda', 'パンダ', 'https://s4.anilist.co/file/anilistcdn/character/large/b137974-NC2CK24nlktA.jpg', NULL, '97', 'SUPPORTING', 'Male', NULL, '__Species:__ Cursed Corpse (varies among 3 personalities)
__Occupation:__ Jujutsu Sorcerer, Student
__Affiliation:__ Jujutsu High
__Grade:__ 2

He is a second-year at Tokyo Prefectural Jujutsu High. As a Metamorphosed Cursed Corpse, he is the best creation of Principal [Masamichi Yaga](https://anilist.co/character/189237/Masamichi-Yaga). He is sentient and has three cores inside the doll body: the youngest brother "Panda", the eldest brother "Gorilla" and a sister. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('100', 'Toge Inumaki', '狗巻棘', 'https://s4.anilist.co/file/anilistcdn/character/large/b157115-kdhRYQdVhH95.png', NULL, '98', 'SUPPORTING', 'Male', '17', '__Species:__ Human
__Occupation:__ Sorcerer, Student
__Affiliation:__ Jujutsu High
__Grade:__ Grade 2 Sorcerer
__Cursed Technique:__ Cursed Speech

He is a second-year at Tokyo Metropolitan Jujutsu Technical High School. Due to his curse ability, he is only willing to communicate with ingredients used to make rice balls.

~! During the Shibuya Incident arc, Toge loses his left arm due to an attack from Sukuna. Because Toge is a friend of Yuuta, this prompts Yuuta to execute Yuuji Itadori. !~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('71', 'Halle Bullook', 'ハル・ブロック', 'https://s4.anilist.co/file/anilistcdn/character/large/n3769-QJUZtTvWhOJt.png', NULL, '30', 'SUPPORTING', 'Female', NULL, '__Height:__ 180 cm
__Likes:__ Jacuzzi 
__Dislikes:__ Insects


Halle Lidner, real name Halle Bullook, works for Near as part of his investigation team, along with Gevanni and Rester. She is mentioned to be a former CIA agent.   

~! In the manga, Lidner knows Mello and leaks SPK information to Mello; Near is unaware of Lidner''s SPK information leaking. When Mello questions her and asks her which side she is on(Near or his), She replies that she is on neither side, and merely helps both of them because they are after Kira. Later on, she calls Mello and tells him about Near''s plan (Having Mikami write everyone''s name down in the notebook), and he replies "I''m the only one who can do it.". This can be seen as the real push that drove Mello to kidnap Takada and eventually save the lives of both investigation teams.  Mikami views her real name, Halle Bullook, with his Shinigami eyes and proceeds to write her name as well as the other SPK members'' names into his Death Note, but she remains alive due to the notebook being a fake.!~  ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('72', 'Sayu Yagami', '夜神幸子', 'https://s4.anilist.co/file/anilistcdn/character/large/n8135-UgvqHuoMyZy5.png', NULL, '70', 'SUPPORTING', 'Female', '14', 'Light''s younger sister. She never learns of Light''s possession of the Death Note or his identity as Kira.     ~!In the second story arc of both the manga and anime, Mello''s gang kidnaps her in exchange for the Death Note possessed by the investigation team. Although being returned unharmed, Sayu falls into a state of shock, eventually becoming unresponsive to the presence of others.  !~    ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('73', 'Kanzo Mogi', '模木完造', 'https://s4.anilist.co/file/anilistcdn/character/large/n3766-xMCG0Vajfe2z.png', NULL, '71', 'SUPPORTING', 'Male', '30', 'One of the most dedicated members of the investigation team. Little else is known of him. He remains mostly silent. This silence is marked when he refuses to answer Near&#039;s questions about the Japanese Investigative Team, even when he is clearly affected by the theories that Near was presenting to him. Later on, he is one of the first members who begins to warm to Near&#039;s theory that Light is Kira. He is also shown to be an excellent actor, showing an excitement and cheeriness completely opposite of his usual demeanor.    In the first arc, Mogi acts as Misa&#039;s manager (as Kankichi Moji) after Matsuda&#039;s faked death. Misa gives him the nickname of &quot;Mochi,&quot; based on the alias.    In the second arc, Mello demands meeting Mogi in order to investigate about Kira, and tricks Mogi into meeting Near at the SPK headquarters. Mogi is then held hostage by Near until Aizawa arrives to rescue him.     *Wiki');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('74', 'Shidoh', 'シドウ', 'https://s4.anilist.co/file/anilistcdn/character/large/2402.jpg', NULL, '72', 'SUPPORTING', 'Male', NULL, 'Shidoh is a Shinigami whose Death Note is stolen by Ryuk. In fact, Ryuk takes his Note and gives it to Light, which becomes Higuchi''s note and is finally passed on to Mello''s gang (more specifically, Mello''s subordinate, Kal Snyder (also known as Jack Neylon)). Shidoh has a great liking for chocolate. Since Shidoh has neglected to kill people and extend his own lifetime, he probably did not notice that his Note is stolen. As the end of his lifetime approaches, Shidoh finds Ryuk and learns that Mello is in possession of his Note. Later, he finds Snyder in the human world. To regain his Note, Shidoh agrees to help Mello''s gang against the SPK and Light. After Light regains the Death Note from Mello, he returns the note to Shidoh for him to stop interfering and return to the Shinigami world. Although these events occurred over the course of about one volume in the manga, Shidoh was only in two episodes in the anime version (episode 28 where he was merely introduced in the last few minutes of the episode, and episode 29, which relays most events of Shidoh''s regaining of his Death Note).    Shidoh''s name is written in English as &quot;Shidoh&quot; in Death Note: How to Read 13, but written &quot;Sidoh&quot; in both the tankōbon character introductions page and within the translated English manga.    *Wiki');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('75', 'Hirokazu Ukita', '宇生田広数', 'https://s4.anilist.co/file/anilistcdn/character/large/n17555-bRedmqb33U5T.png', NULL, '73', 'SUPPORTING', 'Male', '26', 'Hirokazu Ukita is the most emotional of the Kira investigation team that is lead by L. When Misa Amane has Sakura TV broadcast a message from her as Kira, Ukita rushes to the station to stop the broadcast, without any prompting by the rest of the team. Since Misa has the Shinigami Eyes, she kills him as soon as he approaches the door and is about to shoot. He is voiced by Hidenobu Kiuchi in the Japanese anime and Jeremy From in the English dub. In the film, he is portrayed by Ikuji Nakamura, and appears notably older. Ukita does not die in the film. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('76', 'Nate River', 'ネイト・リバー', 'https://s4.anilist.co/file/anilistcdn/character/large/n464-6KeJpU6g7Hwj.jpg', NULL, '74', 'MAIN', 'Male', '13-29', '__Occupation:__ Head of SPK (Secret Provision for Kira), 3rd and final "L" in chapters 108 and aftermath
__Place of birth:__ Wammy''s House, Winchester, England

In Death Note, Near is the younger of L''s two successors raised in Wammy''s House, Watari''s orphanage for gifted children, in Winchester, England, United Kingdom. Of the successors, Near is the more level-headed, calmly assessing the situation, while the other, Mello, is more emotional and quick to act. Much like L, Near shows various odd behaviors during his normal life. He is usually seen hunched over rather than sitting. He also constantly plays with various toys, which he uses in his theories, as well as idly twiddling strands of his hair. He shows a great respect for L, basing much of how he solves crime on L''s methods, even to the point where he only takes cases that he is interested with rather than trying to pursue justice. Near uses the Wedding Text font "N" and "L" to represent himself and the fake L, respectively. But later in the aftermath, he used Old English font "L" like the original L did. He is voiced by Noriko Hidaka in the Japanese anime, Cathy Weseluck in the English dub, and Bruno Coronel in the Latin Spanish version.   ~!Sometime after L''s death, he works for the United States under the SPK (Special Provision for Kira) team that is established to investigate Kira without the help of "L". He soon manages to deduce that Light Yagami, posing as L, is actually Kira. After he finds that Teru Mikami is Light''s proxy and Mello kidnaps Kiyomi Takada, Near is able to switch Mikami''s Death Note with a forged one, allowing him to set up a final confrontation that leaves Light exposed. Ryuk kills Light soon after. Near says that neither he nor Mello could surpass L alone, but have managed to do so by inadvertently working together. Near soon takes L''s alias, and keeps on the surviving members of the SPK as his subordinates.!~   ~! It is speculated by Matsuda in Death Note: Oneshot that Near uses the Death Note to manipulate Mikami into failing Light in the final battle, which would shed light on some major plotholes. It''s important to note that Tsugumi Ohba has said that he wanted it to be left up to the readers on if Matsuda is right or not.!~  Tsugumi Ohba, writer of Death Note, said that Near "becomes less likeable" as the story advances, citing Near''s plan to take the notebook at a later point in the story. Ohba said that a negative reaction originated from "the difference in their attitudes" and that people may have viewed Near as "a cheat." Ohba added that Near''s "cheeky behavior," intended to "reinforce his childishness," had been construed as "annoying."  In the final chapter Near brings finger puppets to the Yellow Box Warehouse. Takeshi Obata, artist of Death Note, said that Near first bought the Kira finger puppet and drew on it with a magic marker. Obata then said that Near must have created the other puppets afterwards. Obata views Near as not liking L much so Obata had Near depict L as "ugly", and that Near "worked hard" on Mello''s puppet as Near "liked Mello."  Obata said he enjoyed drawing Near and that Near is also one of his favorite and his least favorite characters, considering him to be the smartest character in the manga "because he cheats."  When asked about which character was most similar to himself, Ohba indicated Near and "maybe Light." Regarding Near, Ohba said that he does not leave his house often.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('101', 'Maki Zenin', '禪院真希', 'https://s4.anilist.co/file/anilistcdn/character/large/b134167-5TCytk45YByD.png', NULL, '99', 'SUPPORTING', 'Female', '16', '__Height:__ 170 cm (5''7")

Maki Zenin is the older twin sister of [Mai Zenin](https://anilist.co/character/134168/Mai-Zenin). Maki is a grade 4 sorcerer and a second-year at Tokyo Metropolitan Jujutsu Technical High School. She is from the main branch of the Zenin clan, one of the "Prominent Three Families" of the Jujutsu world.

She left the Zenin family in order to prove herself capable of being a Sorcerer after being deemed uncapable, since she lacks Cursed Energy.

~!Because Mai and Maki are monozygotic twins, their strength is considerably limited to one another. Monozygotic twins are considered as a single individual in the Jujutsu world and are a sign of bad omen.!~

~!After the death of her twin sister Mai, Maki has lost all of her cursed energy and gained a Heavenly Restriction. This causes her skills and human capabilities to be on par with [Toji Fushiguro''s](https://anilist.co/character/162722/Touji-Fushiguro).!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('105', 'Jougo', '漏瑚', 'https://s4.anilist.co/file/anilistcdn/character/large/b156991-niYjdp9CxO4w.png', NULL, '102', 'SUPPORTING', 'Male', NULL, '__Grade:__ Special Grade Cursed Spirit

Jogou is an unregistered special grade cursed spirit aligned with Mahito, Hanami, and Dagon. He was born of humanity''s fear and negative association with volcanoes and other fire-related natural disasters. This resulted in a highly intelligent cursed spirit with massive levels of cursed energy even for a special grade. Jogou believes curses are the true humans and desires a world where his kind dominates the earth.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('92', 'David Hoope', 'デイビットホープ', 'https://s4.anilist.co/file/anilistcdn/character/large/n84509-qynA7w9VvVIC.png', NULL, '90', 'SUPPORTING', 'Male', NULL, 'He is the President of the United States. He gives permission to form the SPK after having a discussion with Near. He is threatened by Mello with the Death Note, forced into giving him all the information he has on the SPK, and to keep him updated on what they are doing. He works unsuccessfully with L (Light) to infiltrate Mello''s hideout. He''s a strong leader, but powerless against the decree of the Death Note.   Hoope ends up committing suicide, and it is believed that Kira disposed of him after the special forces'' attack failed.  In the anime, he does not commit suicide, as the character was merged with that of George Sairas (who is his vice-president).  Although he is president of the U.S.A in the manga, in the anime, the president is George Sairas. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('93', 'Roger Ruvie', 'ロジャー・ラヴィー', 'https://s4.anilist.co/file/anilistcdn/character/large/b144332-jGiPlxo9Egqv.jpg', NULL, '91', 'SUPPORTING', NULL, NULL, 'Roger is the manager of the “Wammy’s House” whenever Watari is not present. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('102', 'Kento Nanami', '七海建人', 'https://s4.anilist.co/file/anilistcdn/character/large/b133704-8wLTGjc234q2.png', NULL, '50', 'SUPPORTING', 'Male', '27', '__Height:__ 184 cm (6''0½")
__Occupation:__ Sorcerer
__Affiliation:__ Jujutsu High
__Grade:__ Grade 1 Sorcerer
__Cursed Technique:__ Ratio

He is a Grade 1 Jujutsu Sorcerer and a Tokyo Jujutsu High alumni. 

Nanami is a very intelligent and reserved man who at first appears to be someone who is just very serious about his work. He knows how to separate sentimentalism from service and claims he''s only a Jujutsu Sorcerer because it''s slightly less idiotic than regular careers. As one of [Yuji''s](https://anilist.co/character/127212/Yuji-Itadori) mentors, Nanami is a complete contrast to [Gojo](https://anilist.co/character/127691/Satoru-Gojou), who is far more outspoken and easy-going.

__Manga/Season 2 Episode 18 Spoiler:__

~!Nanami Kento was one of the casualties during the Shibuya Incident. He died without regret after a direct hit from [Mahito''s](https://anilist.co/character/133702/Mahito) technique, exploding from the waist up.!~');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('103', 'Hanami', '花御 ', 'https://s4.anilist.co/file/anilistcdn/character/large/b172743-4Y5SXqED6A3G.jpg', NULL, '100', 'SUPPORTING', 'Male', NULL, '__Species:__ Cursed Spirit

Hanami is an antagonist intent on ridding the Earth of Humans and reviving Sukuna.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('104', 'Mahito', '真人', 'https://s4.anilist.co/file/anilistcdn/character/large/b133702-Y7JRG5vAvjIL.png', NULL, '101', 'SUPPORTING', 'Male', NULL, '__Grade__: Special Grade
__Cursed Technique:__ Idle Transfiguration

Mahito is one of the primary antagonists of the Jujutsu Kaisen series. He is a Cursed Spirit allied with Suguru Geto, Jogo, Hanami and several others. Their ultimate goal is the eradication of humanity and ultimately replacing the population with Cursed Spirits.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('94', 'Megumi Fushiguro', '伏黒恵', 'https://s4.anilist.co/file/anilistcdn/character/large/b126635-L0y3I92JSUkN.png', NULL, '92', 'MAIN', 'Male', '15', '__Species:__ Human
__Height:__ 175 cm (5''9")
__Occupation:__ Sorcerer, Student
__Affiliation:__ Jujutsu High
__Grade:__ Grade 2 Sorcerer
__Cursed Technique:__ 10 Shadows

Megumi is the deuteragonist of the Jujutsu Kaisen series. He is a first-year student at Jujutsu High and also a descendant of the Zenin Family.

While outwardly stoic and calculating, Megumi wishes to help protect people he sees as good or kind. He believes that the world is unfair and that a Sorcerer is a tool to ensure kind people are given more chances to live. Claiming it to be his selfish and irrational desire, he does not see himself as a hero for doing this.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('95', 'Yuuji Itadori', '虎杖悠仁', 'https://s4.anilist.co/file/anilistcdn/character/large/b127212-FVm2tD0erQ5B.png', NULL, '93', 'MAIN', 'Male', '15', '**Species:** Human
**Height:** 173 cm (5''8")
**Occupation:** Sorcerer, Student, Vessel
**Affiliation:** Jujutsu High

Yuuji is a fair person who cares greatly for not only his comrades but anyone he views as people with their own wills, despite how deep or shallow his connection to them is. He cares greatly for the "value of a life" and to this end, he will ensure that others receive a "proper death." He is easy to anger in the face of pure cruelty and unfair judgment of other people.
He doesn''t have the born talent required to use cursed techniques, but he has incredible athletic abilities and he is considered very strong for his age, as shown by when he easily beat a coach in Steel Ball Throw.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('87', 'Jealous', 'ジェラス', 'https://s4.anilist.co/file/anilistcdn/character/large/n3883-KOxHbNKKnVrk.png', NULL, '85', 'SUPPORTING', 'Male', NULL, 'Jealous only appears in a flashback when Rem explains a method to kill a Shinigami. In this flashback, Rem recalls Jealous watching over a woman  in the human world. Surprised by his concern, Rem eventually looks over his shoulder and witnesses what should have been the woman''s last moments on Earth. In a dark alley, a distraught man mistakes woman as the woman who broke up with him and attempts to stab her to death. Apparently infatuated with the woman, Jealous uses his Death Note to kill her destined murderer; the man suddenly walks away to commit suicide. Moments later, Jealous himself turns to a pile of sand and rust as consequence for extending a human life. Rem takes his Death Note and gave it to Misa    Jealous'' name is commonly misspelled &quot;Gelus,&quot; which is what his name was romanized to until Death Note: How to Read 13 revealed the official spelling as Jealous. The first through fourth printings of Volume 4 of the English-language manga refers to him as Gelus.    Ken''ichi Matsuyama, who portrayed L in the live action films, voices Jealous in the anime. Jealous is one of the few left handed characters in the show.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('88', 'Raye Penber', 'レイ・ペンバー', 'https://s4.anilist.co/file/anilistcdn/character/large/n7044-DjU28vbo11bb.png', NULL, '86', 'SUPPORTING', 'Male', NULL, 'Raye Penber is an American Investigator from the FBI, who was sent to Japan along with 11 other FBI agents to track down Kira. Raye was assigned to investigate the Yagami family for any suspicious behavior; but eventually stops suspecting Light.    ~!Light staged a bus-jacking incident in order to obtain Raye''s identity. Light, acting as if Raye were a part of the bus-jacking persuades Raye into revealing his FBI identification card. Raye shows Light, but is hesitant to do so. A week after the bus-jacking, Light acting as ''Kira'' follows Raye and use him as a ''pawn'' to track down the other 11 agents. He gives Raye an envelope containing sheets of paper, taken from the Death Note. Raye, unknowingly, writes the names of the other agents on the paper.   Light kills Raye soon after. Before Raye dies, he sees Light, realizing that he is indeed Kira.!~ Raye is engaged to a former FBI agent, Naomi Misora, who later attempts to investigate the ''Kira'' case.  (Source: Wikipedia)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('53', 'Narrator', 'ナレーター', 'https://s4.anilist.co/file/anilistcdn/character/large/b36309-yRLEQYd2dDI5.jpg', NULL, '53', 'BACKGROUND', NULL, NULL, 'This character page is set to represent and list all narrators, which haven''t been given a visual representation of themselves in their respective work. 

Please add other narrator characters, which were given a visual representation of themselves, separately from this narrator page. ');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('54', 'Mikasa no Haha', 'ミカサの母', 'https://s4.anilist.co/file/anilistcdn/character/large/n84341-o3ojpfHhp7o8.png', NULL, '54', 'SUPPORTING', NULL, NULL, 'Mikasa''s mother.  First Appearance Anime: Ep. 6
A woman of Oriental heritage appearing to be in her mid thirties.
She appeared to be a kind and loving mother, holding value in keeping with tradition. When her and Mikasa''s lives were threatened, she quickly turned into a fierce mother, trying to do whatever was necessary to protect Mikasa.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('55', 'Boris Feulner', 'ボリス・フォイルナー', 'https://s4.anilist.co/file/anilistcdn/character/large/n127568-nYT2K5sXb1Y8.png', NULL, '55', 'SUPPORTING', NULL, NULL, 'is a member of the Military Police stationed in Stohess District. 

Boris came to Annie''s defense when she got late to her duty, telling others to give her a rest. He stated that being the only one to experience the actual combat (Defense of Trost district) among her squad, Annie must be still suffering trauma from it. 

When Marlo tells his colleagues of his ambition to reform the Military Police, Boris tells Marlo good luck, albeit with nonchalance');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('56', 'Carly Stratmann', 'カーリー・ストラットマン', 'https://s4.anilist.co/file/anilistcdn/character/large/n131260-G8AYph8c1zE3.png', NULL, '56', 'SUPPORTING', 'Female', '20', 'Species: HumanResidence: Stohess District
<br></br>The missing daughter of Elliot G. Stratmann.<br></br>(Source: Attack on Titan Wiki)');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('57', 'Lou Meade', 'ルー・ミード', 'https://s4.anilist.co/file/anilistcdn/character/large/n131261-tUIhFBVl2B0f.png', NULL, '57', 'SUPPORTING', NULL, NULL, 'Lou is a hired thug residing in Stohess District and the accomplice of Wald Richter.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('58', 'Wald Richter', 'ウォルド・リヒター', 'https://s4.anilist.co/file/anilistcdn/character/large/n131262-Y49bfSsaPaXl.png', NULL, '58', 'SUPPORTING', NULL, NULL, 'Wald is a hired thug residing in Stohess District.');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('59', 'Elliot G. Stratmann', 'エリオット・G・ストラットマン', 'https://s4.anilist.co/file/anilistcdn/character/large/n131263-19gUKxDre78y.png', NULL, '59', 'SUPPORTING', NULL, NULL, ' The president of the Marleen Company, a trading business in Stohess District');
INSERT INTO "CHARACTER" ("CHARACTER_ID", "FULL_NAME", "NATIVE", "IMAGE", "MANGA_ID", "VA_ID", "ROLE", "GENDER", "AGE", "DESCRIPTION") VALUES ('60', 'Annie no Chichi', 'アニの父', 'https://s4.anilist.co/file/anilistcdn/character/large/b131257-EywhPQF0aqVU.png', NULL, '60', 'SUPPORTING', 'Male', NULL, 'Father and trainer of Annie Leonhart. He relentlessly trained Annie to fight, using mostly kicks and the attacker''s weight against them.
~!Memories of his pleas for forgiveness later create an opening for Annie to crystallize herself before Eren Jaeger has the chance to capture her!~');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for COMMENTT
-- ----------------------------
DROP TABLE "COMMENTT";
CREATE TABLE "COMMENTT" (
  "COMMENT_ID" NUMBER VISIBLE NOT NULL,
  "DESCRIPTION" VARCHAR2(3000 BYTE) VISIBLE,
  "LIKES" NUMBER VISIBLE NOT NULL,
  "CREATION_YEAR" NUMBER VISIBLE,
  "CREATION_MONTH" NUMBER VISIBLE,
  "CREATION_DAY" NUMBER VISIBLE,
  "CREATION_HOUR" NUMBER VISIBLE,
  "CREATION_MINUTE" NUMBER VISIBLE,
  "THREAD_ID" NUMBER VISIBLE,
  "USER_ID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of COMMENTT
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for COMMENT_RELATED
-- ----------------------------
DROP TABLE "COMMENT_RELATED";
CREATE TABLE "COMMENT_RELATED" (
  "COMMENT_ID" NUMBER VISIBLE NOT NULL,
  "RELATED_COMMENT_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of COMMENT_RELATED
-- ----------------------------
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
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('1', 'Action');
INSERT INTO "GENRE" ("GENRE_ID", "GENRE_NAME") VALUES ('2', 'Adventure');
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
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '5');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '6');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '7');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '8');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '9');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '10');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '11');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '12');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '13');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '14');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '15');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '16');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '17');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '18');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '19');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '20');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '21');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '22');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '23');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '24');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('2', '25');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '5');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '6');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '7');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '8');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '9');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '10');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '11');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '12');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '13');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '14');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '15');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '16');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '17');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '18');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '19');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '20');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '21');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '22');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '23');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '24');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('3', '25');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '1');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '2');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '3');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '4');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '5');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '6');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '7');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '8');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '9');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '10');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '11');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '12');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '13');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '14');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '15');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '16');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '17');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '18');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '19');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '20');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '21');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '22');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '23');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '24');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '25');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '26');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '27');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '28');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '29');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '30');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '31');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '32');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '33');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '34');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '35');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '36');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '37');
INSERT INTO "HAS" ("ANIME_ID", "CHARACTER_ID") VALUES ('4', '38');
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
  "MANGA_URL" VARCHAR2(500 BYTE) VISIBLE
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
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL") VALUES ('3', 'NARUTO', 'Naruto', 'NARUTO -ナルト-', 'MANGA', 'FINISHED', 'Before Naruto''s birth, a great demon fox had attacked the Hidden Leaf Village. A man known as the 4th Hokage sealed the demon inside the newly born Naruto, causing him to unknowingly grow up detested by his fellow villagers. Despite his lack of talent in many areas of ninjutsu, Naruto strives for only one goal: to gain the title of Hokage, the strongest ninja in his village. Desiring the respect he never received, Naruto works towards his dream with fellow friends Sasuke and Sakura and mentor Kakashi as they go through many trials and battles that come with being a ninja. ', '1999', '9', '21', '2014', '11', '10', '700', '72', 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/nx30011-9yUF1dXWgDOx.jpg', '#fe7828', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/30011-pkX1O0EFqvV7.jpg', 'https://mangaplus.shueisha.co.jp/titles/100018');
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL") VALUES ('4', 'BLEACH', 'Bleach', 'BLEACH', 'MANGA', 'FINISHED', 'Ichigo Kurosaki has always been able to see ghosts, but this ability doesn''t change his life nearly as much as his close encounter with Rukia Kuchiki, a Soul Reaper and member of the mysterious Soul Society. While fighting a Hollow, an evil spirit that preys on humans who display psychic energy, Rukia attempts to lend Ichigo some of her powers so that he can save his family; but much to her surprise, Ichigo absorbs every last drop of her energy. Now a full-fledged Soul Reaper himself, Ichigo quickly learns that the world he inhabits is one full of dangerous spirits and, along with Rukia— who is slowly regaining her powers— it''s Ichigo''s job to protect the innocent from Hollows and help the spirits themselves find peace.<br><br>
(Source: Viz Media)<br><br>
<i>Note: Chapter count includes the 12-chapter “Turn Back The Pendulum” side story and 8 extra chapters.</i>', '2001', '8', '7', '2016', '8', '23', '706', '74', 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx30012-z7U138mUaPdN.png', '#3586e4', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/30012-RpbdVc2yNxhw.jpg', 'https://www.viz.com/shonenjump/chapters/bleach');
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL") VALUES ('5', 'Jujutsu Kaisen', 'Jujutsu Kaisen', '呪術廻戦', 'MANGA', 'RELEASING', 'Although Yuji Itadori looks like your average teenager, his immense physical strength is something to behold! Every sports club wants him to join, but Itadori would rather hang out with the school outcasts in the Occult Research Club. One day, the club manages to get their hands on a sealed cursed object. Little do they know the terror they’ll unleash when they break the seal…
<br><br>
(Source: Viz Media)
<br><br>
<i>Notes:<br>
- Ranked 1st in Japan''s Bookstore Employees Top Manga of 2018.<br>
- Nominated for the 25th Annual Tezuka Osamu Cultural Prize in 2021.<br>
- Nominated for the 65th Shogakukan Manga Award in the Shounen Category in 2019.</i>', '2018', '3', '5', NULL, NULL, NULL, NULL, NULL, 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx101517-H3TdM3g5ZUe9.jpg', '#e4a15d', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/101517-FrJtb3Th3HtF.jpg', 'https://www.shonenjump.com/j/rensai/jujutsu.html');
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL") VALUES ('1', 'Shingeki no Kyojin', 'Attack on Titan', '進撃の巨人', 'MANGA', 'FINISHED', 'In this post-apocalyptic sci-fi story, humanity has been devastated by the bizarre, giant humanoids known as the Titans. Little is known about where they came from or why they are bent on consuming mankind. Seemingly unintelligent, they have roamed the world for years, killing everyone they see. For the past century, what''s left of man has hidden in a giant, three-walled city. People believe their 50-meter-high walls will protect them from the Titans, but the sudden appearance of an immense Titan is about to change everything.
<br><br>
(Source: Kodansha USA)
<br><br>
<i>Note: Includes 2 extra chapters.</i>', '2009', '9', '9', '2021', '4', '9', '141', '34', 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx53390-1RsuABC34P9D.jpg', '#d6431a', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/53390-6Uru5rrjh8zv.jpg', 'https://pocket.shonenmagazine.com/episode/13932016480029113127');
INSERT INTO "MANGA" ("MANGA_ID", "ROMAJI", "ENGLISH", "NATIVE", "FORMAT", "STATUS", "DESCRIPTION", "START_YEAR", "START_MONTH", "START_DAY", "END_YEAR", "END_MONTH", "END_DAY", "CHAPTERS", "VOLUMES", "COUNTRY_OF_ORIGIN", "SOURCE", "COVER_IMAGE", "COVER_IMAGE_COLOR", "BANNER_IMAGE", "MANGA_URL") VALUES ('2', 'DEATH NOTE', 'Death Note', 'DEATH NOTE', 'MANGA', 'FINISHED', '<b>When Light Yagami finds a notebook giving him power over death, will he use it for good—or evil?</b><br><br>Light Yagami is an ace student with great prospects—and he’s bored out of his mind. But all that changes when he finds the Death Note, a notebook dropped by a rogue Shinigami death god. Any human whose name is written in the notebook dies, and Light has vowed to use the power of the Death Note to rid the world of evil. But will Light succeed in his noble goal, or will the Death Note turn him into the very thing he fights against?<br><br>(Source: Viz Media)', '2003', '12', '1', '2006', '5', '15', '108', '12', 'JP', 'ORIGINAL', 'https://s4.anilist.co/file/anilistcdn/media/manga/cover/medium/bx30021-FE6kmrfpuKyb.jpg', '#f1e4ae', 'https://s4.anilist.co/file/anilistcdn/media/manga/banner/n30021-eZbrTpIjv10E.jpg', 'https://mangaplus.shueisha.co.jp/titles/100008');
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
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('14', 'Toho');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('15', 'Sumzap');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('9', 'Nippon Television Network');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('10', 'Konami');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('11', 'Ashi Productions');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('12', 'Shueisha');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('13', 'Selecta Visión');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('7', 'VAP');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('8', 'Viz Media');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('1', 'Pony Canyon');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('2', 'Kodansha');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('3', 'Production I.G');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('4', 'Dentsu');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('5', 'Pony Canyon Enterprise');
INSERT INTO "PRODUCER" ("PRODUCER_ID", "PRODUCER_NAME") VALUES ('6', 'Mainichi Broadcasting System');
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for REVIEW
-- ----------------------------
DROP TABLE "REVIEW";
CREATE TABLE "REVIEW" (
  "REVIEW_ID" NUMBER VISIBLE NOT NULL,
  "REVIEW_TEXT" VARCHAR2(1000 BYTE) VISIBLE NOT NULL,
  "LIKES" NUMBER VISIBLE,
  "DATE_OF_CREATION" DATE VISIBLE NOT NULL,
  "USER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEW
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for REVIEW_ANIME
-- ----------------------------
DROP TABLE "REVIEW_ANIME";
CREATE TABLE "REVIEW_ANIME" (
  "REVIEW_ANIME_ID" NUMBER VISIBLE NOT NULL,
  "REVIEW_ANIME_TEXT" VARCHAR2(1000 BYTE) VISIBLE NOT NULL,
  "LIKES_ANIME" NUMBER VISIBLE,
  "DATE_OF_CREATION_ANIME" DATE VISIBLE NOT NULL,
  "ANIME_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEW_ANIME
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for REVIEW_MANGA
-- ----------------------------
DROP TABLE "REVIEW_MANGA";
CREATE TABLE "REVIEW_MANGA" (
  "REVIEW_MANGA_ID" NUMBER VISIBLE NOT NULL,
  "REVIEW_MANGA_TEXT" VARCHAR2(1000 BYTE) VISIBLE NOT NULL,
  "LIKES_MANGA" NUMBER VISIBLE,
  "DATE_OF_CREATION_MANGA" DATE VISIBLE NOT NULL,
  "MANGA_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of REVIEW_MANGA
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for STAFF
-- ----------------------------
DROP TABLE "STAFF";
CREATE TABLE "STAFF" (
  "STAFF_ID" NUMBER VISIBLE NOT NULL,
  "FULL_NAME" VARCHAR2(100 BYTE) VISIBLE,
  "NATIVE" VARCHAR2(100 BYTE) VISIBLE,
  "IMAGE" VARCHAR2(500 BYTE) VISIBLE,
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
  "GENDER" VARCHAR2(100 BYTE) VISIBLE,
  "DESCRIPTION" CLOB VISIBLE
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
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('45', 'Asami Tachibana', '橘麻美', 'https://s4.anilist.co/file/anilistcdn/staff/large/n118584-p6c43F19nQGP.png', '1987', '4', '28', NULL, NULL, NULL, NULL, NULL, NULL, 'Music', 'Female', '__[Profile (Legendoor)](http://www.legendoor.com/artist/%E6%A9%98%E9%BA%BB%E7%BE%8E)__ | __[Twitter](https://twitter.com/AsamiTachibana)__ | __[Instagram](https://www.instagram.com/achaamiii/)__ | __[YouTube](https://www.youtube.com/user/caffemocha0428)__

A Japanese pianist, composer and arranger affiliated with Legendoor.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('46', 'Yoshihide Ibata', '井端義秀', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Director', 'Male', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('47', 'Yoshihide Ibata', '井端義秀', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Director', 'Male', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('50', 'Saki Nakagawa', '中川沙樹', 'https://s4.anilist.co/file/anilistcdn/staff/large/n111925-A1wZgahcNNj5.png', '1990', '4', '29', NULL, NULL, NULL, NULL, NULL, 'Kumamoto, Japan', 'Original Creator', 'Female', '[Website](https://ameblo.jp/1967monkey)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('42', 'Satoshi Iwataki', '岩瀧智', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101889-r4fSXXEzvPlq.jpg', '1963', '12', '19', '2023', '12', '30', NULL, NULL, NULL, 'Storyboard (ep 4)', 'Male', '[Twitter](https://twitter.com/iwataki)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('43', 'Takuma Ebisu', '胡拓磨', 'https://s4.anilist.co/file/anilistcdn/staff/large/n138756-RyAuG0i2ATrv.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Action Animation Director (eps 1, 3, 6, 7, 10, 12)', 'Male', '[Twitter](https://twitter.com/i/user/2275305008)

Originating from [Production I.G](https://anilist.co/studio/10/). Currently an integral part of [Wit Studio](https://anilist.co/studio/858/)''s main staff.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('44', 'Midori Gotou', '後藤みどり', 'https://s4.anilist.co/file/anilistcdn/staff/large/n118404-PmvTEYfXwPkA.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Series Composition', NULL, NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('51', 'REVO', 'レヴォ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n196383-KuzAefWDRRu8.png', NULL, '6', '19', NULL, NULL, NULL, NULL, NULL, NULL, 'Theme Song Lyrics (OP)', 'Male', '[Wiki (jp)](https://ja.wikipedia.org/wiki/Revo)

Revo is a Japanese musician and music producer. Presides over [Linked Horizon](https://anilist.co/staff/114960/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('52', 'REVO', 'レヴォ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n196383-KuzAefWDRRu8.png', NULL, '6', '19', NULL, NULL, NULL, NULL, NULL, NULL, 'Theme Song Lyrics (OP)', 'Male', '[Wiki (jp)](https://ja.wikipedia.org/wiki/Revo)

Revo is a Japanese musician and music producer. Presides over [Linked Horizon](https://anilist.co/staff/114960/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('53', 'REVO', 'レヴォ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n196383-KuzAefWDRRu8.png', NULL, '6', '19', NULL, NULL, NULL, NULL, NULL, NULL, 'Theme Song Lyrics (OP)', 'Male', '[Wiki (jp)](https://ja.wikipedia.org/wiki/Revo)

Revo is a Japanese musician and music producer. Presides over [Linked Horizon](https://anilist.co/staff/114960/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('55', 'Bruno Sangregório', NULL, 'https://s4.anilist.co/file/anilistcdn/staff/large/n190265-ECLpJul29fUS.png', '1988', '3', '4', NULL, NULL, NULL, NULL, NULL, 'São Paulo, Brazil', 'ADR Director (Brazilian Portuguese)', 'Male', '[Instagram](https://Instagram.com/brunosangregorio/) | [Facebook](https://facebook.com/clayton.sangregorio)

Bruno Sangregório is an actor, dubbing artist, producer, dubbing coordinator and dubbing director, and also a teacher at the DuBrasil Dubbing Course for Actors. He is married to the voice actress [Luana Stteger](https://anilist.co/staff/197329/).

He also acts as a filmmaker, being a director and screenwriter for the company Intra7 Filmes. He is a founding member and collective director of the theatrical group Mídias Conexas.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('56', 'Gemie', 'Gemie', 'https://s4.anilist.co/file/anilistcdn/staff/large/n219036-6EbBKNAf8bmJ.jpg', '1994', '6', '8', NULL, NULL, NULL, NULL, NULL, 'Matsuyama, Japan', 'Theme Song Performance (ED3)', 'Female', '[Website](https://rin-gemie.amebaownd.com) | [Twitter](https://twitter.com/rin_gemie)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('57', 'Kenshirou Morii', '森井ケンシロウ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n122366-ELtzO3akhsja.png', '1980', '6', '2', NULL, NULL, NULL, NULL, NULL, 'Ishiku, Ibaraki Prefecture, Japan', 'Director', 'Male', 'He is married to [Soushi Kinutani](https://anilist.co/staff/123116/Soushi-Kinutani)

[Website](http://www.kenshiro.tv/) | [Twitter](https://twitter.com/morii) | [Pixiv](https://www.pixiv.net/member.php?id=26596)
');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('58', 'Kenshirou Morii', '森井ケンシロウ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n122366-ELtzO3akhsja.png', '1980', '6', '2', NULL, NULL, NULL, NULL, NULL, 'Ishiku, Ibaraki Prefecture, Japan', 'Director', 'Male', 'He is married to [Soushi Kinutani](https://anilist.co/staff/123116/Soushi-Kinutani)

[Website](http://www.kenshiro.tv/) | [Twitter](https://twitter.com/morii) | [Pixiv](https://www.pixiv.net/member.php?id=26596)
');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('48', 'Tooru Ookubo', '大久保徹', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', '1975', '9', '27', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan', 'Animation Director (eps 8, 12)', 'Male', '[Wiki (jp)](https://ja.wikipedia.org/wiki/大久保徹)

Affiliated with [Production I.G](https://anilist.co/studio/10/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('49', 'Hiroshi Kamiya', '神谷浩史', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95118-oOElrn1aSaiC.png', '1975', '1', '28', NULL, NULL, NULL, NULL, NULL, 'Matsudo, Chiba, Japan ', 'Insert Song Performance (ep 12)', 'Male', '**Height:** 167 cm (5''6") 
**Other:** Named his cat "Nyanko-Sensei" 
**Agency:** Aoni

[Profile](https://www.aoni.co.jp/search/kamiya-hiroshi.html)

**Awards:**
- 2008-03: Best Supporting Actor, 2nd Annual Seiyuu Awards
- 2009-03: Best Lead Actor and Best Personality, 3rd Annual Seiyuu Awards
- 2012-03: Most Votes Award, 6th Annual Seiyuu Awards
- 2013-03: Most Votes Award, 7th Annual Seiyuu Awards  

Hosts several radio talk shows, including Dear Girl ~Stories~ with Ono Daisuke. In May 2010, he and Miyu Irino formed a Kiramune unit called KAmiYU, and sang the theme song for Mokei Senshi Gunpla Builders Beginning G.  Their first mini-album "link-up" was released on August 3, 2011.

__Non-Anime Roles:__
- Neuvillette in Genshin Impact');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('29', 'Masashi Koizuka', '肥塚正史', 'https://s4.anilist.co/file/anilistcdn/staff/large/118905-vN0KGRV37wBH.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Director', 'Male', 'Masashi Koizuka is a director, animator, and designer.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('30', 'Tetsuya Wakano', '若野哲也', 'https://s4.anilist.co/file/anilistcdn/staff/large/n122343-B9qV2XqbJHfI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Storyboard (ep 5)', 'Male', '[Twitter](https://twitter.com/i/user/349501447)

Directs on occasions.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('31', 'Tetsuya Wakano', '若野哲也', 'https://s4.anilist.co/file/anilistcdn/staff/large/n122343-B9qV2XqbJHfI.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Storyboard (ep 5)', 'Male', '[Twitter](https://twitter.com/i/user/349501447)

Directs on occasions.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('34', 'Arifumi Imai', '今井有文', 'https://s4.anilist.co/file/anilistcdn/staff/large/n126915-487XSSa9aEyt.png', '1982', '9', '22', NULL, NULL, NULL, NULL, NULL, 'Gunma Prefecture, Japan', 'Assistant Action Animation Director (ep 8)', 'Male', '[Twitter](https://twitter.com/i/user/1584883706858074112) | [Sakugabooru](https://www.sakugabooru.com/post?tags=arifumi_imai) 

Originating from [Production I.G](https://anilist.co/studio/10/). Currently freelance, but works mainly on [WIT Studio](https://anilist.co/studio/858/)''s projects.

While being an accomplished animator on [Guilty Crown](https://anilist.co/anime/10793/) and [Sengoku Basara](https://anilist.co/anime/5355/), he gained notoriety as the action animation director for [Attack on Titan](https://anilist.co/anime/16498/). Imai, together with Director [Tetsurou Araki](https://anilist.co/staff/100088/) and CG Director [Shuuhei Yabuta](https://anilist.co/staff/120824/), conceptualized how Attack on Titan''s ODM gear should move in animation and Imai himself storyboarded and animated many of the action setpieces. 

Married to [Hisako Akagi](https://anilist.co/staff/134516/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('37', 'Shinsei Kamattechan', '神聖かまってちゃん', 'https://s4.anilist.co/file/anilistcdn/staff/large/n156339-fJJfiowWfLHT.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Theme Song Performance (ED)', NULL, ' [Website](https://shinseikamattechan.jp/) | [YouTube](https://www.youtube.com/channel/UCp6p4QMnrhszX8rhzgy_q2Q/featured) | [Twitter](https://twitter.com/kamattechaninfo)

A Japanese rock band from Chiba, formed in 2007.

__Members:__
• __Noko__ (の子) born Jun 16, 1985 - lead vocals, guitar, keyboards, lyrics
• __mono__ born Dec 16, 1985 - leader, keyboard, guitar, tambourine
• __Misako__ (みさこ) born Oct 11, 1985 - drums

__Support Member(s)__
• __Yunosuke__ (ユウノスケ) - bass, chorus
• __Makio Hagiya__ (萩谷真紀夫)/"Makio" (まきお) born Aug 8, 1983 - engineer, synthesizer, vocoder, guitar, metallophone

__Former members:__
• __Chibagin__ (ちばぎん) - bass, chorus - left the band in January 2020.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('38', 'Satoshi Kadowaki', '門脇聡', 'https://s4.anilist.co/file/anilistcdn/staff/large/n103083-ISBLVu8AlYPp.png', '1981', '1', '21', NULL, NULL, NULL, NULL, NULL, 'Shimane Prefecture, Japan', 'Chief Animation Director (eps 3, 6, 9, 12)', 'Male', '[Twitter](https://twitter.com/i/user/1519543115367206913)

Originating from [Kyoto Animation](https://anilist.co/studio/2/). Currently affiliated with [Wit Studio](https://anilist.co/studio/858/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('39', 'Takuma Ebisu', '胡拓磨', 'https://s4.anilist.co/file/anilistcdn/staff/large/n138756-RyAuG0i2ATrv.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Action Animation Director (eps 1, 3, 6, 7, 10, 12)', 'Male', '[Twitter](https://twitter.com/i/user/2275305008)

Originating from [Production I.G](https://anilist.co/studio/10/). Currently an integral part of [Wit Studio](https://anilist.co/studio/858/)''s main staff.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('2', 'Yasuko Kobayashi', '小林靖子', 'https://s4.anilist.co/file/anilistcdn/staff/large/n102071-gPeWt6xwz2Dr.png', '1965', '4', '7', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan', 'Series Composition', 'Female', 'She was nicknamed "Yasuko Nyan" by her godfather Naomi Takebe, a producer at [Toei Animation](https://anilist.co/studio/18/Toei-Animation). ');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('3', 'Youko Hikasa', '日笠陽子', 'https://s4.anilist.co/file/anilistcdn/staff/large/n102263-aaPZtNXVUljW.jpg', '1985', '7', '16', NULL, NULL, NULL, NULL, NULL, 'Kanagawa, Japan', 'Theme Song Performance (ED1)', 'Female', '__Height:__ 157 cm 

[Profile](https://www.imenterprise.jp/profile.php?id=75) | [Blog](https://lineblog.me/hikasayoko/) | [Website](http://hikasayoko.com) | [Twitter](https://twitter.com/hikasayokoSP) | [Instagram](https://www.instagram.com/hikasayoko_official/)

Co-hosts the popular weekly radio show Odoroki Sentai Momonoki Five (おどろき戦隊モモノキファイブ) with fellow seiyuu [Eriko Nakamura](https://anilist.co/staff/103983).
She got married to a person from outside the industry in 2015.

__Non-anime roles:__
- Neve - Goddess of Victory: Nikke (VG)
- Red Hood - Goddess of Victory: Nikke (VG)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('5', 'Hironori Tanaka', '田中宏紀', 'https://s4.anilist.co/file/anilistcdn/staff/large/n103979-iNgo68ikjKgx.jpg', '1984', '6', '1', NULL, NULL, NULL, NULL, NULL, 'Aichi Prefecture, Japan', 'Key Animation (eps 7, 21)', 'Male', 'Originating from Eagle Nest. Currently freelance.

Tanaka first drew attention for the wild and imaginative fight sequences in Precure [Max Heart](https://anilist.co/anime/1929/) and [Splash Star](https://anilist.co/anime/1534/). Following this he expanded his scope and took up work on productions all around the industry, showing that fights aren''t everything he can do. His variety on running sequences, often showing an effiminate touch, as well as the particular attention to hair, down to all little strains and often involving a hairdo having a life of its own, are some of Tanaka''s most outstanding feats.

__Non-anime credits:__
~!
- Chief Animator, Animation Character Design, Storyboard, Director, Animation Director, Key Animation for "BlazBlue: Calamity Trigger (OP)" (video game, 2008)
- Key Animation for "Disgaea D2: A Brighter Darkness (OP)" (video game, 2013)
- Key Animation for "livetune adding Fukase (from SEKAI NO OWARI) 「Take Your Way」" (music video, 2013)
- Key Animation for "Rurouni Kenshin: Meiji Kenkaku Romantan Saisen (OP)" (video game, 2011)
- Key Animation for "Valkyria Chronicles III" (video game, 2011)!~');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('7', 'Mika Kobayashi', '小林未郁', 'https://s4.anilist.co/file/anilistcdn/staff/large/n113019-dl4h9kDOhJeK.png', '1978', '5', '31', NULL, NULL, NULL, NULL, NULL, 'Hiroshima, Japan', 'Insert Song Performance', NULL, '[Blog](http://moon.ap.teacup.com/micat/) | [Twitter](http://twitter.com/miccabose) | [Facebook](http://www.facebook.com/miccabose) | [Myspace](http://www.myspace.com/mikakobayashi)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('8', 'Kyouji Asano', '浅野恭司', 'https://s4.anilist.co/file/anilistcdn/staff/large/n113599-mgj0i95VJmbE.png', '1975', '7', '1', NULL, NULL, NULL, NULL, NULL, 'Koga, Ibaraki Prefecture, Japan ', 'Character Design', 'Male', '[Twitter](https://twitter.com/asanovic7) | [Instagram](https://www.instagram.com/asanovic7/)

Affiliated with [Wit Studio](https://anilist.co/studio/858/).

Married to [Reiko Sakai](https://anilist.co/staff/148052/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('9', 'Aimee Blackschleger', NULL, 'https://s4.anilist.co/file/anilistcdn/staff/large/21885.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Insert Song Performance', NULL, 'Aimee Blackschleger is a Tokyo based singer/songwriter & session recording artist.     She has also performed songs for a number of video games including Final Fantasy XIII-2, Phantasy Star Portable 2, and Living Universe.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('12', 'Cyua', 'キュア', 'https://s4.anilist.co/file/anilistcdn/staff/large/n117339-FhOEHzHrIGr4.png', NULL, '5', '1', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan', 'Insert Song Performance', 'Female', '__[Twitter](https://twitter.com/cyua_0501)__

__Cyua__ is a Japanese vocalist.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('13', 'Seiichi Nakatani', '中谷誠一', 'https://s4.anilist.co/file/anilistcdn/staff/large/n107409-vlIPWkDfuIxs.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (ep 25)', 'Male', 'Married to [Asako Nishida](https://anilist.co/staff/111163/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('14', 'Kouichi Arai', '新井浩一', 'https://s4.anilist.co/file/anilistcdn/staff/large/n121208-YNiLYX3kfrMU.png', '1961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Animation (ED1)', 'Male', '[Wiki (jp)](https://ja.wikipedia.org/wiki/新井浩一)

One of the founders of [Kinema Citrus](https://anilist.co/studio/290/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('15', 'Hiromi Katou', '加藤裕美', 'https://s4.anilist.co/file/anilistcdn/staff/large/n104676-HhlYZCcA3V2O.png', '1964', '4', '28', NULL, NULL, NULL, NULL, NULL, 'Hachioji, Tokyo Prefecture, Japan', 'Key Animation (ep 25)', 'Male', 'Originating from [Nippon Animation](https://anilist.co/studio/22/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('16', 'Mayu Fujimoto', '藤本真由', 'https://s4.anilist.co/file/anilistcdn/staff/large/121212-KAeAYv8iSKT5.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (OP1, ep 1)', 'Female', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('17', 'Kazuhiro Miwa', '三輪和宏', 'https://s4.anilist.co/file/anilistcdn/staff/large/n121205-47lcLjXc4tad.png', '1981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (ED2)', 'Male', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('18', 'Hiroshi Seko', '瀬古浩司', 'https://s4.anilist.co/file/anilistcdn/staff/large/n99012-KLlG37WH3z7s.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nagoya, Aichi Prefecture, Japan', 'Script (eps 3, 5-7, 10, 11, 15, 17, 18, 23)', 'Male', 'Hiroshi Seko is a screenwriter.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('21', 'Naoki Kobayashi', '小林直樹', 'https://s4.anilist.co/file/anilistcdn/staff/large/n122454-OVzn197SxMiY.png', '1989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (ep 9)', 'Male', '[Twitter](https://twitter.com/i/user/766781162702254080) | [Tumblr](https://equalizer7.tumblr.com/)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('22', 'Toshirou Fujii', '藤井俊郎', 'https://s4.anilist.co/file/anilistcdn/staff/large/n122947-9UFggKcHyNyX.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (ep 9)', 'Male', '[Twitter](https://twitter.com/i/user/110428710) | [Youtube](https://www.youtube.com/channel/UCmRSuuXaezno35FwwRA0Cwg)

Originating from [Pierrot](https://anilist.co/studio/1/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('23', 'Shouko Yasuda', '安田祥子', 'https://s4.anilist.co/file/anilistcdn/staff/large/n123423-KrMLdnFlS48u.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (eps 3, 4, 11, 15)', 'Female', 'In March 2010, she graduated from Tokyo Animation College.
');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('24', 'Daizen Komatsuda', '小松田大全', 'https://s4.anilist.co/file/anilistcdn/staff/large/n119436-lPj5jYk3eQ4n.jpg', '1973', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Storyboard (ep 23)', 'Male', '[Twitter](https://twitter.com/daizenium)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('25', 'You Moriyama', '森山洋', 'https://s4.anilist.co/file/anilistcdn/staff/large/n123865-HOGuRRYpnXoo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (OP1)', NULL, NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('27', 'Gustavo Nader', NULL, 'https://s4.anilist.co/file/anilistcdn/staff/large/n176920-QSZyEcLbv262.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ADR Director (Brazilian Portuguese)', NULL, NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('40', 'Ayumi Yamada', '山田歩', 'https://s4.anilist.co/file/anilistcdn/staff/large/n132652-PBSBU3OldB2S.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sub Character Design', 'Female', '[Twitter](https://twitter.com/24_ayame)

Affiliated with [Wit Studio](https://anilist.co/studio/858/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('32', 'Yuumi Kawai', '河井ゆう美', 'https://s4.anilist.co/file/anilistcdn/staff/large/n139359-u32A3Fhdmb3a.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Episode Director (ep 8)', NULL, '[Twitter](https://twitter.com/yumi_kawai_)

Kawai Yuumi is a director. She was born in Saitama, the capital of Saitama Prefecture. In 2011, she graduated from Tokyo Zokei University. In 2013, she earned a master''s degree at the Graduate School of Film and New Media, Tokyo University of the Arts.

(Source: AniDB)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('33', 'Arifumi Imai', '今井有文', 'https://s4.anilist.co/file/anilistcdn/staff/large/n126915-487XSSa9aEyt.png', '1982', '9', '22', NULL, NULL, NULL, NULL, NULL, 'Gunma Prefecture, Japan', 'Assistant Action Animation Director (ep 8)', 'Male', '[Twitter](https://twitter.com/i/user/1584883706858074112) | [Sakugabooru](https://www.sakugabooru.com/post?tags=arifumi_imai) 

Originating from [Production I.G](https://anilist.co/studio/10/). Currently freelance, but works mainly on [WIT Studio](https://anilist.co/studio/858/)''s projects.

While being an accomplished animator on [Guilty Crown](https://anilist.co/anime/10793/) and [Sengoku Basara](https://anilist.co/anime/5355/), he gained notoriety as the action animation director for [Attack on Titan](https://anilist.co/anime/16498/). Imai, together with Director [Tetsurou Araki](https://anilist.co/staff/100088/) and CG Director [Shuuhei Yabuta](https://anilist.co/staff/120824/), conceptualized how Attack on Titan''s ODM gear should move in animation and Imai himself storyboarded and animated many of the action setpieces. 

Married to [Hisako Akagi](https://anilist.co/staff/134516/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('35', 'Arifumi Imai', '今井有文', 'https://s4.anilist.co/file/anilistcdn/staff/large/n126915-487XSSa9aEyt.png', '1982', '9', '22', NULL, NULL, NULL, NULL, NULL, 'Gunma Prefecture, Japan', 'Assistant Action Animation Director (ep 8)', 'Male', '[Twitter](https://twitter.com/i/user/1584883706858074112) | [Sakugabooru](https://www.sakugabooru.com/post?tags=arifumi_imai) 

Originating from [Production I.G](https://anilist.co/studio/10/). Currently freelance, but works mainly on [WIT Studio](https://anilist.co/studio/858/)''s projects.

While being an accomplished animator on [Guilty Crown](https://anilist.co/anime/10793/) and [Sengoku Basara](https://anilist.co/anime/5355/), he gained notoriety as the action animation director for [Attack on Titan](https://anilist.co/anime/16498/). Imai, together with Director [Tetsurou Araki](https://anilist.co/staff/100088/) and CG Director [Shuuhei Yabuta](https://anilist.co/staff/120824/), conceptualized how Attack on Titan''s ODM gear should move in animation and Imai himself storyboarded and animated many of the action setpieces. 

Married to [Hisako Akagi](https://anilist.co/staff/134516/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('36', 'Arifumi Imai', '今井有文', 'https://s4.anilist.co/file/anilistcdn/staff/large/n126915-487XSSa9aEyt.png', '1982', '9', '22', NULL, NULL, NULL, NULL, NULL, 'Gunma Prefecture, Japan', 'Assistant Action Animation Director (ep 8)', 'Male', '[Twitter](https://twitter.com/i/user/1584883706858074112) | [Sakugabooru](https://www.sakugabooru.com/post?tags=arifumi_imai) 

Originating from [Production I.G](https://anilist.co/studio/10/). Currently freelance, but works mainly on [WIT Studio](https://anilist.co/studio/858/)''s projects.

While being an accomplished animator on [Guilty Crown](https://anilist.co/anime/10793/) and [Sengoku Basara](https://anilist.co/anime/5355/), he gained notoriety as the action animation director for [Attack on Titan](https://anilist.co/anime/16498/). Imai, together with Director [Tetsurou Araki](https://anilist.co/staff/100088/) and CG Director [Shuuhei Yabuta](https://anilist.co/staff/120824/), conceptualized how Attack on Titan''s ODM gear should move in animation and Imai himself storyboarded and animated many of the action setpieces. 

Married to [Hisako Akagi](https://anilist.co/staff/134516/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('1', 'Tetsurou Araki', '荒木哲郎', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100088-tFWlDxGJEPlk.png', '1976', '11', '5', NULL, NULL, NULL, NULL, NULL, 'Sayama, Saitama Prefecture, Japan', 'Director', 'Male', '[Twitter](https://twitter.com/i/user/265406784) | [Facebook](https://www.facebook.com/tetsuro.araki.75)

Joined Madhouse in 1999 as production manager making his storyboard and episode director debut with [Galaxy Angel](https://anilist.co/anime/383/) just two years later. In 2005, he made his proper directorial debut with [Otogi-juushi Akazukin](https://anilist.co/anime/402/), a single-episode OVA which was aimed more at figure collectors than at anime fans. Its popularity birthed the full-length series and manga which both came out afterwards.

In 2006, Araki helmed his first big project with [Death Note](https://anilist.co/anime/1535/), which gained him international praise. He has since gone on to direct numerous series from originals such as [Guilty Crown](https://anilist.co/anime/10793/) and [Kabaneri of the Iron Fortress](https://anilist.co/anime/21196/), to the massively successful adaptation of [Attack on Titan](https://anilist.co/anime/16498/), which''s production Araki left with the studio change.

He has also been close friends with [Takayuki Hirao](https://anilist.co/staff/102247/) since their days at Madhouse.

Married to [Aya Hida](https://anilist.co/staff/144626/).

works at [Wit Studio](https://anilist.co/studio/858/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('4', 'Hiroyuki Sawano', '澤野弘之', 'https://s4.anilist.co/file/anilistcdn/staff/large/n103509-AEWe3bTalzpc.jpg', '1980', '9', '12', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan', 'Music', 'Male', '[Website](http://www.sawanohiroyuki.com/) | [Website (nZk)](http://www.sh-nzk.net) | [Twitter](https://twitter.com/sawano_nZk) | [Youtube](https://www.youtube.com/user/SawanoHiroyukiSMEJ) | [Spotify](https://open.spotify.com/artist/0Riv2KnFcLZA3JSVryRg4y?si=KaE_XDXqSRewfXXsxBNzoA) | [Apple Music](https://music.apple.com/artist/hiroyuki-sawano/156620523) | [Deezer](https://www.deezer.com/artist/1315147) 

Composer and musician represented by VV-ALKLINE since 2017. He was previously with Legendoor from 2006 to 2017. 
Sawano began practicing the piano at an early age, and studied composition, arrangement, orchestration, and piano under Nobuchika Tsuboi from the age of 17.

Active as a composer since 2004, he first gained recognition for his work on the Team Medical Dragon TV drama in 2006. He made his debut as an anime composer in 2006 on [Soul Link](https://anilist.co/anime/854/). In 2009, he released his first solo album *musica*, which included some of his more popular songs done for TV shows. In 2014, he launched a new vocal song project under the name "SawanoHiroyuki[nZk]", producing the first album *UnChild* with [Aimer](https://anilist.co/staff/107859/) as the vocalist under the name SawanoHiroyuki[nZk]:Aimer. Since then his songs under this vocal song project have also been used as the opening and ending themes for various anime.

He has cited [Joe Hisaishi](https://anilist.co/staff/100738/), [Youko Kanno](https://anilist.co/staff/95508/), [Hans Zimmer](https://anilist.co/staff/104669/) and Danny Elfman as major inspirations.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('41', 'Takayuki Hirao', '平尾隆之', 'https://s4.anilist.co/file/anilistcdn/staff/large/n102247-4bfh58Mq1Y3x.png', '1979', '1', '10', NULL, NULL, NULL, NULL, NULL, 'Tsuda, Kagawa Prefecture, Japan', 'Storyboard (eps 5, 7, 11)', 'Male', '[Twitter](https://twitter.com/i/user/9456982)

He graduated from Osaka''s Designer College and started his career at Madhouse as a production assistant, later making the transition to storyboarder and episode director with [Texhnolyze](https://anilist.co/anime/26/). During his time at Madhouse he served as Assistant Director to [Satoshi Kon](https://anilist.co/staff/99580/Satoshi-Kon) on [Paranoia Agent](https://anilist.co/anime/323/Paranoia-Agent/) and was greatly influenced by him, regarding him as his mentor. Shortly after leaving Madhouse he joined Ufotable, where he worked for several years and made his proper directorial debut with [Kara no Kyoukai 5](https://anilist.co/anime/4282/). 

He left Ufotable in 2016 and he''s been freelance since, returning to the company only to direct the opening for the video game Shin Megami Tensei: Strange Journey. 

Him and [Tetsurou Araki](https://anilist.co/staff/100088/) are really close friends since their days at Madhouse. They run a column called *Bariuta no ai wo shiritai!!* published in the Animage monthly magazine. 

He is married to color designer [Emi Chiba](https://anilist.co/staff/103075/)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('54', 'Guilherme Marques', NULL, 'https://s4.anilist.co/file/anilistcdn/staff/large/n195092-e5zNFTfGRO2F.jpg', '1978', '9', '26', NULL, NULL, NULL, NULL, NULL, 'São Paulo, Brazil', 'ADR Director (Brazilian Portuguese)', 'Male', '[Instagram](https://Instagram.com/guimarques78/) | [Facebook](https://facebook.com/guimarques78)

Guilherme Marques is a Brazilian actor, voice actor, dubbing director, and architect.

__Non-Anime Roles:__
~!- Dickon Tarly (Game of Thrones)
- Antonio Garcia / Gold Samurai Ranger (2nd voice; Power Rangers: Samurai)
- Shisui Uchiha (Naruto Shippuden: Ultimate Ninja Storm 4 and Naruto X Boruto: Ultimate Ninja Storm Connections)
- Mr. Phillip Frond (2nd voice - 2nd season onwards; Bob''s Burgers)
- Travis Marshall (Dexter)
- Pietro Maximoff / Quiksilver (LEGO Marvel''s Avengers)
- Joseph Turner (Call of Duty: WWII)
- George Takei (2nd voice; Futurama)
- Harald Fairhair (Assassin''s Creed Valhalla)
- Chief (2nd dub; The Fox and the Hound)
- Amang Paso and Bantay (Trese)
- Sergeant Kong Chul-Ho (Descendants of the Sun)
- Joseph Campbell (Rick and Morty)
- Ricpon (Power Rangers Ninja Steel)
- David Hasselhoff (Close Enough)
!~');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('6', 'Hajime Isayama', '諫山創', 'https://s4.anilist.co/file/anilistcdn/staff/large/n106705-ttS2qZpF2FTZ.jpg', '1986', '8', '29', NULL, NULL, NULL, NULL, NULL, 'Hita, Oita Prefecture, Japan', 'Original Creator', 'Male', '<br>[Official Blog](http://blog.livedoor.jp/isayamahazime/)

After graduating from Oita Prefectural Hitarinkou High School, he matriculated in the cartoon design program of the cartoon arts department at Kyushu Designer Gakuin. After graduating, he moved to Tokyo and started drawing his manga works.

In 2006, he applied for the Magazine Grand Prix known as MGP promoted by Kodansha Ltd. and his work <em>Attack on Titan</em> was given the "Fine Work" award. Originally, he offered his work to the Weekly Shonen Jump department at Shueisha, where he was advised to modify his style and story to be more suitable for Weekly Shonen Jump. He declined and instead, decided to take it to the Weekly Shonen Magazine department at Kodansha Ltd.

In 2008, he applied for the 80th Weekly Shonen Magazine Freshman Manga Award, where his work "Heart Break One" was given the Special Encouragement Award. His other work "orz" was chosen as a selected work in the 81st Weekly Shonen Magazine Freshman Manga Award.

In 2009, his first serialized work _Attack on Titan_ appeared in Bessatsu Shonen Magazine, a monthly magazine. It later was awarded the Shonen category of the 35th Kodansha Manga Award in 2011.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('10', 'Hiroyuki Tanaka', '田中洋之', 'https://s4.anilist.co/file/anilistcdn/staff/large/22045.jpg', '1971', '4', '22', NULL, NULL, NULL, NULL, NULL, 'Kanagawa Prefecture, Japan', 'Assistant Director', 'Male', 'Anime director. He made his directorial debut with Claymore and has since continued to serve as assistant and episode director on various Madhouse and Wit Studio projects.

Not to be confused with the [producer](https://anilist.co/staff/155543) or director with the same name.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('11', 'Hiroyuki Tanaka', '田中洋之', 'https://s4.anilist.co/file/anilistcdn/staff/large/22045.jpg', '1971', '4', '22', NULL, NULL, NULL, NULL, NULL, 'Kanagawa Prefecture, Japan', 'Episode Director (eps 1, 10, 18, 21, 24)', 'Male', 'Anime director. He made his directorial debut with Claymore and has since continued to serve as assistant and episode director on various Madhouse and Wit Studio projects.

Not to be confused with the [producer](https://anilist.co/staff/155543) or director with the same name.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('19', 'Tomohiro Hirata', '平田智浩', 'https://s4.anilist.co/file/anilistcdn/staff/large/n122071-OfnFZvjQjbZh.png', '1960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (ep 25)', 'Male', 'Hirata Tomohiro is an animator, character designer and director. Pre-''00s he was still mainly an animator and character designer, making his debut as a director in 2003 with [Peacemaker](https://anilist.co/anime/161/).

Married to [Atsuko Nakajima](https://anilist.co/staff/102141/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('20', 'Tomohiro Hirata', '平田智浩', 'https://s4.anilist.co/file/anilistcdn/staff/large/n122071-OfnFZvjQjbZh.png', '1960', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Storyboard (eps 8, 19, 21, 25)', 'Male', 'Hirata Tomohiro is an animator, character designer and director. Pre-''00s he was still mainly an animator and character designer, making his debut as a director in 2003 with [Peacemaker](https://anilist.co/anime/161/).

Married to [Atsuko Nakajima](https://anilist.co/staff/102141/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('26', 'Linked Horizon', NULL, 'https://s4.anilist.co/file/anilistcdn/staff/large/n114960-1J15bMxVP2ss.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Theme Song Performance (ED)', NULL, '[Website](https://linked-horizon.com/) | [Twitter](https://twitter.com/L_Horizon_info)

Linked Horizon is a group of artists led by the sound creator [Revo](https://anilist.co/staff/196383/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('28', 'mpi', 'mpi', 'https://s4.anilist.co/file/anilistcdn/staff/large/n189568-g658VunWjdzi.png', NULL, '4', '4', NULL, NULL, NULL, NULL, NULL, 'Nagoya City, Japan', 'Theme Song Performance (ED)', NULL, '__Mpi__ is a Japanese vocalist, lyricist and translator known to frequently collaborate with [Hiroyuki Sawano](https://anilist.co/staff/103509/Hiroyuki-Sawano) in his vocal project SawanoHiroyuki[nZk]. He has lived 5 years in New York, USA, and his name is an abbreviation for Music Pro Inc.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('84', 'Gege Akutami', '芥見下々', 'https://s4.anilist.co/file/anilistcdn/staff/large/n125415-B1o6NtIImcCK.png', '1992', '2', '26', NULL, NULL, NULL, NULL, NULL, 'Iwate, Japan', 'Original Creator', NULL, 'Creator of Jujutsu Kaisen and former assistant of [Yasuhiro Kano](https://anilist.co/staff/96908/Yasuhiro-Kano).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('85', 'Hiroshi Seko', '瀬古浩司', 'https://s4.anilist.co/file/anilistcdn/staff/large/n99012-KLlG37WH3z7s.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nagoya, Aichi Prefecture, Japan', 'Script (eps 1-24)', 'Male', 'Hiroshi Seko is a screenwriter.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('86', 'Seong-Hu Park', '박성후', 'https://s4.anilist.co/file/anilistcdn/staff/large/n123074-6tFkJXFgMNv9.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'South Korea', 'Director', 'Male', 'Aspired to become an animator when he saw [Macross: Do You Remember Love?](https://anilist.co/anime/1089/), while in elementary school. He studied art in middle school and high school, and later enrolled to a university with an animation department. There he was set on either moving to the United States or Japan to study abroad, and ended up choosing Japan due to how popular hand-drawn animation was there. After moving to Japan and graduating from Chiyoda Institute of Technology and Arts, he joined [Studio Comet](https://anilist.co/studio/126/) in 2005 and began his career in the industry.

He later joined [MAPPA](https://anilist.co/studio/569/) after getting scouted out by the studio''s founder, [Masao Maruyama](https://anilist.co/staff/103170/).

Debuted as a director in 2017 with [Garo: Vanishing Line](https://anilist.co/anime/99796/).

In March 2021 he established the [E&H Production](https://anilist.co/studio/7229) studio becoming its Representative.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('87', 'Hiroaki Tsutsumi', '堤博明', 'https://s4.anilist.co/file/anilistcdn/staff/large/n120019-mfFCxPI5Tt4o.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Music', NULL, '[Profile (Miracle Bus)](http://miraclebus.com/composer/hiroakitsutsumi) | [Twitter](https://twitter.com/hiroaki850605)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('88', 'Yoshimasa Terui', '照井順政', 'https://s4.anilist.co/file/anilistcdn/staff/large/n161984-12y1a88eyVs0.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Music', 'Male', '__[Twitter](https://twitter.com/YoshimasaTerui)__

__Yoshimasa Terui__ is a Japanese composer, arranger and guitarist. He composed music for the idol unit [Sora Tob Sakana](https://anilist.co/staff/126806/Sora-Tob-Sakana) and is a member of the math-rock band Haisuinonasa.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('89', 'Tadashi Hiramatsu', '平松禎史', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101185-CJLT9YKxSDZC.png', '1963', '3', '17', NULL, NULL, NULL, NULL, NULL, 'Toyokawa, Aichi Prefecture, Japan', 'Character Design', 'Male', '[Twitter](https://twitter.com/i/user/156204341) | [Instagram](https://www.instagram.com/hiramatz/) | [Blog](https://ameblo.jp/tadashi-hiramatz/)

Affiliated with [MAPPA](https://anilist.co/studio/569/).

Although at first becoming a salary man after graduation, he later decided to become animator and joined Nakamura Production, where he debuted on [Bugtte Honey](https://anilist.co/anime/10210/) in 1987. He later joined Studio Gainax and was involved in the production of [Evangelion](https://anilist.co/anime/30/Shin-Seiki-Evangelion/). In 1998 he debuted as character designer of [Kare Kano](https://anilist.co/anime/145/Kareshi-Kanojo-no-Jijou/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('90', 'Alisa Okehazama', '桶狭間ありさ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n168518-sKRqXTGjnxTj.jpg', '1993', '2', '4', NULL, NULL, NULL, NULL, NULL, 'Aichi Prefecture, Japan', 'Music', 'Female', '[Twitter (Alisa Okehazama)](https://twitter.com/aliiisa_ok) | [Twitter (Alisa Fukami)](https://twitter.com/alisa_024) | [Facebook](https://www.facebook.com/%E6%A1%B6%E7%8B%AD%E9%96%93%E3%81%82%E3%82%8A%E3%81%95-100315608634523/) | [SoundCloud (Alisa Fukami)](https://soundcloud.com/alisafukami) | [Spotify](https://open.spotify.com/artist/6VMGyvtQPQ1uPvkaSm73aR?si=NT2wdnG2Sy60driRfdIQdw) | [AppleMusic](https://music.apple.com/jp/artist/alisa-okehazama/1548614368) | [Blog](https://profiee.com/i/alisa_oke) | [Weibo](http://weibo.com/okehazama)

Alisa Okehazama, alternatively known as Alisa Fukami is a Japanese composer and arranger');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('91', 'Hiroshi Seko', '瀬古浩司', 'https://s4.anilist.co/file/anilistcdn/staff/large/n99012-KLlG37WH3z7s.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nagoya, Aichi Prefecture, Japan', 'Series Composition', 'Male', 'Hiroshi Seko is a screenwriter.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('92', 'Eve', NULL, 'https://s4.anilist.co/file/anilistcdn/staff/large/n132869-8Nhbq5QQARwF.png', '1995', '5', '23', NULL, NULL, NULL, NULL, NULL, NULL, 'Theme Song Performance (OP1)', 'Male', '__[Website](http://eveofficial.com/) | [Twitter](https://twitter.com/oo0Eve0oo) | [Instagram](https://www.instagram.com/eve_harapeco/) | [YouTube](http://www.youtube.com/user/ooo0eve0ooo)__

__Introduction:__
Eve is a Japanese utaite, mangaka, fashion designer, vocalist, guitarist, lyricist and composer under record label TOY''S FACTORY (2019–), having previously been under record label harapeco records (2016–2018). He works closely with the arranger [Tomoki Numano](https://anilist.co/staff/137906/Tomoki-Numano), otherwise known as Numa, who arranges most of his songs.

__Biography:__
He first started uploading covers on NicoNico Douga in April 2009 at the age of 13. Aside from covering songs, he was one of the lead singers for the Japanese indie band einie, alongside Natsushiro Takaaki; he also composed songs and wrote lyrics for the band. 

He started going by the name Eve in October 2009; before that, he had gone by the names Keitora and Kurowa. He also plays the acoustic guitar and sometimes accompanies his songs with his own acoustic arrangements.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('93', 'ALI', 'ALI', 'https://s4.anilist.co/file/anilistcdn/staff/large/n145951-ScYq0yYFiGLy.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Shibuya, Tokyo, Japan', 'Theme Song Performance (ED1)', NULL, '**Genres:** Hip-hop, Funk, Jazz

__[Website](https://alienlibertyinternational.com/)__ | __[Twitter](https://twitter.com/ALI_MUSIC_DANCE)__ | __[Youtube](https://www.youtube.com/channel/UCnYvfe8YHnRRly5SCA8mP5A)__ | __[Spotify](https://open.spotify.com/artist/2Qqrew4ZcEwf9NY7UqWGfU)__

__Introduction:__
ALI, otherwise known as Alien Liberty International, is a multinational hip-hop/funk band led by vocalist [Reo Imamura](https://anilist.co/staff/158752/Reo-Imamura), otherwise known as Leo. The band has its roots all over earth, from Japan to Europe, the United States to Asia, Africa and other countries.

Their first single *"Wild Side"* was chosen as the opening theme to the anime [*BEASTARS*](https://anilist.co/anime/107660). A year later, their second single *"Lost in Paradise"* featuring rapper [AKLO](https://anilist.co/staff/191499/) was chosen as the ending theme to the anime [*Jujutsu Kaisen*](https://anilist.co/anime/113415).

The band announced an indefinite hiatus on May 14, 2021 following the arrest and indictment of member Kahadio. They also announced his contract termination from the band the same day.  As a result, the band was dropped from performing the opening theme *"Teenage City Riot"* for the anime [*Subarashiki Kono Sekai The Animation*](https://anilist.co/anime/120376) before it began airing. Half a year later on Nov 18, following their indefinite hiatus, the band announced they would resume activities.

__Members:__
- [Reo Imamura](https://anilist.co/staff/158752/Reo-Imamura) (今村怜央), better known as Leo – leader, vocalist
- [Luthfi Kusuma](https://anilist.co/staff/158776/Luthfi) (楠間ルッフィ), better known as Luthfi – bassist
- [Alexander Taiyou Fidel](https://anilist.co/staff/158775/Alex) (アレクサンダー・タイヨウ・フィデル), better known as Alex – percussionist
- [Aiichirou Tanaka](https://anilist.co/staff/192971) (田中愛一朗), better known as Cesar – guitarist

__Former Members:__
- [Jua](https://anilist.co/staff/158751/Jua) – rapper
- [Zeru](https://anilist.co/staff/158774/Zeru) – guitarist
- [Kadio Shirai](https://anilist.co/staff/158772/Kahadio) (白井カディオ), better known as Kahadio – drummer
- [Yuu Hagiwara](https://anilist.co/staff/158777/Yu) (萩原優), better known as Yuu/Yu – saxist
- [Jin Inoue](https://anilist.co/staff/158773/Jin) (井上仁), better known as Jin – keyboardist/pianist');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('94', 'Akiko Fujita', '藤田亜紀子', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sound Director', 'Female', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('95', 'Miki Kaneda', '兼田美希', 'https://s4.anilist.co/file/anilistcdn/staff/large/n157075-xJxSzxJfbGmR.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CG Director', NULL, 'Miki Kaneda is a CG artist.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('96', 'Yui Umemoto', '梅本唯', 'https://s4.anilist.co/file/anilistcdn/staff/large/n142936-wmrPkmCaZGJV.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Assistant Director', 'Male', 'Director currently affiliated with [E&H Productions](https://anilist.co/studio/7229/EH-Productions).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('97', 'Chikako Kamata', '鎌田千賀子', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', NULL, '3', '20', NULL, NULL, NULL, NULL, NULL, 'Miyagi Prefecture, Japan', 'Color Design', 'Female', 'Color designer currently affiliated with [E&H Productions](https://anilist.co/studio/7229/EH-Productions).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('98', 'Keisuke Yanagi', '柳圭介', 'https://s4.anilist.co/file/anilistcdn/staff/large/n121967-BZGYpZetxIyV.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Editing', 'Male', '__[Twitter](https://twitter.com/keisukeyanagi01)__

__Keisuke Yanagi__ is a Japanese editor.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('99', 'Teppei Itou', '伊藤哲平', 'https://s4.anilist.co/file/anilistcdn/staff/large/n187695-66OoI6HPffxX.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Director of Photography', 'Male', '[Twitter](https://twitter.com/hieimarumaru)

An anime photography director affiliated with [MAPPA](https://anilist.co/studio/569/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('100', 'Yuuji Hosogoe', '細越裕治', 'https://s4.anilist.co/file/anilistcdn/staff/large/n121055-oqPUn8ibwvqZ.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Animation Director (ep 1)', 'Male', '[Twitter](https://twitter.com/ukiya01)

Originating from [Production I.G](https://anilist.co/studio/10/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('101', 'Takako Shimizu', '清水貴子', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Animation Director (ED2, ep 1)', 'Female', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('102', 'Yui Umemoto', '梅本唯', 'https://s4.anilist.co/file/anilistcdn/staff/large/n142936-wmrPkmCaZGJV.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Episode Director (eps 1, 21)', 'Male', 'Director currently affiliated with [E&H Productions](https://anilist.co/studio/7229/EH-Productions).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('103', 'Isuta', '椅子汰', 'https://s4.anilist.co/file/anilistcdn/staff/large/n133756-rl9VuYShPff6.png', '1994', '2', '1', NULL, NULL, NULL, NULL, NULL, 'Aichi Prefecture, Japan', 'Key Animation (eps 1, 19)', NULL, '[Twitter](https://twitter.com/i/user/247615625)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('104', 'Satoshi Kimura', '木村智', 'https://s4.anilist.co/file/anilistcdn/staff/large/n124829-gVhcrkNFfwIP.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (ep 1)', 'Male', '[Twitter](https://twitter.com/i/user/1077078108)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('105', 'Anri Yamazaki', '山崎杏理', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Assistant Animation Director (ep 1)', 'Female', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('106', 'Ryuu Nakayama', '中山竜', 'https://s4.anilist.co/file/anilistcdn/staff/large/n133512-Zb5TCzTcZrSC.jpg', '1990', '2', '10', NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (ep 1)', 'Male', '[Twitter](https://twitter.com/i/user/1382466685257457664)

Founder of Creative unit [Andraft](https://anilist.co/studio/7483/Andraft).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('107', 'Yoshihide Ideue', '井手上義英', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Assistant Animation Director (ep 1)', 'Male', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('108', 'Kouki Fujimoto', '藤本航己', 'https://s4.anilist.co/file/anilistcdn/staff/large/n138370-cq1n4Of2zJoz.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (OP1, OP2, eps 1, 9, 19, 24)', 'Male', '[Twitter](https://twitter.com/kojikimo)

Originating from Studio One Pack. Currently freelance.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('67', 'Kiyoko Sayama', '佐山聖子', 'https://s4.anilist.co/file/anilistcdn/staff/large/101064-l88oxllCDCcQ.jpg', NULL, '8', '3', NULL, NULL, NULL, NULL, NULL, 'Saitama Prefecture, Japan', 'Storyboard (eps 20, 27, 32, 33, 36)', 'Female', '**[Twitter](https://twitter.com/mill_sister)** | **[Website (blog)](https://blog.goo.ne.jp/gooussy)**

Kiyoko Sayama is a Japanese director, episode director, animation director and storyboard artist.

Married to [Tetsuya Kumagai](https://anilist.co/staff/101548/Tetsuya-Kumagai).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('68', 'Nightmare', 'ナイトメア ', 'https://s4.anilist.co/file/anilistcdn/staff/large/6201.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Theme Song Performance (OP1, ED1)', NULL, '[Official Website](https://www.nightmare-web.com/pc/) | [Spotify](https://open.spotify.com/artist/11CxpTfZC60MYKjL7HESKR?autoplay=true) | [Twitter](https://twitter.com/nightmare_staff)

Nightmare began in January 2000 by Sakito and Hitsugi while most of the members were still in high school. Soon, Yomi was invited by Sakito, Ni-ya by Hitsugi, and Zannin joined after they heard their classmates were forming a band. They were all influenced by either X Japan or Luna Sea in some form.  Most of their songs have a heavy metal element with a heavy bass line, tricky rhythms and changes in melodic keys. Although their recent songs have a slight avantgarde/alternative element (this is prominent especially in their "anima" album), the band has still kept its roots from their indies'' days. They have also experimented with jazz, ambience, electronica, techno and bossa nova styles of music. Even though most of their songs are fast tempoed, they have written a fair amount of rock ballads as well.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('69', 'Maximum the Hormone', 'マキシマムザホルモン ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101206-qGFd8nh03iuY.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Theme Song Performance (OP2, ED2)', NULL, 'Striking contrasts from pop-punk to thrash-metal sum up the sound of the band. These various styles, expertly displayed through Daisuke and Ryo''s screaming vocals, Ue''s rhythmic slap bass, and the remarkable voice of Ryo''s older sister and drummer, Nao, allow the band to fit well in several genres. The names and lyrics of their songs don''t make a lot of sense, but the band doesn''t want them to anyway.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('70', 'Yuuzou Satou', '佐藤雄三', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101498-NNAUrHAz4eAu.png', '1960', '2', '19', NULL, NULL, NULL, NULL, NULL, 'Fukuyama, Japan', 'Storyboard (ep 23)', 'Male', '[Wiki (jp)](https://ja.wikipedia.org/wiki/佐藤雄三)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('71', 'Takahiro Kagami', '加々美高浩', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101727-1TmjZfdxRAiv.png', '1962', '2', '6', NULL, NULL, NULL, NULL, NULL, 'Yokohama, Kanagawa Prefecture, Japan', 'Chief Animation Director', 'Male', '[Twitter](https://twitter.com/jetikariya50)

Acknowledged internationally for his work on [Yu☆Gi☆Oh!](https://anilist.co/anime/481/) and [Death Note](https://anilist.co/anime/1535/).

Famous for his depictions of fingers and the "Joey Chin" in Yu-Gi-Oh!.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('72', 'Takahiro Kagami', '加々美高浩', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101727-1TmjZfdxRAiv.png', '1962', '2', '6', NULL, NULL, NULL, NULL, NULL, 'Yokohama, Kanagawa Prefecture, Japan', 'Animation Director (ED2, eps 1, 25, 37)', 'Male', '[Twitter](https://twitter.com/jetikariya50)

Acknowledged internationally for his work on [Yu☆Gi☆Oh!](https://anilist.co/anime/481/) and [Death Note](https://anilist.co/anime/1535/).

Famous for his depictions of fingers and the "Joey Chin" in Yu-Gi-Oh!.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('73', 'Takahiro Kagami', '加々美高浩', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101727-1TmjZfdxRAiv.png', '1962', '2', '6', NULL, NULL, NULL, NULL, NULL, 'Yokohama, Kanagawa Prefecture, Japan', 'Key Animation (eps 25, 29, 37)', 'Male', '[Twitter](https://twitter.com/jetikariya50)

Acknowledged internationally for his work on [Yu☆Gi☆Oh!](https://anilist.co/anime/481/) and [Death Note](https://anilist.co/anime/1535/).

Famous for his depictions of fingers and the "Joey Chin" in Yu-Gi-Oh!.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('74', 'Manabu Tamura', '田村学', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101758-Z7U7AFlzBw0B.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Producer', 'Male', 'A producer working for VAP.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('75', 'Yuuji Ikeda', '池田祐二', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101824-HoIsy6GnenC9.png', '1952', '7', '6', NULL, NULL, NULL, NULL, NULL, 'Gunma Prefecture, Japan', 'Background Art (OP1, ED2)', 'Male', '[Wiki (jp)](https://ja.wikipedia.org/wiki/池田祐二) | [Studio Wyeth](https://www.studio-wyeth.jp/)

A prominent art director, as well as the founder and representative director of Studio Wyeth.

_Note: Not to be confused with animator [Yuuji Ikeda](https://anilist.co/staff/144426/)._');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('76', 'Yasuko Kobayashi', '小林靖子', 'https://s4.anilist.co/file/anilistcdn/staff/large/n102071-gPeWt6xwz2Dr.png', '1965', '4', '7', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan', 'Script (eps 6, 15, 19, 31, 32)', 'Female', 'She was nicknamed "Yasuko Nyan" by her godfather Naomi Takebe, a producer at [Toei Animation](https://anilist.co/studio/18/Toei-Animation). ');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('77', 'Toshiki Inoue', '井上敏樹', 'https://s4.anilist.co/file/anilistcdn/staff/large/102173-KHr5L9Qx3xZn.jpg', '1959', '11', '28', NULL, NULL, NULL, NULL, NULL, 'Urawa, Japan', 'Script (eps 1-5, 8-10, 12-14, 16, 17, 20-22, 25, 27-29, 35-37)', 'Male', '**[Madhouse Profile](http://www.madhouse.co.jp/special/mhpf/mhpf_no028.html)**

**Inoue Toshiki** is a Japanese script/screenwriter and series composer.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('78', 'Yoshihisa Hirano', '平野義久', 'https://s4.anilist.co/file/anilistcdn/staff/large/n102221-NnK2mJ58cz1R.png', '1971', '12', '7', NULL, NULL, NULL, NULL, NULL, 'Shingu, Wakayama Prefecture, Japan', 'Music', 'Male', '[Website](http://www.yoshihisahirano.com/)

Studied composing at Juilliard School in 1992, and later at Eastman School of Music. Some of the awards he has received include first prize in the Axia Tape Competition in Japan during his high school years and New York''s New Music for Young Ensembles. He has composed music for concert, dance, film and radio with compositions ranging from classical to pop and contemporary music. In recent years he has composed a number of anime soundtracks. He has also made music for Tokyo DisneySea''s 2002 and 2004 countdown celebrations.    

Hirano has paired with pianist Masako Hosoda to form the unit Bleu and released two albums. He is also responsible for some of the orchestration and arrangement for a number of Ali Project''s albums.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('79', 'Takayuki Hirao', '平尾隆之', 'https://s4.anilist.co/file/anilistcdn/staff/large/n102247-4bfh58Mq1Y3x.png', '1979', '1', '10', NULL, NULL, NULL, NULL, NULL, 'Tsuda, Kagawa Prefecture, Japan', 'Episode Director (ep 36)', 'Male', '[Twitter](https://twitter.com/i/user/9456982)

He graduated from Osaka''s Designer College and started his career at Madhouse as a production assistant, later making the transition to storyboarder and episode director with [Texhnolyze](https://anilist.co/anime/26/). During his time at Madhouse he served as Assistant Director to [Satoshi Kon](https://anilist.co/staff/99580/Satoshi-Kon) on [Paranoia Agent](https://anilist.co/anime/323/Paranoia-Agent/) and was greatly influenced by him, regarding him as his mentor. Shortly after leaving Madhouse he joined Ufotable, where he worked for several years and made his proper directorial debut with [Kara no Kyoukai 5](https://anilist.co/anime/4282/). 

He left Ufotable in 2016 and he''s been freelance since, returning to the company only to direct the opening for the video game Shin Megami Tensei: Strange Journey. 

Him and [Tetsurou Araki](https://anilist.co/staff/100088/) are really close friends since their days at Madhouse. They run a column called *Bariuta no ai wo shiritai!!* published in the Animage monthly magazine. 

He is married to color designer [Emi Chiba](https://anilist.co/staff/103075/)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('80', 'Masao Maruyama', '丸山正雄', 'https://s4.anilist.co/file/anilistcdn/staff/large/n103170-wFWE1oHKwqJH.png', '1941', '6', '19', NULL, NULL, NULL, NULL, NULL, 'Shiogama, Japan', 'Producer', 'Male', '[Twitter](https://twitter.com/i/user/136171134)

A long-serving anime producer, as well as a founder of [Madhouse](https://anilist.co/studio/11/), [Mappa](https://anilist.co/studio/569/) and [Studio M2](https://anilist.co/studio/6137/).

Maruyama graduated Hosei University in 1963, and soon after, he found work at [Mushi Production](https://anilist.co/studio/68/) in 1965. It was here that he met many of Madhouse''s future staff members. In October 1972, he left Mushi Production together with [Rintarou](https://anilist.co/staff/102305/), [Osamu Dezaki](https://anilist.co/staff/100393/) and [Yoshiaki Kawajiri](https://anilist.co/staff/100812/) and founded Madhouse. From that time onward, Maruyama focused mainly on producing and planning Madhouse''s upcoming projects. He also served as the studio''s president through the ''80s and ''90s.

Thanks in large part to his frequent attendance at anime conventions, he has become well-known in America among Madhouse''s fanbase. Not simply wanting to emulate past successes, Maruyama frequently says at these events that his goal as a producer is to seek out new challenges that will allow the production staff to keep experimenting. This attitude in part has been the reason why he has encouraged the studio to take on projects that may not seem like sure-fire commercial hits. In addition, Maruyama has long been a supporter of bringing new talents into the animation business, and continues to encourage young people to work in anime.

In 2011, he left Madhouse and founded Mappa. Later in 2016, he left Mappa and founded Studio M2.

(Source: Wikipedia)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('81', 'Norimitsu Suzuki', '鈴木典光', 'https://s4.anilist.co/file/anilistcdn/staff/large/n104133-xOMTC73YUUyv.png', '1968', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Aichi Prefecture, Japan', 'Key Animation (ED1, ep 29)', 'Male', 'Originating from [Madhouse](https://anilist.co/studio/11/). Noted for his work on EDs, which he usually animates by himself. He often asks for [Yoshiyuki Takei](https://anilist.co/staff/150095/) to handle the photography work in them because of the trust he has in his compositing skills. Suzuki is also close friends with [Kumiko Takahashi](https://anilist.co/staff/104698/) and participates in most of the shows in which she serves as a character designer.

Nowadays, he rarely puts his name on the telop and has gone uncredited for most of his work after [Soul Eater](https://anilist.co/anime/3588/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('82', 'Akiko Matsuo', '松尾亜希子', 'https://s4.anilist.co/file/anilistcdn/staff/large/default.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Key Animation (eps 10, 18)', 'Female', NULL);
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('83', 'Hiromi Katou', '加藤裕美', 'https://s4.anilist.co/file/anilistcdn/staff/large/n104676-HhlYZCcA3V2O.png', '1964', '4', '28', NULL, NULL, NULL, NULL, NULL, 'Hachioji, Tokyo Prefecture, Japan', 'Key Animation (eps 35, 36)', 'Male', 'Originating from [Nippon Animation](https://anilist.co/studio/22/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('59', 'Aya Hirano', '平野綾', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95004-qWQQHGzY3wqr.png', '1987', '10', '8', NULL, NULL, NULL, NULL, NULL, 'Nagoya, Aichi Prefecture, Japan', 'Insert Song Performance', 'Female', '__Height:__ 157 cm (5''2")

[Blog](http://ameblo.jp/hirano--aya/) | [Twitter](https://twitter.com/hysteric_barbie) | [Instagram](https://www.instagram.com/a_ya.hirano/) | [Website](http://ayahirano.jp/)

Aya Hirano is a Japanese actress, voice actress, and singer. Beginning in the entertainment industry as a child actor performing in television commercials, she played her first voice acting role in 2001 in the anime television series [Angel Tales](https://anilist.co/anime/682/). She released her first single "Breakthrough" in 2006, and her first album Riot Girl in 2008. She was formerly contracted to Space Craft Produce, a branch of the Space Craft Group, before moving to the talent agency Grick in August 2011. Her label was Lantis until 2011, when she moved to Universal Sigma. On September 1st, 2022, she announced that she was becoming a freelancer. 

Hirano is widely known for her roles as [Haruhi Suzumiya](https://anilist.co/character/251/) in the [Haruhi Suzumiya](https://anilist.co/anime/849/) franchise, [Konata Izumi](https://anilist.co/character/2169/) in [Lucky Star](https://anilist.co/anime/1887/), [Misa Amane](https://anilist.co/character/835/) in [Death Note](https://anilist.co/anime/1535/) and [Lucy Heartfilia](https://anilist.co/character/5186/) in [Fairy Tail](https://anilist.co/anime/6702/).

In 2011, she temporarily ceased accepting new roles to recover from a pituitary gland tumor that had been affecting her health. She resumed voice acting activities later that year. In 2016, after appearing at a stage play in Tokyo, she went to New York to study abroad for four months.

__Awards:__
- Best Voice Actor at the Tokyo Anime Awards in 2007 for her role as Haruhi Suzumiya.
- Best Rookie Actress at the 1st Seiyuu Awards in 2007 for her role as Haruhi Suzumiya.
- Best Lead Actress at the 2nd Seiyuu Awards in 2008 for her roles as Konata Izumi, Misa Amane and [Layla Serizawa](https://anilist.co/character/2089/)

(Source: Wikipedia)

__Non-anime credits:__~!• Alicia in "World Gimmick" (VG)
• Anis Yamamoto in "Barajō no Kiss" (Drama CD)
• Carla in "Final Fantasy Type-0" (Action RPG for Sony PSP)
• Catherine Earnshaw in "Wuthering Heights" (Theater musical play)
• Cheryl/Carol Tunt in "Archer" (TV Series - Dubbing)
• Cristina Vespucci in "Assassin''s Creed II" (VG/Xbox 360, PS3, PC)
• Girl Who Forot Her Name in "World of Final Fantasy" (VG)
• Haruhi Suzumiya in "Suzumiya Haruhi no Gekidou" (VG)
• Haruhi Suzumiya in "Suzumiya Haruhi no Tomadoi" (VG)
• Haruhi Suzumiya in "Suzumiya Haruhi no Tsuisou" (VG)
• Haruhi Suzumiya in "Suzumiya Haruhi no Yakusoku" (VG)
• Honoka Serizawa in "Finalist" (VG)
• Idaten in "Xenoblade Chronicles 2" (VG)
• Ilona Tasuiev in "Renaissance" (French animated movie/DVD version)
• Item Shop Attendant in "Phantasy Star Online 2" (VG)
• Kahlua (Tequila) Marjoram in "Galaxy Angel Dinner Show Musical & GAII" (musical)
• Kahlua (Tequila) Marjoram in "Galaxy Angel II: Eigo Kaiki no Koku" (VG)
• Kahlua (Tequila) Marjoram in "Galaxy Angel II: Mugen Kairou no Kagi" (VG)
• Kahlua (Tequila) Marjoram in "Galaxy Angel II: Zettai Ryouiki no Tobira" (VG)
• Kanonno Grassvalley in "Tales of the World: Radiant Mythology 3" (VG)
• Kaoru Akashi in "Zettai Karen Children DS: Dai 4 no Children" (VG)
• Katja in "Queen''s Gate Spiral Chaos" (VG)
• Kim Na-Na (Park Min-young) in "The City Hunter" (South Korean live-action TV series)
• Konata Izumi in "Lucky ☆ Star: Ryōō Gakuen Ōtōsai" (VG)
• Lucia in "Luminous Arc" (VG)
• Mahiro Mutou in "Busou Renkin" (Drama CD)
• Mamori Anezaki in "Eyeshield 21 MAX DEVILPOWER!" (VG)
• Mamori Anezaki in "Eyeshield 21 Playing American Football! Ya! Ha!" (VG)
• Mamori Anezaki in "Eyeshield 21 Portable Edition" (VG)
• Minato Nagase in "Akaneiro ni Somarusaka Parallel" (PS2 tsundere campus love adventure game)
• Monaka in "Zettai Zetsubō Shōjo: Danganronpa AE" (VG)
• Nanael in "Queen''s Blade Spiral Chaos" (VG)
• Neon Tsukiyumi in "Sigma Harmonics" (VG)
• Polka in "Trusty Bell: Chopin no Yume" (VG)
• Prishe in "Dissidia 012" (VG)
• Rin in "Catherine Full Body" (VG)
• Saru no Momo in "Tenshi no Shippo" (VG)
• Shirma in "Chokobo no Fushigina Danjon Toki Wasure no Meikyuu" (VG)
• Storyteller (Libra) in "DEARS Juuni Seiza Monogatari [Zodiac Tales] ~Artemis Side~ Omnibus" (CD)
• Yuki Morikawa in "Aquapazza -AQUAPLUS Dream Match-" (VG/arcade)
!~');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('60', 'Takeshi Obata', '小畑健', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96888-S7t8RBq40Y70.png', '1969', '2', '11', NULL, NULL, NULL, NULL, NULL, 'Niigata Prefecture, Japan', 'Original Character Design', 'Male', '[Twitter](https://twitter.com/obata_ten)

Takeshi Obata is a Japanese manga artist that usually works as the illustrator in collaboration with a writer. He first gained international attention for [Hikaru no Go](https://anilist.co/manga/30020/Hikaru-no-Go/) (1998–2003) with [Yumi Hotta](https://anilist.co/staff/96889/Yumi-Hotta), but is better known for [Death Note](https://anilist.co/manga/30021/Death-Note/) (2003–2006) and [Bakuman](https://anilist.co/manga/39711/Bakuman/) (2008–2012) with [Tsugumi Ohba](https://anilist.co/staff/97111/Tsugumi-Ohba). Obata has mentored several well-known manga artists, including [Nobuhiro Watsuki](https://anilist.co/staff/96890/Nobuhiro-Watsuki) of [Rurouni Kenshin](https://anilist.co/manga/30022/Rurouni-Kenshin-Meiji-Kenkaku-Romantan/) fame, [Black Cat](https://anilist.co/manga/30040/Black-Cat/) creator [Kentaro Yabuki](https://anilist.co/staff/96900/Kentarou-Yabuki), and [Eyeshield 21](https://anilist.co/manga/30043/Eyeshield-21/) artist [Yusuke Murata](https://anilist.co/staff/96903/Yusuke-Murata).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('61', 'Tsugumi Ooba', '大場つぐみ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n97111-HDCVp6Q1AaDT.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan', 'Original Story', NULL, 'Tsugumi Ooba is a fictional writer credited with writing the manga Death Note. Their real identity (and gender) is a closely guarded secret

Day and night, develops manga plots while holding knees on a chair (reminiscent of one of the main characters in Death Note, L.)

They like to collect teacups.

(Source: VIZ Media)');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('62', 'Tetsurou Araki', '荒木哲郎', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100088-tFWlDxGJEPlk.png', '1976', '11', '5', NULL, NULL, NULL, NULL, NULL, 'Sayama, Saitama Prefecture, Japan', 'Director', 'Male', '[Twitter](https://twitter.com/i/user/265406784) | [Facebook](https://www.facebook.com/tetsuro.araki.75)

Joined Madhouse in 1999 as production manager making his storyboard and episode director debut with [Galaxy Angel](https://anilist.co/anime/383/) just two years later. In 2005, he made his proper directorial debut with [Otogi-juushi Akazukin](https://anilist.co/anime/402/), a single-episode OVA which was aimed more at figure collectors than at anime fans. Its popularity birthed the full-length series and manga which both came out afterwards.

In 2006, Araki helmed his first big project with [Death Note](https://anilist.co/anime/1535/), which gained him international praise. He has since gone on to direct numerous series from originals such as [Guilty Crown](https://anilist.co/anime/10793/) and [Kabaneri of the Iron Fortress](https://anilist.co/anime/21196/), to the massively successful adaptation of [Attack on Titan](https://anilist.co/anime/16498/), which''s production Araki left with the studio change.

He has also been close friends with [Takayuki Hirao](https://anilist.co/staff/102247/) since their days at Madhouse.

Married to [Aya Hida](https://anilist.co/staff/144626/).

works at [Wit Studio](https://anilist.co/studio/858/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('63', 'Tetsurou Araki', '荒木哲郎', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100088-tFWlDxGJEPlk.png', '1976', '11', '5', NULL, NULL, NULL, NULL, NULL, 'Sayama, Saitama Prefecture, Japan', 'Storyboard (OP1, OP2, eps 1, 21, 25, 37)', 'Male', '[Twitter](https://twitter.com/i/user/265406784) | [Facebook](https://www.facebook.com/tetsuro.araki.75)

Joined Madhouse in 1999 as production manager making his storyboard and episode director debut with [Galaxy Angel](https://anilist.co/anime/383/) just two years later. In 2005, he made his proper directorial debut with [Otogi-juushi Akazukin](https://anilist.co/anime/402/), a single-episode OVA which was aimed more at figure collectors than at anime fans. Its popularity birthed the full-length series and manga which both came out afterwards.

In 2006, Araki helmed his first big project with [Death Note](https://anilist.co/anime/1535/), which gained him international praise. He has since gone on to direct numerous series from originals such as [Guilty Crown](https://anilist.co/anime/10793/) and [Kabaneri of the Iron Fortress](https://anilist.co/anime/21196/), to the massively successful adaptation of [Attack on Titan](https://anilist.co/anime/16498/), which''s production Araki left with the studio change.

He has also been close friends with [Takayuki Hirao](https://anilist.co/staff/102247/) since their days at Madhouse.

Married to [Aya Hida](https://anilist.co/staff/144626/).

works at [Wit Studio](https://anilist.co/studio/858/).');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('64', 'Yuuki Kinoshita', '木下ゆうき', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100653-LpKc3EUAxTL7.png', '1951', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Animation Director (ep 10)', 'Male', 'Yuuki Kinoshita is a Japanese animator, character designer, animation supervisor, director, storyboard artist and current representative director of Studio Graffiti. He is also the founder of Studio Toro Toro, but not currently involved in its management. He has previous work experience at Studio Mates (スタジオメイツ).

Kinoshita is particularly infamous for being a director on the Musashi Gun-Dou anime, which received much attention due to its bad production values and generated a whole new standard, called "Musashi", which was thereafter attributed to series of a similarly poor level.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('65', 'Hideki Taniuchi', 'タニウチヒデキ', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101009-zq0JJSxgwPpW.png', '1972', '11', '15', NULL, NULL, NULL, NULL, NULL, 'Hokkaido, Japan', 'Music', 'Male', 'A composer and guitarist known for providing the soundtracks for [Akagi](https://anilist.co/anime/658/) and [Kaiji](https://anilist.co/anime/3002/), as well as for collaborating with [Yoshihisa Hirano](https://anilist.co/staff/102221/) for the music on [Death Note](https://anilist.co/anime/1535/) and [RD Sennou Chousashitsu](https://anilist.co/anime/3363/). He also collaborated with [Kenji Kawai](https://anilist.co/staff/100304/) on [Otogizoushi](https://anilist.co/anime/525/).

Aside from his work as composer, he also plays guitar in the rockband Shocking Lemon.

In May 2012, he was arrested on marijuana charges and has been inactive since.');
INSERT INTO "STAFF" ("STAFF_ID", "FULL_NAME", "NATIVE", "IMAGE", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN", "ROLE", "GENDER", "DESCRIPTION") VALUES ('66', 'Satoshi Ishino', '石野聡', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101012-MbH2cR5XbGRK.png', '1971', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Kanagawa Prefecture, Japan', 'Key Animation (ep 32)', NULL, '[Twitter](https://twitter.com/imozuka) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E7%9F%B3%E9%87%8E%E8%81%A1)

Satoshi Ishino is a Japanese animator, animation supervisor, character/mechanical designer and animation director.

He started working at Studio Giants, but later went to work at Studio Fantasia before becoming a freelance animator. Today he is a part of the animator group Studio Hercules (スタジオへらくれす), and he''s also a part of the doujin circle TEAM Imozuka (TEAM いもずか).

Satoshi is best known for his work as a character designer and animation supervisor in the show Excel Saga and the related Puni Puni Poemi.');
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
-- Table structure for SYS_TEMP_FBT
-- ----------------------------
DROP TABLE "SYS_TEMP_FBT";
CREATE TABLE "SYS_TEMP_FBT" (
  "SCHEMA" VARCHAR2(130 BYTE) VISIBLE,
  "OBJECT_NAME" VARCHAR2(130 BYTE) VISIBLE,
  "OBJECT#" NUMBER VISIBLE,
  "RID" UROWID(4000) VISIBLE,
  "ACTION" CHAR(1 BYTE) VISIBLE
)
NOLOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  FREELISTS 1
  FREELIST GROUPS 1
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of SYS_TEMP_FBT
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for THREAD
-- ----------------------------
DROP TABLE "THREAD";
CREATE TABLE "THREAD" (
  "THREAD_ID" NUMBER VISIBLE NOT NULL,
  "THREAD_NAME" VARCHAR2(500 BYTE) VISIBLE NOT NULL,
  "CREATION_YEAR" NUMBER VISIBLE,
  "CREATION_MONTH" NUMBER VISIBLE,
  "CREATION_DAY" NUMBER VISIBLE,
  "CREATION_HOUR" NUMBER VISIBLE,
  "CREATION_MINUTE" NUMBER VISIBLE,
  "THREAD_DESCRIPTION" VARCHAR2(300 BYTE) VISIBLE,
  "THREAD_IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "USER_ID" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of THREAD
-- ----------------------------
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
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of THREAD_CATEGORY
-- ----------------------------
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
  "USER_IMAGE" VARCHAR2(100 BYTE) VISIBLE,
  "ROLE" VARCHAR2(20 BYTE) VISIBLE DEFAULT 'USER'
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
INSERT INTO "USERR" ("USER_ID", "USERNAME", "EMAIL_USER", "PASSWORDD", "USER_IMAGE", "ROLE") VALUES ('3', 'nayeem', 'jnayeem@gmail.com', '$2b$10$JBL7X9lfBozkvGpoqi9FbOboX.QatX.EeC.cbHKKBBN3m.wnaS0ZG', NULL, 'USER');
INSERT INTO "USERR" ("USER_ID", "USERNAME", "EMAIL_USER", "PASSWORDD", "USER_IMAGE", "ROLE") VALUES ('1', 'DJS', 'dj2001dhaka@gmail.com', '$2b$10$rc2GabnmG/fDD4ejdF2QuOTe2SJSlZ8BW0v//EWbFuP0spfkf0NAi', NULL, 'USER');
INSERT INTO "USERR" ("USER_ID", "USERNAME", "EMAIL_USER", "PASSWORDD", "USER_IMAGE", "ROLE") VALUES ('4', 'tom', '123@gmail.com', '$2b$10$Iq7u9ox2rpKIuNt31opBk.8wC7CTRWeq5Jz3esNFl.HMdvTqXohmm', NULL, 'USER');
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
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_CHARACTER
-- ----------------------------
DROP TABLE "USER_CHARACTER";
CREATE TABLE "USER_CHARACTER" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "CHARACTER_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_CHARACTER
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_MANGA
-- ----------------------------
DROP TABLE "USER_MANGA";
CREATE TABLE "USER_MANGA" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "MANGA_ID" NUMBER VISIBLE NOT NULL,
  "SCORE" NUMBER VISIBLE,
  "STATUS" NUMBER VISIBLE,
  "IS_FAVOURITE" NUMBER VISIBLE
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_MANGA
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_STAFF
-- ----------------------------
DROP TABLE "USER_STAFF";
CREATE TABLE "USER_STAFF" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "STAFF_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_STAFF
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for USER_VA
-- ----------------------------
DROP TABLE "USER_VA";
CREATE TABLE "USER_VA" (
  "USER_ID" NUMBER VISIBLE NOT NULL,
  "VA_ID" NUMBER VISIBLE NOT NULL
)
LOGGING
NOCOMPRESS
PCTFREE 10
INITRANS 1
STORAGE (
  BUFFER_POOL DEFAULT
)
PARALLEL 1
NOCACHE
DISABLE ROW MOVEMENT
;

-- ----------------------------
-- Records of USER_VA
-- ----------------------------
COMMIT;
COMMIT;

-- ----------------------------
-- Table structure for VOICE_ARTIST
-- ----------------------------
DROP TABLE "VOICE_ARTIST";
CREATE TABLE "VOICE_ARTIST" (
  "VA_ID" NUMBER VISIBLE NOT NULL,
  "VA_IMAGE" VARCHAR2(500 BYTE) VISIBLE,
  "LIKES" NUMBER VISIBLE,
  "DESCRIPTION" CLOB VISIBLE,
  "FULL_NAME" VARCHAR2(100 BYTE) VISIBLE,
  "NATIVE" VARCHAR2(100 BYTE) VISIBLE,
  "GENDER" VARCHAR2(100 BYTE) VISIBLE,
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
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('35', 'https://s4.anilist.co/file/anilistcdn/staff/large/n107282-fyEJs2MuyVqP.png', NULL, '__Skills:__ piano, percussion, singing, dancing, naga-uta shamisen
__Hobbies:__ watching kabuki

[Profile (Aksent)](https://aksent.co.jp/profile/shimizu_risa/) | [Twitter](https://twitter.com/risashimizu) | [Blog](http://ashley-r-senzatempo.seesaa.net/)', 'Risa Shimizu', '清水理沙', 'Female', '1988', '9', '9', NULL, NULL, NULL, NULL, NULL, 'Kanagawa, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('36', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95801-Jno6Y2OawOII.png', NULL, '[Twitter](https://twitter.com/YASU_BASSO) [Wiki (jp)](https://ja.wikipedia.org/wiki/加瀬康之)', 'Yasuyuki Kase', '加瀬康之', 'Male', '1971', '3', '14', NULL, NULL, NULL, NULL, NULL, 'Ota, Tokyo, Japan ');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('37', 'https://s4.anilist.co/file/anilistcdn/staff/large/n104983-Ntf3ZBY3ckFN.png', NULL, NULL, 'Keiichi Nakagawa', '中川慶一', 'Male', '1980', '12', '31', NULL, NULL, NULL, NULL, NULL, 'Shiga Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('38', 'https://s4.anilist.co/file/anilistcdn/staff/large/n110743-k2SgQwU0JD33.png', NULL, '__Height:__ 176 cm (5''9")
__Agency:__ Early Wing

[Agency Profile](http://earlywing.co.jp/talent_m/osakaryota.php)

Married fellow voice actor [Manami Numakura](https://anilist.co/staff/104973/Manami-Numakura) on October 23, 2019.', 'Ryouta Oosaka', '逢坂良太', 'Male', '1986', '8', '2', NULL, NULL, NULL, NULL, NULL, 'Tokushima, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('39', 'https://s4.anilist.co/file/anilistcdn/staff/large/22455.jpg', NULL, '__Hobbies:__ Giving massages, badminton, singing', 'Michiko Kaiden', '鷄冠井美智子', 'Female', NULL, '6', '24', NULL, NULL, NULL, NULL, NULL, 'Aomori Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('40', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95410-AosJKUc7YZXE.jpg', NULL, '[Profile](http://www.kenproduction.co.jp/talent/member.php?mem=m16) [Twitter](https://twitter.com/Shinji_Kawada) | [Instagram](https://www.instagram.com/shinji_kawada/)', 'Shinji Kawada', '川田紳司', 'Male', '1971', '10', '6', NULL, NULL, NULL, NULL, NULL, 'Tochigi, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('41', 'https://s4.anilist.co/file/anilistcdn/staff/large/n104032-T2WQPMRn19IB.png', NULL, '[Profile (Aoni)](https://www.aoni.co.jp/search/terase-kyoko.html) | [Twitter](https://twitter.com/misafujikawa)', 'Kyouko Terase', '寺瀬今日子', 'Female', '1958', '7', '5', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('42', 'https://s4.anilist.co/file/anilistcdn/staff/large/n105675-XnR4PwkkKbRH.jpg', NULL, '[Twitter](https://twitter.com/d_endo_bushmill)', 'Daichi Endou', '遠藤大智', 'Male', '1981', '2', '3', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('43', 'https://s4.anilist.co/file/anilistcdn/staff/large/n106030-oz4RUJZ3D9v9.png', NULL, '[Profile](https://avex-pictures.co.jp/lineup/91485/) | [Instagram](https://www.instagram.com/chikachika_anzai_official/) | [Twitter](https://twitter.com/Anchika_manager) | [YouTube](https://www.youtube.com/channel/UCdWglOsvq7Q_3-XM5XMxaqQ) | [Blog](https://ameblo.jp/chika-anzai/)

She moved to Tokyo at 15 to pursue a voice acting career. She is a voice actress affiliated with Avex Entertainment. She was training at Maho Academy previously. She''s a cousin of [Junya Enoki](https://anilist.co/staff/119319).

Won a Best Lead Actor award at the 17th Annual Seiyu Awards (2023).', 'Chika Anzai', '安済知佳', 'Female', '1990', '12', '22', NULL, NULL, NULL, NULL, NULL, 'Fukui Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('44', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101755-LsVbHCwg6Pel.png', NULL, 'He is an actor and voice actor affiliated with the Seinenza Theater Company.

He is married to his fellow voice actress [Romi Park](https://anilist.co/staff/95082/Romi-Park)

[Profile](http://seinenza.com/profile/data/yamaji_kazuhiro.html) | [Blog](https://ameblo.jp/gwanko/) | [Wiki (en)](https://en.wikipedia.org/wiki/Kazuhiro_Yamaji) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E5%B1%B1%E8%B7%AF%E5%92%8C%E5%BC%98)', 'Kazuhiro Yamaji', '山路和弘', 'Male', '1954', '6', '4', NULL, NULL, NULL, NULL, NULL, 'Mie Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('45', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95819-O4fosAY0a1Ml.jpg', NULL, '[Profile (Animo Produce)](https://animoproduce.co.jp/artists/onokensho/) | [Twitter](https://twitter.com/ono_kensho) | [Instagram](https://www.instagram.com/kenshoono1005/)

Married to voice actress [Kana Hanazawa](https://anilist.co/staff/95185/).

**Non anime roles:**

- Harry Potter - *Harry Potter* franchise (Live action films; JP dub)
- [Diluc Ragnvindr](https://anilist.co/character/187554/) - *Genshin Impact* (Video Game)
- Enforcer - *Arknights* (Mobile Game)
- Miles Morales - *Spider-Man: Into The Spider Verse; Spider-Man: Across the Spider-Verse* (Films; JP dub)', 'Kenshou Ono', '小野賢章', 'Male', '1989', '10', '5', NULL, NULL, NULL, NULL, NULL, 'Fukuoka Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('1', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95034-AwobjrcmkMi9.png', NULL, '__Height: __168 cm 
__Agency:__ Holy Peak

[Website](https://sp.kobayashiyu.com/) | [Blog](https://ameblo.jp/yu-no-jiyu-cho/) | [Profile (Holy Peak)](https://holypeak.com/talent/voice-actor-women/yukobayashi/) | [Twitter](https://twitter.com/holy_kobayashi)

A Japanese voice actress, singer, and former model.

__Non-anime roles:__
- Aria - Goddess of Victory: Nikke (VG)', 'Yuu Kobayashi', '小林ゆう', 'Female', '1982', '2', '5', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('2', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95063-xAsEUzspuLMG.jpg', NULL, '__Height:__ 175 cm (5''9")

Keiji Fujiwara was a Japanese actor and voice actor.

Even though he was born in Tokyo, he spent the majority of his childhood in Iwate Prefecture. In high school, he handled vocals in a band he formed with his friend Kotaro Furuichi, future guitarist of rock band The Collectors.

At around 18 years of age, he moved back to Tokyo on his own and joined the Bungakuza acting school. He spent the 1980s performing in several theater troupes while working odd jobs. Fujiwara was introduced to his first voice acting agency, Ken Production, in the early 1990s. The first TV anime in which he appeared as a regular was [Yokoyama Mitsuteru Sangokushi](https://anilist.co/anime/970/), but his breakout role was [Hiroshi Nohara](https://anilist.co/character/33466/) in [Crayon Shin-chan](https://anilist.co/anime/966/).

In November 2006, he left Ken Production and founded his own agency, Air Agency. Aside from talent management, the company went on to release original drama and situation CDs through its child company Air Label, as well as produce live events. In 2010, Fujiwara made his own sound directorial debut in Kakkokawaii Sengen.

In August 2016, Air Agency announced that he was going on hiatus in order to undergo medical treatment for a then-unspecified illness. He officially resumed work in June 2017. On April 16, 2020, Air Agency announced that Fujiwara had passed away due to cancer on April 12, 2020.

__Trivia:__
- He was a regular lecturer at the Japan Newart College since 2008
- In the live action field, he was most known for dubbing actor Robert Downey Jr. as Iron Man/Tony Stark.

(Source: Wikipedia)', 'Keiji Fujiwara', '藤原啓治', 'Male', '1964', '10', '5', '2020', '4', '12', NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('3', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95082-pNGbnYv4cHAK.png', NULL, '__Height:__ 161 cm 
__Hobbies:__ piano, Shaolin Kempo, swimming 
__Abilities:__ speaks fluent Korean

[Twitter](https://twitter.com/romiansaran)

She announced her marriage to fellow voice actor [Kazuhiro Yamaji](https://anilist.co/staff/101755) on January 22, 2020.

Many fans have mistaken photos of Romi Park as photos of [Hiromu Arakawa](https://anilist.co/staff/96874), the mangaka of Fullmetal Alchemist, because of one particular image in which Park poses as a mangaka. Park is also known for representing Arakawa in public events Arakawa is not able to attend.', 'Romi Park', '朴璐美', 'Female', '1972', '1', '22', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('4', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95118-oOElrn1aSaiC.png', NULL, '**Height:** 167 cm (5''6") 
**Other:** Named his cat "Nyanko-Sensei" 
**Agency:** Aoni

[Profile](https://www.aoni.co.jp/search/kamiya-hiroshi.html)

**Awards:**
- 2008-03: Best Supporting Actor, 2nd Annual Seiyuu Awards
- 2009-03: Best Lead Actor and Best Personality, 3rd Annual Seiyuu Awards
- 2012-03: Most Votes Award, 6th Annual Seiyuu Awards
- 2013-03: Most Votes Award, 7th Annual Seiyuu Awards  

Hosts several radio talk shows, including Dear Girl ~Stories~ with Ono Daisuke. In May 2010, he and Miyu Irino formed a Kiramune unit called KAmiYU, and sang the theme song for Mokei Senshi Gunpla Builders Beginning G.  Their first mini-album "link-up" was released on August 3, 2011.

__Non-Anime Roles:__
- Neuvillette in Genshin Impact', 'Hiroshi Kamiya', '神谷浩史', 'Male', '1975', '1', '28', NULL, NULL, NULL, NULL, NULL, 'Matsudo, Chiba, Japan ');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('5', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95158-OLhgs8zv5xsp.jpg', NULL, '__Agency:__ Aoni Production

[Profile](https://www.aoni.co.jp/search/inoue-marina.html) | [Blog](http://yaplog.jp/marinavi/) | [Twitter](https://twitter.com/Mari_navi) | [Anison](http://anison.info/data/person/17179.html) | [Wiki (en)](https://en.wikipedia.org/wiki/Marina_Inoue) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E4%BA%95%E4%B8%8A%E9%BA%BB%E9%87%8C%E5%A5%88)

A voice actress and singer. She is signed onto Sony Music Japan''s Aniplex division as a music artist. Formerly under the agency Sigma Seven, she transferred to Aoni Pro in 2022.

**Non-Anime Roles:**
- Pallas - Arknights (VG)
- Elysia - Honkai Impact 3rd (VG)
- Yanqing - Honkai: Star Rail (VG)
- Helm - Goddess of Victory: Nikke (VG)', 'Marina Inoue', '井上麻里奈', 'Female', '1985', '1', '20', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('6', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95196-t2vbxQMee0ci.png', NULL, '[Profile](http://www.kenproduction.co.jp/talent/member.php?mem=m33) | [Twitter](https://twitter.com/kishownstarmaps)

He is also the vocalist and lyricist of the Japanese rock band [GRANRODEO](https://anilist.co/staff/103917/).', 'Kishou Taniyama', '谷山紀章', 'Male', '1975', '8', '11', NULL, NULL, NULL, NULL, NULL, 'Yamaguchi Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('7', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95212-wX1M4LJN96q2.png', NULL, '**Height:** 174 cm (5''8.5")

[Twitter](https://twitter.com/onoDofficial) | [Instagram](https://www.instagram.com/onodofficial/) | [Youtube](https://www.youtube.com/channel/UCHuKRxu3ILwezuNBjpxkIxg) | [Website](http://daisukeono.com/) | [Profile (Lantis)](http://www.lantis.jp/artist.php?id=f4165cba759b0eccd6448d4e72b4d9ad)

**Non-Anime Roles**:
• Jing Yuan (Honkai: Star Rail)
• Wriothesley (Genshin Impact)', 'Daisuke Ono', '小野大輔', 'Male', '1978', '5', '4', NULL, NULL, NULL, NULL, NULL, 'Sakawa, Kochi Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('8', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95356-PFaZRlI9oJ56.png', NULL, ' __Height:__ 5''6"
__Agency:__ I''m Enterprise

He is married to someone from outside the industry since 2011, and two children were born from this relationship. 

[Website](https://shimonohiro.com) | [Blog](https://kimadou.exblog.jp) | [Twitter](https://twitter.com/shimono_kousiki) | [Profile](https://www.imenterprise.jp/profile.php?id=38)

**Non-Anime Roles:**
• Lyney (Genshin Impact)', 'Hiro Shimono', '下野紘', 'Male', '1980', '4', '21', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('9', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95504-pDIKpd8t2EYU.png', NULL, '__Birth Name:__ Sakiko Fujita (藤田咲子)

[Blog](https://blog.goo.ne.jp/sakky-ohana) | [Twitter](https://twitter.com/sakitaf_1019)

She is best known in Japan for sampling her voice for the Vocaloid, Hatsune Miku.  ', 'Saki Fujita', '藤田咲', 'Female', '1984', '10', '19', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('10', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95583-pcq7rkDjxRTl.jpg', NULL, NULL, 'Akio Suyama', '章央陶山', 'Male', '1968', '7', '8', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('11', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95672-RN4nm0OFwCyU.png', NULL, '[Profile](https://vims.co.jp/talent_profile_detail.php?id=7) | [Twitter](https://twitter.com/kaji__official) | [Instagram](https://www.instagram.com/yuki_kaji_official/) | [YouTube](https://www.youtube.com/channel/UCx2XAGS0FoG9S6r0bhNo2UA)

Kaji has won several awards, including Best Voice Actor at the 12th Tokyo Anime Awards (2013), Best Actor at the 7th Seiyu Awards (2013), and Best Voice Actor at the 36th Anime Grand Prix (2014).

Married voice actress [Ayana Taketatsu](https://anilist.co/staff/101996/) in 2019.

__Non-Anime Roles:__ 
~! Abe (Abraham Attah) in "Spider-Man: Homecoming" (live-action film) (Japanese)
Ace in "Final Fantasy Type-0" (VG) (Japanese)
Adol Christin in "Ys VIII: Lacrimosa of Dana" (VG) (Japanese)
Adol Christin in "Ys: Foliage Ocean in Celceta" (VG) (Japanese)
Akio Fudo in "Inazuma Eleven 2" (VG) (Japanese)
Akio Fudo in "Inazuma Eleven 3" (VG) (Japanese)
Akio Fudo in "Inazuma Eleven Strikers" (VG) (Japanese)
Akira Shimotsuki in "Watashi ni xx Shinasai!" (Drama CD) (Japanese)
Alex in "Don''t Breathe" (live-action film, BD & DVD release) (Japanese)
Arahagi in "Yuugen Romantica Hatenkou: Dai Roku no Nazo - Bakeneko Arahagi" (Drama CD) (Japanese)
Arahagi in "Yuugen Romantica Uchouten: Dai Roku no Nazo - Bakeneko Arahagi" (Drama CD) (Japanese)
Arahagi in "Yuugen Romantica: Dai Yon no Nazo - Bakeneko Arahagi" (Drama CD) (Japanese)
Ayerscarpe in "Arknights" (VG/Mobile) (Japanese)
Ayn Talfryn in "Tales of Zestiria" (VG) (Japanese)
Basil Sabanci in "Valkyria: Azure Revolution" (VG) (Japanese)
Bhunivelze in "Lightning Returns: Final Fantasy XIII" (VG) (Japanese)
Brainy Smurf in "The Smurfs" (animated TV series/Animax dub) (Japanese)
Bren Turner in "E.X. Troopers" (VG) (Japanese)
Cecil in "Hortensia Saga" (VG) (Japanese)
Dick Grayson/Robin (Brenton Thwaites) in "Titans" (live-action web series) (Japanese)
Eight (VIII) in "Super Smash Bros Ultimate" (VG) (Japanese)
Eln in "Age of Gunslingers Online" (VG) (Japanese)
En Shinohara in "Usotsuki Lily" (VOMIC) (Japanese)
Enji Tsuzuri in "Boku to Majo no Jikan" (VOMIC) (Japanese)
Erik in "Mōjū-tsukai to Ōji-sama ~Flower & Snow~" (VG) (Japanese)
Flynn in "Shin Megami Tensei IV" (VG) (Japanese)
Flynn in "Shin Megami Tensei IV: Final" (VG) (Japanese)
Fudou Akio in "Inazuma Eleven 3 Sekai e no Chousen!! Spark/Bomber" (VG) (Japanese)
Ganryū Hanakiri in "Otome Youkai Zakuro Vol. 10 Limited Edition Drama CD" (Drama CD) (Japanese)
Gaon in "Kikai Sentai Zenkaiger" (tokusatsu series) (Japanese)
Hayato Ozaki in "Nil Admirari no Tenbin Teito Genwaku Kitan" (VG) (Japanese)
Hero in "Gensosuikoden Tierkreis" (VG) (Japanese)
Hikaru Seto in "Cheer Boy! vol.3" (Drama CD) (Japanese)
Hinata in "Aigan Shounen" (Drama CD) (Japanese)
Hitoshi Taniguchi in "Reinouryokusha Odagiri Kyouko no Uso" (VOMIC) (Japanese)
Hope Estheim in "Final Fantasy XIII" (Japanese)
Hope Estheim in "Final Fantasy XIII-2" (VG) (Japanese)
Hope Estheim in "Lightning Returns: Final Fantasy XIII" (VG) (Japanese)
Hoshiguma Doji in "Onmyoji" (VG) (Japanese)
Hyuuga Masamune in "Touken Ranbu" (browser game) (Japanese)
Ichinose Kazuya in "Inazuma Eleven 3 Sekai e no Chousen!! Spark/Bomber" (VG) (Japanese)
Ikuto Taki in "RUNLIMIT Case 2" (Drama CD) (Japanese)
Jean Pierre in "Counter Strike Online 2" (VG) (Japanese)
Johnny Joestar in "JoJo''s Bizarre Adventure: All Star Battle" (VG) (Japanese)
Kakeru in "Yandere Heaven Vol. 1" (Drama CD) (Japanese)
Kanato Sakamaki in "Diabolik Lovers" (VG) (Japanese)
Katai Tayama in "Bungou to Alchemist" (VG) (Japanese)
Kazuya Ichinose in "Inazuma Eleven 2" (VG) (Japanese)
Kazuya Ichinose in "Inazuma Eleven 3" (VG) (Japanese)
Kazuya Ichinose in "Inazuma Eleven Strikers" (VG) (Japanese)
Kei Okazaki in "Collar x Malice Character CD Vol. 2 Okazaki Kei" (music/Drama CD) (Japanese)
Kei Okazaki in "CollarxMalice -Unlimited-" (VG) (Japanese)
Kei Okazaki in "CollarxMalice" (VG) (Japanese)
Keisuke Takagi in "Devil Survivor Over Clock" (VG) (Japanese)
Kentucky in "Sen Jyushi" (VG) (Japanese)
Leonis in "Record of Agarest War Zero" (VG) (Japanese)
Link in "Hyrule " (VG) (Japanese)
Luy in "Kamigami no Gosui" ("Siesta of the Gods") (Drama CD) (Japanese)
Luke Pearce in "Tears Of Themis" (mobile game) (Japanese)
Michizane in "Ichibanketsu Online" (VG) (Japanese)
Norman in "The Secret Life of Pets" (animated film) (Japanese)
Prince of Darkness in "Shironeko Project" (VG) (Japanese)
Rath in "Black Wolves Saga" (VG) (Japanese)
Rikka Toratani in "Storm Lover V" (VG) (Japanese)
Roche in "BLUE ROSES ~Yousei to Aoi Hitomi no Senshitachi~" (VG) (Japanese)
Sakamaki Kanato in "Diabolik Lovers Blood & LoveSweat" (Drama CD) (Japanese)
Sakamaki Kanato in "Diabolik Lovers MORE,BLOOD" (VG) (Japanese)
Sakamaki Kanato in "Diabolik Lovers VERSUS 3 Kanato VS Reiji" (Drama CD) (Japanese)
Sakamaki Kanato in "Diabolik Lovers ~Haunted Dark Bridal~" (VG) (Japanese)
Seth in "UNDER NIGHT IN-BIRTH" (VG) (Japanese)
Shiina Kiya in "PsychicEmotion6" (VG) (Japanese)
Syogo Shiratori in "Kizuna Striker!" (VG) (Japanese)
Takumi in "Fire Emblem Fates" (VG) (Japanese)
Takumi in "Fire Emblem Heroes" (VG) (Japanese)
Thomas Edison in "Rinka Nation" (VG) (Japanese)
Thomas in "Antique Carnevale" (VG) (Japanese)
Tokugawa Iemitsu in "Akasasu Sekai de Kimi to Utau" (mobile game) (Japanese)
Tot in "Skyover" (VG) (Japanese)
Touma in "Magical Days ~The Brats''s Parade~" (VG) (Japanese)
Walker Yumasaki in "Durarara!! 3way standoff" (VG/PSP) (Japanese)
White in "Granblue Fantasy" (VG) (Japanese)
Will in "Kuro Kishi to Shiro no Maou" (VG) (Japanese)
Yanagi in "Wakidenai ~Ichi no Maki: Yanagi~" (Drama CD) (Japanese)
Yoshiie Ukita in "Shinobi, Koi Utsutsu -Setsugekka Koi Emaki-" (VG) (Japanese)
Yuiga Kakeru in "NORN9" (otome VG) (Japanese)
Yuuichi Haga in "Devil Summoner: Soul Hackers" (VG) (Japanese)
Zen in "Persona Q: Shadow of Labyrinth" (VG) (Japanese)
Zhang Fei in "Sangokushi Lovers" (VG) (Japanese) !~', 'Yuuki Kaji', '梶裕貴', 'Male', '1985', '9', '3', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('12', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95854-DovWtfrg4gRV.png', NULL, '[Profile (Aoni)](https://www.aoni.co.jp/search/aso-tomohisa.html)', 'Tomohisa Asou', '麻生智久', 'Male', NULL, '5', '13', NULL, NULL, NULL, NULL, NULL, 'Kanagawa Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('13', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96030-1lePCWAH7pfP.jpg', NULL, NULL, 'Kenji Takahashi', '高橋研二', 'Male', '1981', '1', '16', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('14', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96057-sTfYZjMdWTRu.png', NULL, NULL, 'Yoshino Takamori', '鷹森淑乃', NULL, '1963', '11', '23', NULL, NULL, NULL, NULL, NULL, 'Chiba Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('15', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96414-0dvcgzJwFZO4.png', NULL, '[Twitter](https://twitter.com/pixis2011) | [Blog](http://masahikotanaka.blog122.fc2.com/) | [Wiki (jp)](https://ja.wikipedia.org/wiki/田中正彦)', 'Masahiko Tanaka', '田中正彦', 'Male', '1954', '10', '1', NULL, NULL, NULL, NULL, NULL, 'Osaka, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('16', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96520-HBvIVNbD2gvv.png', NULL, '[Profile (Ken Production)](https://www.kenproduction.co.jp/talent/44) | [Twitter](https://twitter.com/oyayubiseijin)', 'Tomoyuki Shimura', '志村知幸', 'Male', '1963', '12', '12', NULL, NULL, NULL, NULL, NULL, 'Hitachi, Ibaraki Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('17', 'https://s4.anilist.co/file/anilistcdn/staff/large/2123.jpg', NULL, 'Hobbies: Cooking, soft tennis
Skills: Can speak in Kansai dialect', 'Natsuki Aikawa', '相川奈都姫', 'Female', '1990', '8', '21', NULL, NULL, NULL, NULL, NULL, 'Kyoto, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('18', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100142-k6RP0HzXffUG.png', NULL, '**Height:** 161 cm

[Twitter](https://twitter.com/YUI_STAFF) | [Blog](https://ameblo.jp/ishikawa-yui)

She is married to a person outside of the industry.

Non-anime roles:
• Rapi - Goddess of Victory: Nikke
• Stelle (Female Trailblazer) - Honkai: Star Rail
• Clorinde - Genshin Impact
• Lucia - Punishing: Gray Raven
• Asuma Toki - Blue Archive', 'Yui Ishikawa', '石川由依', 'Female', '1989', '5', '30', NULL, NULL, NULL, NULL, NULL, 'Hyougo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('19', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100295-d7CPqlz4jGaT.png', NULL, '__[Blog](http://yaplog.jp/cygx-1/) | [Twitter](https://twitter.com/shimayulondon)__', 'Yuu Shimamura', '嶋村侑', 'Female', '1985', '4', '18', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan  ');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('20', 'https://s4.anilist.co/file/anilistcdn/staff/large/5386.jpg', NULL, '[Profile](https://www.aoni.co.jp/search/sato-masaharu.html)', 'Masaharu Satou', '佐藤正治', 'Male', '1946', '7', '1', NULL, NULL, NULL, NULL, NULL, 'Ota, Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('21', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100626-bH8eZ0wv3HYX.jpg', NULL, '__Skills & Abilities:__ shooting a firearm

[Website](http://yoshimasa-hosoya.info/) | [Twitter](https://twitter.com/hosoya_info) | [Instagram](https://www.instagram.com/yoshimasa.hosoya/) | [Staff Instagram](https://www.instagram.com/yoshimasa_hosoya_staff/) | [YouTube](https://www.youtube.com/channel/UC6cry8C4nNpobQdf8be7cdw) | [YT Twitter](https://twitter.com/bokudake369) | [Weibo](https://weibo.com/u/7599287210)


A Japanese voice actor, singer and narrator. He graduated from Tokyo Announce Gakuin Performing Arts College, then joined Mausu Promotion Actor Training Center in 2002, and signed on with Mausu Promotion in 2006. He is currently a freelancer.

__Awards:__
- 8th Seiyuu Awards - Best Supporting Voice Actor for his role as [Yuusuke Asahina](https://anilist.co/character/47223/)
- 10th Seiyuu Awards - Best Supporting Voice Actor for his roles as [Orga Itsuka](https://anilist.co/character/89235/) and [Ginti](https://anilist.co/character/88683/)

__Non-Anime Roles:__
- Welt in "Honkai Star Rail" (VG)', 'Yoshimasa Hosoya', '細谷佳正', 'Male', '1982', '2', '10', NULL, NULL, NULL, NULL, NULL, 'Onomichi, Hiroshima Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('22', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101214-kvHCKwu88FcF.png', NULL, '[Wiki (jp)](https://ja.wikipedia.org/wiki/土田大) | [Wiki (en)](https://en.wikipedia.org/wiki/Hiroshi_Tsuchida)

Hiroshi Tsuchida is an actor, voice actor and narrator affiliated with 81 Produce.', 'Hiroshi Tsuchida', '土田大', NULL, '1972', '2', '8', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Tokyo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('23', 'https://s4.anilist.co/file/anilistcdn/staff/large/n101724-MEUzOW3BRvy2.png', NULL, NULL, 'Gou Shinomiya', '四宮豪', 'Male', '1975', '6', '6', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('24', 'https://s4.anilist.co/file/anilistcdn/staff/large/n103730-qtf6D57hUNAf.jpg', NULL, NULL, 'Tsuguo Mogami', '最上嗣生', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Saitama Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('25', 'https://s4.anilist.co/file/anilistcdn/staff/large/8996.jpg', NULL, NULL, 'Kousuke Takaguchi', '高口公介', 'Male', '1978', '12', '15', NULL, NULL, NULL, NULL, NULL, 'Hyogo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('26', 'https://s4.anilist.co/file/anilistcdn/staff/large/n110005-65qAMtTf7qOb.png', NULL, '[Twitter](https://twitter.com/tomohisa0413)', 'Tomohisa Hashizume', '橋詰知久', 'Male', NULL, '4', '13', NULL, NULL, NULL, NULL, NULL, 'Hyogo Prefecture, Japan ');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('27', 'https://s4.anilist.co/file/anilistcdn/staff/large/n106236-aGhlIhHPPtjc.png', NULL, '[Profile](https://www.aoni.co.jp/search/mikami-shiori.html) | [Blog 1](http://blog.livedoor.jp/kirax2_day/) | [Blog 2](https://ameblo.jp/mikami-shiori/) | [Twitter](https://twitter.com/mikami_shiori) | [Wiki (en)](https://en.wikipedia.org/wiki/Shiori_Mikami) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E4%B8%89%E4%B8%8A%E6%9E%9D%E7%B9%94)', 'Shiori Mikami', '三上枝織', 'Female', '1989', '1', '6', NULL, NULL, NULL, NULL, NULL, 'Aomori Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('28', 'https://s4.anilist.co/file/anilistcdn/staff/large/n119616-Dakq7gsUo2ja.png', NULL, '__Agency:__ I''m Enterprise

[I''m Enterprise Profile](http://www.imenterprise.jp/profile.php?id=44)

Married voice actor [Tasuku Hatanaka](https://anilist.co/staff/107018) in 2020.

__Non-anime roles:__
- Eunhwa - Goddess of Victory: Nikke (VG)
- Ether - Goddess of Victory: Nikke (VG)', 'Sayaka Senbongi', '千本木彩花', 'Female', '1995', '11', '24', NULL, NULL, NULL, NULL, NULL, 'Saitama Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('29', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95720-enxx6kZKuwGi.jpg', NULL, '[Blog](http://gree.jp/miyake_kenta/) | [Twitter](https://twitter.com/miyake_ktrm)', 'Kenta Miyake', '三宅健太', 'Male', '1977', '8', '23', NULL, NULL, NULL, NULL, NULL, 'Okinawa, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('30', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95094-nRPWBG1cVGo5.png', NULL, '__Height:__ 164.5 cm
__Hobbies:__ Game, Reading, Writing screenplays

[Profile (Office Osaka)](https://osawa-inc.co.jp/women/watanabeakeno) | [Twitter](https://twitter.com/Chibirarijyotei)

Similar to many of her roles, she refers herself as "boku (僕)," the boyish way to call oneself in Japanese.

__Non-anime roles:__
[Hyuuga](https://anilist.co/character/153928/Hyuuga) - Azur Lane (VG)', 'Akeno Watanabe', '渡边明乃', 'Female', '1982', '11', '18', NULL, NULL, NULL, NULL, NULL, 'Funabashi, Chiba, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('31', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95002-nDIvHaynicEg.png', NULL, '__Height:__ 178 cm (5''10'''')

[Twitter](https://twitter.com/sugitaLOV) | [Youtube](https://www.youtube.com/channel/UCbPVSXP89cDlsiMf0jet1zQ)', 'Tomokazu Sugita', '杉田智和', 'Male', '1980', '10', '11', NULL, NULL, NULL, NULL, NULL, 'Ranzan, Saitama, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('32', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95160-jWevcH7BmfE1.jpg', NULL, '[Blog](http://koyap.jugem.jp/) | [Agency Profile](https://tsf-official.com/talent/takehito-koyasu/)

Koyasu is the most prolific voice actor in the industry, having been credited for over 700 roles as of April 2022.

Growing up, Koyasu skipped out on going to school to watch movies at home because he wanted to become an actor. It wasn’t until later that he became interested in voice acting after having seen [Galaxy Express 999](https://anilist.co/anime/1491/). After graduation he entered a voice acting school. In 1988, he made his voice acting debut, and got his first regular role a year later voicing [Gai](https://anilist.co/character/13374/) in [Tenkuu Senki Shurato](https://anilist.co/anime/2113/).

Though having voiced more characters in the medium than anyone else, he is probably most known for his role as [Dio Brando](https://anilist.co/character/4004/) in [JoJo’s Bizarre Adventure](https://anilist.co/anime/14719/). He has stated that he likes playing villainous characters.

Koyasu has taken over many of [Kaneto Shiozawa](https://anilist.co/staff/95424/)’s roles after Shiozawa’s passing.

Father of [Kouki Koyasu](https://anilist.co/staff/219102/).', 'Takehito Koyasu', '子安武人', 'Male', '1967', '5', '5', NULL, NULL, NULL, NULL, NULL, 'Yokohama, Kanagawa Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('33', 'https://s4.anilist.co/file/anilistcdn/staff/large/n105065-h1ysNglouHXs.png', NULL, '[Twitter](https://twitter.com/hayamaikumi)', 'Ikumi Hayama', '葉山いくみ', 'Female', '1984', '11', '17', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('34', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96696-nWJbm04iuOWW.jpg', NULL, '[Official Website](http://5pb.jp/shimodaasami/) | [Profile ](https://www.artsvision.co.jp/talent/813/) | [Blog](https://asaponmax.fc2.net) | [Twitter](https://twitter.com/shimoda_asami)

Asami Shimoda is a Japanese actress, voice actress and singer. She released her first mini album in 2010. Two years later, she released "Awake", her debut maxi single, which was released under 5pb. records. She is affiliated with Arts Vision.

Shimoda''s voice samples were used to create Kagamine Rin and Len from Crypton Future Media''s Character Vocal Series. ', 'Asami Shimoda', '下田麻美', 'Female', '1986', '1', '30', NULL, NULL, NULL, NULL, NULL, 'Tottori Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('60', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95357-umndcceko65h.png', NULL, '__Height:__ 168 cm (5''6")

[Profile (Aoni)](https://www.aoni.co.jp/search/ishizuka-unsho.html) | [Wiki (en)](https://en.wikipedia.org/wiki/Unshō_Ishizuka) | [Wiki (jp)](https://ja.wikipedia.org/wiki/石塚運昇)

A Japanese actor, voice actor, singer, narrator and theater director from Katsuyama, Fukui, Japan.

Ishizuka was known for his deep, strong voice and was often cast in the role of older mature male characters, such as [Jet Black](https://anilist.co/character/3/) in [Cowboy Bebop](https://anilist.co/anime/1/), [Job Truniht](https://anilist.co/character/19474/) in [Legend of the Galactic Heroes](https://anilist.co/anime/820/), [Van Hohenhaim](https://anilist.co/character/9792/) in [Fullmetal Alchemist: Brotherhood](https://anilist.co/anime/5114/) and [Joseph Joestar](https://anilist.co/character/6356/) in [JoJo''s Bizarre Adventure](https://anilist.co/anime/20474/).

On August 17, 2018, it was reported that Ishizuka had died on August 13th due to esophageal cancer.

Non-anime roles:
~!Adray Lasbard in "Star Ocean : Till the End of Time" (VG) (Japanese)
Bunta Fujiwara in "Initial D Arcade Stage 4" (VG) (Japanese)
Bunta Fujiwara in "Initial D: Special Stage" (VG) (Japanese)
Captain Gantu in "Lilo & Stitch" (Japanese)
Captain Hawke in "Romancing SaGa: Minstrel Song" (VG) (Japanese)
Captain Jack Bartlett in "Ace Combat 5: The Unsung War" (VG) (Japanese)
Commander Chakotay in "Star Trek: Voyager" (Japanese Dub)
Dakkam in "Arc the Lad: Twilight of the Spirits" (VG) (Japanese)
Diego Argis in "Rogue Galaxy" (VG) (Japanese)
Edward D. Morrison in "Tales of Phantasia -Full Voice Edition-" (VG) (Japanese)
Eugene Gallardo in "Tales of Rebirth" (VG) (Japanese)
Eugene Gallardo in "Tales of the World: Radiant Mythology" (VG) (Japanese)
Guld Goa Bowman in "Macross Plus: Game Edition" (VG) (Japanese)
Jet Black in "Cowboy Bebop" (VG) (Japanese)
Mathews in "Xenosaga Episode II: Jenseits von Gut und Bose" (VG) (Japanese)
Mathews in "Xenosaga" (VG) (Japanese)
Matthews in "Xenosaga Freaks" (VG) (Japanese)
Metagross in "Super Smash Bros. Brawl" (VG) (Japanese)
Narrator in "Shiroi Ashita da! Roketto Dan" (Japanese)
Odjn in "Breath of Fire: Dragon Quarter" (VG) (Japanese)
Prince Charming in "Shrek 2" (animated movie) (Japanese)
Prince Charming in "Shrek 3" (animated movie) (Japanese)
Ryotaro Dojima in Shin Megami Tensei: Persona 4 (VG)
Russ Cargill in "The Simpsons Movie" (DVD version) (Japanese)
Sestren in "Panzer Dragoon Orta" (VG)
Void in "Berserk ~Chapter of the Millenium Falcon - Record of the Holy Evil War Chapter~" (VG) (Japanese)
Zabuza in "Naruto: Clash of Ninja 2" (VG) (Japanese)!~

(Source: Wikipedia)', 'Unshou Ishizuka', '石塚運昇', 'Male', '1951', '5', '16', '2018', '8', '13', NULL, NULL, 'Katsuyama, Fukui Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('61', 'https://s4.anilist.co/file/anilistcdn/staff/large/n106629-TT3F7WfC3wLq.png', NULL, '[Profile](http://www.kenproduction.co.jp/talent/member.php?mem=m12)', 'Seirou Ogino', '荻野晴朗', 'Male', '1971', '10', '10', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('62', 'https://s4.anilist.co/file/anilistcdn/staff/large/n131460-KNcEJBrLdmkx.jpg', NULL, '__Birth Place:__ Tokyo, Japan
__Height:__167 cm
__Weight:__ 63 kg
__Non-anime roles:__ Witold von Everec in "The Witcher 3: Wild Hunt" (VG) (Japanese)

[Official Website](https://mausu.net/talent/masuda-takayuki.html)', 'Takayuki Masuda', '増田隆之', 'Male', '1986', '1', '16', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('122', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95022-BXggjIr4KHqd.png', NULL, '__Height:__ 180 cm
__Agency:__ 81 Produce

[Website](http://www.miki-ha.com/) | [Twitter](https://twitter.com/miki_shin318) | [Wiki (jp)](https://ja.wikipedia.org/wiki/三木眞一郎) | [Wiki (en)](https://en.wikipedia.org/wiki/Shin-ichiro_Miki)

__Non-anime voice roles:__
~!
- Blade - *Honkai: Star Rail* (2023, Video Game)
- Charizard - *Super Smash Bros. Series* (1999-2018, Video Games)
- Alucard - *Castlevania* (2017, TV Series)
- Jason Bourne - *The Bourne Identity; The Bourne Supremacy; Jason Bourne* (2004; 2007; 2016; Films) (JP Dub)
- Erik Lehnsherr / Magneto - *X-Men: First Class; X-Men: Days of Future Past; X-Men: Apocalypse; Dark Phoenix* (2011; 2014; 2016; 2019; Films) (JP Dub)!~', 'Shinichirou Miki', '三木眞一郎', 'Male', '1968', '3', '18', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('123', 'https://s4.anilist.co/file/anilistcdn/staff/large/n116157-MAPYgEeptEUh.png', NULL, '[Twitter](https://twitter.com/voice_singing)

Yuu Hayashi is a Japanese voice actor and singer affiliated with Ken Production. Formerly a child actor, he mainly specializes in dubbing roles. He is a vocalist of [SCREEN Mode](https://anilist.co/staff/119992/), a band signed with Lantis.

(Source: Wikipedia)', 'Yuu Hayashi', '林勇', 'Male', '1983', '4', '2', NULL, NULL, NULL, NULL, NULL, 'Zama, Kanagawa, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('124', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95137-2Q5l3Br9G7sk.png', NULL, '__Height:__ 174 cm
__Special skill:__ Singing
__Hobbies:__ Cooking, watching ammonites, playing with domestic cats

[Profile](http://edenzfeel.com/rushstyle/?talent=%E9%80%9F%E6%B0%B4-%E5%A5%A8) | [Twitter](https://twitter.com/show_ism) | [Anison](http://anison.info/data/person/3674.html) | [Wiki (en)](https://en.wikipedia.org/wiki/Show_Hayami) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E9%80%9F%E6%B0%B4%E5%A5%A8)

He is a veteran voice actor and singer. His real name is Yasushi Oohama (大濱靖). He is married to fellow voice actress [Rei Igarashi](https://anilist.co/staff/102524).', 'Shou Hayami', '速水奨', 'Male', '1958', '8', '2', NULL, NULL, NULL, NULL, NULL, 'Takasago, Hyogo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('125', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95011-2RfLzncNyvbR.png', NULL, '__Height:__ 176cm (5''9)

A Japanese actor, voice actor, singer and narrator from Shiogama, Miyagi Prefecture. He graduated from Tohoku Gakuin University''s economics school and is currently affiliated with Across Entertainment.

He was the manager of the Tagajou Senior High School basketball team before he made a name for himself. His voice acting debut was the OVA [Megazone 23](https://anilist.co/anime/1935/) as the motorcycle-riding [Shinji Nakagawa](https://anilist.co/character/56633/), while his television debut was the anime [Bosco Adventure](https://anilist.co/anime/3460/) as the cowardly Otter. His break-out role, however, was in the anime [Ranma ½](https://anilist.co/anime/210/), in which he played the dual role of [Hibiki Ryoga](https://anilist.co/character/2369/) and the [Jusenkyo Guide](https://anilist.co/character/58321/). In 1991, Yamadera joined forces with [Toshihiko Seki](https://anilist.co/staff/95129/) and [Noriko Hidaka](https://anilist.co/staff/95181/) to form the acting unit Banana Fritters, which disbanded in 1995. In October 1997, Yamadera became a host on the TV Tokyo children''s variety show Oha Suta. In March 2016, after almost two decades, he announced his retirement from it.

Yamadera''s also known for his versatile range, as shown in the video game Danganronpa V3: Killing Harmony where he voiced all five Monokuma Kubs, including Monophanie (female). According to the Danganronpa V3 official blog, Yamadera is the first person who came to mind as "the same person voicing multiple characters at the same time". No one has as much "multiple characters" experience as him. He was able to take the individual quirks of each of the Monokuma Kubs and make all of them unique.

Other notable examples of multiple voice acting include the Kingdom Hearts series where he voiced Donald Duck, Genie (Aladdin), Sebastian (The Little Mermaid), Beast (Beauty and the Beast), Mushu (Mulan), Jaq (Cinderella) and Stitch (Lilo and Stitch), Shun Akiyama (Yakuza), and the [Japan Animator Expo](https://anilist.co/anime/20947/) series of 35 short films where Yamadera and [Megumi Hayashibara](https://anilist.co/staff/95014/) voiced all characters.

Yamadera was married to fellow voice actresses [Mika Kanai](https://anilist.co/staff/95029/) from 1993 to 2006, and to [Rie Tanaka](https://anilist.co/staff/95060/) from 2012 to 2018. On June 14, 2021, his marriage to singer and idol Robin Shoko Okada was announced.

__Trivia:__
- His nickname is Yama-chan.
- The official dub-over voice for Eddie Murphy, Jim Carrey and Disney''s Donald Duck.
- He didn''t consider to do voice acting at first and was more interested in being either a live-action actor or a salesman.
- He is known as "the man with the seven-colored voice".
- In 2011 and 2017, TV Asahi conducted a poll among Japanese voice actors and actresses on "who they thought was really the most amazing person in their profession". Yamadera ranked first both times.', 'Kouichi Yamadera', '山寺宏一', 'Male', '1961', '6', '17', NULL, NULL, NULL, NULL, NULL, 'Shiogama, Miyagi Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('46', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95260-pKyM0LbhEznc.png', NULL, '[Blog](http://susumu-chiba.jugem.jp/) | [Agency Profile](https://osawa-inc.co.jp/men/chibasusumu/)', 'Susumu Chiba', '千葉進歩', 'Male', '1970', '9', '13', NULL, NULL, NULL, NULL, NULL, 'Kanagawa Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('85', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95378-zIUAop5i1zaM.png', NULL, NULL, 'Kenichi Matsuyama', '松山ケンイチ', 'Male', '1985', '3', '5', NULL, NULL, NULL, NULL, NULL, 'Aomori Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('86', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95412-czaGpvAm5pWx.png', NULL, '[Instagram](https://www.instagram.com/hidesan777/) | [Wiki (jp)](https://ja.wikipedia.org/wiki/石川英郎) | [Wiki (en)](https://en.wikipedia.org/wiki/Hideo_Ishikawa)

Affiliated with Aoni Production.', 'Hideo Ishikawa', '石川英郎', 'Male', '1969', '12', '13', NULL, NULL, NULL, NULL, NULL, 'Nishinomiya, Hyogo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('87', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95516-N94jWbOCyDd7.jpg', NULL, NULL, 'Naoko Matsui', '松井菜桜子', 'Female', '1961', '4', '4', NULL, NULL, NULL, NULL, NULL, 'Hakodate, Hokkaido Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('88', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95629-WgKFV9c2Wxpu.png', NULL, NULL, 'Issei Futamata', '二又一成', 'Male', '1955', '3', '15', NULL, NULL, NULL, NULL, NULL, 'Aomori Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('89', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95807-aXQRtwu8StXS.jpg', NULL, NULL, 'Masaki Aizawa', '相沢まさき', 'Male', '1965', '1', '19', NULL, NULL, NULL, NULL, NULL, 'Hokkaido, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('90', 'https://s4.anilist.co/file/anilistcdn/staff/large/1475.jpg', NULL, NULL, 'Aruno Tahara', '田原アルノ', 'Male', '1949', '3', '23', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('91', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96572-z9s5fXiwJFum.png', NULL, NULL, 'Hiroshi Ootake', '大竹宏', 'Male', '1932', '3', '14', '2022', '8', '1', NULL, NULL, 'Kanagawa, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('114', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95287-3moX16xmYedv.png', NULL, '[Twitter](https://twitter.com/Megumi_Ogata) | [Instagram](https://www.instagram.com/megumi_ogata_official/) | [Website](https://www.emou.net)

Ogata attended Tokai University, but left due to lack of interest. They then began working as a musical actress, attending the same classes alongside [Rumi Kasahara](https://anilist.co/staff/95996/) and [Shiho Niiyama](https://anilist.co/staff/95724/). Because of their husky voice, they are often typecast as either young men and boys or tomboyish females. It is also because of this that they are sometimes referred as "Aniki" (big brother) by fans.

In a speech at the 16th Seiyu Awards on March 5, 2022, Ogata had shared that she had been weary to accept "Best Leading Actress" as she mostly played boy characters and do not refer to herself as an actress. Ogata also shared that "There is so much talk about being ''genderless'' nowadays and there are voice actors in the industry who have come out. And like myself, there are people out there who go on about their daily lives mostly not thinking of themselves as women."', 'Megumi Ogata', '緒方恵美', 'Female', '1965', '6', '6', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('115', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95185-x8ZYvtN7SegC.png', NULL, '__Height:__ 156 cm (5''1")

[Profile](https://osawa-inc.co.jp/women/hanazawakana/) | [Website](http://www.hanazawakana-music.net/) | [Twitter](https://twitter.com/hanazawa_staff) | [Instagram](https://www.instagram.com/hanazawa_kana.official/)  | [YouTube]( https://www.youtube.com/@hanazawa_kana/) | [Radio page](http://www.joqr.co.jp/blog/hanazawa/)

__Introduction__
Kana Hanazawa is a voice actress, actress, singer, former child actress and talent represented by Office Osawa. In July 2020, she married fellow voice actor [Kensho Ono](https://anilist.co/staff/95819), whom she had been dating since 2017. 

__Early Career__
Hanazawa originally became a child actress at the age of 8. Amongst other roles, she starred in the well-known TV school show _Appare Sanma Daisensei_ and the TV series _Gakkou no Sensei_. At that time she was contracted to Big Apple, and later to Five Eight and Smile Monkey.

__Voice Acting Career__
At the age of 14, she made her voice acting debut in 2003 as Holly in _[Last Exile](https://anilist.co/anime/97/)_. Three years later in 2006, she was selected for a major role in TV Tokyo''s anime mecha series _[Zegapain](https://anilist.co/anime/878/)_. She was playing the main character''s childhood friend, [Kaminagi Ryouko](https://anilist.co/character/2578/), and her performance was one of the main reasons for the character''s popularity amongst fans. It was afterwards that she came under contract at prestigious voice acting talent agency Office Osawa in 2007.

Hanazawa went to university in 2007, while at the same time, she began to make her mark as a voice actress. She was voted in 2010 as "Best Female Voice Actress" by listeners of the radio program Nonko and Nobita''s Anime Scramble. She graduated from university in 2011, and in the same year became a full-time voice actress.

Hanazawa won Best Supporting Actress at the 9th Seiyuu Awards for her role as [Kosaki Onodera](https://anilist.co/character/52723/) in _[Nisekoi](https://anilist.co/anime/18897/)_. She also won Newtype''s Best Voice Actress award in 2015 and later in 2018.

__Music Career__
On February 23, 2012, it was announced that Hanazawa would launch her official website. A few days later, during the Kana Hanazawa Solo Debut Presentation Party event, it was announced that she would release four singles within a year: "Hoshizora Destination" on April 25, "Hatsukoi no Oto" released on July 18, "Happy Endings" on October 24 (an ending theme for _[Zetsuen no Tempest](https://anilist.co/anime/14075/)_), and "Silent Snow" on January 16, 2013. Her first album Claire was released on February 20, 2013, and her second album 25 was released on February 26, 2014. She released an album title Blue Avenue in April 2015 and went on a concert tour starting at the Nippon Budokan on May 3. The Blu-ray release of the show, Live Avenue Kana Hanazawa in Budokan, ranked number six in sales.

__Trivia__
- She was invited to Anime Festival Asia 2010 on stage.
- She used to be a junior idol in Akihabara where hundreds of people came to watch her, which is how she got her breakthrough for her acting career in commercials before becoming a voice actress.

**Non-anime roles:**
- [Marie](https://anilist.co/character/89069/Marie) - Persona 4 Golden (VG)
- Illya - Memento Mori (VG)
- Marian - Goddess of Victory: Nikke (VG)
- Modernia - Goddess of Victory: Nikke (VG)', 'Kana Hanazawa', '花澤香菜', 'Female', '1989', '2', '25', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('116', 'https://s4.anilist.co/file/anilistcdn/staff/large/n119959-dN9jj8PMUmiU.png', NULL, 'Satsumi Matsuda is the twin sister of [Risae Matsuda](https://anilist.co/staff/119960), although Satsumi was born after midnight so they do not share birthdays. Both were the 4th and 5th Anisong Grand Prix Finalists with [Marina Kawano](https://anilist.co/staff/107072) (4th) and [Konomi Suzuki](https://anilist.co/staff/110607) (5th). She is affiliated with Arts Vision.

[Profile](https://www.artsvision.co.jp/talent/534/) | [Blog](https://ameblo.jp/7-16r17s/) | [Twitter](https://twitter.com/DApanda323)', 'Satsumi Matsuda', '松田颯水', 'Female', '1993', '7', '17', NULL, NULL, NULL, NULL, NULL, 'Takatsuki City, Osaka Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('117', 'https://s4.anilist.co/file/anilistcdn/staff/large/n119960-1b9eah3Af5f2.png', NULL, '__Agency:__ I''m Enterprise

Risae Matsuda is the twin sister of [Satsumi Matsuda](https://anilist.co/staff/119959). Both were the 4th and 5th Anisong Grand Prix Finalists with [Marina Kawano](https://anilist.co/staff/107072) (4th) and [Konomi Suzuki](https://anilist.co/staff/110607) (5th). She is affiliated with imenterprise.

[Profile](https://www.imenterprise.jp/profile.php?id=84) | [Blog](https://ameblo.jp/7-16r17s/) | [Twitter](https://twitter.com/ReSAEnter)', 'Risae Matsuda', '松田利冴', 'Female', '1993', '7', '16', NULL, NULL, NULL, NULL, NULL, 'Takatsuki City, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('118', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95008-2y0EeuSTHIri.png', NULL, '__Height:__ 159 cm
__Agency:__ I''m Enterprise

[Twitter](https://twitter.com/rie_k_0530) | [Profile (I''m Enterprise)](https://www.imenterprise.jp/profile.php?id=52) | [Blog](https://ameblo.jp/kugimiyarie-blog/) | [Lantis Music](https://www.lantis.jp/artist/kugimiyarie/)

**Non-Anime Roles:**
- Irene - Arknights (VG)
- Unknown God - Genshin Impact (VG)
- Kiana Kaslana - Honkai Impact 3rd (VG)
- Luna - Punishing: Gray Raven (VG)
- Vesti - Goddess of Victory: Nikke (VG)
- iDoll Ocean - Goddess of Victory: Nikke (VG)
- Haruka Sawamura - Yakuza Series (VG)
- Vena - TEVI (VG)
- Fukayama Ayane - Nogizaka Haruka no Himitsu: Cosplay, Hajimemashita (VN)', 'Rie Kugimiya', '釘宮理恵', 'Female', '1979', '5', '30', NULL, NULL, NULL, NULL, NULL, 'Kumamoto, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('119', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95245-prBoWpg0HaGX.jpg', NULL, '**Height:** 170 cm
**Skills:** English, kendo (1st dan)
**Agency:** Axl-One

[Blog](http://ameblo.jp/satoshi-hino) | [Profile](http://www.axl-one.com/talent/hino.html) | [Twitter](https://twitter.com/Hino_Satoshi_84) | [Instagram](https://www.instagram.com/hino_satoshi_84)

Married to voice actress [Saki Nakajima](https://anilist.co/staff/95329/Saki-Nakajima). He has also voiced many non-anime roles like Benjamin Hornigold in _Assassin''s Creed IV: Black Flag_ (video game), Cedric Diggory in _Harry Potter and the Goblet of Fire_ (Hollywood film), and Ron Stoppable in _Kim Possible_ (American cartoon).', 'Satoshi Hino', '日野聡', 'Male', '1978', '8', '4', NULL, NULL, NULL, NULL, NULL, 'San Francisco, CA, USA');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('120', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95009-d01Dg8mMwcg6.png', NULL, '__Nicknames:__ Koto-chan (琴ちゃん), Koto-chawan (琴ちゃわん)
__Height:__ 160 cm

[Website](https://kotochawan.com/) | [Twitter](https://twitter.com/kotochawanmoon) | [YouTube](https://www.youtube.com/channel/UC1bBpyzaOM0gd7SNEwpDarQ/) | [Wiki (en)](https://en.wikipedia.org/wiki/Kotono_Mitsuishi) | [Wiki (jp)](https://ja.wikipedia.org/wiki/三石琴乃)

A voice actress and narrator. She graduated from high school in 1986 and then entered Katsuta Seiyuu Academy. 

In 1989, Mitsuishi made her seiyuu debut as Tomoyo in the OVA [Ace o Nerae! Final Stage](https://anilist.co/anime/312/). She became an instant celebrity with her role as [Usagi Tsukino](https://anilist.co/character/2030) when [Sailor Moon](https://anilist.co/anime/530) debuted in 1992, and her popularity increased again with her role as [Misato Katsuragi](https://anilist.co/character/1259) in the anime TV series [Neon Genesis Evangelion](https://anilist.co/anime/30). She is considered one of the most influential seiyuu in the business; the animated adaptation of [Ebichu](https://anilist.co/anime/1060/) was largely produced because of her interest in the project, reading the manga out loud between takes of recording lines for Evangelion. Mitsuishi is a freelancer and a former member of the talent management firm Arts Vision. 

She is married and has one daughter. ', 'Kotono Mitsuishi', '三石琴乃', 'Female', '1967', '12', '8', NULL, NULL, NULL, NULL, NULL, 'Toda City, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('121', 'https://s4.anilist.co/file/anilistcdn/staff/large/n106361-EMvWLkEKavEM.png', NULL, '__Height:__ 159 cm

[Website (Avex)](https://avex.jp/tokuisora/) | [Twitter](https://twitter.com/tokui_sorangley) | [LINE Blog](https://lineblog.me/tokuisora/) | [Blog (old)](https://ameblo.jp/tokui-sora/) | [YouTube](https://www.youtube.com/channel/UCJ8Wj4izZCt1i9gdTXnbD_Q) | [Bilibili](https://space.bilibili.com/524622683) | [Wiki (en)](https://en.wikipedia.org/wiki/Sora_Tokui) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E5%BE%B3%E4%BA%95%E9%9D%92%E7%A9%BA)

**Non-Anime Roles**:
- Blanc - Goddess of Victory: Nikke (VG)
- Hook - Honkai: Star Rail (VG)', 'Sora Tokui', '徳井青空', 'Female', '1989', '12', '26', NULL, NULL, NULL, NULL, NULL, 'Minamiboso, Chiba Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('63', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95004-qWQQHGzY3wqr.png', NULL, '__Height:__ 157 cm (5''2")

[Blog](http://ameblo.jp/hirano--aya/) | [Twitter](https://twitter.com/hysteric_barbie) | [Instagram](https://www.instagram.com/a_ya.hirano/) | [Website](http://ayahirano.jp/)

Aya Hirano is a Japanese actress, voice actress, and singer. Beginning in the entertainment industry as a child actor performing in television commercials, she played her first voice acting role in 2001 in the anime television series [Angel Tales](https://anilist.co/anime/682/). She released her first single "Breakthrough" in 2006, and her first album Riot Girl in 2008. She was formerly contracted to Space Craft Produce, a branch of the Space Craft Group, before moving to the talent agency Grick in August 2011. Her label was Lantis until 2011, when she moved to Universal Sigma. On September 1st, 2022, she announced that she was becoming a freelancer. 

Hirano is widely known for her roles as [Haruhi Suzumiya](https://anilist.co/character/251/) in the [Haruhi Suzumiya](https://anilist.co/anime/849/) franchise, [Konata Izumi](https://anilist.co/character/2169/) in [Lucky Star](https://anilist.co/anime/1887/), [Misa Amane](https://anilist.co/character/835/) in [Death Note](https://anilist.co/anime/1535/) and [Lucy Heartfilia](https://anilist.co/character/5186/) in [Fairy Tail](https://anilist.co/anime/6702/).

In 2011, she temporarily ceased accepting new roles to recover from a pituitary gland tumor that had been affecting her health. She resumed voice acting activities later that year. In 2016, after appearing at a stage play in Tokyo, she went to New York to study abroad for four months.

__Awards:__
- Best Voice Actor at the Tokyo Anime Awards in 2007 for her role as Haruhi Suzumiya.
- Best Rookie Actress at the 1st Seiyuu Awards in 2007 for her role as Haruhi Suzumiya.
- Best Lead Actress at the 2nd Seiyuu Awards in 2008 for her roles as Konata Izumi, Misa Amane and [Layla Serizawa](https://anilist.co/character/2089/)

(Source: Wikipedia)

__Non-anime credits:__~!• Alicia in "World Gimmick" (VG)
• Anis Yamamoto in "Barajō no Kiss" (Drama CD)
• Carla in "Final Fantasy Type-0" (Action RPG for Sony PSP)
• Catherine Earnshaw in "Wuthering Heights" (Theater musical play)
• Cheryl/Carol Tunt in "Archer" (TV Series - Dubbing)
• Cristina Vespucci in "Assassin''s Creed II" (VG/Xbox 360, PS3, PC)
• Girl Who Forot Her Name in "World of Final Fantasy" (VG)
• Haruhi Suzumiya in "Suzumiya Haruhi no Gekidou" (VG)
• Haruhi Suzumiya in "Suzumiya Haruhi no Tomadoi" (VG)
• Haruhi Suzumiya in "Suzumiya Haruhi no Tsuisou" (VG)
• Haruhi Suzumiya in "Suzumiya Haruhi no Yakusoku" (VG)
• Honoka Serizawa in "Finalist" (VG)
• Idaten in "Xenoblade Chronicles 2" (VG)
• Ilona Tasuiev in "Renaissance" (French animated movie/DVD version)
• Item Shop Attendant in "Phantasy Star Online 2" (VG)
• Kahlua (Tequila) Marjoram in "Galaxy Angel Dinner Show Musical & GAII" (musical)
• Kahlua (Tequila) Marjoram in "Galaxy Angel II: Eigo Kaiki no Koku" (VG)
• Kahlua (Tequila) Marjoram in "Galaxy Angel II: Mugen Kairou no Kagi" (VG)
• Kahlua (Tequila) Marjoram in "Galaxy Angel II: Zettai Ryouiki no Tobira" (VG)
• Kanonno Grassvalley in "Tales of the World: Radiant Mythology 3" (VG)
• Kaoru Akashi in "Zettai Karen Children DS: Dai 4 no Children" (VG)
• Katja in "Queen''s Gate Spiral Chaos" (VG)
• Kim Na-Na (Park Min-young) in "The City Hunter" (South Korean live-action TV series)
• Konata Izumi in "Lucky ☆ Star: Ryōō Gakuen Ōtōsai" (VG)
• Lucia in "Luminous Arc" (VG)
• Mahiro Mutou in "Busou Renkin" (Drama CD)
• Mamori Anezaki in "Eyeshield 21 MAX DEVILPOWER!" (VG)
• Mamori Anezaki in "Eyeshield 21 Playing American Football! Ya! Ha!" (VG)
• Mamori Anezaki in "Eyeshield 21 Portable Edition" (VG)
• Minato Nagase in "Akaneiro ni Somarusaka Parallel" (PS2 tsundere campus love adventure game)
• Monaka in "Zettai Zetsubō Shōjo: Danganronpa AE" (VG)
• Nanael in "Queen''s Blade Spiral Chaos" (VG)
• Neon Tsukiyumi in "Sigma Harmonics" (VG)
• Polka in "Trusty Bell: Chopin no Yume" (VG)
• Prishe in "Dissidia 012" (VG)
• Rin in "Catherine Full Body" (VG)
• Saru no Momo in "Tenshi no Shippo" (VG)
• Shirma in "Chokobo no Fushigina Danjon Toki Wasure no Meikyuu" (VG)
• Storyteller (Libra) in "DEARS Juuni Seiza Monogatari [Zodiac Tales] ~Artemis Side~ Omnibus" (CD)
• Yuki Morikawa in "Aquapazza -AQUAPLUS Dream Match-" (VG/arcade)
!~', 'Aya Hirano', '平野綾', 'Female', '1987', '10', '8', NULL, NULL, NULL, NULL, NULL, 'Nagoya, Aichi Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('64', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95042-gEcEYD7iDXnF.png', NULL, '[Profile](https://www.aoni.co.jp/search/matsukaze-masaya.html) | [Twitter ](https://twitter.com/matsukazest)

Masaya Matsukaze is a Japanese actor, voice actor and radio personality. He was formerly affiliated with Big Apple, Radix Mobanimation Multicye Division and Varoque Works, and is currently affiliated with Aoni Production. He was born in Fukushima Prefecture and is now living in Tokyo. He is married to Emika Umemoto (ex-dental assistant) since August 2003.', 'Masaya Matsukaze', '松風雅也', 'Male', '1976', '9', '9', NULL, NULL, NULL, NULL, NULL, 'Fukushima Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('65', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95064-p83l3UvfQ6n6.png', NULL, '[Twitter](https://twitter.com/H_I_R_O_K_I____)

Played Hisoka in the Hunter x Hunter musicals.', 'Hiroki Takahashi', '高橋広樹', 'Male', '1974', '9', '7', NULL, NULL, NULL, NULL, NULL, 'Adachi, Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('66', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95065-eyynywrhombR.png', NULL, '__Height:__ 182 cm (6''0")

[Website](https://miyanomamoru.com/) | [Twitter](https://twitter.com/miyanomamoru_pr) | [YouTube](https://www.youtube.com/channel/UCHzevlEL9JfsBIm86uNCJqg)

A Japanese actor, voice actor, singer and narrator from Saitama Prefecture.

Miyano joined The Himawari Theatre Group at the age of 7 under the influence of his older brother, yet he did not attend the class as much as he should have. After entering high school, due to the uncertainty he felt towards the future, Miyano started attending singing and dance lessons he has been skipping until now. While taking music lessons, Miyano started to discover his music style through the encounter with music produced by singers like CHEMISTRY and EXILE. Miyano''s first acting job was in 1992 in Tokusou Exceedraft, where he appeared in a flashback as a child in a yakuza member''s past.

In 2001, he had his voice acting debut in a live action teen drama Caitlin''s Way.

In 2002, he voiced Riku in the Japanese version for the video game Kingdom Hearts. Miyano also had his first anime voice acting role the same year, voicing Akira in [Shin Megami Tensei Devil Children: Light & Dark](https://anilist.co/anime/4068/). In 2003, he voiced [Kiba](https://anilist.co/character/241/), the main character in [Wolf''s Rain](https://anilist.co/anime/202/). A few years later in 2006, he had what most would call his breakout role in [Death Note](https://anilist.co/anime/1535/) where he voiced the main character [Light Yagami](https://anilist.co/character/80/). For his role as Light, he was nominated for two awards at the first ever Seiyuu Awards in March 2007.

On May 28, 2007, on the King Records label, Miyano debuted as a singer with the single "Kuon." The single debuted at number 47 on the Oricon charts and was used as the ending theme song for anime series [Koutetsu Sangokushi](https://anilist.co/anime/2162/). On June 13, he released a collaboration single titled "Fight," with fellow voice actress [Romi Park](https://anilist.co/staff/95082/). The duo''s single debuted on the Oricon chart at number 73.

In 2008, at the second Seiyuu Awards, Miyano won "Best Actor in a Leading Role" for his roles [Setsuna F. Seiei](https://anilist.co/character/4234/) and [Rikuson Hakugen](https://anilist.co/character/2844/), from [Mobile Suit Gundam 00](https://anilist.co/anime/2581/) and [Koutetsu Sangokushi](https://anilist.co/anime/2162/) respectively. Miyano also married later that same year and he and his wife have a son together.

__Non-anime voice roles:__
- Riku - *Kingdom Hearts* series (VG)
- Ignis Scientia - *Final Fantasy XV* (2016 VG)
- Peter B. Parker - *Spider-Man: Into The Spider Verse; Spider-Man: Across the Spider-Verse* (Films; JP dub)
- Mario - *The Super Mario Bros. Movie* (2023 Film; JP dub)
- Newt Scamander - *Fantastic Beasts* series (Live action films; JP dub)
- Percy Weasley - *Harry Potter* franchise (Live action films; JP dub)
', 'Mamoru Miyano', '宮野真守', 'Male', '1983', '6', '8', NULL, NULL, NULL, NULL, NULL, 'Oomiya, Saitama Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('67', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95067-hqIpNxMfAuN2.png', NULL, '[Twitter](https://twitter.com/i/user/267684720)

Affiliated with Gokū and 21st Century Fox. Best known for the roles of Ranma Saotome (Ranma ½), Tombo (Kiki''s Delivery Service), Yattaro (Kyattou Ninden Teyandee), InuYasha (InuYasha), L (Death Note), Usopp (One Piece), Hideyoshi (Law of Ueki), and Kaito Kid and Shinichi Kudo (Detective Conan). He made his first public appearance in North America at Otakon 2008.

Father of [Ryuunosuke](https://anilist.co/staff/278275/) and [Akane Yamaguchi](https://anilist.co/staff/210640/).', 'Kappei Yamaguchi', '山口勝平', 'Male', '1965', '5', '23', NULL, NULL, NULL, NULL, NULL, 'Fukuoka, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('68', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95070-klkIfKz1VItS.png', NULL, '__Height:__ 169 cm

[Profile](https://endless-glory.com/talent_ak/) | [Twitter](https://twitter.com/AMISUKESHIGOM)

__Non-Anime roles:__
- Yukiko Amagi - Persona 4 (VG)
- Mist - Rune Factory (VG)
- Agnès Oblige - Bravely Default (VG)
- Claire Rieveldt - Trails of Cold Steel (VG)
- Eleanor Hume - Tales of Berseria (VG)
- Perun - Xenoblade Chronicles 2 (VG)
- Yuki Takamiya - 13 Sentinels: Aegis Rim (VG)
- Beidou - Genshin Impact (VG)
- Alexandria - Xenoblade Chronicles 3 (VG)
- Milady - Soul Hackers 2 (VG)
- Luke - Memento Mori (VG)
- Guillotine - Goddess of Victory: Nikke (VG)', 'Ami Koshimizu', '小清水亜美', 'Female', '1986', '2', '15', NULL, NULL, NULL, NULL, NULL, 'Kokubunji, Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('69', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95090-oARRP42NEhu0.jpg', NULL, '__Favorite Colors:__ Pink, brown
__Hobbies:__ Performing, reading, singing

[Official Website](http://www.jvcmusic.co.jp/maaya/) | [LINE Blog](https://lineblog.me/sakamotomaaya/) | [YouTube](https://www.youtube.com/user/maayasakamotoCh) | [Wiki (en)](https://en.wikipedia.org/wiki/Maaya_Sakamoto) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E5%9D%82%E6%9C%AC%E7%9C%9F%E7%B6%BE)

Married frequent costar [Kenichi Suzumura](https://anilist.co/staff/95005) on August 8, 2011.', 'Maaya Sakamoto', '坂本真綾', 'Female', '1980', '3', '31', NULL, NULL, NULL, NULL, NULL, 'Itabashi, Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('70', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95110-cCdEmEnuJYCW.jpg', NULL, 'Haruka is currently a voice actor and musician. She plays guitar in the band [Roselia](https://anilist.co/staff/153170/Roselia) as part of the Bang Dream franchise.

Haruka was an exclusive model for the Japanese magazine "Seventeen" from 2003 to 2007. After becoming a voice actor, she put her activities on hiatus after entering university, and later started voice acting again in 2011 when she became affiliated with Sigma Seven e. On August 2014, she left Sigma Seven e and became a freelancer, before signing up with ELBS Entertainment on October 2016. On May 1, 2017, she announced that she would be transferred to Ace Crew.

Haruka is energetic, jokes around a lot, and has a hard time staying in-character. She is skilled at drawing and can also speak English. Her other hobbies are watching movies, reading books, eating, and sleeping. Her favorite guitarists are Nirvana''s Kurt Cobain and X JAPAN''s ex-member HIDE. She is also a fan of both Nine Inch Nails and Luna Sea.

(Source: BanG Dream! Wikia, edited)', 'Haruka Kudou', '工藤晴香', 'Female', '1989', '3', '16', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('71', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95123-qdVFNraYmQ5K.png', NULL, '__Hobbies:__ Archery, driving, surveying 
__Awards:__ Best Supporting Actor at the 5th Seiyū Awards (2011)

**Non-Anime Roles:**~!
• Sakai Jin (Ghost of Tsushima)
• Garu (Uchuu Sentai Kyuranger)
!~', 'Kazuya Nakai', '中井和哉', 'Male', '1967', '11', '25', NULL, NULL, NULL, NULL, NULL, 'Kobe, Hyougo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('72', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95131-TCVTgxb08tfE.png', NULL, '**Skills and Abilities**: Kendo

[Twitter](https://twitter.com/yaochan_defu)

*Kazuki Yao* is a veteran voice actor. Yao is currently represented by Sigma Seven.
', 'Kazuki Yao', '矢尾一樹', 'Male', '1959', '6', '17', NULL, NULL, NULL, NULL, NULL, 'Kanazawa, Ishikawa Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('73', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95174-yTsadXRKchp7.png', NULL, '[Profile](https://osawa-inc.co.jp/men/kiuchihidenobu/)', 'Hidenobu Kiuchi', '木内秀信', 'Male', '1969', '2', '5', NULL, NULL, NULL, NULL, NULL, 'Kobe, Hyogo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('74', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95181-vMjqcku6ZHtF.jpg', NULL, '__Birth Name:__ Noriko Nagai (永井範子)
__Height:__ 157 cm

[Website](https://norikohidaka.com/) | [Twitter](https://twitter.com/nonko_hidaka531) | [Instagram](https://www.instagram.com/nonko_hidaka531/) | [YouTube](https://www.youtube.com/channel/UCAKD48ecL5cR87BWPze34HQ)

A Japanese actress, voice actress, singer and narrator. She played Minami Asakura in Touch, Akane Tendo in Ranma ½, Satsuki Kusakabe in My Neighbor Totoro, Near in Death Note, Seta Sōjirō in Rurouni Kenshin, Jean Roque Raltique in Nadia: The Secret of Blue Water and Kikyo in Inuyasha. She is also the dub actress for Jayma Mays in the American TV series Glee, as well as in The Smurfs film series. ', 'Noriko Hidaka', '日高のり子', 'Female', '1962', '5', '31', NULL, NULL, NULL, NULL, NULL, 'Chiyoda, Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('75', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95209-9RHgLGkMrska.png', NULL, '[Profile (Atomic Monkey)](http://www.atomicmonkey.jp/jp/archives/talent/nagasawamiki) | [Twitter](https://twitter.com/miki_miki_don) | [Instagram](https://www.instagram.com/mikimikidon/)', 'Miki Nagasawa', '長沢美樹', 'Female', '1970', '7', '11', NULL, NULL, NULL, NULL, NULL, 'Fukushima, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('76', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95286-1RlrFeFKx3jn.png', NULL, '**Height:** 160cm

[Website](https://nozomusasaki.com/) | [Twitter](https://twitter.com/nozomu_s_staff)

On March 28, 2020, he announced that he had graduated from the Faculty of Law at the University of Tokyo, while working as a seiyuu.', 'Nozomu Sasaki', '佐々木望', 'Male', '1967', '1', '25', NULL, NULL, NULL, NULL, NULL, 'Hiroshima, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('77', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95292-Pp6Qcwd8zQUr.jpg', NULL, '[Official Site](https://shidou.jp/)

Mikihiro Ogawa, better known by the stage name Shidou Nakamura II is a Japanese kabuki and film actor.', 'Shidou Nakamura', '中村獅童', 'Male', '1972', '9', '14', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('78', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95293-WMdddQNhHOt1.jpg', NULL, '__Height:__ 170 cm  
__Hobbies:__ Guitar, mah-jong, watching F1 racing

[Website](http://www.oginext.com/men/naito.html)

', 'Ryou Naitou', '内藤玲', NULL, '1974', '6', '22', NULL, NULL, NULL, NULL, NULL, 'Osaka, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('79', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95294-AN7KQALYLR9w.jpg', NULL, '__Hobbies:__ ceramics, watercolor painting 
__Skills & Abilities:__  Type One elementary school teacher, Type Two junior high school teacher 

[Profile (Aoni Pro)](https://www.aoni.co.jp/search/saito-kimiko.html) | [Twitter](https://twitter.com/kimikokimi)

__Non-Anime Roles:__ 
- Aurelia Dichala Dolce in "Soul Calibur III" (VG) (Japanese) 
- Miss Piggy in "The Muppet Movie" (live action movie) (Japanese) 
- Speed Buster in "No More Heroes Paradise" (VG) 
- Woman voice in "Soul Calibur III" (VG) (Japanese) ', 'Kimiko Saitou', '斉藤貴美子', 'Female', '1972', '7', '27', NULL, NULL, NULL, NULL, NULL, 'Nagano, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('80', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95295-wAC8cLzBjWet.png', NULL, '[Wiki (jp)](https://ja.wikipedia.org/wiki/西村朋紘) | [Wiki (en)](https://en.wikipedia.org/wiki/Tomohiro_Nishimura)', 'Tomohiro Nishimura', '西村朋紘', 'Male', '1961', '2', '2', NULL, NULL, NULL, NULL, NULL, 'Asahikawa, Hokkaido, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('81', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95296-fYLp5Ff3eDI3.png', NULL, '[Official Profile](https://www.aoni.co.jp/search/kirimoto-takuya.html) | [Twitter](https://twitter.com/kirimototakuya)', 'Takuya Kirimoto', '桐本拓哉', 'Male', '1967', '7', '27', NULL, NULL, NULL, NULL, NULL, 'Gifu Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('82', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95338-i2Jdgc5rQNMa.png', NULL, '__[Profile](https://osawa-inc.co.jp/men/uchidanaoya/) | [Blog](http://office-nao.sblo.jp/) | [Twitter](https://twitter.com/Nao1953Naoya)__

Naoya Uchida is a Japanese voice actor, actor, and singer. He has played several minor roles of authority in various television dramas. He debuted in 1972 in the NHK program Maboroshi no Satsui and continued acting in theater and television dramas until the late 1990s. Since then, he has refocused his career on vocal performances such as opera and dubbing. He is best known for his role as Madara Uchiha in Naruto, and coincidentally his last name is similar to the character''s.

(Source: Wikipedia) ', 'Naoya Uchida', '内田直哉', 'Male', '1953', '5', '1', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('83', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95339-lEIGi2vIa2hN.png', NULL, '__Height:__ 168 cm (5'' 6")

[Profile (Haikyo)](https://haikyo.co.jp/profile/profile.php?ActorID=52) | [WIki (en)](https://en.wikipedia.org/wiki/Kiyoshi_Kobayashi) | [WIki (jp)](https://ja.wikipedia.org/wiki/%E5%B0%8F%E6%9E%97%E6%B8%85%E5%BF%97)

On Sep 7, 2021, he announced his retirement from his longstanding role as the voice of [Daisuke Jigen](https://anilist.co/character/1045) after over 50 years of service. Kobayashi passed away on July 30, 2022 due to pneumonia.', 'Kiyoshi Kobayashi', '小林清志 ', 'Male', '1933', '1', '11', '2022', '7', '30', NULL, NULL, 'Nezu, Tokyo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('84', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95341-SOsBuzcMtYe8.png', NULL, '
__[Twitter](https://twitter.com/nojimahirofumi) | [Instagram](https://www.instagram.com/nojimahirofumi/)__

Son of voice actor [Akio Nojima](https://anilist.co/staff/95918). 
Elder brother of voice actor [Kenji Nojima](https://anilist.co/staff/95074).', 'Hirofumi Nojima', '野島裕史', 'Male', '1973', '4', '16', NULL, NULL, NULL, NULL, NULL, 'Tanashi, Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('55', 'https://s4.anilist.co/file/anilistcdn/staff/large/n116153-APSBkZkC9iK7.png', NULL, NULL, 'Yuuichi Karasuma', '烏丸祐一', 'Male', NULL, '1', '1', NULL, NULL, NULL, NULL, NULL, 'Ibaraki Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('56', 'https://s4.anilist.co/file/anilistcdn/staff/large/n105634-k4crYIeacBXT.png', NULL, 'A Japanese voice actress.', 'Junko Kitanishi', '純子 北西', 'Female', '1975', '9', '18', NULL, NULL, NULL, NULL, NULL, 'Kobe, Hyogo Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('57', 'https://s4.anilist.co/file/anilistcdn/staff/large/n115156-ngYfqBazlxYQ.png', NULL, '__Height:__ 174 cm

[Profile](https://stay-luck.com/talent/ishikawa-kaito/) | [Twitter](https://twitter.com/ish_kaito) | [Youtube](https://www.youtube.com/user/apatyai1013) | [Instagram](https://www.instagram.com/ishi_kaito1013/)

**Non-Anime Roles:**
• Marius von Hagen (Tears of Themis)', 'Kaito Ishikawa', '石川界人', 'Male', '1993', '10', '13', NULL, NULL, NULL, NULL, NULL, 'Bunkyou, Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('58', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95091-idoMaN26z80B.png', NULL, '__Hobbies:__ All types of sport

[Profile (Osawa Inc)](https://osawa-inc.co.jp/men/nakatajouji/) | [Twitter](https://twitter.com/joujinakata123)', 'Jouji Nakata', '中田譲治', 'Male', '1954', '4', '22', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('59', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95665-EL6DvRKzjGrp.jpg', NULL, '[Profile (Ken Production)](http://www.kenproduction.co.jp/talent/member.php?mem=m42)', 'Kiyomitsu Mizuuchi', '水内清光', NULL, '1960', '11', '17', NULL, NULL, NULL, NULL, NULL, 'Osaka, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('47', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95068-nf823DpvyKof.jpg', NULL, 'He was married to voice actor [Kanako Mitsuhashi](https://anilist.co/staff/95546/Kanako-Mitsuhashi) but they divorced on June 2012. ', 'Kouji Yusa', '遊佐浩二', 'Male', '1968', '8', '12', NULL, NULL, NULL, NULL, NULL, 'Kyoto, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('48', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95655-KbQUnQTroukJ.png', NULL, '[Profile (Across Entertainment)](http://across-ent.com/talent/women/mariya_ise.html) | [Twitter](https://twitter.com/Ma_ri_ya_i) | [Instagram](https://www.instagram.com/mariya_ise/) | [Blog](https://ameblo.jp/mariya-i/)', 'Mariya Ise', '伊瀬茉莉也', 'Female', '1988', '9', '25', NULL, NULL, NULL, NULL, NULL, 'Yokohama, Kanagawa Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('49', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100928-OfFb5f55VSFB.png', NULL, '[Twitter](https://twitter.com/rintarowest) | [Facebook](https://www.facebook.com/nishirintarou)', 'Rintarou Nishi', '西凜太朗', 'Male', '1965', '7', '15', NULL, NULL, NULL, NULL, NULL, 'Osaka, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('50', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95591-WQGdD3ubbeoq.jpg', NULL, '__Height:__ 170 cm (5''7")
__Hobbies:__ Taking Pictures, Biking
__Skills:__ Osaka dialect
__Alma Mater:__ Meiji University
__Agency:__ Amuleto (1995-2021), ANDSTIR (2021-present)

[Website](https://tsudaken.jp/) | [Twitter](https://twitter.com/tsuda_ken) | [Instagram](https://www.instagram.com/2_da_ken/) | [Youtube](https://www.youtube.com/channel/UC_EGdEIJrwsOTxucjF3xU8Q)

He likes 50mm single focus cameras and old motorcycles. He grew up in Jakarta, Indonesia. He is married with a woman from outside the entertainment industry and has two children.

__Non-anime roles:__
- Dainsleif - Genshin Impact (VG)', 'Kenjirou Tsuda', '津田健次郎', 'Male', '1971', '6', '11', NULL, NULL, NULL, NULL, NULL, 'Sakai, Osaka Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('51', 'https://s4.anilist.co/file/anilistcdn/staff/large/n100427-rXj5mx6gGNfH.png', NULL, '[Wiki (jp)](https://ja.wikipedia.org/wiki/土師孝也)', 'Takaya Hashi', '土師孝也', 'Male', '1952', '9', '8', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('52', 'https://s4.anilist.co/file/anilistcdn/staff/large/10639.jpg', NULL, 'Height: 174cm  Weight: 71kg', 'Manabu Sakamaki', '坂巻学', NULL, '1982', '7', '6', NULL, NULL, NULL, NULL, NULL, 'Saitama, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('53', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95158-OLhgs8zv5xsp.jpg', NULL, '__Agency:__ Aoni Production

[Profile](https://www.aoni.co.jp/search/inoue-marina.html) | [Blog](http://yaplog.jp/marinavi/) | [Twitter](https://twitter.com/Mari_navi) | [Anison](http://anison.info/data/person/17179.html) | [Wiki (en)](https://en.wikipedia.org/wiki/Marina_Inoue) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E4%BA%95%E4%B8%8A%E9%BA%BB%E9%87%8C%E5%A5%88)

A voice actress and singer. She is signed onto Sony Music Japan''s Aniplex division as a music artist. Formerly under the agency Sigma Seven, she transferred to Aoni Pro in 2022.

**Non-Anime Roles:**
- Pallas - Arknights (VG)
- Elysia - Honkai Impact 3rd (VG)
- Yanqing - Honkai: Star Rail (VG)
- Helm - Goddess of Victory: Nikke (VG)', 'Marina Inoue', '井上麻里奈', 'Female', '1985', '1', '20', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('54', 'https://s4.anilist.co/file/anilistcdn/staff/large/16223.jpg', NULL, NULL, 'Yuuka Hirose', '広瀬有香', 'Female', NULL, '1', '19', NULL, NULL, NULL, NULL, NULL, 'Hokkaido Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('92', 'https://s4.anilist.co/file/anilistcdn/staff/large/n119617-icFDk96OdV5k.png', NULL, '__Agency:__ Intention

[Website](https://www.uchidayuma.com/) | [Profile](https://intention-k.com/profile/yuma_uchida) | [Twitter](https://twitter.com/yuma_u_official) | [Instagram](https://www.instagram.com/i_am_yumauchida)

A Japanese voice actor and singer. He made his singing debut in May 2018 under the King Records label. He is [Maaya Uchida](https://anilist.co/staff/108639/)''s younger brother.

His agency announced that he married the voice actress [Rina Hidaka](https://anilist.co/staff/100250) on January 1st, 2024.

__Awards:__
- In 2017, he won Best Male Newcomer at the 11th Seiyuu Awards for his role as [Hayate Immelmann](https://anilist.co/character/90102/).
- In 2019, he won Best Male Lead Actor at the 13th Seiyuu Awards for his role as [Ash Lynx](https://anilist.co/character/13580/).', 'Yuuma Uchida', '内田雄馬', 'Male', '1992', '9', '21', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('93', 'https://s4.anilist.co/file/anilistcdn/staff/large/n119319-yIrrUOUaJuSm.png', NULL, '__Agency:__ Atomic Monkey

[Profile](http://www.atomicmonkey.jp/jp/archives/talent/enokijunya) | [Twitter](https://twitter.com/enojunjunjun) | [Wiki (jp)](https://ja.wikipedia.org/wiki/%E6%A6%8E%E6%9C%A8%E6%B7%B3%E5%BC%A5)

Junya Enoki is a Japanese voice actor affiliated with Atomic Monkey. His hobbies are boxing and kendo. Enoki became interested in acting while in college after watching the anime Gurren Lagann. He''s a cousin of [Chika Anzai](https://anilist.co/staff/106030).

__Non-Anime Roles:__ ~!
Caelus in "Honkai: Star Rail" (VG)!~', 'Junya Enoki', '榎木淳弥', 'Male', '1988', '10', '19', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('94', 'https://s4.anilist.co/file/anilistcdn/staff/large/n106787-ojpoY7XEGYgc.jpg', NULL, '__Height:__ 167 cm

[Profile (StarCrew)](https://www.starcrew.co.jp/talent/setoasami/) | [Twitter](https://twitter.com/SETO_A_OFFICIAL) | [Instagram](https://www.instagram.com/seto_asami) | [Blog](https://ameblo.jp/seto-asami) | [YouTube](https://youtube.com/@Seto-Asami)

A Japanese voice actress. Her debut role was Yoshino Takatsuki in Hourou Musuko. She likes to draw, and she became addicted to karuta while dubbing Chihayafuru.

__Non-Anime Roles:__ ~!
Aika Tenkūbashi in "Ore ga Ojō-sama Gakkō ni "Shomin Sample" Toshite Rachirareta Ken" (dramaCD)
Andromeda in "Starly Girls -Episode Starsia-" (VG)
Ayaka Kagari in "Lord of Vermilion IV" (VG)
Ayame Itō in "Corpse Party 2 ~ DEAD PATIENT" (dramaCD)
Beruno Souda in "Racing Musume" (VG)
Carmen Sandiego in "Carmen Sandiego" (cartoon)
Clarke Griffin (voiceover for Eliza Taylor) in "The 100" (Live-action TV)
Contender in Girls'' Frontline (Mobile Videogame)
Diana Celestine May in "Implosion: Never Lose Hope" (VG)
Eri Kumagai in "Music Girls (Ongaku Shōjo) projects" (songCD and dramaCD)
Hannah (voiceover for Odeya Rush) in "Goosebumps" (live-action movie)
Isabella in "Gargantia on the Verdurous Planet ONLINE FLEET" (VG)
Jessica in "Granblue Fantasy" (VG)
Kana in "Tales of Link" (Mobile VG)
Kujou Sara in "Genshin Impact" (VG)
Lili in "Street Fighter X Tekken" (VG)
Linde in "Fire Emblem Heroes" (VG)
Linde in "Genei Ibunroku ♯FE" (VG)
Little Alice in "Wonderland Wars" (VG)
Mai Sakurajima in "Seishun Buta Yarō Series" (Niconico Drama)
Meria Shiranami in "Maid ga Oshieru Maou-gaku!" (Drama CD)
Nagisa in "Monster Hunter Mezeporuta Kaitakuki" (VG)
Princess Stella in "Grand Sphere" (VG) (Japanese)
Shiranui Nanami in "NORN9 Act Tune" (otome VG)
Shiranui Nanami in "NORN9 Last Era" (otome VG)
Shiranui Nanami in "NORN9 Var Commons" (otome VG)
Shiranui Nanami in "NORN9" (otome VG)
Sofia Tenma in "Racing Musume" (VG)
Sonia Blanche in "BLADE ARCUS from Shining EX" (VG)
Sonia Blanche in "Shining Resonance" (VG)
Surge in "E.X. Troopers" (VG)
Tiki is My Wife P in "Genei Ibunroku ♯FE" (VG)
Tsukuyomi in "UNDER NIGHT IN-BIRTH Exe:Late" (VG)
Urara Taguchi in "Girl Friends" (drama CD)
Wilbell Vollerslied in "Atelier Ayesha ~Tasogare no Daichi no Renkinjutsushi~" (VG)
Wilbell Vollerslied in "Atelier Escha & Logy ~Tasogare no Sora no Renkinjutsuhi" (VG)
Wilbell Vollerslied in "Atelier Shallie ~Tasogare no Umi no Renkinjutsuhi" (VG)
Kasane Randall in "SCARLET NEXUS" (VG)
Reina in "Tekken 8" (VG)!~', 'Asami Seto', '瀬戸麻沙美', 'Female', '1993', '4', '2', NULL, NULL, NULL, NULL, NULL, 'Saitama, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('95', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95513-up9ZDuocHgRs.png', NULL, '__Height:__ 175 cm

[Profile](https://intention-k.com/profile/yuichi_nakamura) | [Twitter](https://twitter.com/nakamuraFF11) | [YouTube](https://www.youtube.com/channel/UCReBAqqC-hc9d70gOftfitg) | [Personal YouTube](https://www.youtube.com/channel/UC3eYAvjCVwNHgkaGbXX3sig)

**Trivia:**
- His nickname "Yuu-kyan" was given by Kenichi Suzumura.
- Very close with Tomokazu Sugita. They host a video game variety show called Tokyo Encounter together.
- Loves cats but is afraid of having them die before him, so doesn''t have any of his own.
- Allergic to metals and alcohol; drinks non-alcoholic soft drinks or orange juice at parties.
- Colorblind.', 'Yuuichi Nakamura', '中村悠一', 'Male', '1980', '2', '20', NULL, NULL, NULL, NULL, NULL, 'Takamatsu, Kagawa Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('96', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95095-DvSjTQnqcgXP.png', NULL, '__Height:__ 173 cm 

[Profile](https://haikyo.co.jp/profile/profile.php?ActorID=11470) | [Twitter](https://twitter.com/MY_MURMUR) | [Instagram](https://www.instagram.com/j.suwabe/)

Won Best Song at the 6th Seiyuu Awards (2012) for "ST☆RISH" (shared with Takuma Terashima, Kenichi Suzumura, Kishou Taniyama, Mamoru Miyano, Hiro Shimono) in _Uta no☆Prince-sama♪ Maji Love 1000%_. Won Best Supporting Actor at the 7th Seiyuu Awards (2013).

**Non-Anime Roles:**
• Artem Wing (Tears of Themis)', 'Junichi Suwabe', '諏訪部順一', 'Male', '1972', '3', '29', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('97', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95001-vm0RtZhmlzhK.png', NULL, '__Height:__ 174 cm

[Profile (HeroQ)](https://heroq.com/members/seki_tomokazu/) | [Profile (Atomic Monkey)](http://www.atomicmonkey.jp/jp/archives/talent/sekitomokazu) | [Twitter](https://twitter.com/seki0908)

A Japanese voice actor, stage actor, narrator and singer affiliated with talent agency [Atomic Monkey](http://www.atomicmonkey.jp/jp/), having previously worked under [Haikyou](https://haikyo.co.jp/). He''s also a chair member of creative production team HeroQ, which he joined in 1994.

__Non-anime voice roles:__
- Miguel O''Hara - *Spider-Man: Across the Spider-Verse* (2023 Film; JP dub)
- Toad - *The Super Mario Bros. Movie* (2023 Film; JP dub)
- Marc Spector/Moon Knight, Steven Grant/Mr. Knight, Jake Lockley - *Moon Knight* (2022 TV; JP dub)
- Siegfried Kaslana - Honkai Impact 3rd (VG)', 'Tomokazu Seki', '関智一', 'Male', '1972', '9', '8', NULL, NULL, NULL, NULL, NULL, 'Koutou, Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('98', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96764-yJWGrhjanDJQ.png', NULL, '__Height:__ 177 cm 
__Agency:__ Gekidan Himawari  
__Awards:__  Best New Actor at the 5th Annual Seiyuu Awards (2011)  
__Non-Anime Roles:__
~!- Lean (Final Fantasy Type 0)
- Ventus, Roxas (Kingdom Hearts series)
- Neku Sakuraba (The World Ends With You)
- Banagher Links (Mobile Suit Gundam: Gundam vs. Gundam Next)
- Rinne Rokudo (Kyoukai no Rinne trailer)
- Enma Kozato (Katekyo Hitman REBORN! Vomic)
- Razor (Genshin Impact)
- Rean Schwarzer (The Legend of Heroes Series)
!~

[Profile](https://profile.himawari.net/view/1559)

Koki Uchiyama is a Japanese actor and voice actor from Saitama Prefecture affiliated with Himawari Theatre Group.', 'Kouki Uchiyama', '内山昂輝', 'Male', '1990', '8', '16', NULL, NULL, NULL, NULL, NULL, 'Saitama Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('99', 'https://s4.anilist.co/file/anilistcdn/staff/large/n105071-Hcj0X2gcliPq.png', NULL, '__Height:__ 160 cm (5''3")

[Profile](http://www.hirata-office.jp/talent_profile/woman/mikako_komatsu.html) | [Artist Profile](https://www.toysfactory.co.jp/artist/mikakokomatsu/) | [Website](https://www.hirata-office.jp/komatsu_mikako/) | [Twitter](https://twitter.com/mikakokomatsu) | [Instagram](https://www.instagram.com/mikako_komatsu/)

A Japanese voice actor affiliated with Hirata Office. She married fellow voice actor [Tomoaki Maeno](https://anilist.co/staff/96489/Tomoaki-Maeno) on May 12, 2020.

__Non-anime roles:__
- Centi - Goddess of Victory: Nikke (VG)', 'Mikako Komatsu', '小松未可子', 'Female', '1988', '11', '11', NULL, NULL, NULL, NULL, NULL, 'Kuwana City, Mie Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('100', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95100-QZdjWZLCoWkf.png', NULL, '__Agency:__ Mausu Promotion

[Twitter](https://twitter.com/atuwosyousa)

Atsuko Satou, known professionally as Atsuko Tanaka, is a Japanese voice actress and narrator.

Her most-known roles are [Medea](https://anilist.co/character/3440/) in [Fate/Stay Night: Unlimited Blade Works](anilist.co/anime/19603/), [Motoko Kusanagi](https://anilist.co/character/1795/) in the [Ghost in the Shell](https://anilist.co/anime/43/) franchise, [Lisa Lisa](https://anilist.co/character/21960/) in [JoJo’s Bizarre Adventure](https://anilist.co/anime/14719/) and [Konan](https://anilist.co/character/3179/) in [Naruto: Shippuden](https://anilist.co/anime/1735/). In video games, she voices title characters Lara Croft in the Japanese dub of the Tomb Raider games, Bayonetta in the Bayonetta: Bloody Fate film adaptation and Bayonetta 2 and Kyrie Ushiromiya from Umineko no Naku Koro ni. She attended the Tokyo Announcement Academy where she studied voice training in 1991. In 2012, a Biglobe poll named her the voice actress with the sexiest voice.

Tanaka is married and has a sister. She also considers [Kikuko Inoue](https://anilist.co/staff/95195/) to be her best friend.

(Source: Wikipedia)
', 'Atsuko Tanaka', '田中敦子', 'Female', '1962', '11', '14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('101', 'https://s4.anilist.co/file/anilistcdn/staff/large/n105989-96etzH1dLNug.jpg', NULL, '**Height:** 174 cm  

[Blog](http://ameblo.jp/nobunagashimazaki/) | [Twitter](http://twitter.com/nobunaga_s) | [Instagram](https://www.instagram.com/nobunaga_s/)

Non-Anime Roles:
~!Kaedehara Kazuha - Genshin Impact (Video Game)!~', 'Nobunaga Shimazaki', '島崎信長', 'Male', '1988', '12', '6', NULL, NULL, NULL, NULL, NULL, 'Shiogama, Miyagi Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('102', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95255-VOwYfPMZuZGQ.png', NULL, '[Profile (81produce)](https://www.81produce.co.jp/actor_search/index.php/item?cell003=%E3%81%9F%E8%A1%8C&cell029=%E7%94%B7%E6%80%A7&keyword=&cell028=&cell004=&name=%E5%8D%83%E8%91%89%E3%80%80%E7%B9%81&id=79&label=1) | [Blog](http://ameblo.jp/kamisama-s/) | [Twitter](https://twitter.com/1kamisama1)

_Note: Not to be confused with the [animator](https://anilist.co/staff/143678/)._', 'Shigeru Chiba', '千葉繁', 'Male', '1954', '2', '4', NULL, NULL, NULL, NULL, NULL, 'Kikuchi, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('103', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95079-MdbWTLxPUvFf.jpg', NULL, '__Height:__ 177 cm (5''9.75")

On September 24, 2022, it was revealed that Sakurai had been married to a former voice actress. And a month later it was reported that he was engaging in an extramarital affair with the writer of his radio program. His previously announced roles for [AYAKA](https://anilist.co/anime/155982/AYAKA/) and [Mononoke (Movie)](https://anilist.co/anime/151117/Mononoke-Movie/) had been recast as a result.

On March 31, 2023, it was jointly announced with his talent agency "Intention" that they are ending their contract, as Sakurai requested to leave as a way of taking sole responsibility of his actions and for self-reflection.

Non-Anime Roles:
-Passenger in "Arknights" (VG/Mobile) (Japanese)
-Su in "Honkai Impact 3rd" (VG) (Japanese)
-Cloud Strife in "FINAL FANTASY 7 REMAKE" (Japanese)', 'Takahiro Sakurai', '櫻井孝宏', 'Male', '1974', '6', '13', NULL, NULL, NULL, NULL, NULL, 'Okazaki, Aichi Prefecture, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('104', 'https://s4.anilist.co/file/anilistcdn/staff/large/n107480-h2RgLXNP7hcj.png', NULL, '__Height:__ 183 cm (6 ft 0 in)

[Profile](https://www.atomicmonkey.jp/jp/archives/talent/kimurasubaru) | [Twitter](https://twitter.com/GiantSUBAru) | [Instagram](https://www.instagram.com/richpotatoboya/?hl=en)

A German–Japanese actor, voice actor and narrator affiliated with talent agency [Atomic Monkey](http://www.atomicmonkey.jp/jp/), his best-known role is voicing Takeshi Goda in the Doraemon series, which has spawned numerous specials.', 'Subaru Kimura', '木村昴', 'Male', '1990', '6', '29', NULL, NULL, NULL, NULL, NULL, 'Leipzig, Saxony, Germany');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('105', 'https://s4.anilist.co/file/anilistcdn/staff/large/n107652-wHdkKzhetbiH.jpg', NULL, '**Height:** 161.4 cm

__[Profile](http://www.81produce.co.jp/actor_search/index.php/item?id=148) | [Twitter](https://twitter.com/r172)__

**Non-Anime Roles**:
• Asta (Honkai: Star Rail)
• Anju - Utawarerumono: Mask of Deception/Mask of Truth', 'Chinatsu Akasaki', '赤﨑千夏', 'Female', '1987', '8', '10', NULL, NULL, NULL, NULL, NULL, 'Chiran, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('106', 'https://s4.anilist.co/file/anilistcdn/staff/large/1436.jpg', NULL, 'Mugihito is a Japanese actor, voice actor and narrator from Musashino, Tokyo. Mugihito was formerly credited under his birth name and also Mugihito Amachi (天地麦人).', 'Mugihito', '麦人 ', 'Male', '1944', '8', '8', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('107', 'https://s4.anilist.co/file/anilistcdn/staff/large/n96122-KZMI0XXqYtpG.png', NULL, '__Height:__ 183 cm (6''0)

__[Agency Profile](http://www.axl-one.com/talent/kuroda.html) | [Blog](https://ameblo.jp/takaya-kuroda/) | [Twitter](https://twitter.com/takayakuroda) | [Instagram](https://www.instagram.com/takayakuroda_official/) | [Wiki (JP)](https://ja.wikipedia.org/wiki/%E9%BB%92%E7%94%B0%E5%B4%87%E7%9F%A2)__

Takaya Kuroda is a Japanese actor and voice actor affiliated with Axlone. And the lead singer of the rock band Takaya Kuroda & Goodfellas.

He is best known for his bass voice, which has usually seen him cast in villainous roles. Because of his vocal resemblance to the late [Hirotaka Suzuoki](https://anilist.co/staff/95572/), he was chosen to replace Suzuoki as the voice of [Starscream](https://anilist.co/character/3913/) in Transformers as Suzuoki''s health deteriorated.

To the western audiences he is probably most known for providing the voice of Kazuma Kiryu, the protagonist of the Yakuza video game series. Kuroda is also the man who sings the famous "Baka Mitai" song related to the series.

(Source: Wikipedia)', 'Takaya Kuroda', '黒田崇矢', 'Male', '1965', '4', '17', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('108', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95054-8VgnlGK5QX2A.png', NULL, '__Height:__ 160 cm

[Profile](http://www.office-pac.jp/talent/profile/?id=endo-a) | [Instagram](https://www.instagram.com/e_aya217/)

On August 8, 2013, she reported her marriage on her blog

Non-anime roles:

Yelan - Genshin Impact', 'Aya Endou', '遠藤綾', 'Female', '1980', '2', '17', NULL, NULL, NULL, NULL, NULL, 'Yamagata, Japan ');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('109', 'https://s4.anilist.co/file/anilistcdn/staff/large/95399-HGKWUmKmZ1el.jpg', NULL, '__Height:__165 cm  

[Profile (Aoni)](https://www.aoni.co.jp/search/iwata-mitsuo.html) | [Official blog](https://ameblo.jp/i-kanata/) | [Twitter](https://twitter.com/mitsuo_iwata_77) | [Instagram](https://www.instagram.com/mitsuo.iwata.77/) | [Wiki (en)](https://en.wikipedia.org/wiki/Mitsuo_Iwata) | [Wiki (jp)](https://ja.wikipedia.org/wiki/岩田光央)

Husband of voice actress [Rikako Aikawa](https://anilist.co/staff/96840/), older brother of [AKIKO](https://anilist.co/staff/105271/).

Non-anime roles:~!• Itsuki Takeuchi in "Initial D Arcade Stage 4" (VG)
• Itsuki Takeuchi in "Initial D: Special Stage" (VG)
• Kusanagi in "The King of Fighters 2002" (VG)
• Kusanagi in "The King of Fighters 2003" (VG)
• Kyle Bean in "Super Robot Wars Original Generations" (VG/PS2)
• Mike Sounders XIII in "Super Robot Wars Alpha 3"
• Negimaru in ".hack//G.U. Vol.1 Saitan" (VG)
• Peter Pan in "Kingdom Hearts" (VG)
• Peter Pan in "Peter Pan" (Disney animated movie)
• Sean in "Street Fighter III 3rd Strike"
• Silverbolt in "Beast Wars" (Japanese Dub)
• Syo Kirishima in "The King of Fighters ''99 Evolution" (VG)
• Syo Kirishima in "The King of Fighters 2000" (VG)
• Yeager in "Tales of Vesperia" (VG)
• Takeuchi Itsuki in "Initial D Kuroi Inazuma: Aratanaru Fuhai Densetsu " (Drama CD)
• Zephel in "Angelique Duet" (VG)
• Zephel in "Angelique Etoile" (VG)
• Zephel in "Angelique Special 2" (VG)
• Zephel in "Angelique Special" (VG)
• Zephel in "Angelique Trois" (VG)
• Zephel in "Angelique" (VG)
• Zephel in "Angelique: Tenkuu no Requiem" (VG)
• Zephel in "Fushigi no Kuni no Angelique" (VG)!~', 'Mitsuo Iwata', '岩田光央', 'Male', '1967', '7', '31', NULL, NULL, NULL, NULL, NULL, 'Tokorozawa, Saitama, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('110', 'https://s4.anilist.co/file/anilistcdn/staff/large/n118591-rOO8iwizHVUV.png', NULL, '__Height:__ 171cm

[Twitter](https://twitter.com/yamayayoshitaka)', 'Yoshitaka Yamaya', '山谷祥生', NULL, '1992', '2', '15', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('111', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95869-qCQ0EaWpq1QT.png', NULL, '__Agency:__ I''m Enterprise

[Profile](https://www.imenterprise.jp/profile.php?id=74) | [Website](https://whv-amusic.com/hayamisaori) | [Twitter](https://twitter.com/hayami_official)  | [YouTube](https://www.youtube.com/channel/UCtUcK6HrhD024CkPDsURBwg) 

Member of the duet [Blue Drops](https://anilist.co/staff/106305/Blue-Drops) with [Hitomi Yoshida](https://anilist.co/staff/101088/Hitomi-Yoshida).

**Non-Anime Roles:**
~!• Elisanne (Dragalia Lost)
• Kamisato Ayaka (Genshin Impact)
• Munechika (Utawarerumono)
• Pramanix (Arknights)
• Rei Shijo (Princess Connect! Re:Dive)
• Tao Isonokami (Shin Megami Tensei V)
• Vector (Girls'' Frontline)
• Shimakaze (Azur Lane)
• Kirifuji Nagisa (Blue Archive)
• Kunimitsu II (Tekken 7)!~', 'Saori Hayami', '早見沙織', 'Female', '1991', '5', '29', NULL, NULL, NULL, NULL, NULL, 'Tokyo, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('112', 'https://s4.anilist.co/file/anilistcdn/staff/large/n95255-VOwYfPMZuZGQ.png', NULL, '[Profile (81produce)](https://www.81produce.co.jp/actor_search/index.php/item?cell003=%E3%81%9F%E8%A1%8C&cell029=%E7%94%B7%E6%80%A7&keyword=&cell028=&cell004=&name=%E5%8D%83%E8%91%89%E3%80%80%E7%B9%81&id=79&label=1) | [Blog](http://ameblo.jp/kamisama-s/) | [Twitter](https://twitter.com/1kamisama1)

_Note: Not to be confused with the [animator](https://anilist.co/staff/143678/)._', 'Shigeru Chiba', '千葉繁', 'Male', '1954', '2', '4', NULL, NULL, NULL, NULL, NULL, 'Kikuchi, Japan');
INSERT INTO "VOICE_ARTIST" ("VA_ID", "VA_IMAGE", "LIKES", "DESCRIPTION", "FULL_NAME", "NATIVE", "GENDER", "DATE_OF_BIRTH_YEAR", "DATE_OF_BIRTH_MONTH", "DATE_OF_BIRTH_DAY", "DATE_OF_DEATH_YEAR", "DATE_OF_DEATH_MONTH", "DATE_OF_DEATH_DAY", "YEARS_ACTIVE_START", "YEARS_ACTIVE_END", "HOME_TOWN") VALUES ('113', 'https://s4.anilist.co/file/anilistcdn/staff/large/n106661-r5f4gxJEyU67.jpg', NULL, '__Agency:__ Mausu Promotion (2012-2021), Toho Entertainment (2021-)

[Twitter](https://twitter.com/TomoyoKurosawa) | [Instagram](https://www.instagram.com/tomoyo_kurosawa_official_/) | [Blog](http://ameblo.jp/kurosawa-tomoyo/)

A Japanese actress, voice actress, and singer. Kurosawa began studying acting at the age of 3. In 2000, she began appearing in TV dramas, commercials and stage performances. At the age of 13, she made her voice acting debut as [Natsuki Koyama](https://anilist.co/character/30214/) in the 2010 anime film [Welcome to the Space Show](https://anilist.co/anime/8115/).

Kurosawa became a support member of Sound Horizon in 2008.

On June 8, 2023, her agency announced her marriage on Twitter.

__Awards:__
- Best Lead Actress at the 12th Seiyuu Awards in 2018 for her roles as [Phosphophyllite](https://anilist.co/character/123385/) and [Kumiko Oumae](https://anilist.co/character/88708/).

(Source: Wikipedia)', 'Tomoyo Kurosawa', '黒沢ともよ', 'Female', '1996', '4', '10', NULL, NULL, NULL, NULL, NULL, 'Chichibu, Saitama, Japan');
COMMIT;
COMMIT;

-- ----------------------------
-- Sequence structure for USER_ID_SEQ
-- ----------------------------
DROP SEQUENCE "USER_ID_SEQ";
CREATE SEQUENCE "USER_ID_SEQ" MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Primary Key structure for table ANIME
-- ----------------------------
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007886" PRIMARY KEY ("ANIME_ID");

-- ----------------------------
-- Checks structure for table ANIME
-- ----------------------------
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007877" CHECK ("FORMAT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007878" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007879" CHECK ("DESCRIPTION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007880" CHECK ("START_YEAR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007881" CHECK ("SEASON" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007882" CHECK ("SEASON_YEAR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007883" CHECK ("DURATION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007884" CHECK ("COUNTRY_OF_ORIGIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007885" CHECK ("SOURCE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_CATEGORY
-- ----------------------------
ALTER TABLE "ANIME_CATEGORY" ADD CONSTRAINT "SYS_C007972" PRIMARY KEY ("ANIME_ID", "CATEGORY_ID");

-- ----------------------------
-- Primary Key structure for table ANIME_GENRE
-- ----------------------------
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008054" PRIMARY KEY ("ANIME_ID", "GENRE_ID");

-- ----------------------------
-- Checks structure for table ANIME_GENRE
-- ----------------------------
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008052" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008053" CHECK ("GENRE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_PRODUCER
-- ----------------------------
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C007923" PRIMARY KEY ("ANIME_ID", "PRODUCER_ID");

-- ----------------------------
-- Checks structure for table ANIME_PRODUCER
-- ----------------------------
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C007921" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C007922" CHECK ("PRODUCER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_RELATED
-- ----------------------------
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C007933" PRIMARY KEY ("ANIME_ID", "RELATED_ANIME_ID");

-- ----------------------------
-- Checks structure for table ANIME_RELATED
-- ----------------------------
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C007931" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C007932" CHECK ("RELATED_ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table ANIME_STAFF
-- ----------------------------
ALTER TABLE "ANIME_STAFF" ADD CONSTRAINT "SYS_C007967" PRIMARY KEY ("ANIME_ID", "STAFF_ID");

-- ----------------------------
-- Primary Key structure for table ANIME_STUDIO
-- ----------------------------
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008064" PRIMARY KEY ("ANIME_ID", "STUDIO_ID");

-- ----------------------------
-- Checks structure for table ANIME_STUDIO
-- ----------------------------
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008062" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008063" CHECK ("STUDIO_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CATEGORY
-- ----------------------------
ALTER TABLE "CATEGORY" ADD CONSTRAINT "SYS_C007971" PRIMARY KEY ("CATEGORY_ID");

-- ----------------------------
-- Checks structure for table CATEGORY
-- ----------------------------
ALTER TABLE "CATEGORY" ADD CONSTRAINT "SYS_C007970" CHECK ("CATEGORY_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table CHARACTER
-- ----------------------------
ALTER TABLE "CHARACTER" ADD CONSTRAINT "SYS_C007942" PRIMARY KEY ("CHARACTER_ID");

-- ----------------------------
-- Checks structure for table CHARACTER
-- ----------------------------
ALTER TABLE "CHARACTER" ADD CONSTRAINT "SYS_C007941" CHECK ("FULL_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table COMMENTT
-- ----------------------------
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C007990" PRIMARY KEY ("COMMENT_ID");

-- ----------------------------
-- Checks structure for table COMMENTT
-- ----------------------------
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C007989" CHECK ("LIKES" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table COMMENT_RELATED
-- ----------------------------
ALTER TABLE "COMMENT_RELATED" ADD CONSTRAINT "SYS_C007993" PRIMARY KEY ("COMMENT_ID", "RELATED_COMMENT_ID");

-- ----------------------------
-- Primary Key structure for table GENRE
-- ----------------------------
ALTER TABLE "GENRE" ADD CONSTRAINT "SYS_C007805" PRIMARY KEY ("GENRE_ID");

-- ----------------------------
-- Checks structure for table GENRE
-- ----------------------------
ALTER TABLE "GENRE" ADD CONSTRAINT "SYS_C007804" CHECK ("GENRE_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table HAS
-- ----------------------------
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C007952" PRIMARY KEY ("ANIME_ID", "CHARACTER_ID");

-- ----------------------------
-- Checks structure for table HAS
-- ----------------------------
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C007950" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C007951" CHECK ("CHARACTER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MANGA
-- ----------------------------
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C007848" PRIMARY KEY ("MANGA_ID");

-- ----------------------------
-- Checks structure for table MANGA
-- ----------------------------
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C007842" CHECK ("FORMAT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C007843" CHECK ("STATUS" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C007844" CHECK ("DESCRIPTION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C007845" CHECK ("START_YEAR" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C007846" CHECK ("COUNTRY_OF_ORIGIN" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA" ADD CONSTRAINT "SYS_C007847" CHECK ("SOURCE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table MANGA_GENRE
-- ----------------------------
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008059" PRIMARY KEY ("MANGA_ID", "GENRE_ID");

-- ----------------------------
-- Checks structure for table MANGA_GENRE
-- ----------------------------
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008057" CHECK ("MANGA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008058" CHECK ("GENRE_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table PRODUCER
-- ----------------------------
ALTER TABLE "PRODUCER" ADD CONSTRAINT "SYS_C007920" PRIMARY KEY ("PRODUCER_ID");

-- ----------------------------
-- Primary Key structure for table REVIEW
-- ----------------------------
ALTER TABLE "REVIEW" ADD CONSTRAINT "SYS_C007904" PRIMARY KEY ("REVIEW_ID");

-- ----------------------------
-- Checks structure for table REVIEW
-- ----------------------------
ALTER TABLE "REVIEW" ADD CONSTRAINT "SYS_C007901" CHECK ("REVIEW_TEXT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW" ADD CONSTRAINT "SYS_C007902" CHECK ("DATE_OF_CREATION" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW" ADD CONSTRAINT "SYS_C007903" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REVIEW_ANIME
-- ----------------------------
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C007909" PRIMARY KEY ("REVIEW_ANIME_ID");

-- ----------------------------
-- Checks structure for table REVIEW_ANIME
-- ----------------------------
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C007906" CHECK ("REVIEW_ANIME_TEXT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C007907" CHECK ("DATE_OF_CREATION_ANIME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C007908" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table REVIEW_MANGA
-- ----------------------------
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C007915" PRIMARY KEY ("REVIEW_MANGA_ID");

-- ----------------------------
-- Checks structure for table REVIEW_MANGA
-- ----------------------------
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C007912" CHECK ("REVIEW_MANGA_TEXT" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C007913" CHECK ("DATE_OF_CREATION_MANGA" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C007914" CHECK ("MANGA_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table STAFF
-- ----------------------------
ALTER TABLE "STAFF" ADD CONSTRAINT "SYS_C007940" PRIMARY KEY ("STAFF_ID");

-- ----------------------------
-- Checks structure for table STAFF
-- ----------------------------
ALTER TABLE "STAFF" ADD CONSTRAINT "SYS_C008067" CHECK ("ROLE" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table STUDIO
-- ----------------------------
ALTER TABLE "STUDIO" ADD CONSTRAINT "SYS_C007919" PRIMARY KEY ("STUDIO_ID");

-- ----------------------------
-- Checks structure for table STUDIO
-- ----------------------------
ALTER TABLE "STUDIO" ADD CONSTRAINT "SYS_C007918" CHECK ("STUDIO_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table THREAD
-- ----------------------------
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C007984" PRIMARY KEY ("THREAD_ID");

-- ----------------------------
-- Checks structure for table THREAD
-- ----------------------------
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C007983" CHECK ("THREAD_NAME" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table THREAD_CATEGORY
-- ----------------------------
ALTER TABLE "THREAD_CATEGORY" ADD CONSTRAINT "SYS_C007986" PRIMARY KEY ("THREAD_ID", "CATEGORY_ID");

-- ----------------------------
-- Primary Key structure for table USERR
-- ----------------------------
ALTER TABLE "USERR" ADD CONSTRAINT "SYS_C007827" PRIMARY KEY ("USER_ID");

-- ----------------------------
-- Uniques structure for table USERR
-- ----------------------------
ALTER TABLE "USERR" ADD CONSTRAINT "SYS_C007828" UNIQUE ("USERNAME") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USERR" ADD CONSTRAINT "SYS_C007829" UNIQUE ("EMAIL_USER") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_ANIME
-- ----------------------------
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008174" PRIMARY KEY ("USER_ID", "ANIME_ID");

-- ----------------------------
-- Checks structure for table USER_ANIME
-- ----------------------------
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008172" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008173" CHECK ("ANIME_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_CHARACTER
-- ----------------------------
ALTER TABLE "USER_CHARACTER" ADD CONSTRAINT "SYS_C007947" PRIMARY KEY ("USER_ID", "CHARACTER_ID");

-- ----------------------------
-- Checks structure for table USER_CHARACTER
-- ----------------------------
ALTER TABLE "USER_CHARACTER" ADD CONSTRAINT "SYS_C007945" CHECK ("USER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_CHARACTER" ADD CONSTRAINT "SYS_C007946" CHECK ("CHARACTER_ID" IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Primary Key structure for table USER_MANGA
-- ----------------------------
ALTER TABLE "USER_MANGA" ADD CONSTRAINT "SYS_C007961" PRIMARY KEY ("USER_ID", "MANGA_ID");

-- ----------------------------
-- Primary Key structure for table USER_STAFF
-- ----------------------------
ALTER TABLE "USER_STAFF" ADD CONSTRAINT "SYS_C007955" PRIMARY KEY ("USER_ID", "STAFF_ID");

-- ----------------------------
-- Primary Key structure for table USER_VA
-- ----------------------------
ALTER TABLE "USER_VA" ADD CONSTRAINT "SYS_C007964" PRIMARY KEY ("USER_ID", "VA_ID");

-- ----------------------------
-- Primary Key structure for table VOICE_ARTIST
-- ----------------------------
ALTER TABLE "VOICE_ARTIST" ADD CONSTRAINT "SYS_C007937" PRIMARY KEY ("VA_ID");

-- ----------------------------
-- Foreign Keys structure for table ANIME
-- ----------------------------
ALTER TABLE "ANIME" ADD CONSTRAINT "SYS_C007887" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_CATEGORY
-- ----------------------------
ALTER TABLE "ANIME_CATEGORY" ADD CONSTRAINT "SYS_C007973" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_CATEGORY" ADD CONSTRAINT "SYS_C007974" FOREIGN KEY ("CATEGORY_ID") REFERENCES "CATEGORY" ("CATEGORY_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_GENRE
-- ----------------------------
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008055" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_GENRE" ADD CONSTRAINT "SYS_C008056" FOREIGN KEY ("GENRE_ID") REFERENCES "GENRE" ("GENRE_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_PRODUCER
-- ----------------------------
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C007924" FOREIGN KEY ("ANIME_ID") REFERENCES "PRODUCER" ("PRODUCER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_PRODUCER" ADD CONSTRAINT "SYS_C007925" FOREIGN KEY ("PRODUCER_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_RELATED
-- ----------------------------
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C007934" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_RELATED" ADD CONSTRAINT "SYS_C007935" FOREIGN KEY ("RELATED_ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_STAFF
-- ----------------------------
ALTER TABLE "ANIME_STAFF" ADD CONSTRAINT "SYS_C007968" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_STAFF" ADD CONSTRAINT "SYS_C007969" FOREIGN KEY ("STAFF_ID") REFERENCES "STAFF" ("STAFF_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table ANIME_STUDIO
-- ----------------------------
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008065" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "ANIME_STUDIO" ADD CONSTRAINT "SYS_C008066" FOREIGN KEY ("STUDIO_ID") REFERENCES "STUDIO" ("STUDIO_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table CHARACTER
-- ----------------------------
ALTER TABLE "CHARACTER" ADD CONSTRAINT "SYS_C007943" FOREIGN KEY ("VA_ID") REFERENCES "VOICE_ARTIST" ("VA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "CHARACTER" ADD CONSTRAINT "SYS_C007944" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table COMMENTT
-- ----------------------------
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C007991" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "COMMENTT" ADD CONSTRAINT "SYS_C007992" FOREIGN KEY ("THREAD_ID") REFERENCES "THREAD" ("THREAD_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table COMMENT_RELATED
-- ----------------------------
ALTER TABLE "COMMENT_RELATED" ADD CONSTRAINT "SYS_C007994" FOREIGN KEY ("COMMENT_ID") REFERENCES "COMMENTT" ("COMMENT_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "COMMENT_RELATED" ADD CONSTRAINT "SYS_C007995" FOREIGN KEY ("RELATED_COMMENT_ID") REFERENCES "COMMENTT" ("COMMENT_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table HAS
-- ----------------------------
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C007953" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "HAS" ADD CONSTRAINT "SYS_C007954" FOREIGN KEY ("CHARACTER_ID") REFERENCES "CHARACTER" ("CHARACTER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY DISABLE NOVALIDATE;

-- ----------------------------
-- Foreign Keys structure for table MANGA_GENRE
-- ----------------------------
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008060" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "MANGA_GENRE" ADD CONSTRAINT "SYS_C008061" FOREIGN KEY ("GENRE_ID") REFERENCES "GENRE" ("GENRE_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table REVIEW
-- ----------------------------
ALTER TABLE "REVIEW" ADD CONSTRAINT "SYS_C007905" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table REVIEW_ANIME
-- ----------------------------
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "FK_REVIEW_ANIME_ID" FOREIGN KEY ("REVIEW_ANIME_ID") REFERENCES "REVIEW" ("REVIEW_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_ANIME" ADD CONSTRAINT "SYS_C007911" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table REVIEW_MANGA
-- ----------------------------
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "FK_REVIEW_MANGA_ID" FOREIGN KEY ("REVIEW_MANGA_ID") REFERENCES "REVIEW" ("REVIEW_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "REVIEW_MANGA" ADD CONSTRAINT "SYS_C007917" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table THREAD
-- ----------------------------
ALTER TABLE "THREAD" ADD CONSTRAINT "SYS_C007985" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table THREAD_CATEGORY
-- ----------------------------
ALTER TABLE "THREAD_CATEGORY" ADD CONSTRAINT "SYS_C007987" FOREIGN KEY ("THREAD_ID") REFERENCES "THREAD" ("THREAD_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "THREAD_CATEGORY" ADD CONSTRAINT "SYS_C007988" FOREIGN KEY ("CATEGORY_ID") REFERENCES "CATEGORY" ("CATEGORY_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_ANIME
-- ----------------------------
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008175" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_ANIME" ADD CONSTRAINT "SYS_C008176" FOREIGN KEY ("ANIME_ID") REFERENCES "ANIME" ("ANIME_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_CHARACTER
-- ----------------------------
ALTER TABLE "USER_CHARACTER" ADD CONSTRAINT "SYS_C007948" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_CHARACTER" ADD CONSTRAINT "SYS_C007949" FOREIGN KEY ("CHARACTER_ID") REFERENCES "CHARACTER" ("CHARACTER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_MANGA
-- ----------------------------
ALTER TABLE "USER_MANGA" ADD CONSTRAINT "SYS_C007962" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_MANGA" ADD CONSTRAINT "SYS_C007963" FOREIGN KEY ("MANGA_ID") REFERENCES "MANGA" ("MANGA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_STAFF
-- ----------------------------
ALTER TABLE "USER_STAFF" ADD CONSTRAINT "SYS_C007956" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_STAFF" ADD CONSTRAINT "SYS_C007957" FOREIGN KEY ("STAFF_ID") REFERENCES "STAFF" ("STAFF_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;

-- ----------------------------
-- Foreign Keys structure for table USER_VA
-- ----------------------------
ALTER TABLE "USER_VA" ADD CONSTRAINT "SYS_C007965" FOREIGN KEY ("USER_ID") REFERENCES "USERR" ("USER_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
ALTER TABLE "USER_VA" ADD CONSTRAINT "SYS_C007966" FOREIGN KEY ("VA_ID") REFERENCES "VOICE_ARTIST" ("VA_ID") NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALIDATE;
