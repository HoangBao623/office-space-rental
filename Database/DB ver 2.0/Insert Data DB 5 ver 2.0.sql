use OfficeSpaceRental;

-- Insert dữ liệu vào bảng Service
INSERT INTO Service (serviceName, description) 
VALUES
	('Ghế Ergonomic', 'Cung cấp ghế công thái học chất lượng cao giúp giảm mỏi lưng khi làm việc'),
	('Bàn điều chỉnh', 'Bàn làm việc có thể điều chỉnh độ cao phù hợp với người dùng'),
	('Bàn đứng', 'Bàn làm việc đứng giúp thay đổi tư thế và tăng hiệu suất làm việc'),
	('Đèn bàn', 'Đèn bàn công thái học giúp giảm mỏi mắt khi làm việc'),
	('Máy chiếu', 'Máy chiếu hiện đại phục vụ các cuộc họp và thuyết trình'),
	('TV/Màn hình', 'Màn hình lớn phục vụ trình chiếu và họp trực tuyến'),
	('Bảng trắng', 'Bảng trắng tương tác phục vụ thảo luận nhóm và lên ý tưởng'),
	('Máy in/máy scan', 'Thiết bị in và scan chất lượng cao cho văn phòng'),
	('Máy photocopy', 'Dịch vụ sao chụp tài liệu nhanh chóng và tiện lợi'),
	('Tủ lưu trữ', 'Tủ lưu trữ tài liệu và đồ dùng văn phòng'),
	('Tủ khóa', 'Tủ khóa an toàn để bảo quản tài sản cá nhân'),
	('Máy phát điện dự phòng', 'Hệ thống điện dự phòng đảm bảo hoạt động liên tục khi mất điện'),
	('Dịch vụ vệ sinh', 'Dịch vụ vệ sinh văn phòng hàng ngày');
    

INSERT INTO Lessor_Service (lessorID, serviceID) 
VALUES 
	-- Lessor 4 có 3 dịch vụ
	(4, 1),
	(4, 5),
	(4, 9),

	-- Lessor 5 có 2 dịch vụ
	(5, 2),
	(5, 6),

	-- Lessor 6 có 4 dịch vụ
	(6, 3),
	(6, 7),
	(6, 10),
	(6, 13),

	-- Lessor 7 không có dịch vụ nào

	-- Lessor 8 có 5 dịch vụ
	(8, 1),
	(8, 4),
	(8, 8),
	(8, 11),
	(8, 12),

	-- Lessor 9 có 1 dịch vụ
	(9, 5),

	-- Lessor 10 có 3 dịch vụ
	(10, 2),
	(10, 9),
	(10, 13);
    
INSERT INTO Service_RentType (lessor_ServiceID, rentTypeID, price, deposit) 
VALUES
	-- Lessor 4, Service 1 (Ghế Ergonomic)
	(1, 1, 5000000, 1000000),  -- Yearly
	(1, 3, 500000, 100000),    -- Monthly
	(1, 5, 50000, 10000),      -- Daily

	-- Lessor 4, Service 5 (Máy chiếu)
	(2, 1, 10000000, 2000000), -- Yearly
	(2, 3, 1000000, 200000),   -- Monthly
	(2, 4, 300000, 60000),     -- Weekly

	-- Lessor 4, Service 9 (Máy photocopy)
	(3, 2, 2500000, 500000),   -- Seasonal
	(3, 3, 900000, 180000),    -- Monthly

	-- Lessor 5, Service 2 (Bàn điều chỉnh)
	(4, 1, 4500000, 900000),   -- Yearly
	(4, 3, 450000, 90000),     -- Monthly
	(4, 5, 45000, 9000),       -- Daily

	-- Lessor 5, Service 6 (TV/Màn hình)
	(5, 2, 3000000, 600000),   -- Seasonal
	(5, 3, 1200000, 240000),   -- Monthly

	-- Lessor 6, Service 3 (Bàn đứng)
	(6, 1, 5500000, 1100000),  -- Yearly
	(6, 3, 550000, 110000),    -- Monthly

	-- Lessor 6, Service 7 (Bảng trắng)
	(7, 1, 3000000, 600000),   -- Yearly
	(7, 3, 300000, 60000),     -- Monthly
	(7, 5, 30000, 6000),       -- Daily

	-- Lessor 6, Service 10 (Tủ lưu trữ)
	(8, 1, 2000000, 400000),   -- Yearly
	(8, 3, 200000, 40000),     -- Monthly

	-- Lessor 6, Service 13 (Dịch vụ vệ sinh)
	(9, 3, 1500000, 300000),   -- Monthly
	(9, 4, 400000, 80000),     -- Weekly
	(9, 5, 60000, 12000),      -- Daily

	-- Lessor 8, Service 1 (Ghế Ergonomic)
	(10, 1, 5200000, 1040000), -- Yearly
	(10, 3, 520000, 104000),   -- Monthly

	-- Lessor 8, Service 4 (Đèn bàn)
	(11, 1, 1800000, 360000),  -- Yearly
	(11, 3, 180000, 36000),    -- Monthly
	(11, 5, 18000, 3600),      -- Daily

	-- Lessor 8, Service 8 (Máy in/máy scan)
	(12, 1, 7000000, 1400000), -- Yearly
	(12, 2, 1800000, 360000),  -- Seasonal
	(12, 3, 700000, 140000),   -- Monthly

	-- Lessor 8, Service 11 (Tủ khóa)
	(13, 1, 2500000, 500000),  -- Yearly
	(13, 3, 250000, 50000),    -- Monthly

	-- Lessor 8, Service 12 (Máy phát điện dự phòng)
	(14, 1, 15000000, 3000000), -- Yearly
	(14, 3, 1500000, 300000),   -- Monthly

	-- Lessor 9, Service 5 (Máy chiếu)
	(15, 1, 9500000, 1900000),  -- Yearly
	(15, 3, 950000, 190000),    -- Monthly
	(15, 4, 280000, 56000),     -- Weekly
	(15, 5, 40000, 8000),       -- Daily

	-- Lessor 10, Service 2 (Bàn điều chỉnh)
	(16, 1, 4800000, 960000),   -- Yearly
	(16, 3, 480000, 96000),     -- Monthly

	-- Lessor 10, Service 9 (Máy photocopy)
	(17, 1, 8500000, 1700000),  -- Yearly
	(17, 3, 850000, 170000),    -- Monthly

	-- Lessor 10, Service 13 (Dịch vụ vệ sinh)
	(18, 3, 1600000, 320000),   -- Monthly
	(18, 4, 420000, 84000),     -- Weekly
	(18, 5, 65000, 13000);      -- Daily