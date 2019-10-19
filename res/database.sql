-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2017 at 12:16 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

DROP TABLE IF EXISTS `product_table`;
CREATE TABLE IF NOT EXISTS `product_table` (
  `product_id` int(11) NOT NULL,
  `product_name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`product_id`, `product_name`) VALUES
(1, 'Maggi'),
(2, 'Small Pizza'),
(3, 'Large Pizza'),
(4, 'Anime Movies'),
(5, 'Anime DVD'),
(6, 'Burger'),
(6, 'p6'),
(7, 'p7'),
(8, 'p8'),
(9, 'p9'),
(10, 'p10'),
(11, 'p11'),
(12, 'p12'),
(13, 'p13'),
(14, 'p14'),
(15, 'p15'),
(16, 'p16'),
(17, 'p17'),
(18, 'p18'),
(19, 'p19'),
(20, 'p20'),
(21, 'p21'),
(22, 'p22'),
(23, 'p23'),
(24, 'p24'),
(25, 'p25'),
(26, 'p26'),
(27, 'p27'),
(28, 'p28'),
(29, 'p29'),
(30, 'p30'),
(31, 'p31'),
(32, 'p32'),
(33, 'p33'),
(34, 'p34'),
(35, 'p35'),
(36, 'p36'),
(37, 'p37'),
(38, 'p38'),
(39, 'p39'),
(40, 'p40'),
(41, 'p41'),
(42, 'p42'),
(43, 'p43'),
(44, 'p44'),
(45, 'p45'),
(46, 'p46'),
(47, 'p47'),
(48, 'p48'),
(49, 'p49'),
(50, 'p50'),
(51, 'p51'),
(52, 'p52'),
(53, 'p53'),
(54, 'p54'),
(55, 'p55'),
(56, 'p56'),
(57, 'p57'),
(58, 'p58'),
(59, 'p59'),
(60, 'p60'),
(61, 'p61'),
(62, 'p62'),
(63, 'p63'),
(64, 'p64'),
(65, 'p65'),
(66, 'p66'),
(67, 'p67'),
(68, 'p68'),
(69, 'p69'),
(70, 'p70'),
(71, 'p71'),
(72, 'p72'),
(73, 'p73'),
(74, 'p74'),
(75, 'p75'),
(76, 'p76'),
(77, 'p77'),
(78, 'p78'),
(79, 'p79'),
(80, 'p80'),
(81, 'p81'),
(82, 'p82'),
(83, 'p83'),
(84, 'p84'),
(85, 'p85'),
(86, 'p86'),
(87, 'p87'),
(88, 'p88'),
(89, 'p89'),
(90, 'p90'),
(91, 'p91'),
(92, 'p92'),
(93, 'p93'),
(94, 'p94'),
(95, 'p95'),
(96, 'p96'),
(97, 'p97'),
(98, 'p98'),
(99, 'p99'),
(100, 'p100'),
(101, 'p101'),
(102, 'p102'),
(103, 'p103'),
(104, 'p104'),
(105, 'p105'),
(106, 'p106'),
(107, 'p107'),
(108, 'p108'),
(109, 'p109'),
(110, 'p110'),
(111, 'p111'),
(112, 'p112'),
(113, 'p113'),
(114, 'p114'),
(115, 'p115'),
(116, 'p116'),
(117, 'p117'),
(118, 'p118'),
(119, 'p119'),
(120, 'p120'),
(121, 'p121'),
(122, 'p122'),
(123, 'p123'),
(124, 'p124'),
(125, 'p125'),
(126, 'p126'),
(127, 'p127'),
(128, 'p128'),
(129, 'p129'),
(130, 'p130'),
(131, 'p131'),
(132, 'p132'),
(133, 'p133'),
(134, 'p134'),
(135, 'p135'),
(136, 'p136'),
(137, 'p137'),
(138, 'p138'),
(139, 'p139'),
(140, 'p140'),
(141, 'p141'),
(142, 'p142'),
(143, 'p143'),
(144, 'p144'),
(145, 'p145'),
(146, 'p146'),
(147, 'p147'),
(148, 'p148'),
(149, 'p149'),
(150, 'p150'),
(151, 'p151'),
(152, 'p152'),
(153, 'p153'),
(154, 'p154'),
(155, 'p155'),
(156, 'p156'),
(157, 'p157'),
(158, 'p158'),
(159, 'p159'),
(160, 'p160'),
(161, 'p161'),
(162, 'p162'),
(163, 'p163'),
(164, 'p164'),
(165, 'p165'),
(166, 'p166'),
(167, 'p167'),
(168, 'p168'),
(169, 'p169'),
(170, 'p170'),
(171, 'p171'),
(172, 'p172'),
(173, 'p173'),
(174, 'p174'),
(175, 'p175'),
(176, 'p176'),
(177, 'p177'),
(178, 'p178'),
(179, 'p179'),
(180, 'p180'),
(181, 'p181'),
(182, 'p182'),
(183, 'p183'),
(184, 'p184'),
(185, 'p185'),
(186, 'p186'),
(187, 'p187'),
(188, 'p188'),
(189, 'p189'),
(190, 'p190'),
(191, 'p191'),
(192, 'p192'),
(193, 'p193'),
(194, 'p194'),
(195, 'p195'),
(196, 'p196'),
(197, 'p197'),
(198, 'p198'),
(199, 'p199'),
(200, 'p200'),
(201, 'p201'),
(202, 'p202'),
(203, 'p203'),
(204, 'p204'),
(205, 'p205'),
(206, 'p206'),
(207, 'p207'),
(208, 'p208'),
(209, 'p209'),
(210, 'p210'),
(211, 'p211'),
(212, 'p212'),
(213, 'p213'),
(214, 'p214'),
(215, 'p215'),
(216, 'p216'),
(217, 'p217'),
(218, 'p218'),
(219, 'p219'),
(220, 'p220'),
(221, 'p221'),
(222, 'p222'),
(223, 'p223'),
(224, 'p224'),
(225, 'p225'),
(226, 'p226'),
(227, 'p227'),
(228, 'p228'),
(229, 'p229'),
(230, 'p230'),
(231, 'p231'),
(232, 'p232'),
(233, 'p233'),
(234, 'p234'),
(235, 'p235'),
(236, 'p236'),
(237, 'p237'),
(238, 'p238'),
(239, 'p239'),
(240, 'p240'),
(241, 'p241'),
(242, 'p242'),
(243, 'p243'),
(244, 'p244'),
(245, 'p245'),
(246, 'p246'),
(247, 'p247'),
(248, 'p248'),
(249, 'p249'),
(250, 'p250'),
(251, 'p251'),
(252, 'p252'),
(253, 'p253'),
(254, 'p254'),
(255, 'p255'),
(256, 'p256'),
(257, 'p257'),
(258, 'p258'),
(259, 'p259'),
(260, 'p260'),
(261, 'p261'),
(262, 'p262'),
(263, 'p263'),
(264, 'p264'),
(265, 'p265'),
(266, 'p266'),
(267, 'p267'),
(268, 'p268'),
(269, 'p269'),
(270, 'p270'),
(271, 'p271'),
(272, 'p272'),
(273, 'p273'),
(274, 'p274'),
(275, 'p275'),
(276, 'p276'),
(277, 'p277'),
(278, 'p278'),
(279, 'p279'),
(280, 'p280'),
(281, 'p281'),
(282, 'p282'),
(283, 'p283'),
(284, 'p284'),
(285, 'p285'),
(286, 'p286'),
(287, 'p287'),
(288, 'p288'),
(289, 'p289'),
(290, 'p290'),
(291, 'p291'),
(292, 'p292'),
(293, 'p293'),
(294, 'p294'),
(295, 'p295'),
(296, 'p296'),
(297, 'p297'),
(298, 'p298'),
(299, 'p299'),
(300, 'p300'),
(301, 'p301'),
(302, 'p302'),
(303, 'p303'),
(304, 'p304'),
(305, 'p305'),
(306, 'p306'),
(307, 'p307'),
(308, 'p308'),
(309, 'p309'),
(310, 'p310'),
(311, 'p311'),
(312, 'p312'),
(313, 'p313'),
(314, 'p314'),
(315, 'p315'),
(316, 'p316'),
(317, 'p317'),
(318, 'p318'),
(319, 'p319'),
(320, 'p320'),
(321, 'p321'),
(322, 'p322'),
(323, 'p323'),
(324, 'p324'),
(325, 'p325'),
(326, 'p326'),
(327, 'p327'),
(328, 'p328'),
(329, 'p329'),
(330, 'p330'),
(331, 'p331'),
(332, 'p332'),
(333, 'p333'),
(334, 'p334'),
(335, 'p335'),
(336, 'p336'),
(337, 'p337'),
(338, 'p338'),
(339, 'p339'),
(340, 'p340'),
(341, 'p341'),
(342, 'p342'),
(343, 'p343'),
(344, 'p344'),
(345, 'p345'),
(346, 'p346'),
(347, 'p347'),
(348, 'p348'),
(349, 'p349'),
(350, 'p350'),
(351, 'p351'),
(352, 'p352'),
(353, 'p353'),
(354, 'p354'),
(355, 'p355'),
(356, 'p356'),
(357, 'p357'),
(358, 'p358'),
(359, 'p359'),
(360, 'p360'),
(361, 'p361'),
(362, 'p362'),
(363, 'p363'),
(364, 'p364'),
(365, 'p365'),
(366, 'p366'),
(367, 'p367'),
(368, 'p368'),
(369, 'p369'),
(370, 'p370'),
(371, 'p371'),
(372, 'p372'),
(373, 'p373'),
(374, 'p374'),
(375, 'p375'),
(376, 'p376'),
(377, 'p377'),
(378, 'p378'),
(379, 'p379'),
(380, 'p380'),
(381, 'p381'),
(382, 'p382'),
(383, 'p383'),
(384, 'p384'),
(385, 'p385'),
(386, 'p386'),
(387, 'p387'),
(388, 'p388'),
(389, 'p389'),
(390, 'p390'),
(391, 'p391'),
(392, 'p392'),
(393, 'p393'),
(394, 'p394'),
(395, 'p395'),
(396, 'p396'),
(397, 'p397'),
(398, 'p398'),
(399, 'p399'),
(400, 'p400'),
(401, 'p401'),
(402, 'p402'),
(403, 'p403'),
(404, 'p404'),
(405, 'p405'),
(406, 'p406'),
(407, 'p407'),
(408, 'p408'),
(409, 'p409'),
(410, 'p410'),
(411, 'p411'),
(412, 'p412'),
(413, 'p413'),
(414, 'p414'),
(415, 'p415'),
(416, 'p416'),
(417, 'p417'),
(418, 'p418'),
(419, 'p419'),
(420, 'p420'),
(421, 'p421'),
(422, 'p422'),
(423, 'p423'),
(424, 'p424'),
(425, 'p425'),
(426, 'p426'),
(427, 'p427'),
(428, 'p428'),
(429, 'p429'),
(430, 'p430'),
(431, 'p431'),
(432, 'p432'),
(433, 'p433'),
(434, 'p434'),
(435, 'p435'),
(436, 'p436'),
(437, 'p437'),
(438, 'p438'),
(439, 'p439'),
(440, 'p440'),
(441, 'p441'),
(442, 'p442'),
(443, 'p443'),
(444, 'p444'),
(445, 'p445'),
(446, 'p446'),
(447, 'p447'),
(448, 'p448'),
(449, 'p449'),
(450, 'p450'),
(451, 'p451'),
(452, 'p452'),
(453, 'p453'),
(454, 'p454'),
(455, 'p455'),
(456, 'p456'),
(457, 'p457'),
(458, 'p458'),
(459, 'p459'),
(460, 'p460'),
(461, 'p461'),
(462, 'p462'),
(463, 'p463'),
(464, 'p464'),
(465, 'p465'),
(466, 'p466'),
(467, 'p467'),
(468, 'p468'),
(469, 'p469'),
(470, 'p470'),
(471, 'p471'),
(472, 'p472'),
(473, 'p473'),
(474, 'p474'),
(475, 'p475'),
(476, 'p476'),
(477, 'p477'),
(478, 'p478'),
(479, 'p479'),
(480, 'p480'),
(481, 'p481'),
(482, 'p482'),
(483, 'p483'),
(484, 'p484'),
(485, 'p485'),
(486, 'p486'),
(487, 'p487'),
(488, 'p488'),
(489, 'p489'),
(490, 'p490'),
(491, 'p491'),
(492, 'p492'),
(493, 'p493'),
(494, 'p494'),
(495, 'p495'),
(496, 'p496'),
(497, 'p497'),
(498, 'p498'),
(499, 'p499'),
(500, 'p500'),
(501, 'p501'),
(502, 'p502'),
(503, 'p503'),
(504, 'p504'),
(505, 'p505'),
(506, 'p506'),
(507, 'p507'),
(508, 'p508'),
(509, 'p509'),
(510, 'p510'),
(511, 'p511'),
(512, 'p512'),
(513, 'p513'),
(514, 'p514'),
(515, 'p515'),
(516, 'p516'),
(517, 'p517'),
(518, 'p518'),
(519, 'p519'),
(520, 'p520'),
(521, 'p521'),
(522, 'p522'),
(523, 'p523'),
(524, 'p524'),
(525, 'p525'),
(526, 'p526'),
(527, 'p527'),
(528, 'p528'),
(529, 'p529'),
(530, 'p530'),
(531, 'p531'),
(532, 'p532'),
(533, 'p533'),
(534, 'p534'),
(535, 'p535'),
(536, 'p536'),
(537, 'p537'),
(538, 'p538'),
(539, 'p539'),
(540, 'p540'),
(541, 'p541'),
(542, 'p542'),
(543, 'p543'),
(544, 'p544'),
(545, 'p545'),
(546, 'p546'),
(547, 'p547'),
(548, 'p548'),
(549, 'p549'),
(550, 'p550'),
(551, 'p551'),
(552, 'p552'),
(553, 'p553'),
(554, 'p554'),
(555, 'p555'),
(556, 'p556'),
(557, 'p557'),
(558, 'p558'),
(559, 'p559'),
(560, 'p560'),
(561, 'p561'),
(562, 'p562'),
(563, 'p563'),
(564, 'p564'),
(565, 'p565'),
(566, 'p566'),
(567, 'p567'),
(568, 'p568'),
(569, 'p569'),
(570, 'p570'),
(571, 'p571'),
(572, 'p572'),
(573, 'p573'),
(574, 'p574'),
(575, 'p575'),
(576, 'p576'),
(577, 'p577'),
(578, 'p578'),
(579, 'p579'),
(580, 'p580'),
(581, 'p581'),
(582, 'p582'),
(583, 'p583'),
(584, 'p584'),
(585, 'p585'),
(586, 'p586'),
(587, 'p587'),
(588, 'p588'),
(589, 'p589'),
(590, 'p590'),
(591, 'p591'),
(592, 'p592'),
(593, 'p593'),
(594, 'p594'),
(595, 'p595'),
(596, 'p596'),
(597, 'p597'),
(598, 'p598'),
(599, 'p599'),
(600, 'p600'),
(601, 'p601'),
(602, 'p602'),
(603, 'p603'),
(604, 'p604'),
(605, 'p605'),
(606, 'p606'),
(607, 'p607'),
(608, 'p608'),
(609, 'p609'),
(610, 'p610'),
(611, 'p611'),
(612, 'p612'),
(613, 'p613'),
(614, 'p614'),
(615, 'p615'),
(616, 'p616'),
(617, 'p617'),
(618, 'p618'),
(619, 'p619'),
(620, 'p620'),
(621, 'p621'),
(622, 'p622'),
(623, 'p623'),
(624, 'p624'),
(625, 'p625'),
(626, 'p626'),
(627, 'p627'),
(628, 'p628'),
(629, 'p629'),
(630, 'p630'),
(631, 'p631'),
(632, 'p632'),
(633, 'p633'),
(634, 'p634'),
(635, 'p635'),
(636, 'p636'),
(637, 'p637'),
(638, 'p638'),
(639, 'p639'),
(640, 'p640'),
(641, 'p641'),
(642, 'p642'),
(643, 'p643'),
(644, 'p644'),
(645, 'p645'),
(646, 'p646'),
(647, 'p647'),
(648, 'p648'),
(649, 'p649'),
(650, 'p650'),
(651, 'p651'),
(652, 'p652'),
(653, 'p653'),
(654, 'p654'),
(655, 'p655'),
(656, 'p656'),
(657, 'p657'),
(658, 'p658'),
(659, 'p659'),
(660, 'p660'),
(661, 'p661'),
(662, 'p662'),
(663, 'p663'),
(664, 'p664'),
(665, 'p665'),
(666, 'p666'),
(667, 'p667'),
(668, 'p668'),
(669, 'p669'),
(670, 'p670'),
(671, 'p671'),
(672, 'p672'),
(673, 'p673'),
(674, 'p674'),
(675, 'p675'),
(676, 'p676'),
(677, 'p677'),
(678, 'p678'),
(679, 'p679'),
(680, 'p680'),
(681, 'p681'),
(682, 'p682'),
(683, 'p683'),
(684, 'p684'),
(685, 'p685'),
(686, 'p686'),
(687, 'p687'),
(688, 'p688'),
(689, 'p689'),
(690, 'p690'),
(691, 'p691'),
(692, 'p692'),
(693, 'p693'),
(694, 'p694'),
(695, 'p695'),
(696, 'p696'),
(697, 'p697'),
(698, 'p698'),
(699, 'p699'),
(700, 'p700'),
(701, 'p701'),
(702, 'p702'),
(703, 'p703'),
(704, 'p704'),
(705, 'p705'),
(706, 'p706'),
(707, 'p707'),
(708, 'p708'),
(709, 'p709'),
(710, 'p710'),
(711, 'p711'),
(712, 'p712'),
(713, 'p713'),
(714, 'p714'),
(715, 'p715'),
(716, 'p716'),
(717, 'p717'),
(718, 'p718'),
(719, 'p719'),
(720, 'p720'),
(721, 'p721'),
(722, 'p722'),
(723, 'p723'),
(724, 'p724'),
(725, 'p725'),
(726, 'p726'),
(727, 'p727'),
(728, 'p728'),
(729, 'p729'),
(730, 'p730'),
(731, 'p731'),
(732, 'p732'),
(733, 'p733'),
(734, 'p734'),
(735, 'p735'),
(736, 'p736'),
(737, 'p737'),
(738, 'p738'),
(739, 'p739'),
(740, 'p740'),
(741, 'p741'),
(742, 'p742'),
(743, 'p743'),
(744, 'p744'),
(745, 'p745'),
(746, 'p746'),
(747, 'p747'),
(748, 'p748'),
(749, 'p749'),
(750, 'p750'),
(751, 'p751'),
(752, 'p752'),
(753, 'p753'),
(754, 'p754'),
(755, 'p755'),
(756, 'p756'),
(757, 'p757'),
(758, 'p758'),
(759, 'p759'),
(760, 'p760'),
(761, 'p761'),
(762, 'p762'),
(763, 'p763'),
(764, 'p764'),
(765, 'p765'),
(766, 'p766'),
(767, 'p767'),
(768, 'p768'),
(769, 'p769'),
(770, 'p770'),
(771, 'p771'),
(772, 'p772'),
(773, 'p773'),
(774, 'p774'),
(775, 'p775'),
(776, 'p776'),
(777, 'p777'),
(778, 'p778'),
(779, 'p779'),
(780, 'p780'),
(781, 'p781'),
(782, 'p782'),
(783, 'p783'),
(784, 'p784'),
(785, 'p785'),
(786, 'p786'),
(787, 'p787'),
(788, 'p788'),
(789, 'p789'),
(790, 'p790'),
(791, 'p791'),
(792, 'p792'),
(793, 'p793'),
(794, 'p794'),
(795, 'p795'),
(796, 'p796'),
(797, 'p797'),
(798, 'p798'),
(799, 'p799'),
(800, 'p800'),
(801, 'p801'),
(802, 'p802'),
(803, 'p803'),
(804, 'p804'),
(805, 'p805'),
(806, 'p806'),
(807, 'p807'),
(808, 'p808'),
(809, 'p809'),
(810, 'p810'),
(811, 'p811'),
(812, 'p812'),
(813, 'p813'),
(814, 'p814'),
(815, 'p815'),
(816, 'p816'),
(817, 'p817'),
(818, 'p818'),
(819, 'p819'),
(820, 'p820'),
(821, 'p821'),
(822, 'p822'),
(823, 'p823'),
(824, 'p824'),
(825, 'p825'),
(826, 'p826'),
(827, 'p827'),
(828, 'p828'),
(829, 'p829'),
(830, 'p830'),
(831, 'p831'),
(832, 'p832'),
(833, 'p833'),
(834, 'p834'),
(835, 'p835'),
(836, 'p836'),
(837, 'p837'),
(838, 'p838'),
(839, 'p839'),
(840, 'p840'),
(841, 'p841'),
(842, 'p842'),
(843, 'p843'),
(844, 'p844'),
(845, 'p845'),
(846, 'p846'),
(847, 'p847'),
(848, 'p848'),
(849, 'p849'),
(850, 'p850'),
(851, 'p851'),
(852, 'p852'),
(853, 'p853'),
(854, 'p854'),
(855, 'p855'),
(856, 'p856'),
(857, 'p857'),
(858, 'p858'),
(859, 'p859'),
(860, 'p860'),
(861, 'p861'),
(862, 'p862'),
(863, 'p863'),
(864, 'p864'),
(865, 'p865'),
(866, 'p866'),
(867, 'p867'),
(868, 'p868'),
(869, 'p869'),
(870, 'p870'),
(871, 'p871'),
(872, 'p872'),
(873, 'p873'),
(874, 'p874'),
(875, 'p875'),
(876, 'p876'),
(877, 'p877'),
(878, 'p878'),
(879, 'p879'),
(880, 'p880'),
(881, 'p881'),
(882, 'p882'),
(883, 'p883'),
(884, 'p884'),
(885, 'p885'),
(886, 'p886'),
(887, 'p887'),
(888, 'p888'),
(889, 'p889'),
(890, 'p890'),
(891, 'p891'),
(892, 'p892'),
(893, 'p893'),
(894, 'p894'),
(895, 'p895'),
(896, 'p896'),
(897, 'p897'),
(898, 'p898'),
(899, 'p899'),
(900, 'p900'),
(901, 'p901'),
(902, 'p902'),
(903, 'p903'),
(904, 'p904'),
(905, 'p905'),
(906, 'p906'),
(907, 'p907'),
(908, 'p908'),
(909, 'p909'),
(910, 'p910'),
(911, 'p911'),
(912, 'p912'),
(913, 'p913'),
(914, 'p914'),
(915, 'p915'),
(916, 'p916'),
(917, 'p917'),
(918, 'p918'),
(919, 'p919'),
(920, 'p920'),
(921, 'p921'),
(922, 'p922'),
(923, 'p923'),
(924, 'p924'),
(925, 'p925'),
(926, 'p926'),
(927, 'p927'),
(928, 'p928'),
(929, 'p929'),
(930, 'p930'),
(931, 'p931'),
(932, 'p932'),
(933, 'p933'),
(934, 'p934'),
(935, 'p935'),
(936, 'p936'),
(937, 'p937'),
(938, 'p938'),
(939, 'p939'),
(940, 'p940'),
(941, 'p941'),
(942, 'p942'),
(943, 'p943'),
(944, 'p944'),
(945, 'p945'),
(946, 'p946'),
(947, 'p947'),
(948, 'p948'),
(949, 'p949'),
(950, 'p950'),
(951, 'p951'),
(952, 'p952'),
(953, 'p953'),
(954, 'p954'),
(955, 'p955'),
(956, 'p956'),
(957, 'p957'),
(958, 'p958'),
(959, 'p959'),
(960, 'p960'),
(961, 'p961'),
(962, 'p962'),
(963, 'p963'),
(964, 'p964'),
(965, 'p965'),
(966, 'p966'),
(967, 'p967'),
(968, 'p968'),
(969, 'p969'),
(970, 'p970'),
(971, 'p971'),
(972, 'p972'),
(973, 'p973'),
(974, 'p974'),
(975, 'p975'),
(976, 'p976'),
(977, 'p977'),
(978, 'p978'),
(979, 'p979'),
(980, 'p980'),
(981, 'p981'),
(982, 'p982'),
(983, 'p983'),
(984, 'p984'),
(985, 'p985'),
(986, 'p986'),
(987, 'p987'),
(988, 'p988'),
(989, 'p989'),
(990, 'p990'),
(991, 'p991'),
(992, 'p992'),
(993, 'p993'),
(994, 'p994'),
(995, 'p995'),
(996, 'p996'),
(997, 'p997'),
(998, 'p998'),
(999, 'p999');

-- --------------------------------------------------------

--
-- Table structure for table `shops_table`
--

DROP TABLE IF EXISTS `shops_table`;
CREATE TABLE IF NOT EXISTS `shops_table` (
  `Shop_id` int(11) NOT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `Shop_Name` varchar(50) DEFAULT NULL,
  `addr` varchar(200) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `phno` int(12) DEFAULT NULL,
  PRIMARY KEY (`Shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops_table`
--

INSERT INTO `shops_table` (`Shop_id`, `owner`, `Shop_Name`, `addr`, `lat`, `lng`, `Type`, `phno`) VALUES
(0, 'user2', 'Shop Alpha', 'some address', 31.771938, 76.9838228, NULL, 10000),
(1, 'user1', 'Shop Beta', 'pc lab', 31.774158399999997, 76.9855972, NULL, 1900),
(2, 'user2', 'shop2', 'some address2', 31.99652, 77.736415, NULL, 612159),
(3, 'user3', 'shop3', 'some address3', 31.374671, 76.78694, NULL, 305328),
(4, 'user4', 'shop4', 'some address4', 31.017864, 77.555863, NULL, 678797),
(5, 'user5', 'shop5', 'some address5', 31.314693, 76.157786, NULL, 458042),
(6, 'user6', 'shop6', 'some address6', 32.143145, 77.077428, NULL, 719413),
(7, 'user7', 'shop7', 'some address7', 30.945331, 77.638399, NULL, 908766),
(8, 'user8', 'shop8', 'some address8', 32.373413, 76.30163, NULL, 922157),
(9, 'user9', 'shop9', 'some address9', 32.641715, 77.311465, NULL, 769007),
(10, 'user10', 'shop10', 'some address10', 31.136057, 77.559587, NULL, 433699),
(11, 'user11', 'shop11', 'some address11', 30.847545, 76.981984, NULL, 945389),
(12, 'user12', 'shop12', 'some address12', 32.117018, 76.23018, NULL, 884033),
(13, 'user13', 'shop13', 'some address13', 32.606384, 77.220653, NULL, 516733),
(14, 'user14', 'shop14', 'some address14', 30.854559, 77.773218, NULL, 999804),
(15, 'user15', 'shop15', 'some address15', 32.631941, 76.945516, NULL, 626700),
(16, 'user16', 'shop16', 'some address16', 31.894821, 77.214837, NULL, 117918),
(17, 'user17', 'shop17', 'some address17', 32.635108, 76.653283, NULL, 600588),
(18, 'user18', 'shop18', 'some address18', 31.122654, 76.348131, NULL, 82241),
(19, 'user19', 'shop19', 'some address19', 31.234499, 76.446114, NULL, 592565),
(20, 'user20', 'shop20', 'some address20', 31.140027, 76.322449, NULL, 609068),
(21, 'user21', 'shop21', 'some address21', 32.030616, 76.004643, NULL, 185237),
(22, 'user22', 'shop22', 'some address22', 32.11028, 76.657975, NULL, 989109),
(23, 'user23', 'shop23', 'some address23', 31.451646, 76.534085, NULL, 747988),
(24, 'user24', 'shop24', 'some address24', 32.66175, 76.247695, NULL, 807394),
(25, 'user25', 'shop25', 'some address25', 30.796665, 76.645526, NULL, 460627),
(26, 'user26', 'shop26', 'some address26', 32.675641, 77.761889, NULL, 131285),
(27, 'user27', 'shop27', 'some address27', 30.867777, 77.646096, NULL, 113407),
(28, 'user28', 'shop28', 'some address28', 31.127236, 77.310185, NULL, 440125),
(29, 'user29', 'shop29', 'some address29', 30.782783, 76.80548, NULL, 156409),
(30, 'user30', 'shop30', 'some address30', 32.124401, 76.329753, NULL, 192153),
(31, 'user31', 'shop31', 'some address31', 32.597752, 77.355009, NULL, 272928),
(32, 'user32', 'shop32', 'some address32', 32.713954, 77.686369, NULL, 54689),
(33, 'user33', 'shop33', 'some address33', 31.893458, 76.956457, NULL, 297379),
(34, 'user34', 'shop34', 'some address34', 32.499792, 77.413388, NULL, 3154),
(35, 'user35', 'shop35', 'some address35', 32.25522, 76.451485, NULL, 376375),
(36, 'user36', 'shop36', 'some address36', 32.421041, 77.84992, NULL, 3603),
(37, 'user37', 'shop37', 'some address37', 31.355297, 77.180438, NULL, 1447),
(38, 'user38', 'shop38', 'some address38', 30.985379, 77.396187, NULL, 162173),
(39, 'user39', 'shop39', 'some address39', 31.585522, 77.345338, NULL, 80061),
(40, 'user40', 'shop40', 'some address40', 30.987107, 77.585354, NULL, 79908),
(41, 'user41', 'shop41', 'some address41', 31.182736, 76.067508, NULL, 835083),
(42, 'user42', 'shop42', 'some address42', 31.468212, 76.325073, NULL, 395868),
(43, 'user43', 'shop43', 'some address43', 31.021806, 76.149205, NULL, 327202),
(44, 'user44', 'shop44', 'some address44', 31.927383, 76.216026, NULL, 492254),
(45, 'user45', 'shop45', 'some address45', 31.652812, 77.155776, NULL, 476488),
(46, 'user46', 'shop46', 'some address46', 31.336167, 77.468374, NULL, 148636),
(47, 'user47', 'shop47', 'some address47', 32.610681, 77.598813, NULL, 377939),
(48, 'user48', 'shop48', 'some address48', 31.543073, 77.131944, NULL, 930326),
(49, 'user49', 'shop49', 'some address49', 32.067687, 77.485877, NULL, 656498),
(50, 'user50', 'shop50', 'some address50', 32.461147, 77.009261, NULL, 378370),
(51, 'user51', 'shop51', 'some address51', 31.218018, 76.907078, NULL, 272604),
(52, 'user52', 'shop52', 'some address52', 30.911457, 77.378747, NULL, 953776),
(53, 'user53', 'shop53', 'some address53', 31.529179, 76.715595, NULL, 930410),
(54, 'user54', 'shop54', 'some address54', 32.512618, 76.269163, NULL, 891021),
(55, 'user55', 'shop55', 'some address55', 31.078898, 77.167423, NULL, 572022),
(56, 'user56', 'shop56', 'some address56', 30.786419, 77.932264, NULL, 490322),
(57, 'user57', 'shop57', 'some address57', 31.432316, 77.139543, NULL, 460665),
(58, 'user58', 'shop58', 'some address58', 32.14906, 77.055093, NULL, 878134),
(59, 'user59', 'shop59', 'some address59', 31.818371, 77.39887, NULL, 372491),
(60, 'user60', 'shop60', 'some address60', 31.160038, 76.145617, NULL, 826663),
(61, 'user61', 'shop61', 'some address61', 32.036851, 76.92941, NULL, 952275),
(62, 'user62', 'shop62', 'some address62', 32.013951, 77.666064, NULL, 154131),
(63, 'user63', 'shop63', 'some address63', 32.107574, 76.643586, NULL, 403432),
(64, 'user64', 'shop64', 'some address64', 32.148123, 76.036037, NULL, 715534),
(65, 'user65', 'shop65', 'some address65', 31.344637, 77.913843, NULL, 177573),
(66, 'user66', 'shop66', 'some address66', 32.190014, 77.238549, NULL, 487802),
(67, 'user67', 'shop67', 'some address67', 32.112575, 76.366294, NULL, 375266),
(68, 'user68', 'shop68', 'some address68', 32.117555, 77.822192, NULL, 986855),
(69, 'user69', 'shop69', 'some address69', 32.050393, 76.043241, NULL, 656484),
(70, 'user70', 'shop70', 'some address70', 32.767677, 77.94602, NULL, 314426),
(71, 'user71', 'shop71', 'some address71', 30.82065, 77.727068, NULL, 37807),
(72, 'user72', 'shop72', 'some address72', 32.221257, 77.573734, NULL, 857198),
(73, 'user73', 'shop73', 'some address73', 31.505468, 76.473561, NULL, 371651),
(74, 'user74', 'shop74', 'some address74', 32.516639, 75.987484, NULL, 375044),
(75, 'user75', 'shop75', 'some address75', 32.249709, 77.026884, NULL, 955191),
(76, 'user76', 'shop76', 'some address76', 32.512463, 76.352919, NULL, 784793),
(77, 'user77', 'shop77', 'some address77', 32.375633, 77.25734, NULL, 895418),
(78, 'user78', 'shop78', 'some address78', 31.413833, 77.244892, NULL, 366089),
(79, 'user79', 'shop79', 'some address79', 31.785019, 76.745719, NULL, 697033),
(80, 'user80', 'shop80', 'some address80', 31.464164, 77.190935, NULL, 763651),
(81, 'user81', 'shop81', 'some address81', 32.768917, 77.496009, NULL, 711475),
(82, 'user82', 'shop82', 'some address82', 32.064734, 77.736421, NULL, 643378),
(83, 'user83', 'shop83', 'some address83', 32.324404, 77.477279, NULL, 445011),
(84, 'user84', 'shop84', 'some address84', 32.121693, 77.979948, NULL, 512830),
(85, 'user85', 'shop85', 'some address85', 32.772173, 77.655799, NULL, 905531),
(86, 'user86', 'shop86', 'some address86', 30.970736, 77.041194, NULL, 523035),
(87, 'user87', 'shop87', 'some address87', 31.572376, 77.357278, NULL, 338234),
(88, 'user88', 'shop88', 'some address88', 31.243574, 76.566645, NULL, 355750),
(89, 'user89', 'shop89', 'some address89', 31.720349, 77.412728, NULL, 603148),
(90, 'user90', 'shop90', 'some address90', 31.583326, 76.976227, NULL, 510135),
(91, 'user91', 'shop91', 'some address91', 32.180721, 77.329604, NULL, 139601),
(92, 'user92', 'shop92', 'some address92', 31.918767, 77.67608, NULL, 307323),
(93, 'user93', 'shop93', 'some address93', 32.595365, 76.311406, NULL, 679487),
(94, 'user94', 'shop94', 'some address94', 32.069867, 77.62137, NULL, 575172),
(95, 'user95', 'shop95', 'some address95', 30.908438, 77.45977, NULL, 991722),
(96, 'user96', 'shop96', 'some address96', 32.697975, 76.772532, NULL, 367773),
(97, 'user97', 'shop97', 'some address97', 31.350279, 77.061498, NULL, 178013),
(98, 'user98', 'shop98', 'some address98', 32.404081, 76.972402, NULL, 725408),
(99, 'user99', 'shop99', 'some address99', 31.187816, 77.766271, NULL, 425054),
(100, 'user100', 'shop100', 'some address100', 31.780714, 76.99284, NULL, 910427),
(101, 'user101', 'shop101', 'some address101', 31.771682, 76.98954, NULL, 943779),
(102, 'user102', 'shop102', 'some address102', 31.765724, 76.991817, NULL, 894900),
(103, 'user103', 'shop103', 'some address103', 31.774896, 76.977647, NULL, 528563),
(104, 'user104', 'shop104', 'some address104', 31.774968, 76.98419, NULL, 553792),
(105, 'user105', 'shop105', 'some address105', 31.774445, 76.980604, NULL, 239516),
(106, 'user106', 'shop106', 'some address106', 31.770488, 76.978995, NULL, 422175),
(107, 'user107', 'shop107', 'some address107', 31.77969, 76.988709, NULL, 29762),
(108, 'user108', 'shop108', 'some address108', 31.778116, 76.976622, NULL, 780171),
(109, 'user109', 'shop109', 'some address109', 31.767589, 76.981623, NULL, 905025),
(110, 'user110', 'shop110', 'some address110', 31.77429, 76.980301, NULL, 901954),
(111, 'user111', 'shop111', 'some address111', 31.780832, 76.988964, NULL, 923314),
(112, 'user112', 'shop112', 'some address112', 31.772547, 76.976621, NULL, 861928),
(113, 'user113', 'shop113', 'some address113', 31.776502, 76.986785, NULL, 453201),
(114, 'user114', 'shop114', 'some address114', 31.771061, 76.992011, NULL, 713506),
(115, 'user115', 'shop115', 'some address115', 31.775176, 76.993643, NULL, 968432),
(116, 'user116', 'shop116', 'some address116', 31.783834, 76.993181, NULL, 231144),
(117, 'user117', 'shop117', 'some address117', 31.773624, 76.976969, NULL, 475287),
(118, 'user118', 'shop118', 'some address118', 31.780966, 76.985284, NULL, 639087),
(119, 'user119', 'shop119', 'some address119', 31.77108, 76.98145, NULL, 514696),
(120, 'user120', 'shop120', 'some address120', 31.776013, 76.986474, NULL, 132502),
(121, 'user121', 'shop121', 'some address121', 31.771088, 76.977732, NULL, 388188),
(122, 'user122', 'shop122', 'some address122', 31.765498, 76.98557, NULL, 454673),
(123, 'user123', 'shop123', 'some address123', 31.767979, 76.98345, NULL, 751158),
(124, 'user124', 'shop124', 'some address124', 31.772396, 76.990956, NULL, 353654),
(125, 'user125', 'shop125', 'some address125', 31.76616, 76.986071, NULL, 672852),
(126, 'user126', 'shop126', 'some address126', 31.784052, 76.99541, NULL, 678006),
(127, 'user127', 'shop127', 'some address127', 31.777479, 76.976119, NULL, 182219),
(128, 'user128', 'shop128', 'some address128', 31.784111, 76.993989, NULL, 906440),
(129, 'user129', 'shop129', 'some address129', 31.773161, 76.983787, NULL, 527634),
(130, 'user130', 'shop130', 'some address130', 31.783938, 76.976784, NULL, 573423),
(131, 'user131', 'shop131', 'some address131', 31.780463, 76.989494, NULL, 636472),
(132, 'user132', 'shop132', 'some address132', 31.780061, 76.988124, NULL, 160174),
(133, 'user133', 'shop133', 'some address133', 31.781036, 76.992834, NULL, 748795),
(134, 'user134', 'shop134', 'some address134', 31.776316, 76.97779, NULL, 489600),
(135, 'user135', 'shop135', 'some address135', 31.780976, 76.980914, NULL, 715588),
(136, 'user136', 'shop136', 'some address136', 31.770171, 76.988217, NULL, 89162),
(137, 'user137', 'shop137', 'some address137', 31.768713, 76.985284, NULL, 432503),
(138, 'user138', 'shop138', 'some address138', 31.781394, 76.988882, NULL, 67782),
(139, 'user139', 'shop139', 'some address139', 31.772863, 76.975745, NULL, 691980),
(140, 'user140', 'shop140', 'some address140', 31.773255, 76.978394, NULL, 274369),
(141, 'user141', 'shop141', 'some address141', 31.774429, 76.97866, NULL, 831598),
(142, 'user142', 'shop142', 'some address142', 31.775872, 76.988137, NULL, 91730),
(143, 'user143', 'shop143', 'some address143', 31.780454, 76.987587, NULL, 406001),
(144, 'user144', 'shop144', 'some address144', 31.772709, 76.978143, NULL, 343995),
(145, 'user145', 'shop145', 'some address145', 31.783267, 76.977261, NULL, 546484),
(146, 'user146', 'shop146', 'some address146', 31.764526, 76.990331, NULL, 47210),
(147, 'user147', 'shop147', 'some address147', 31.764766, 76.97987, NULL, 377220),
(148, 'user148', 'shop148', 'some address148', 31.778762, 76.993572, NULL, 612530),
(149, 'user149', 'shop149', 'some address149', 31.78176, 76.981355, NULL, 433752);

-- --------------------------------------------------------

--
-- Table structure for table `suggested_items`
--

DROP TABLE IF EXISTS `suggested_items`;
CREATE TABLE IF NOT EXISTS `suggested_items` (
  `uid` varchar(30) NOT NULL,
  `item_name` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl0`
--

DROP TABLE IF EXISTS `tabl0`;
CREATE TABLE IF NOT EXISTS `tabl0` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabl0`
--

INSERT INTO `tabl0` (`product_id`, `qty`) VALUES
(4, 5),
(2, 3),
(6, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tabl1`
--

DROP TABLE IF EXISTS `tabl1`;
CREATE TABLE IF NOT EXISTS `tabl1` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl2`
--

DROP TABLE IF EXISTS `tabl2`;
CREATE TABLE IF NOT EXISTS `tabl2` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl3`
--

DROP TABLE IF EXISTS `tabl3`;
CREATE TABLE IF NOT EXISTS `tabl3` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl4`
--

DROP TABLE IF EXISTS `tabl4`;
CREATE TABLE IF NOT EXISTS `tabl4` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl5`
--

DROP TABLE IF EXISTS `tabl5`;
CREATE TABLE IF NOT EXISTS `tabl5` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl6`
--

DROP TABLE IF EXISTS `tabl6`;
CREATE TABLE IF NOT EXISTS `tabl6` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl7`
--

DROP TABLE IF EXISTS `tabl7`;
CREATE TABLE IF NOT EXISTS `tabl7` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl8`
--

DROP TABLE IF EXISTS `tabl8`;
CREATE TABLE IF NOT EXISTS `tabl8` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl9`
--

DROP TABLE IF EXISTS `tabl9`;
CREATE TABLE IF NOT EXISTS `tabl9` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl10`
--

DROP TABLE IF EXISTS `tabl10`;
CREATE TABLE IF NOT EXISTS `tabl10` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl11`
--

DROP TABLE IF EXISTS `tabl11`;
CREATE TABLE IF NOT EXISTS `tabl11` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl12`
--

DROP TABLE IF EXISTS `tabl12`;
CREATE TABLE IF NOT EXISTS `tabl12` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl13`
--

DROP TABLE IF EXISTS `tabl13`;
CREATE TABLE IF NOT EXISTS `tabl13` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl14`
--

DROP TABLE IF EXISTS `tabl14`;
CREATE TABLE IF NOT EXISTS `tabl14` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl15`
--

DROP TABLE IF EXISTS `tabl15`;
CREATE TABLE IF NOT EXISTS `tabl15` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl16`
--

DROP TABLE IF EXISTS `tabl16`;
CREATE TABLE IF NOT EXISTS `tabl16` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl17`
--

DROP TABLE IF EXISTS `tabl17`;
CREATE TABLE IF NOT EXISTS `tabl17` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl18`
--

DROP TABLE IF EXISTS `tabl18`;
CREATE TABLE IF NOT EXISTS `tabl18` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl19`
--

DROP TABLE IF EXISTS `tabl19`;
CREATE TABLE IF NOT EXISTS `tabl19` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl20`
--

DROP TABLE IF EXISTS `tabl20`;
CREATE TABLE IF NOT EXISTS `tabl20` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl21`
--

DROP TABLE IF EXISTS `tabl21`;
CREATE TABLE IF NOT EXISTS `tabl21` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl22`
--

DROP TABLE IF EXISTS `tabl22`;
CREATE TABLE IF NOT EXISTS `tabl22` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl23`
--

DROP TABLE IF EXISTS `tabl23`;
CREATE TABLE IF NOT EXISTS `tabl23` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl24`
--

DROP TABLE IF EXISTS `tabl24`;
CREATE TABLE IF NOT EXISTS `tabl24` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl25`
--

DROP TABLE IF EXISTS `tabl25`;
CREATE TABLE IF NOT EXISTS `tabl25` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl26`
--

DROP TABLE IF EXISTS `tabl26`;
CREATE TABLE IF NOT EXISTS `tabl26` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl27`
--

DROP TABLE IF EXISTS `tabl27`;
CREATE TABLE IF NOT EXISTS `tabl27` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl28`
--

DROP TABLE IF EXISTS `tabl28`;
CREATE TABLE IF NOT EXISTS `tabl28` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl29`
--

DROP TABLE IF EXISTS `tabl29`;
CREATE TABLE IF NOT EXISTS `tabl29` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl30`
--

DROP TABLE IF EXISTS `tabl30`;
CREATE TABLE IF NOT EXISTS `tabl30` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl31`
--

DROP TABLE IF EXISTS `tabl31`;
CREATE TABLE IF NOT EXISTS `tabl31` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl32`
--

DROP TABLE IF EXISTS `tabl32`;
CREATE TABLE IF NOT EXISTS `tabl32` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl33`
--

DROP TABLE IF EXISTS `tabl33`;
CREATE TABLE IF NOT EXISTS `tabl33` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl34`
--

DROP TABLE IF EXISTS `tabl34`;
CREATE TABLE IF NOT EXISTS `tabl34` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl35`
--

DROP TABLE IF EXISTS `tabl35`;
CREATE TABLE IF NOT EXISTS `tabl35` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl36`
--

DROP TABLE IF EXISTS `tabl36`;
CREATE TABLE IF NOT EXISTS `tabl36` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl37`
--

DROP TABLE IF EXISTS `tabl37`;
CREATE TABLE IF NOT EXISTS `tabl37` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl38`
--

DROP TABLE IF EXISTS `tabl38`;
CREATE TABLE IF NOT EXISTS `tabl38` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl39`
--

DROP TABLE IF EXISTS `tabl39`;
CREATE TABLE IF NOT EXISTS `tabl39` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl40`
--

DROP TABLE IF EXISTS `tabl40`;
CREATE TABLE IF NOT EXISTS `tabl40` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl41`
--

DROP TABLE IF EXISTS `tabl41`;
CREATE TABLE IF NOT EXISTS `tabl41` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl42`
--

DROP TABLE IF EXISTS `tabl42`;
CREATE TABLE IF NOT EXISTS `tabl42` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl43`
--

DROP TABLE IF EXISTS `tabl43`;
CREATE TABLE IF NOT EXISTS `tabl43` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl44`
--

DROP TABLE IF EXISTS `tabl44`;
CREATE TABLE IF NOT EXISTS `tabl44` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl45`
--

DROP TABLE IF EXISTS `tabl45`;
CREATE TABLE IF NOT EXISTS `tabl45` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl46`
--

DROP TABLE IF EXISTS `tabl46`;
CREATE TABLE IF NOT EXISTS `tabl46` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl47`
--

DROP TABLE IF EXISTS `tabl47`;
CREATE TABLE IF NOT EXISTS `tabl47` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl48`
--

DROP TABLE IF EXISTS `tabl48`;
CREATE TABLE IF NOT EXISTS `tabl48` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl49`
--

DROP TABLE IF EXISTS `tabl49`;
CREATE TABLE IF NOT EXISTS `tabl49` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl50`
--

DROP TABLE IF EXISTS `tabl50`;
CREATE TABLE IF NOT EXISTS `tabl50` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl51`
--

DROP TABLE IF EXISTS `tabl51`;
CREATE TABLE IF NOT EXISTS `tabl51` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl52`
--

DROP TABLE IF EXISTS `tabl52`;
CREATE TABLE IF NOT EXISTS `tabl52` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl53`
--

DROP TABLE IF EXISTS `tabl53`;
CREATE TABLE IF NOT EXISTS `tabl53` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl54`
--

DROP TABLE IF EXISTS `tabl54`;
CREATE TABLE IF NOT EXISTS `tabl54` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl55`
--

DROP TABLE IF EXISTS `tabl55`;
CREATE TABLE IF NOT EXISTS `tabl55` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl56`
--

DROP TABLE IF EXISTS `tabl56`;
CREATE TABLE IF NOT EXISTS `tabl56` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl57`
--

DROP TABLE IF EXISTS `tabl57`;
CREATE TABLE IF NOT EXISTS `tabl57` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl58`
--

DROP TABLE IF EXISTS `tabl58`;
CREATE TABLE IF NOT EXISTS `tabl58` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl59`
--

DROP TABLE IF EXISTS `tabl59`;
CREATE TABLE IF NOT EXISTS `tabl59` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl60`
--

DROP TABLE IF EXISTS `tabl60`;
CREATE TABLE IF NOT EXISTS `tabl60` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl61`
--

DROP TABLE IF EXISTS `tabl61`;
CREATE TABLE IF NOT EXISTS `tabl61` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl62`
--

DROP TABLE IF EXISTS `tabl62`;
CREATE TABLE IF NOT EXISTS `tabl62` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl63`
--

DROP TABLE IF EXISTS `tabl63`;
CREATE TABLE IF NOT EXISTS `tabl63` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl64`
--

DROP TABLE IF EXISTS `tabl64`;
CREATE TABLE IF NOT EXISTS `tabl64` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl65`
--

DROP TABLE IF EXISTS `tabl65`;
CREATE TABLE IF NOT EXISTS `tabl65` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl66`
--

DROP TABLE IF EXISTS `tabl66`;
CREATE TABLE IF NOT EXISTS `tabl66` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl67`
--

DROP TABLE IF EXISTS `tabl67`;
CREATE TABLE IF NOT EXISTS `tabl67` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl68`
--

DROP TABLE IF EXISTS `tabl68`;
CREATE TABLE IF NOT EXISTS `tabl68` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl69`
--

DROP TABLE IF EXISTS `tabl69`;
CREATE TABLE IF NOT EXISTS `tabl69` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl70`
--

DROP TABLE IF EXISTS `tabl70`;
CREATE TABLE IF NOT EXISTS `tabl70` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl71`
--

DROP TABLE IF EXISTS `tabl71`;
CREATE TABLE IF NOT EXISTS `tabl71` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl72`
--

DROP TABLE IF EXISTS `tabl72`;
CREATE TABLE IF NOT EXISTS `tabl72` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl73`
--

DROP TABLE IF EXISTS `tabl73`;
CREATE TABLE IF NOT EXISTS `tabl73` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl74`
--

DROP TABLE IF EXISTS `tabl74`;
CREATE TABLE IF NOT EXISTS `tabl74` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl75`
--

DROP TABLE IF EXISTS `tabl75`;
CREATE TABLE IF NOT EXISTS `tabl75` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl76`
--

DROP TABLE IF EXISTS `tabl76`;
CREATE TABLE IF NOT EXISTS `tabl76` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl77`
--

DROP TABLE IF EXISTS `tabl77`;
CREATE TABLE IF NOT EXISTS `tabl77` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl78`
--

DROP TABLE IF EXISTS `tabl78`;
CREATE TABLE IF NOT EXISTS `tabl78` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl79`
--

DROP TABLE IF EXISTS `tabl79`;
CREATE TABLE IF NOT EXISTS `tabl79` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl80`
--

DROP TABLE IF EXISTS `tabl80`;
CREATE TABLE IF NOT EXISTS `tabl80` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl81`
--

DROP TABLE IF EXISTS `tabl81`;
CREATE TABLE IF NOT EXISTS `tabl81` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl82`
--

DROP TABLE IF EXISTS `tabl82`;
CREATE TABLE IF NOT EXISTS `tabl82` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl83`
--

DROP TABLE IF EXISTS `tabl83`;
CREATE TABLE IF NOT EXISTS `tabl83` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl84`
--

DROP TABLE IF EXISTS `tabl84`;
CREATE TABLE IF NOT EXISTS `tabl84` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl85`
--

DROP TABLE IF EXISTS `tabl85`;
CREATE TABLE IF NOT EXISTS `tabl85` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl86`
--

DROP TABLE IF EXISTS `tabl86`;
CREATE TABLE IF NOT EXISTS `tabl86` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl87`
--

DROP TABLE IF EXISTS `tabl87`;
CREATE TABLE IF NOT EXISTS `tabl87` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl88`
--

DROP TABLE IF EXISTS `tabl88`;
CREATE TABLE IF NOT EXISTS `tabl88` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl89`
--

DROP TABLE IF EXISTS `tabl89`;
CREATE TABLE IF NOT EXISTS `tabl89` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl90`
--

DROP TABLE IF EXISTS `tabl90`;
CREATE TABLE IF NOT EXISTS `tabl90` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl91`
--

DROP TABLE IF EXISTS `tabl91`;
CREATE TABLE IF NOT EXISTS `tabl91` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl92`
--

DROP TABLE IF EXISTS `tabl92`;
CREATE TABLE IF NOT EXISTS `tabl92` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl93`
--

DROP TABLE IF EXISTS `tabl93`;
CREATE TABLE IF NOT EXISTS `tabl93` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl94`
--

DROP TABLE IF EXISTS `tabl94`;
CREATE TABLE IF NOT EXISTS `tabl94` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl95`
--

DROP TABLE IF EXISTS `tabl95`;
CREATE TABLE IF NOT EXISTS `tabl95` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl96`
--

DROP TABLE IF EXISTS `tabl96`;
CREATE TABLE IF NOT EXISTS `tabl96` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl97`
--

DROP TABLE IF EXISTS `tabl97`;
CREATE TABLE IF NOT EXISTS `tabl97` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl98`
--

DROP TABLE IF EXISTS `tabl98`;
CREATE TABLE IF NOT EXISTS `tabl98` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl99`
--

DROP TABLE IF EXISTS `tabl99`;
CREATE TABLE IF NOT EXISTS `tabl99` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl100`
--

DROP TABLE IF EXISTS `tabl100`;
CREATE TABLE IF NOT EXISTS `tabl100` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl101`
--

DROP TABLE IF EXISTS `tabl101`;
CREATE TABLE IF NOT EXISTS `tabl101` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl102`
--

DROP TABLE IF EXISTS `tabl102`;
CREATE TABLE IF NOT EXISTS `tabl102` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl103`
--

DROP TABLE IF EXISTS `tabl103`;
CREATE TABLE IF NOT EXISTS `tabl103` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl104`
--

DROP TABLE IF EXISTS `tabl104`;
CREATE TABLE IF NOT EXISTS `tabl104` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl105`
--

DROP TABLE IF EXISTS `tabl105`;
CREATE TABLE IF NOT EXISTS `tabl105` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl106`
--

DROP TABLE IF EXISTS `tabl106`;
CREATE TABLE IF NOT EXISTS `tabl106` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl107`
--

DROP TABLE IF EXISTS `tabl107`;
CREATE TABLE IF NOT EXISTS `tabl107` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl108`
--

DROP TABLE IF EXISTS `tabl108`;
CREATE TABLE IF NOT EXISTS `tabl108` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl109`
--

DROP TABLE IF EXISTS `tabl109`;
CREATE TABLE IF NOT EXISTS `tabl109` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl110`
--

DROP TABLE IF EXISTS `tabl110`;
CREATE TABLE IF NOT EXISTS `tabl110` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl111`
--

DROP TABLE IF EXISTS `tabl111`;
CREATE TABLE IF NOT EXISTS `tabl111` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl112`
--

DROP TABLE IF EXISTS `tabl112`;
CREATE TABLE IF NOT EXISTS `tabl112` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl113`
--

DROP TABLE IF EXISTS `tabl113`;
CREATE TABLE IF NOT EXISTS `tabl113` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl114`
--

DROP TABLE IF EXISTS `tabl114`;
CREATE TABLE IF NOT EXISTS `tabl114` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl115`
--

DROP TABLE IF EXISTS `tabl115`;
CREATE TABLE IF NOT EXISTS `tabl115` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl116`
--

DROP TABLE IF EXISTS `tabl116`;
CREATE TABLE IF NOT EXISTS `tabl116` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl117`
--

DROP TABLE IF EXISTS `tabl117`;
CREATE TABLE IF NOT EXISTS `tabl117` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl118`
--

DROP TABLE IF EXISTS `tabl118`;
CREATE TABLE IF NOT EXISTS `tabl118` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl119`
--

DROP TABLE IF EXISTS `tabl119`;
CREATE TABLE IF NOT EXISTS `tabl119` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl120`
--

DROP TABLE IF EXISTS `tabl120`;
CREATE TABLE IF NOT EXISTS `tabl120` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl121`
--

DROP TABLE IF EXISTS `tabl121`;
CREATE TABLE IF NOT EXISTS `tabl121` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl122`
--

DROP TABLE IF EXISTS `tabl122`;
CREATE TABLE IF NOT EXISTS `tabl122` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl123`
--

DROP TABLE IF EXISTS `tabl123`;
CREATE TABLE IF NOT EXISTS `tabl123` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl124`
--

DROP TABLE IF EXISTS `tabl124`;
CREATE TABLE IF NOT EXISTS `tabl124` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl125`
--

DROP TABLE IF EXISTS `tabl125`;
CREATE TABLE IF NOT EXISTS `tabl125` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl126`
--

DROP TABLE IF EXISTS `tabl126`;
CREATE TABLE IF NOT EXISTS `tabl126` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl127`
--

DROP TABLE IF EXISTS `tabl127`;
CREATE TABLE IF NOT EXISTS `tabl127` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl128`
--

DROP TABLE IF EXISTS `tabl128`;
CREATE TABLE IF NOT EXISTS `tabl128` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl129`
--

DROP TABLE IF EXISTS `tabl129`;
CREATE TABLE IF NOT EXISTS `tabl129` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl130`
--

DROP TABLE IF EXISTS `tabl130`;
CREATE TABLE IF NOT EXISTS `tabl130` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl131`
--

DROP TABLE IF EXISTS `tabl131`;
CREATE TABLE IF NOT EXISTS `tabl131` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl132`
--

DROP TABLE IF EXISTS `tabl132`;
CREATE TABLE IF NOT EXISTS `tabl132` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl133`
--

DROP TABLE IF EXISTS `tabl133`;
CREATE TABLE IF NOT EXISTS `tabl133` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl134`
--

DROP TABLE IF EXISTS `tabl134`;
CREATE TABLE IF NOT EXISTS `tabl134` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl135`
--

DROP TABLE IF EXISTS `tabl135`;
CREATE TABLE IF NOT EXISTS `tabl135` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl136`
--

DROP TABLE IF EXISTS `tabl136`;
CREATE TABLE IF NOT EXISTS `tabl136` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl137`
--

DROP TABLE IF EXISTS `tabl137`;
CREATE TABLE IF NOT EXISTS `tabl137` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl138`
--

DROP TABLE IF EXISTS `tabl138`;
CREATE TABLE IF NOT EXISTS `tabl138` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl139`
--

DROP TABLE IF EXISTS `tabl139`;
CREATE TABLE IF NOT EXISTS `tabl139` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl140`
--

DROP TABLE IF EXISTS `tabl140`;
CREATE TABLE IF NOT EXISTS `tabl140` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl141`
--

DROP TABLE IF EXISTS `tabl141`;
CREATE TABLE IF NOT EXISTS `tabl141` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl142`
--

DROP TABLE IF EXISTS `tabl142`;
CREATE TABLE IF NOT EXISTS `tabl142` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl143`
--

DROP TABLE IF EXISTS `tabl143`;
CREATE TABLE IF NOT EXISTS `tabl143` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl144`
--

DROP TABLE IF EXISTS `tabl144`;
CREATE TABLE IF NOT EXISTS `tabl144` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl145`
--

DROP TABLE IF EXISTS `tabl145`;
CREATE TABLE IF NOT EXISTS `tabl145` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl146`
--

DROP TABLE IF EXISTS `tabl146`;
CREATE TABLE IF NOT EXISTS `tabl146` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl147`
--

DROP TABLE IF EXISTS `tabl147`;
CREATE TABLE IF NOT EXISTS `tabl147` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl148`
--

DROP TABLE IF EXISTS `tabl148`;
CREATE TABLE IF NOT EXISTS `tabl148` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabl149`
--

DROP TABLE IF EXISTS `tabl149`;
CREATE TABLE IF NOT EXISTS `tabl149` (
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` varchar(10) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `pass`) VALUES
('user1', 'password'),
('user2', 'password'),
('user3', 'password'),
('user4', 'password'),
('user5', 'password');
