--
-- Tabellenstruktur für Tabelle `ycountries`
--

CREATE TABLE IF NOT EXISTS `%TABLE_PREFIX%ycountries` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `prior` int(11) NOT NULL,
    `en_gb` varchar(70) NOT NULL DEFAULT '',
    `de_de` varchar(70) NOT NULL,
    `code2` char(2) NOT NULL DEFAULT '',
    `code3` char(3) NOT NULL,
    `tld` char(3) NOT NULL,
    `vehicle_code` char(3) NOT NULL,
    `phone_code` int(7) NOT NULL,
    `postcode_required` tinyint(1) NOT NULL DEFAULT '0',
    `is_eu` tinyint(1) NOT NULL DEFAULT '0',
    `createuser` VARCHAR(255) NOT NULL,
    `updatedate` INT(11) NOT NULL,
    `updateuser` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code2` (`code2`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=244 ;

--
-- Daten für Tabelle `rex_ycountries`
--

INSERT INTO `%TABLE_PREFIX%ycountries` (`id`, `prior`, `en_gb`, `de_de`, `code2`, `code3`, `tld`, `vehicle_code`, `phone_code`, `postcode_required`, `is_eu`, `updatedate`) VALUES
(1, 230, 'United States', 'Vereinigte Staaten von Amerika ', 'US', 'USA', '', 'USA', 1, 0, 0, 1438273364),
(2, 39, 'Canada', 'Kanada', 'CA', 'CAN', '.ca', 'CDN', 1, 0, 0, 1438273410),
(3, 1, 'Afghanistan', 'Afghanistan', 'AF', 'AFG', '.af', 'AFG', 93, 0, 0, 1438274226),
(4, 3, 'Albania', 'Albanien  ', 'AL', 'ALB', '.al', 'AL', 355, 0, 0, 1438274272),
(5, 4, 'Algeria', 'Algerien', 'DZ', 'DZA', '', 'DZ', 213, 0, 0, 1438273803),
(6, 5, 'American Samoa', 'Amerikanisch-Samoa', 'AS', 'ASM', '.as', '', 44, 0, 0, 1438274386),
(7, 6, 'Andorra', 'Andorra ', 'AD', 'AND', '.ad', 'AND', 376, 0, 0, 1438274169),
(8, 7, 'Angola', 'Angola', 'AO', 'AGO', '.ao', 'ANG', 244, 0, 0, 1438274302),
(9, 8, 'Anguilla', 'Anguilla', 'AI', 'AIA', '.ai', 'AXA', 1264, 0, 0, 1438274261),
(10, 9, 'Antarctica', 'Antarktika', 'AQ', 'ATA', '.aq', '', 672, 0, 0, 1438274315),
(11, 10, 'Antigua and Barbuda', 'Antigua und Barbuda', 'AG', 'ATG', '.ag', 'AG', 1268, 0, 0, 1438274247),
(12, 11, 'Argentina', 'Argentinien', 'AR', 'ARG', '.ar', 'RA', 54, 0, 0, 1438274328),
(13, 12, 'Armenia', 'Armenien', 'AM', 'ARM', '.am', 'AM', 374, 0, 0, 1438274280),
(14, 13, 'Aruba', 'Aruba', 'AW', 'ABW', '.aw', 'ARU', 297, 0, 0, 1438274421),
(15, 14, 'Australia', 'Australien', 'AU', 'AUS', '.au', 'AUS', 61, 0, 0, 1438274410),
(16, 15, 'Austria', 'Österreich', 'AT', 'AUT', '.at', 'A', 43, 0, 1, 1438274401),
(17, 16, 'Azerbaijan', 'Aserbaidschan', 'AZ', 'AZE', '.az', 'AZ', 994, 0, 0, 1438274444),
(18, 17, 'Bahamas', 'Bahamas', 'BS', 'BHS', '', 'BS', 1242, 0, 0, 0),
(19, 18, 'Bahrain', 'Bahrain', 'BH', 'BHR', '', 'BRN', 973, 0, 0, 0),
(20, 19, 'Bangladesh', 'Bangladesch', 'BD', 'BGD', '', 'BD', 880, 0, 0, 0),
(21, 20, 'Barbados', 'Barbados', 'BB', 'BRB', '', 'BDS', 1246, 0, 0, 0),
(22, 21, 'Belarus', 'Belarus', 'BY', 'BLR', '', 'BY', 375, 0, 0, 0),
(23, 22, 'Belgium', 'Belgien', 'BE', 'BEL', '', 'B', 32, 0, 1, 0),
(24, 23, 'Belize', 'Belize', 'BZ', 'BLZ', '', 'BZ', 501, 0, 0, 0),
(25, 24, 'Benin', 'Benin', 'BJ', 'BEN', '', 'BJ', 229, 0, 0, 0),
(26, 25, 'Bermuda', 'Bermuda', 'BM', 'BMU', '', '', 1441, 0, 0, 1438283411),
(27, 26, 'Bhutan', 'Bhutan', 'BT', 'BTN', '', 'BHT', 975, 0, 0, 0),
(28, 27, 'Bolivia', 'Bolivien', 'BO', 'BOL', '', 'BOL', 591, 0, 0, 0),
(29, 28, 'Bosnia and Herzegovina', 'Bosnien-Herzegowina', 'BA', 'BIH', '', 'BIH', 387, 0, 0, 0),
(30, 29, 'Botswana', 'Botsuana', 'BW', 'BWA', '', 'RB', 267, 0, 0, 0),
(31, 30, 'Bouvet Island', 'Bouvetinsel', 'BV', 'BVT', '', '', 44, 0, 0, 1438283425),
(32, 31, 'Brazil', 'Brasilien', 'BR', 'BRA', '', 'BR', 55, 0, 0, 0),
(33, 32, 'British Indian Ocean Territory', 'Britisches Territorium im Indischen Ozean', 'IO', 'IOT', '', '', 0, 0, 0, 1438283442),
(34, 33, 'Brunei Darussalam', 'Brunei Darussalam', 'BN', 'BRN', '', 'BRU', 673, 0, 0, 0),
(35, 34, 'Bulgaria', 'Bulgarien', 'BG', 'BGR', '', 'BG', 359, 0, 1, 0),
(36, 35, 'Burkina Faso', 'Burkina Faso', 'BF', 'BFA', '', 'BF', 226, 0, 0, 0),
(37, 36, 'Burundi', 'Burundi', 'BI', 'BDI', '', 'RU', 257, 0, 0, 0),
(38, 37, 'Cambodia', 'Kambodscha', 'KH', 'KHM', '', 'K', 855, 0, 0, 0),
(39, 38, 'Cameroon', 'Kamerun', 'CM', 'CMR', '', 'CAM', 237, 0, 0, 1438285374),
(40, 40, 'Cape Verde', 'Kap Verde', 'CV', 'CPV', '', 'CV', 238, 0, 0, 0),
(41, 41, 'Cayman Islands', 'Kaimaninseln', 'KY', 'CYM', '.ky', '', 1345, 0, 0, 1438284054),
(42, 42, 'Central African Republic', 'Zentralafrikanische Republik', 'CF', 'CAF', '', 'RCA', 236, 0, 0, 0),
(43, 43, 'Chad', 'Tschad', 'TD', 'TCD', '', 'TD', 235, 0, 0, 0),
(44, 44, 'Chile', 'Chile', 'CL', 'CHL', '', 'RCH', 56, 0, 0, 0),
(45, 45, 'China', 'China', 'CN', 'CHN', '', 'CHN', 86, 0, 0, 1438283546),
(46, 46, 'Christmas Island', 'Weihnachtsinsel', 'CX', 'CXR', '', '', 61, 0, 0, 1438283576),
(47, 47, 'Cocos (Keeling) Islands', 'Kokosinseln', 'CC', 'CCK', '', '', 61, 0, 0, 1438283488),
(48, 48, 'Colombia', 'Kolumbien', 'CO', 'COL', '', 'CO', 57, 0, 0, 0),
(49, 49, 'Comoros', 'Komoren', 'KM', 'COM', '.km', 'COM', 269, 0, 0, 1438284038),
(50, 51, 'Congo, Republic of the', 'Kongo, Republik', 'CG', 'COG', '', 'RCB', 242, 0, 0, 1438285537),
(51, 52, 'Cook Islands', 'Cookinseln', 'CK', 'COK', '', '', 682, 0, 0, 1438283506),
(52, 53, 'Costa Rica', 'Costa Rica', 'CR', 'CRC', '', 'CR', 506, 0, 0, 0),
(53, 54, 'Croatia', 'Kroatien', 'HR', 'HRV', '', 'HR', 385, 0, 0, 0),
(54, 55, 'Cuba', 'Kuba', 'CU', 'CUB', '', 'C', 53, 0, 0, 0),
(55, 56, 'Cyprus', 'Zypern', 'CY', 'CYP', '', 'CY', 357, 0, 1, 0),
(56, 57, 'Czech Republic', 'Tschechische Republik', 'CZ', 'CZE', '', 'CZ', 420, 0, 1, 0),
(57, 58, 'Denmark', 'Dänemark', 'DK', 'DNK', '', 'DK', 45, 0, 1, 0),
(58, 59, 'Djibouti', 'Dschibuti', 'DJ', 'DJI', '', 'DJI', 253, 0, 0, 0),
(59, 60, 'Dominica', 'Dominica', 'DM', 'DMA', '', 'WD', 1767, 0, 0, 0),
(60, 61, 'Dominican Republic', 'Dominikanische Republik', 'DO', 'DOM', '', 'DOM', 1809, 0, 0, 0),
(61, 62, 'East Timor', 'Timor-Leste, Osttimor', 'TL', 'TLS', '', 'TL', 44, 0, 0, 0),
(62, 63, 'Ecuador', 'Ecuador', 'EC', 'ECU', '', 'EC', 593, 0, 0, 0),
(63, 64, 'Egypt', 'Ägypten', 'EG', 'EGY', '', 'ET', 20, 0, 0, 0),
(64, 65, 'El Salvador', 'El Salvador', 'SV', 'SLV', '', 'ES', 503, 0, 0, 0),
(65, 66, 'Equatorial Guinea', 'Äquatorialguinea', 'GQ', 'GNQ', '', 'GQ', 240, 0, 0, 0),
(66, 67, 'Eritrea', 'Eritrea', 'ER', 'ERI', '', 'ER', 291, 0, 0, 0),
(67, 68, 'Estonia', 'Estland', 'EE', 'EST', '', 'EST', 372, 0, 1, 0),
(68, 69, 'Ethiopia', 'Äthiopien', 'ET', 'ETH', '', 'ETH', 251, 0, 0, 0),
(69, 70, 'Falkland Islands (Malvinas)', 'Falklandinseln', 'FK', 'FLK', '', '', 500, 0, 0, 1438283622),
(70, 71, 'Faroe Islands', 'Färöer', 'FO', 'FRO', '', 'FO', 298, 0, 0, 1438283645),
(71, 72, 'Fiji', 'Fidschi', 'FJ', 'FJI', '', 'FJI', 679, 0, 0, 0),
(72, 73, 'Finland', 'Finnland ', 'FI', 'FIN', '', 'FIN', 358, 0, 1, 0),
(73, 74, 'France', 'Frankreich ', 'FR', 'FRA', '', 'F', 33, 0, 1, 0),
(74, 75, 'France, Metropolitan', 'Frankreich, metropolitan', 'FX', 'FXX', '', '', 44, 0, 0, 1438283787),
(75, 76, 'French Guiana', 'Französisch-Guayana', 'GF', 'GUF', '', '', 44, 0, 0, 1438283821),
(76, 77, 'French Polynesia', 'Französisch-Polynesien', 'PF', 'PYF', '.pf', '', 689, 0, 0, 1438284222),
(77, 78, 'French Southern Territories', 'Französische Süd- und Antarktisgebiete', 'TF', 'ATF', '.tf', '', 44, 0, 0, 1438284628),
(78, 79, 'Gabon', 'Gabun', 'GA', 'GAB', '', 'G', 241, 0, 0, 0),
(79, 80, 'Gambia', 'Gambia', 'GM', 'GMB', '', 'WAG', 220, 0, 0, 0),
(80, 81, 'Georgia', 'Georgien', 'GE', 'GEO', '', 'GE', 995, 0, 0, 0),
(81, 82, 'Germany', 'Deutschland', 'DE', 'DEU', '.de', 'D', 49, 0, 1, 1438273388),
(82, 83, 'Ghana', 'Ghana', 'GH', 'GHA', '', 'GH', 233, 0, 0, 0),
(83, 84, 'Gibraltar', 'Gibraltar', 'GI', 'GIB', '', 'GBZ', 350, 0, 0, 1438283856),
(84, 85, 'Greece', 'Griechenland', 'GR', 'GRC', '', 'GR', 30, 0, 1, 1438283916),
(85, 86, 'Greenland', 'Grönland ', 'GL', 'GRL', '', 'KN', 299, 0, 0, 1438283950),
(86, 87, 'Grenada', 'Grenada', 'GD', 'GRD', '', 'WG', 1473, 0, 0, 0),
(87, 88, 'Guadeloupe', 'Guadeloupe', 'GP', 'GLP', '', '', 44, 0, 0, 1438283877),
(88, 89, 'Guam', 'Guam', 'GU', 'GUM', '', '', 1671, 0, 0, 1438283990),
(89, 90, 'Guatemala', 'Guatemala', 'GT', 'GTM', '', 'GCA', 502, 0, 0, 0),
(90, 91, 'Guinea', 'Guinea', 'GN', 'GIN', '', 'RG', 224, 0, 0, 0),
(91, 92, 'Guinea-Bissau', 'Guinea-Bissau', 'GW', 'GNB', '', 'GUB', 245, 0, 0, 0),
(92, 93, 'Guyana', 'Guyana', 'GY', 'GUY', '', 'GUY', 592, 0, 0, 0),
(93, 94, 'Haiti', 'Haiti', 'HT', 'HTI', '', 'RH', 509, 0, 0, 0),
(94, 95, 'Heard and Mc Donald Islands', 'Heard und McDonaldinseln', 'HM', 'HMD', '.hm', '', 44, 0, 0, 1438284019),
(95, 96, 'Honduras', 'Honduras', 'HN', 'HND', '', 'HN', 504, 0, 0, 0),
(96, 97, 'Hong Kong', 'Hongkong ', 'HK', 'HKG', '', 'HK', 852, 0, 0, 0),
(97, 98, 'Hungary', 'Ungarn ', 'HU', 'HUN', '', 'H', 36, 0, 1, 0),
(98, 99, 'Iceland', 'Island', 'IS', 'IS', '', 'IS', 354, 0, 0, 0),
(99, 100, 'India', 'Indien', 'IN', 'IND', '', 'IND', 91, 0, 0, 0),
(100, 101, 'Indonesia', 'Indonesien', 'ID', 'IDN', '', 'RI', 62, 0, 0, 0),
(101, 102, 'Iran (Islamic Republic of)', 'Iran', 'IR', 'IRN', '', 'IR', 98, 0, 0, 0),
(102, 103, 'Iraq', 'Irak', 'IQ', 'IRQ', '', 'IRQ', 964, 0, 0, 0),
(103, 104, 'Ireland', 'Irland ', 'IE', 'IRL', '', 'IRL', 353, 0, 1, 0),
(104, 105, 'Israel', 'Israel', 'IL', 'ISR', '', 'IL', 972, 0, 0, 0),
(105, 106, 'Italy', 'Italien', 'IT', 'ITA', '', 'I', 39, 0, 1, 0),
(106, 107, 'Ivory Coast', 'Côte d''Ivoire, Elfenbeinküste', 'CI', 'CIV', '', 'CI', 225, 0, 0, 0),
(107, 108, 'Jamaica', 'Jamaika', 'JM', 'JAM', '', 'JA', 1876, 0, 0, 0),
(108, 109, 'Japan', 'Japan', 'JP', 'JPN', '', 'J', 81, 0, 0, 0),
(109, 110, 'Jordan', 'Jordanien', 'JO', 'JOR', '', 'JOR', 962, 0, 0, 0),
(110, 111, 'Kazakhstan', 'Kasachstan', 'KZ', 'KAZ', '', 'KZ', 7, 0, 0, 0),
(111, 112, 'Kenya', 'Kenia', 'KE', 'KEN', '', 'EAK', 254, 0, 0, 0),
(112, 113, 'Kiribati', 'Kiribati', 'KI', 'KIR', '', 'KIR', 686, 0, 0, 0),
(113, 114, 'Korea, Democratic People''s Republic of', 'Korea, Demokratische Volksrepublik, Nordkorea', 'KP', 'PRK', '', 'KP', 850, 0, 0, 1438285667),
(114, 115, 'Korea, Republic of', 'Korea, Republik Korea, Südkorea', 'KR', 'KOR', '', 'ROK', 82, 0, 0, 1438285653),
(115, 117, 'Kuwait', 'Kuwait', 'KW', 'KWT', '', 'KWT', 965, 0, 0, 0),
(116, 118, 'Kyrgyzstan', 'Kirgisistan', 'KG', 'KGZ', '', 'KS', 996, 0, 0, 0),
(117, 119, 'Lao People''s Democratic Republic', 'Laos', 'LA', 'LAO', '', 'LAO', 856, 0, 0, 0),
(118, 120, 'Latvia', 'Lettland ', 'LV', 'LVA', '', 'LV', 371, 0, 1, 0),
(119, 121, 'Lebanon', 'Libanon', 'LB', 'LBN', '', 'RL', 961, 0, 0, 0),
(120, 122, 'Lesotho', 'Lesotho', 'LS', 'LSO', '', 'LS', 266, 0, 0, 0),
(121, 123, 'Liberia', 'Liberia', 'LR', 'LBR', '', 'LB', 231, 0, 0, 0),
(122, 124, 'Libyan Arab Jamahiriya', 'Libyen', 'LY', 'LBY', '', 'LAR', 218, 0, 0, 0),
(123, 125, 'Liechtenstein', 'Liechtenstein ', 'LI', 'LIE', '', 'FL', 423, 0, 0, 0),
(124, 126, 'Lithuania', 'Litauen', 'LT', 'LTU', '', 'LT', 370, 0, 1, 0),
(125, 127, 'Luxembourg', 'Luxemburg', 'LU', 'LUX', '', 'L', 352, 0, 1, 0),
(126, 128, 'Macau', 'Macau ', 'MO', 'MAC', '', '', 853, 0, 0, 0),
(127, 129, 'Macedonia', 'Mazedonien', 'MK', 'MKD', '', 'MK', 389, 0, 0, 0),
(128, 130, 'Madagascar', 'Madagaskar', 'MG', 'MDG', '', 'RM', 261, 0, 0, 0),
(129, 131, 'Malawi', 'Malawi', 'MW', 'MWI', '', 'MW', 265, 0, 0, 0),
(130, 132, 'Malaysia', 'Malaysia', 'MY', 'MYS', '', 'MAL', 60, 0, 0, 0),
(131, 133, 'Maldives', 'Malediven', 'MV', 'MDV', '', 'MV', 960, 0, 0, 0),
(132, 134, 'Mali', 'Mali', 'ML', 'MLI', '', 'RMM', 223, 0, 0, 0),
(133, 135, 'Malta', 'Malta', 'MT', 'MLT', '', 'S.M', 356, 0, 1, 0),
(134, 136, 'Marshall Islands', 'Marshall-Inseln', 'MH', 'MHL', '', 'MH', 692, 0, 0, 0),
(135, 137, 'Martinique', 'Martinique', 'MQ', 'MTQ', '.mq', '', 44, 0, 0, 1438284093),
(136, 138, 'Mauritania', 'Mauretanien', 'MR', 'MRT', '', 'RIM', 222, 0, 0, 0),
(137, 139, 'Mauritius', 'Mauritius', 'MU', 'MUS', '', 'MS', 230, 0, 0, 0),
(138, 140, 'Mayotte', 'Mayotte', 'YT', 'MYT', '.yt', '', 262, 0, 0, 1438284693),
(139, 141, 'Mexico', 'Mexiko', 'MX', 'MEX', '', 'MEX', 52, 0, 0, 0),
(140, 142, 'Micronesia, Federated States of', 'Mikronesien', 'FM', 'FSM', '', 'FSM', 691, 0, 0, 0),
(141, 143, 'Moldova, Republic of', 'Moldawien, Republik Moldau', 'MD', 'MDA', '.md', 'MD', 373, 0, 0, 1438285764),
(142, 144, 'Monaco', 'Monaco ', 'MC', 'MCO', '', 'MC', 377, 0, 0, 0),
(143, 145, 'Mongolia', 'Mongolei', 'MN', 'MNG', '', 'MGL', 976, 0, 0, 0),
(144, 147, 'Montserrat', 'Montserrat', 'MS', 'MSR', '.ms', '', 1664, 0, 0, 1438284113),
(145, 148, 'Morocco', 'Marokko', 'MA', 'MAR', '', 'MA', 212, 0, 0, 0),
(146, 149, 'Mozambique', 'Mosambik', 'MZ', 'MOZ', '', 'MOC', 258, 0, 0, 0),
(147, 150, 'Myanmar', 'Myanmar, Burma', 'MM', 'MMR', '', 'MYA', 95, 0, 0, 0),
(148, 151, 'Namibia', 'Namibia', 'NA', 'NAM', '', 'NAM', 264, 0, 0, 0),
(149, 152, 'Nauru', 'Nauru', 'NR', 'NRU', '', 'NAU', 674, 0, 0, 0),
(150, 153, 'Nepal', 'Nepal', 'NP', 'NPL', '', 'NEP', 977, 0, 0, 0),
(151, 154, 'Netherlands', 'Niederlande ', 'NL', 'NLD', '', 'NL', 31, 0, 1, 0),
(152, 155, 'Netherlands Antilles', 'Niederländische Antillen', 'AN', 'ANT', '.an', 'NA', 599, 0, 0, 1438274294),
(153, 156, 'New Caledonia', 'Neukaledonien', 'NC', 'NCL', '.nc', 'NCL', 687, 0, 0, 1438284127),
(154, 157, 'New Zealand', 'Neuseeland', 'NZ', 'NZL', '', 'NZ', 64, 0, 0, 0),
(155, 158, 'Nicaragua', 'Nicaragua', 'NI', 'NIC', '', 'NIC', 505, 0, 0, 0),
(156, 159, 'Niger', 'Niger', 'NE', 'NER', '', 'RN', 227, 0, 0, 0),
(157, 160, 'Nigeria', 'Nigeria', 'NG', 'NGA', '', 'NGR', 234, 0, 0, 0),
(158, 161, 'Niue', 'Niue', 'NU', 'NIU', '.nu', '', 683, 0, 0, 1438284203),
(159, 162, 'Norfork Island', 'Norfolkinsel', 'NF', 'NFK', '.nf', '', 44, 0, 0, 1438284146),
(160, 163, 'Northern Mariana Islands', 'Nördliche Marianen', 'MP', 'MNP', '.mp', '', 1670, 0, 0, 1438284074),
(161, 164, 'Norway', 'Norwegen', 'NO', 'NOR', '', 'N', 47, 0, 0, 0),
(162, 165, 'Oman', 'Oman', 'OM', 'OMN', '', 'OM', 968, 0, 0, 0),
(163, 166, 'Pakistan', 'Pakistan', 'PK', 'PAK', '', 'PK', 92, 0, 0, 0),
(164, 167, 'Palau', 'Palau', 'PW', 'PLW', '', 'PAL', 680, 0, 0, 0),
(165, 168, 'Panama', 'Panama', 'PA', 'PAN', '', 'PA', 507, 0, 0, 0),
(166, 169, 'Papua New Guinea', 'Papua-Neuguinea', 'PG', 'PNG', '', 'PNG', 675, 0, 0, 0),
(167, 170, 'Paraguay', 'Paraguay', 'PY', 'PRY', '', 'PY', 595, 0, 0, 0),
(168, 171, 'Peru', 'Peru', 'PE', 'PER', '', 'PE', 51, 0, 0, 0),
(169, 172, 'Philippines', 'Philippinen', 'PH', 'PHL', '', 'RP', 63, 0, 0, 0),
(170, 173, 'Pitcairn', 'Pitcairninseln  ', 'PN', 'PCN', '.pn', '', 870, 0, 0, 1438284252),
(171, 174, 'Poland', 'Polen ', 'PL', 'POL', '', 'PL', 48, 0, 1, 0),
(172, 175, 'Portugal', 'Portugal', 'PT', 'PRT', '', 'P', 351, 0, 1, 0),
(173, 176, 'Puerto Rico', 'Puerto Rico', 'PR', 'PRI', '.pr', 'PRI', 1, 0, 0, 1438284267),
(174, 177, 'Qatar', 'Katar', 'QA', 'QAT', '', 'Q', 974, 0, 0, 0),
(175, 178, 'Reunion', 'Réunion', 'RE', 'REU', '.re', '', 44, 0, 0, 1438284289),
(176, 179, 'Romania', 'Rumänien', 'RO', 'ROU', '', 'RUM', 40, 0, 1, 0),
(177, 180, 'Russian Federation', 'Russische Föderation', 'RU', 'RUS', '', 'RUS', 7, 0, 0, 0),
(178, 181, 'Rwanda', 'Ruanda', 'RW', 'RWA', '', 'RWA', 250, 0, 0, 0),
(179, 182, 'Saint Kitts and Nevis', 'St. Kitts und Nevis', 'KN', 'KNA', '', 'KAN', 1869, 0, 0, 0),
(180, 183, 'Saint Lucia', 'St. Lucia', 'LC', 'LCA', '', 'WL', 1758, 0, 0, 0),
(181, 184, 'Saint Vincent and the Grenadines', 'St. Vincent u. Grenadinen', 'VC', 'VCT', '', 'WV', 1784, 0, 0, 0),
(182, 185, 'Samoa', 'Samoa', 'WS', 'WSM', '', 'WS', 685, 0, 0, 0),
(183, 186, 'San Marino', 'San Marino', 'SM', 'SMR', '', 'RSM', 378, 0, 0, 0),
(184, 187, 'Sao Tome and Principe', 'Sao Tomé und Principe', 'ST', 'STP', '', 'STP', 239, 0, 0, 0),
(185, 188, 'Saudi Arabia', 'Saudi-Arabien', 'SA', 'SAU', '', 'KSA', 966, 0, 0, 0),
(186, 189, 'Senegal', 'Senegal', 'SN', 'SEN', '', 'SN', 221, 0, 0, 0),
(187, 191, 'Seychelles', 'Seychellen', 'SC', 'SYC', '', 'SY', 248, 0, 0, 0),
(188, 192, 'Sierra Leone', 'Sierra Leone', 'SL', 'SLE', '', 'WAL', 232, 0, 0, 0),
(189, 193, 'Singapore', 'Singapur', 'SG', 'SGP', '', 'SGP', 65, 0, 0, 0),
(190, 194, 'Slovakia', 'Slowakische Republik', 'SK', 'SVK', '', 'SK', 421, 0, 1, 0),
(191, 195, 'Slovenia', 'Slowenien', 'SI', 'SVN', '', 'SLO', 386, 0, 1, 0),
(192, 196, 'Solomon Islands', 'Salomonen', 'SB', 'SLB', '', 'SOL', 677, 0, 0, 0),
(193, 197, 'Somalia', 'Somalia', 'SO', 'SOM', '', 'SO', 252, 0, 0, 0),
(194, 198, 'South Africa', 'Südafrika', 'ZA', 'ZAF', '', 'ZA', 27, 0, 0, 0),
(195, 199, 'South Georgia South Sandwich Islands', 'Südgeorgien und die Südlichen Sandwichinseln', 'GS', 'SGS', '', '', 44, 0, 0, 1438283980),
(196, 200, 'Spain', 'Spanien ', 'ES', 'ESP', '', 'E', 34, 0, 1, 0),
(197, 201, 'Sri Lanka', 'Sri Lanka', 'LK', 'LKA', '', 'CL', 94, 0, 0, 0),
(198, 202, 'St. Helena', 'St. Helena', 'SH', 'SHN', '.sh', '', 290, 0, 0, 1438284303),
(199, 203, 'St. Pierre and Miquelon', 'Saint-Pierre und Miquelon', 'PM', 'SPM', '.pm', '', 508, 0, 0, 1438284235),
(200, 204, 'Sudan', 'Sudan', 'SD', 'SDN', '', 'SUD', 249, 0, 0, 0),
(201, 205, 'Suriname', 'Surinam', 'SR', 'SUR', '', 'SME', 597, 0, 0, 0),
(202, 206, 'Svalbarn and Jan Mayen Islands', 'Svalbard und Jan Mayen', 'SJ', 'SJM', '.sj', '', 0, 0, 0, 1438284600),
(203, 207, 'Swaziland', 'Swasiland', 'SZ', 'SWZ', '', 'SD', 268, 0, 0, 0),
(204, 208, 'Sweden', 'Schweden ', 'SE', 'SWE', '', 'S', 46, 0, 1, 0),
(205, 209, 'Switzerland', 'Schweiz ', 'CH', 'CHE', '', 'CH', 41, 0, 0, 0),
(206, 210, 'Syrian Arab Republic', 'Syrien', 'SY', 'SYR', '', 'SYR', 963, 0, 0, 0),
(207, 211, 'Taiwan', 'Taiwan', 'TW', 'TWN', '', 'RC', 886, 0, 0, 0),
(208, 212, 'Tajikistan', 'Tadschikistan', 'TJ', 'TJK', '', 'TJ', 992, 0, 0, 0),
(209, 213, 'Tanzania, United Republic of', 'Tansania', 'TZ', 'TZA', '', 'EAT', 255, 0, 0, 0),
(210, 214, 'Thailand', 'Thailand', 'TH', 'THA', '', 'T', 66, 0, 0, 0),
(211, 215, 'Togo', 'Togo', 'TG', 'TGO', '', 'TG', 228, 0, 0, 0),
(212, 216, 'Tokelau', 'Tokelau', 'TK', 'TKL', '.tk', '', 690, 0, 0, 1438284640),
(213, 217, 'Tonga', 'Tonga', 'TO', 'TON', '', 'TON', 676, 0, 0, 0),
(214, 218, 'Trinidad and Tobago', 'Trinidad und Tobago', 'TT', 'TTO', '', 'TT', 1868, 0, 0, 0),
(215, 219, 'Tunisia', 'Tunesien', 'TN', 'TUN', '', 'TN', 216, 0, 0, 0),
(216, 220, 'Turkey', 'Türkei', 'TR', 'TUR', '', 'TR', 90, 0, 0, 0),
(217, 221, 'Turkmenistan', 'Turkmenistan ', 'TM', 'TKM', '', 'TM', 993, 0, 0, 0),
(218, 222, 'Turks and Caicos Islands', 'Turks- und Caicosinseln', 'TC', 'TCA', '.tc', '', 1649, 0, 0, 1438284615),
(219, 223, 'Tuvalu', 'Tuvalu', 'TV', 'TUV', '', 'TUV', 688, 0, 0, 0),
(220, 224, 'Uganda', 'Uganda', 'UG', 'UGA', '', 'EAU', 256, 0, 0, 0),
(221, 225, 'Ukraine', 'Ukraine', 'UA', 'UKR', '', 'UA', 380, 0, 0, 0),
(222, 226, 'United Arab Emirates', 'Vereinigte Arabische Emirate', 'AE', 'ARE', '.ae', 'UAE', 971, 0, 0, 1438274146),
(223, 227, 'United Kingdom', 'Vereinigtes Königreich Großbritannien und Nordirland ', 'GB', 'GBR', '', 'GBM', 44, 1, 1, 0),
(224, 228, 'United States minor outlying islands', 'United States Minor Outlying Islands', 'UM', 'UMI', '.um', '', 44, 0, 0, 1438284722),
(225, 229, 'Uruguay', 'Uruguay', 'UY', 'URY', '', 'ROU', 598, 0, 0, 0),
(226, 231, 'Uzbekistan', 'Usbekistan', 'UZ', 'UZB', '', 'UZ', 998, 0, 0, 0),
(227, 232, 'Vanuatu', 'Vanuatu', 'VU', 'VUT', '', 'VAN', 678, 0, 0, 0),
(228, 233, 'Vatican City State', 'Vatikan Stadt', 'VA', 'VAT', '', 'V', 39, 0, 0, 0),
(229, 234, 'Venezuela', 'Venezuela', 'VE', 'VEN', '', 'YV', 58, 0, 0, 0),
(230, 235, 'Vietnam', 'Vietnam', 'VN', 'VNM', '', 'VN', 84, 0, 0, 0),
(231, 236, 'Virigan Islands (British)', 'Britische Jungferninseln', 'VG', 'VGB', '.vg', 'VG', 1284, 0, 0, 1438284738),
(232, 237, 'Virgin Islands (U.S.)', 'Amerikanische Jungferninseln', 'VI', 'VIR', '.vi', '', 1340, 0, 0, 1438284760),
(233, 238, 'Wallis and Futuna Islands', 'Wallis und Futuna', 'WF', 'WLF', '.wf', '', 681, 0, 0, 1438284772),
(234, 239, 'Western Sahara', 'Westsahara', 'EH', 'ESH', '', 'WSA', 0, 0, 0, 1438283603),
(235, 240, 'Yemen', 'Jemen', 'YE', 'YEM', '', 'YEM', 967, 0, 0, 0),
(237, 50, 'Congo, Democratic Republic of the', 'Kongo, Demokratische Republik', 'CD', 'COD', '.cd', 'CGO', 243, 0, 0, 1438287639),
(238, 241, 'Zambia', 'Sambia', 'ZM', 'ZMB', '', 'Z', 260, 0, 0, 0),
(239, 242, 'Zimbabwe', 'Simbabwe', 'ZW', 'ZWE', '', 'ZW', 263, 0, 0, 0),
(240, 116, 'Kosovo', 'Kosovo', 'XK', 'UNK', '', 'RKS', 381, 0, 0, 1438273682),
(241, 146, 'Montenegro', 'Montenegro', 'ME', 'MNE', '', 'MNE', 382, 0, 0, 1438273728),
(242, 190, 'Serbia', 'Serbien ', 'RS', 'SRB', '', 'SRB', 381, 0, 0, 1438273707),
(243, 2, 'Åland Islands', 'Åland', 'AX', 'ALA', '.ax', 'AX', 358, 0, 0, 1438287666);
