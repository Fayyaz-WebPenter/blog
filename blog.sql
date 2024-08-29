-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for blog_web
CREATE DATABASE IF NOT EXISTS `blog_web` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `blog_web`;

-- Dumping structure for table blog_web.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auther_id` int DEFAULT NULL,
  `blog_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `blog_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `category` int DEFAULT NULL,
  `publish_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table blog_web.blog: ~1 rows (approximately)
REPLACE INTO `blog` (`blog_id`, `blog_title`, `auther_id`, `blog_body`, `blog_image`, `category`, `publish_date`) VALUES
	(29, 'CJP asks high court CJs to nominate additional judges', 16, '<p>SLAMABAD: The Chief Justice of Pakistan (CJP), Qazi Faez Isa, has asked the chief justices of five high courts to nominate potential candidates as additional judges of their respective courts.</p>\r\n\r\n<p>The chief justice on Wednesday wrote a letter to the Islamabad High Court Chief Justice Aamer Farooq, Balochistan High Court Chief Justice Muhammad Hashim Kakar, Peshawar High Court Chief Justice Ishtiaq Ibrahim, Sindh High Court Chief Justice Muhammad Shafi Siddiqui and Lahore High Court Chief Justice Aalia Neelum.</p>\r\n\r\n<p>&ldquo;If you consider appropriate, not all existing vacancies, if there are more than five, be considered immediately, as I am sure you too would want that proper deliberation takes place,&rdquo; the chief justice wrote, saying the paramount object was to nominate the best possible candidates.</p>\r\n\r\n<p>Justice Isa said the Supreme Court comprised 16 judges and the chief justice adding that after almost two and a half years, the Supreme Court started functioning at its full strength on 25 June 2024. The chief justice informed them that the Shariat Appellate Bench of the Supreme Court was also made functional after the appointment of a second Aalim/scholar member on July 29th, 2024 and it heard cases after a break of four years. &ldquo;Having fulfilled my responsibility, I now look to you to attend to the working of your respective High Courts and to consider suitable names for appointment of judges,&rdquo; the CJP wrote.</p>\r\n\r\n<p>Justice Isa further informed the high court&rsquo;s chief justices that the rules of Judicial Commission of Pakistan were enacted in 2010, heeding the persistent demand of bar councils and bar associations to make the process of nomination transparent and democratic. &ldquo;I had constituted a committee to propose amendments to the said rules,&rdquo; the CJP further informed them saying the said committee submitted its report and a meeting was called on 3rd May 2024 for consideration of its recommendations. &ldquo;I wanted the meeting to proceed; however, the meeting was postponed in deference to the wishes of the majority,&rdquo; the CJP continued.</p>\r\n\r\n<p>To consider the recommendations of the committee, the chief justice said a meeting had again been called.</p>\r\n\r\n<p>Meanwhile, it was learnt that Chief Justice Qazi Faez Isa had convened a meeting of the Judicial Commission of Pakistan (JCP) on September 13.</p>\r\n', 'Home (2).png', 23, '2024-08-29 05:37:13'),
	(30, 'Moazzam Jah Ansari made Balochistan IG', 16, '<p>ISLAMABAD: The federal government has changed the command of Balochistan Police in the context of the recent wave of terrorism in the province.</p>\r\n\r\n<p>IG Balochistan Police Abdul Khaliq Sheikh has been transferred and directed to report to the Establishment Division. Abdul Khaliq Shaikh, a Grade-21 officer, was appointed IG under Section 10 of the Civil Servants Act, 1973 as it was a Grade-22 post.</p>\r\n\r\n<p>Moazzam Jah Ansari, a Grade 22 officer of the Police Service of Pakistan, has been appointed as the new IG Balochistan Police. He was posted as Commandant, Frontier Constabulary (FC). After the approval of federal cabinet, the Establishment Division has issued official notifications for these postings and transfers. The new IG Balochistan, Moazzam Jah Ansari, has previously served as IG Khyber Pakhtunkhwa and IG Balochistan. The orders of postings and transfers of IG Balochistan are effective immediately and until further notice.</p>\r\n', 'Home.jpg', 23, '2024-08-29 05:38:33'),
	(31, 'Nawaz may depart for London next month', 15, '<p>LAHORE: Pakistan Muslim League-Nawaz (PMLN) President Nawaz Sharif is expected to travel to London in the second week of September.</p>\r\n\r\n<p>Party sources have indicated that the former prime minister is likely to leave for London on September 11, 2024 for a scheduled check-up.</p>\r\n\r\n<p>In addition to his check-up, Nawaz Sharif is also expected to hold several important political meetings during his visit. Nawaz Sharif had returned to Pakistan in October 2023 after an extended stay abroad.</p>\r\n', 'Home.png', 23, '2024-08-29 05:39:45'),
	(32, 'Senior army officer, two brothers ‘kidnapped’ in Dera Ismail Khan', 15, '<p>ESHAWAR / DERA ISMAIL KHAN: Shakirullah Marwat, the district and sessions judge of South Waziristan, who had appealed to the government and judiciary to accept the demands of his abductors after being&nbsp;<a href="https://www.dawn.com/news/1830118">kidnapped</a>&nbsp;a day earlier, was recovered late Sunday night, Counter-Terrorism Department (CTD) confirmed to&nbsp;<em>Dawn</em>.</p>\r\n\r\n<p>The Dera Ismail Khan CTD said the abductee reached home safely after being recovered &lsquo;unconditionally&rsquo;. Information Adviser to Khyber Pakhtunkhwa Chief Minister Barrister Mohammad Ali Saif later also confirmed the judge&rsquo;s safe recovery.</p>\r\n\r\n<p>In a video statement sent from an unknown location, Mr Marwat earlier stated: &ldquo;Taliban brought me here. It is a jungle and a war is going on.&rdquo;</p>\r\n\r\n<p>In the minute-long message, the sessions judge said his release was only possible if the militants&rsquo; dema&shy;nds were accepted. &ldquo;I request the federal and provincial governments, chief justices of Peshawar High Court and Supreme Court of Pakistan to make sure the Taliban&rsquo;s demands are accepted and my recovery is made sure as soon as possible,&rdquo; he said.</p>\r\n', 'bootstrap-stack.png', 22, '2024-08-29 05:46:11'),
	(33, 'AFTER the shocking cycle of violence ', 16, '<p>terrorism, insisting there was &ldquo;no room for weakness&rdquo;. In a related development, the interior minister&nbsp;<a href="https://www.dawn.com/news/1855061/interior-minister-mohsin-naqvi-visits-balochistan-day-after-attacks-vows-to-stand-behind-cm">dashed to Quetta</a>, and while reiterating his support for the Balochistan chief minister, he observed that the entire national leadership was &ldquo;working towards a solution&rdquo; to address the province&rsquo;s issues.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Past administrations have made similar resolves, using both carrots and sticks to &lsquo;fix&rsquo; Balochistan. Yet, as the recent attacks have shown, the separatist threat has grown in lethality and reach, and a fresh approach is needed to bring peace to this tortured land.</p>\r\n\r\n<p>The state&rsquo;s prime responsibility is to stop further violence in Balochistan and ensure that the lives of its people are secure. While the security forces pursue terrorists, it must be ensured that no innocent people are hauled up in the dragnet, and that there are no human rights violations during counterterrorism operations. If innocent people are penalised, the terrorists&rsquo; narrative will only be strengthened.</p>\r\n', '456329377_8205143549575043_4738096870677226645_n.jpg', 22, '2024-08-29 05:47:42');

-- Dumping structure for table blog_web.category
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table blog_web.category: ~3 rows (approximately)
REPLACE INTO `category` (`cat_id`, `cat_name`) VALUES
	(22, 'Politics'),
	(23, 'News'),
	(24, 'police'),
	(25, 'Army');

-- Dumping structure for table blog_web.user
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `role` int DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table blog_web.user: ~2 rows (approximately)
REPLACE INTO `user` (`userid`, `username`, `email`, `password`, `role`) VALUES
	(15, 'ahmad', 'ahmad11@gmail.com', 'Khan@201', 1),
	(16, 'ali', 'ali@gmail.com', '123456', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
