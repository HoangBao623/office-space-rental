use OfficeSpaceRental;

INSERT INTO RentType (rentTypeName, description)
VALUES
	('Yearly', 'Thuê theo năm'),
    ('Seasonal', 'Thuê theo quý'),
    ('Monthly', 'Thuê theo tháng'),
    ('Weekly', 'Thuê theo tuần'),
    ('Daily', 'Thuê theo ngày'),
    ('Hourly', 'Thuê theo giờ');
    
INSERT INTO OS_RentType (officeSpaceID, rentTypeID, price, deposit)
VALUES
	-- Traditional Office (TypeOfficeID: 1) - Thường thuê dài hạn
	-- Elite Executive Suite (75m2)
	(1, 1, 180000000, 30000000),  -- Yearly
	(1, 2, 50000000, 50000000),   -- Seasonal
	(1, 3, 18000000, 18000000),   -- Monthly

	-- Co-working Space (TypeOfficeID: 2) - Linh hoạt các khoảng thời gian
	-- Azure Coworking Hub (40m2)
	(2, 2, 26000000, 26000000),   -- Seasonal
	(2, 3, 9600000, 9600000),     -- Monthly
	(2, 4, 2600000, 2600000),     -- Weekly
	(2, 5, 450000, 450000),       -- Daily
	(2, 6, 70000, 70000),         -- Hourly

	-- Shared Office (TypeOfficeID: 3) - Thường thuê trung và ngắn hạn
	-- Haven Business Center (250m2)
	(3, 2, 148000000, 148000000), -- Seasonal
	(3, 3, 55000000, 55000000),   -- Monthly
	(3, 4, 14800000, 14800000),   -- Weekly

	-- Traditional Office (TypeOfficeID: 1)
	-- Grandiose Corporate Office (120m2)
	(4, 1, 288000000, 48000000),  -- Yearly
	(4, 2, 78000000, 78000000),   -- Seasonal
	(4, 3, 28800000, 28800000),   -- Monthly

	-- Smart Office (TypeOfficeID: 5) - Linh hoạt mọi thời gian
	-- Pinnacle Smart Workspace (30m2)
	(5, 1, 79200000, 13200000),   -- Yearly
	(5, 2, 21600000, 21600000),   -- Seasonal
	(5, 3, 7920000, 7920000),     -- Monthly
	(5, 4, 2160000, 2160000),     -- Weekly
	(5, 5, 380000, 380000),       -- Daily
	(5, 6, 60000, 60000),         -- Hourly

	-- Traditional Office (TypeOfficeID: 1)
	-- Willow Creek Professional Space (60m2)
	(6, 1, 144000000, 24000000),  -- Yearly
	(6, 2, 39000000, 39000000),   -- Seasonal
	(6, 3, 14400000, 14400000),   -- Monthly

	-- Co-working Space (TypeOfficeID: 2)
	-- Ocean Breeze Creative Studio (45m2)
	(7, 3, 10800000, 10800000),   -- Monthly
	(7, 4, 2925000, 2925000),     -- Weekly
	(7, 5, 500000, 500000),       -- Daily
	(7, 6, 75000, 75000),         -- Hourly

	-- Biophilic Office (TypeOfficeID: 4) - Thường thuê dài và trung hạn
	-- Forest Retreat Eco Office (180m2)
	(8, 1, 432000000, 72000000),  -- Yearly
	(8, 2, 117000000, 117000000), -- Seasonal
	(8, 3, 43200000, 43200000),   -- Monthly

	-- Shared Office (TypeOfficeID: 3)
	-- Mountain View Business Suite (100m2)
	(9, 2, 59500000, 59500000),   -- Seasonal
	(9, 3, 22000000, 22000000),   -- Monthly
	(9, 4, 5950000, 5950000),     -- Weekly

	-- Smart Office (TypeOfficeID: 5)
	-- Sunnyside Tech Hub (25m2)
	(10, 2, 18000000, 18000000),  -- Seasonal
	(10, 3, 6600000, 6600000),    -- Monthly
	(10, 4, 1800000, 1800000),    -- Weekly
	(10, 5, 320000, 320000),      -- Daily
	(10, 6, 50000, 50000),        -- Hourly

	-- Co-working Space (TypeOfficeID: 2)
	-- Wanderlust Collaborative Space (80m2)
	(11, 3, 19200000, 19200000),  -- Monthly
	(11, 4, 5200000, 5200000),    -- Weekly
	(11, 5, 900000, 900000),      -- Daily
	(11, 6, 130000, 130000),      -- Hourly

	-- Shared Office (TypeOfficeID: 3)
	-- Nomad Flexible Office (35m2)
	(12, 3, 7700000, 7700000),    -- Monthly
	(12, 4, 2082500, 2082500),    -- Weekly
	(12, 5, 350000, 350000),      -- Daily

	-- Smart Office (TypeOfficeID: 5)
	-- Eccentric Innovation Center (200m2)
	(13, 1, 528000000, 88000000), -- Yearly
	(13, 2, 144000000, 144000000),-- Seasonal
	(13, 3, 52800000, 52800000),  -- Monthly
	(13, 4, 14400000, 14400000),  -- Weekly
	(13, 5, 2500000, 2500000),    -- Daily

	-- Biophilic Office (TypeOfficeID: 4)
	-- Bohemian Creative Loft (150m2)
	(14, 1, 360000000, 60000000), -- Yearly
	(14, 2, 97500000, 97500000),  -- Seasonal
	(14, 3, 36000000, 36000000),  -- Monthly

	-- Smart Office (TypeOfficeID: 5)
	-- Enigma Smart Office (20m2)
	(15, 3, 5280000, 5280000),    -- Monthly
	(15, 4, 1440000, 1440000),    -- Weekly
	(15, 5, 250000, 250000),      -- Daily
	(15, 6, 45000, 45000),        -- Hourly

	-- Traditional Office (TypeOfficeID: 1)
	-- Sunrise Professional Center (150m2)
	(16, 1, 360000000, 60000000), -- Yearly
	(16, 2, 97500000, 97500000),  -- Seasonal
	(16, 3, 36000000, 36000000),  -- Monthly

	-- Co-working Space (TypeOfficeID: 2)
	-- Urban Coworking Community (60m2)
	(17, 3, 14400000, 14400000),  -- Monthly
	(17, 4, 3900000, 3900000),    -- Weekly
	(17, 5, 650000, 650000),      -- Daily
	(17, 6, 100000, 100000),      -- Hourly

	-- Traditional Office (TypeOfficeID: 1)
	-- Luxe Executive Offices (300m2)
	(18, 1, 720000000, 120000000),-- Yearly
	(18, 2, 195000000, 195000000),-- Seasonal
	(18, 3, 72000000, 72000000),  -- Monthly

	-- Shared Office (TypeOfficeID: 3)
	-- Skyline Shared Workspace (50m2)
	(19, 2, 29750000, 29750000),  -- Seasonal
	(19, 3, 11000000, 11000000),  -- Monthly
	(19, 4, 2975000, 2975000),    -- Weekly
	(19, 5, 500000, 500000),      -- Daily

	-- Biophilic Office (TypeOfficeID: 4)
	-- Sapphire Biophilic Office (35m2)
	(20, 1, 84000000, 14000000),  -- Yearly
	(20, 2, 22750000, 22750000),  -- Seasonal
	(20, 3, 8400000, 8400000),    -- Monthly

	-- Traditional Office (TypeOfficeID: 1)
	-- Crescent Corporate Headquarters (80m2)
	(21, 1, 192000000, 32000000), -- Yearly
	(21, 2, 52000000, 52000000),  -- Seasonal
	(21, 3, 19200000, 19200000),  -- Monthly

	-- Co-working Space (TypeOfficeID: 2)
	-- Emerald Collaborative Space (45m2)
	(22, 3, 10800000, 10800000),  -- Monthly
	(22, 4, 2925000, 2925000),    -- Weekly
	(22, 5, 500000, 500000),      -- Daily
	(22, 6, 75000, 75000),        -- Hourly

	-- Shared Office (TypeOfficeID: 3)
	-- Lotus Shared Office Solutions (120m2)
	(23, 2, 71400000, 71400000),  -- Seasonal
	(23, 3, 26400000, 26400000),  -- Monthly
	(23, 4, 7140000, 7140000),    -- Weekly
	(23, 5, 1200000, 1200000),    -- Daily

	-- Biophilic Office (TypeOfficeID: 4)
	-- Serene Green Office (250m2)
	(24, 1, 600000000, 100000000),-- Yearly
	(24, 2, 162500000, 162500000),-- Seasonal
	(24, 3, 60000000, 60000000),  -- Monthly

	-- Smart Office (TypeOfficeID: 5)
	-- Radiant Tech Office (30m2)
	(25, 2, 21600000, 21600000),  -- Seasonal
	(25, 3, 7920000, 7920000),    -- Monthly
	(25, 4, 2160000, 2160000),    -- Weekly
	(25, 5, 380000, 380000),      -- Daily
	(25, 6, 60000, 60000),        -- Hourly

	-- Traditional Office (TypeOfficeID: 1)
	-- Wave Business Center (90m2)
	(26, 1, 216000000, 36000000), -- Yearly
	(26, 2, 58500000, 58500000),  -- Seasonal
	(26, 3, 21600000, 21600000),  -- Monthly

	-- Smart Office (TypeOfficeID: 5)
	-- Ocean Pearl Innovation Hub (55m2)
	(27, 2, 39600000, 39600000),  -- Seasonal
	(27, 3, 14520000, 14520000),  -- Monthly
	(27, 4, 3960000, 3960000),    -- Weekly
	(27, 5, 700000, 700000),      -- Daily
	(27, 6, 110000, 110000),      -- Hourly

	-- Traditional Office (TypeOfficeID: 1)
	-- Golden Sands Corporate Suites (230m2)
	(28, 1, 552000000, 92000000), -- Yearly
	(28, 2, 149500000, 149500000),-- Seasonal
	(28, 3, 55200000, 55200000),  -- Monthly

	-- Co-working Space (TypeOfficeID: 2)
	-- Horizon Coworking Space (140m2)
	(29, 3, 33600000, 33600000),  -- Monthly
	(29, 4, 9100000, 9100000),    -- Weekly
	(29, 5, 1500000, 1500000),    -- Daily
	(29, 6, 230000, 230000),      -- Hourly

	-- Shared Office (TypeOfficeID: 3)
	-- Velvet Shared Office Center (25m2)
	(30, 3, 5500000, 5500000),    -- Monthly
	(30, 4, 1487500, 1487500),    -- Weekly
	(30, 5, 250000, 250000),      -- Daily
	(30, 6, 45000, 45000),        -- Hourly

	-- Elysian Executive Corner (85m2, TypeOfficeID: 1 - Traditional Office)
	(31, 1, 204000000, 34000000),  -- Yearly
	(31, 2, 55250000, 55250000),   -- Seasonal
	(31, 3, 20400000, 20400000),   -- Monthly

	-- Elysian Coworking Zone (120m2, TypeOfficeID: 2 - Co-working Space)
	(32, 3, 28800000, 28800000),   -- Monthly
	(32, 4, 7800000, 7800000),     -- Weekly
	(32, 5, 1300000, 1300000),     -- Daily
	(32, 6, 190000, 190000),       -- Hourly

	-- Elysian Smart Conference Center (60m2, TypeOfficeID: 5 - Smart Office)
	(33, 3, 15840000, 15840000),   -- Monthly
	(33, 4, 4320000, 4320000),     -- Weekly
	(33, 5, 750000, 750000),       -- Daily
	(33, 6, 110000, 110000),       -- Hourly

	-- Azure Private Offices (50m2, TypeOfficeID: 3 - Shared Office)
	(34, 2, 29750000, 29750000),   -- Seasonal
	(34, 3, 11000000, 11000000),   -- Monthly
	(34, 4, 2975000, 2975000),     -- Weekly

	-- Azure Biophilic Workspace (90m2, TypeOfficeID: 4 - Biophilic Office)
	(35, 1, 216000000, 36000000),  -- Yearly
	(35, 2, 58500000, 58500000),   -- Seasonal
	(35, 3, 21600000, 21600000),   -- Monthly

	-- Haven Green Office Suites (150m2, TypeOfficeID: 4 - Biophilic Office)
	(36, 1, 360000000, 60000000),  -- Yearly
	(36, 2, 97500000, 97500000),   -- Seasonal
	(36, 3, 36000000, 36000000),   -- Monthly

	-- Haven Tech Innovation Lab (100m2, TypeOfficeID: 5 - Smart Office)
	(37, 3, 26400000, 26400000),   -- Monthly
	(37, 4, 7200000, 7200000),     -- Weekly
	(37, 5, 1250000, 1250000),     -- Daily
	(37, 6, 180000, 180000),       -- Hourly

	-- Haven Traditional Corner Offices (120m2, TypeOfficeID: 1 - Traditional Office)
	(38, 1, 288000000, 48000000),  -- Yearly
	(38, 2, 78000000, 78000000),   -- Seasonal
	(38, 3, 28800000, 28800000),   -- Monthly

	-- Grandiose Coworking Lounge (150m2, TypeOfficeID: 2 - Co-working Space)
	(39, 3, 36000000, 36000000),   -- Monthly
	(39, 4, 9750000, 9750000),     -- Weekly
	(39, 5, 1700000, 1700000),     -- Daily
	(39, 6, 250000, 250000),       -- Hourly

	-- Grandiose Shared Meeting Rooms (80m2, TypeOfficeID: 3 - Shared Office)
	(40, 2, 47600000, 47600000),   -- Seasonal
	(40, 3, 17600000, 17600000),   -- Monthly
	(40, 4, 4760000, 4760000),     -- Weekly

	-- Pinnacle Eco-Friendly Offices (110m2, TypeOfficeID: 4 - Biophilic Office)
	(41, 1, 264000000, 44000000),  -- Yearly
	(41, 2, 71500000, 71500000),   -- Seasonal
	(41, 3, 26400000, 26400000),   -- Monthly

	-- Pinnacle Executive Boardroom (60m2, TypeOfficeID: 1 - Traditional Office)
	(42, 1, 144000000, 24000000),  -- Yearly
	(42, 2, 39000000, 39000000),   -- Seasonal
	(42, 3, 14400000, 14400000),   -- Monthly

	-- Willow Creek Innovation Hub (90m2, TypeOfficeID: 5 - Smart Office)
	(43, 3, 23760000, 23760000),   -- Monthly
	(43, 4, 6480000, 6480000),     -- Weekly
	(43, 5, 1100000, 1100000),     -- Daily
	(43, 6, 160000, 160000),       -- Hourly

	-- Willow Creek Shared Studio (70m2, TypeOfficeID: 3 - Shared Office)
	(44, 2, 41650000, 41650000),   -- Seasonal
	(44, 3, 15400000, 15400000),   -- Monthly
	(44, 4, 4165000, 4165000),     -- Weekly

	-- Ocean Breeze Executive Suite (85m2, TypeOfficeID: 1 - Traditional Office)
	(45, 1, 204000000, 34000000),  -- Yearly
	(45, 2, 55250000, 55250000),   -- Seasonal
	(45, 3, 20400000, 20400000),   -- Monthly

	-- Ocean Breeze Green Office (100m2, TypeOfficeID: 4 - Biophilic Office)
	(46, 1, 240000000, 40000000),  -- Yearly
	(46, 2, 65000000, 65000000),   -- Seasonal
	(46, 3, 24000000, 24000000),   -- Monthly

	-- Forest Tech Incubator (120m2, TypeOfficeID: 5 - Smart Office)
	(47, 3, 31680000, 31680000),   -- Monthly
	(47, 4, 8640000, 8640000),     -- Weekly
	(47, 5, 1500000, 1500000),     -- Daily
	(47, 6, 220000, 220000),       -- Hourly

	-- Mountain Collaborative Commons (130m2, TypeOfficeID: 2 - Co-working Space)
	(48, 3, 31200000, 31200000),   -- Monthly
	(48, 4, 8450000, 8450000),     -- Weekly
	(48, 5, 1450000, 1450000),     -- Daily
	(48, 6, 210000, 210000),       -- Hourly

	-- Sunnyside Private Offices (75m2, TypeOfficeID: 3 - Shared Office)
	(49, 2, 44625000, 44625000),   -- Seasonal
	(49, 3, 16500000, 16500000),   -- Monthly
	(49, 4, 4462500, 4462500),     -- Weekly

	-- Wanderlust Green Meeting Center (65m2, TypeOfficeID: 4 - Biophilic Office)
	(50, 1, 156000000, 26000000),  -- Yearly
	(50, 2, 42250000, 42250000),   -- Seasonal
	(50, 3, 15600000, 15600000),   -- Monthly

	-- Nomad Executive Boardroom (70m2, TypeOfficeID: 1 - Traditional Office)
	(51, 1, 168000000, 28000000),  -- Yearly
	(51, 2, 45500000, 45500000),   -- Seasonal
	(51, 3, 16800000, 16800000),   -- Monthly

	-- Eccentric Coworking Community (160m2, TypeOfficeID: 2 - Co-working Space)
	(52, 3, 38400000, 38400000),   -- Monthly
	(52, 4, 10400000, 10400000),   -- Weekly
	(52, 5, 1800000, 1800000),     -- Daily
	(52, 6, 260000, 260000),       -- Hourly

	-- Bohemian Shared Office Suites (95m2, TypeOfficeID: 3 - Shared Office)
	(53, 2, 56525000, 56525000),   -- Seasonal
	(53, 3, 20900000, 20900000),   -- Monthly
	(53, 4, 5652500, 5652500),     -- Weekly

	-- Enigma Green Workspace (45m2, TypeOfficeID: 4 - Biophilic Office)
	(54, 1, 108000000, 18000000),  -- Yearly
	(54, 2, 29250000, 29250000),   -- Seasonal
	(54, 3, 10800000, 10800000),   -- Monthly

	-- Sunrise Tech Laboratory (80m2, TypeOfficeID: 5 - Smart Office)
	(55, 3, 21120000, 21120000),   -- Monthly
	(55, 4, 5760000, 5760000),     -- Weekly
	(55, 5, 1000000, 1000000),     -- Daily
	(55, 6, 150000, 150000),       -- Hourly

	-- Urban Traditional Offices (110m2, TypeOfficeID: 1 - Traditional Office)
	(56, 1, 264000000, 44000000),  -- Yearly
	(56, 2, 71500000, 71500000),   -- Seasonal
	(56, 3, 26400000, 26400000),   -- Monthly

	-- Luxe Collaborative Space (150m2, TypeOfficeID: 2 - Co-working Space)
	(57, 3, 36000000, 36000000),   -- Monthly
	(57, 4, 9750000, 9750000),     -- Weekly
	(57, 5, 1700000, 1700000),     -- Daily
	(57, 6, 250000, 250000),       -- Hourly

	-- Skyline Eco-Friendly Suite (85m2, TypeOfficeID: 4 - Biophilic Office)
	(58, 1, 204000000, 34000000),  -- Yearly
	(58, 2, 55250000, 55250000),   -- Seasonal
	(58, 3, 20400000, 20400000),   -- Monthly

	-- Sapphire Smart Conference Center (65m2, TypeOfficeID: 5 - Smart Office)
	(59, 3, 17160000, 17160000),   -- Monthly
	(59, 4, 4680000, 4680000),     -- Weekly
	(59, 5, 800000, 800000),       -- Daily
	(59, 6, 120000, 120000),       -- Hourly

	-- Crescent Shared Workstations (100m2, TypeOfficeID: 3 - Shared Office)
	(60, 2, 59500000, 59500000),   -- Seasonal
	(60, 3, 22000000, 22000000),   -- Monthly
	(60, 4, 5950000, 5950000);     -- Weekly