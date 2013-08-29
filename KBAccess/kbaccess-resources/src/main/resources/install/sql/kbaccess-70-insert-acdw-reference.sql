
/* 
 * Insertion of AccedeWeb HTML/CSS notice and AccedeWeb RI/JS notice
 */
 
SET FOREIGN_KEY_CHECKS=0;


--
-- Content of table reference
-- 

INSERT IGNORE INTO `reference`(`ID_REFERENCE`, `CD_REFERENCE`, `LABEL`, `RANK`, `URL`, `COUNTRY`, `INFO_MAX_DEPTH`, `TEST_MAX_DEPTH`) VALUES
(4, 'ACDW_HTMLCSS', 'AccedeWeb Notice d\'accessibilité HTML et CSS', 13, 'http://wiki.accede-web.com/notices/html-css', 'france', '+2', '-1'),
(5, 'ACDW_RIJS', 'AccedeWeb Notice d\'accessibilité interfaces riches et JavaScript', 14, 'http://wiki.accede-web.com/notices/interfaces-riches-javascript', 'france', '+2', '-1');

-- 
-- Content of table reference_depth
--
INSERT IGNORE INTO `reference_depth`(`ID_REFERENCE_DEPTH`, `CD_REFERENCE_DEPTH`, `DEPTH`, `RANK`) VALUES
(10, 'ACDW_HTMLCSS-depth+2', 2, 10),
(11, 'ACDW_HTMLCSS-depth+1', 1, 11),
(12, 'ACDW_HTMLCSS-depth-1', -1, 12),
(13, 'ACDW_RIJS-depth+2', 2, 13),
(14, 'ACDW_RIJS-depth+1', 1, 14),
(15, 'ACDW_RIJS-depth-1', -1, 15);

--
-- Content of table reference_info
--
INSERT IGNORE INTO `reference_info` (`ID_REFERENCE_INFO`, `ID_REFERENCE_INFO_PARENT`, `CD_REFERENCE_INFO`, `LABEL`, `RANK`, `ID_REFERENCE_DEPTH`) VALUES
-- HTML/CSS Themes
(51, NULL, 'ACDW_HTMLCSS-01', '1', 51, 10),
(52, NULL, 'ACDW_HTMLCSS-02', '2', 52, 10),
(53, NULL, 'ACDW_HTMLCSS-03', '3', 53, 10),
(54, NULL, 'ACDW_HTMLCSS-04', '4', 54, 10),
(55, NULL, 'ACDW_HTMLCSS-05', '5', 55, 10),
(56, NULL, 'ACDW_HTMLCSS-06', '6', 56, 10),
(57, NULL, 'ACDW_HTMLCSS-07', '7', 57, 10),
(58, NULL, 'ACDW_HTMLCSS-08', '8', 58, 10),
(59, NULL, 'ACDW_HTMLCSS-09', '9', 59, 10),
(60, NULL, 'ACDW_HTMLCSS-10', '10', 60, 10),
(61, NULL, 'ACDW_HTMLCSS-11', '11', 61, 10),
(62, NULL, 'ACDW_HTMLCSS-12', '12', 62, 10),

-- HTML/CSS Sub-themes
(63, 51, 'ACDW_HTMLCSS-0101', '1.1', 63, 11),
(64, 51, 'ACDW_HTMLCSS-0102', '1.2', 64, 11),
(65, 52, 'ACDW_HTMLCSS-0201', '2.1', 65, 11),
(66, 52, 'ACDW_HTMLCSS-0202', '2.2', 66, 11),
(67, 53, 'ACDW_HTMLCSS-0301', '3.1', 67, 11),
(68, 53, 'ACDW_HTMLCSS-0302', '3.2', 68, 11),
(69, 54, 'ACDW_HTMLCSS-0401', '4.1', 69, 11),
(70, 54, 'ACDW_HTMLCSS-0402', '4.2', 70, 11),
(71, 55, 'ACDW_HTMLCSS-0501', '5.1', 71, 11),
(72, 55, 'ACDW_HTMLCSS-0502', '5.2', 72, 11),
(73, 55, 'ACDW_HTMLCSS-0503', '5.3', 73, 11),
(74, 56, 'ACDW_HTMLCSS-0601', '6.1', 74, 11),
(75, 56, 'ACDW_HTMLCSS-0602', '6.2', 75, 11),
(76, 56, 'ACDW_HTMLCSS-0603', '6.3', 76, 11),
(77, 57, 'ACDW_HTMLCSS-0701', '7.1', 77, 11),
(78, 57, 'ACDW_HTMLCSS-0702', '7.2', 78, 11),
(79, 57, 'ACDW_HTMLCSS-0703', '7.3', 79, 11),
(80, 57, 'ACDW_HTMLCSS-0704', '7.4', 80, 11),
(81, 58, 'ACDW_HTMLCSS-0801', '8.1', 81, 11),
(82, 58, 'ACDW_HTMLCSS-0802', '8.2', 82, 11),
(83, 59, 'ACDW_HTMLCSS-0901', '9.1', 83, 11),
(84, 59, 'ACDW_HTMLCSS-0902', '9.2', 84, 11),
(85, 60, 'ACDW_HTMLCSS-1001', '10.1', 85, 11),
(86, 60, 'ACDW_HTMLCSS-1002', '10.2', 86, 11),
(87, 60, 'ACDW_HTMLCSS-1003', '10.3', 87, 11),
(88, 61, 'ACDW_HTMLCSS-1101', '11.1', 88, 11),
(89, 61, 'ACDW_HTMLCSS-1102', '11.2', 89, 11),
(90, 62, 'ACDW_HTMLCSS-1201', '12.1', 90, 11),

-- RI/JS Themes
(100, NULL, 'ACDW_RIJS-02', '2', 100, 13),

-- RI/JS Sub-themes
(101, 100, 'ACDW_RIJS-0201', '2.1', 101, 14),
(102, 100, 'ACDW_RIJS-0202', '2.2', 102, 14);

--
-- Content of table reference_test
--

/* Tests */
INSERT IGNORE INTO `reference_test` (`ID_REFERENCE_TEST`, `CD_REFERENCE_TEST`, `DESCRIPTION`, `LABEL`, `RANK`, `URL`, `ID_REFERENCE_LEVEL`, `ID_REFERENCE`, `ID_REFERENCE_INFO`, `ID_REFERENCE_DEPTH`) VALUES
-- HTML/CSS Recommendations
(1501, 'ACDW_HTMLCSS-010101', NULL, '1.1.1', 1501, NULL, NULL, 4, 63, 12),
(1502, 'ACDW_HTMLCSS-010102', NULL, '1.1.2', 1502, NULL, NULL, 4, 63, 12),
(1503, 'ACDW_HTMLCSS-010103', NULL, '1.1.3', 1503, NULL, NULL, 4, 63, 12),
(1504, 'ACDW_HTMLCSS-010201', NULL, '1.2.1', 1504, NULL, NULL, 4, 64, 12),
(1505, 'ACDW_HTMLCSS-010202', NULL, '1.2.2', 1505, NULL, NULL, 4, 64, 12),
(1506, 'ACDW_HTMLCSS-020101', NULL, '2.1.1', 1506, NULL, NULL, 4, 65, 12),
(1507, 'ACDW_HTMLCSS-020201', NULL, '2.2.1', 1507, NULL, NULL, 4, 66, 12),
(1508, 'ACDW_HTMLCSS-030101', NULL, '3.1.1', 1508, NULL, NULL, 4, 67, 12),
(1509, 'ACDW_HTMLCSS-030201', NULL, '3.2.1', 1509, NULL, NULL, 4, 68, 12),
(1510, 'ACDW_HTMLCSS-040101', NULL, '4.1.1', 1510, NULL, NULL, 4, 69, 12),
(1511, 'ACDW_HTMLCSS-040201', NULL, '4.2.1', 1511, NULL, NULL, 4, 70, 12),
(1512, 'ACDW_HTMLCSS-040202', NULL, '4.2.2', 1512, NULL, NULL, 4, 70, 12),
(1513, 'ACDW_HTMLCSS-050101', NULL, '5.1.1', 1513, NULL, NULL, 4, 71, 12),
(1514, 'ACDW_HTMLCSS-050201', NULL, '5.2.1', 1514, NULL, NULL, 4, 72, 12),
(1515, 'ACDW_HTMLCSS-050202', NULL, '5.2.2', 1515, NULL, NULL, 4, 72, 12),
(1516, 'ACDW_HTMLCSS-050301', NULL, '5.3.1', 1516, NULL, NULL, 4, 73, 12),
(1517, 'ACDW_HTMLCSS-050302', NULL, '5.3.2', 1517, NULL, NULL, 4, 73, 12),
(1518, 'ACDW_HTMLCSS-060101', NULL, '6.1.1', 1518, NULL, NULL, 4, 74, 12),
(1519, 'ACDW_HTMLCSS-060102', NULL, '6.1.2', 1519, NULL, NULL, 4, 74, 12),
(1520, 'ACDW_HTMLCSS-060201', NULL, '6.2.1', 1520, NULL, NULL, 4, 75, 12),
(1521, 'ACDW_HTMLCSS-060301', NULL, '6.3.1', 1521, NULL, NULL, 4, 76, 12),
(1522, 'ACDW_HTMLCSS-070101', NULL, '7.1.1', 1522, NULL, NULL, 4, 77, 12),
(1523, 'ACDW_HTMLCSS-070102', NULL, '7.1.2', 1523, NULL, NULL, 4, 77, 12),
(1524, 'ACDW_HTMLCSS-070201', NULL, '7.2.1', 1524, NULL, NULL, 4, 78, 12),
(1525, 'ACDW_HTMLCSS-070202', NULL, '7.2.2', 1525, NULL, NULL, 4, 78, 12),
(1526, 'ACDW_HTMLCSS-070301', NULL, '7.3.1', 1526, NULL, NULL, 4, 79, 12),
(1527, 'ACDW_HTMLCSS-070401', NULL, '7.4.1', 1527, NULL, NULL, 4, 80, 12),
(1528, 'ACDW_HTMLCSS-080101', NULL, '8.1.1', 1528, NULL, NULL, 4, 81, 12),
(1529, 'ACDW_HTMLCSS-080102', NULL, '8.1.2', 1529, NULL, NULL, 4, 81, 12),
(1530, 'ACDW_HTMLCSS-080103', NULL, '8.1.3', 1530, NULL, NULL, 4, 81, 12),
(1531, 'ACDW_HTMLCSS-080201', NULL, '8.2.1', 1531, NULL, NULL, 4, 82, 12),
(1532, 'ACDW_HTMLCSS-090101', NULL, '9.1.1', 1532, NULL, NULL, 4, 83, 12),
(1533, 'ACDW_HTMLCSS-090102', NULL, '9.1.2', 1533, NULL, NULL, 4, 83, 12),
(1534, 'ACDW_HTMLCSS-090201', NULL, '9.2.1', 1534, NULL, NULL, 4, 84, 12),
(1535, 'ACDW_HTMLCSS-090202', NULL, '9.2.2', 1535, NULL, NULL, 4, 84, 12),
(1536, 'ACDW_HTMLCSS-090203', NULL, '9.2.3', 1536, NULL, NULL, 4, 84, 12),
(1537, 'ACDW_HTMLCSS-090204', NULL, '9.2.4', 1537, NULL, NULL, 4, 84, 12),
(1538, 'ACDW_HTMLCSS-100101', NULL, '10.1.1', 1538, NULL, NULL, 4, 85, 12),
(1539, 'ACDW_HTMLCSS-100201', NULL, '10.2.1', 1539, NULL, NULL, 4, 86, 12),
(1540, 'ACDW_HTMLCSS-100202', NULL, '10.2.2', 1540, NULL, NULL, 4, 86, 12),
(1541, 'ACDW_HTMLCSS-100203', NULL, '10.2.3', 1541, NULL, NULL, 4, 86, 12),
(1542, 'ACDW_HTMLCSS-100301', NULL, '10.3.1', 1542, NULL, NULL, 4, 87, 12),
(1543, 'ACDW_HTMLCSS-100302', NULL, '10.3.2', 1543, NULL, NULL, 4, 87, 12),
(1544, 'ACDW_HTMLCSS-110101', NULL, '11.1.1', 1544, NULL, NULL, 4, 88, 12),
(1545, 'ACDW_HTMLCSS-110102', NULL, '11.1.2', 1545, NULL, NULL, 4, 88, 12),
(1546, 'ACDW_HTMLCSS-110201', NULL, '11.2.1', 1546, NULL, NULL, 4, 89, 12),
(1547, 'ACDW_HTMLCSS-120101', NULL, '12.1.1', 1547, NULL, NULL, 4, 90, 12),
(1548, 'ACDW_HTMLCSS-120102', NULL, '12.1.2', 1548, NULL, NULL, 4, 90, 12),

-- RI/JS Recommendations
(2000, 'ACDW_RIJS-020101', NULL, '2.1.1', 2000, NULL, NULL, 5, 101, 15),
(2001, 'ACDW_RIJS-020102', NULL, '2.1.2', 2001, NULL, NULL, 5, 101, 15),
(2002, 'ACDW_RIJS-020103', NULL, '2.1.3', 2002, NULL, NULL, 5, 101, 15),
(2003, 'ACDW_RIJS-020104', NULL, '2.1.4', 2003, NULL, NULL, 5, 101, 15),
(2004, 'ACDW_RIJS-020105', NULL, '2.1.5', 2004, NULL, NULL, 5, 101, 15),
(2005, 'ACDW_RIJS-020106', NULL, '2.1.6', 2005, NULL, NULL, 5, 101, 15),

(2006, 'ACDW_RIJS-020201', NULL, '2.2.1', 2006, NULL, NULL, 5, 102, 15),
(2007, 'ACDW_RIJS-020202', NULL, '2.2.2', 2007, NULL, NULL, 5, 102, 15),
(2008, 'ACDW_RIJS-020203', NULL, '2.2.3', 2008, NULL, NULL, 5, 102, 15),
(2009, 'ACDW_RIJS-020204', NULL, '2.2.4', 2009, NULL, NULL, 5, 102, 15);
    
SET FOREIGN_KEY_CHECKS=1;
