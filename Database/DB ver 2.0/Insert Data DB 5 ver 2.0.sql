use OfficeSpaceRental;

-- Insert dữ liệu vào bảng Reservation
INSERT INTO Reservation (viewDate, note, status, salesID, lesseeID, officeSpaceID) VALUES
('2024-11-15 09:30:00', 'Cảm ơn đã hỗ trợ xem văn phòng, rất hài lòng', 'Completed', NULL, 10, 6),
('2024-11-20 15:45:00', 'Xin lỗi phải hủy vì có công tác đột xuất', 'Canceled', NULL, 4, 7),
('2025-01-05 11:00:00', 'Muốn xem sau Tết để bắt đầu năm mới', 'Pending', NULL, 7, 8),
('2025-01-10 13:15:00', 'Kế hoạch mở văn phòng mới năm 2025', 'Pending', NULL, 5, 9),
('2024-10-30 16:30:00', 'Cần văn phòng trước tháng 11, mong được hỗ trợ', 'Completed', NULL, 9, 10);

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
    

INSERT INTO LessorService (lessorID, serviceID) 
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
    
INSERT INTO ServiceRentType (lessorServiceID, rentTypeID, price, deposit) 
VALUES
	-- Lessor 4, Service 1 (Ghế Ergonomic) - lessorServiceID = 1
	(1, 1, 5000000, 3500000),  -- Yearly - Ghế ergonomic thị trường ~3.5tr
	(1, 2, 1300000, 3500000),  -- Seasonal
	(1, 3, 500000, 3500000),   -- Monthly
	(1, 4, 130000, 3500000),   -- Weekly
	(1, 5, 50000, 3500000),    -- Daily
	(1, 6, 8000, 3500000),     -- Hourly
	
	-- Lessor 4, Service 5 (Máy chiếu) - lessorServiceID = 2
	(2, 1, 10000000, 8000000), -- Yearly - Máy chiếu văn phòng ~8tr
	(2, 2, 2600000, 8000000),  -- Seasonal
	(2, 3, 1000000, 8000000),  -- Monthly
	(2, 4, 300000, 8000000),   -- Weekly
	(2, 5, 80000, 8000000),    -- Daily
	(2, 6, 12000, 8000000),    -- Hourly
	
	-- Lessor 4, Service 9 (Máy photocopy) - lessorServiceID = 3
	(3, 1, 8000000, 15000000), -- Yearly - Máy photocopy văn phòng ~15tr
	(3, 2, 2500000, 15000000), -- Seasonal
	(3, 3, 900000, 15000000),  -- Monthly
	(3, 4, 250000, 15000000),  -- Weekly
	(3, 5, 70000, 15000000),   -- Daily
	(3, 6, 10000, 15000000),   -- Hourly
	
	-- Lessor 5, Service 2 (Bàn điều chỉnh) - lessorServiceID = 4
	(4, 1, 4500000, 4000000),  -- Yearly - Bàn điều chỉnh độ cao ~4tr
	(4, 2, 1200000, 4000000),  -- Seasonal
	(4, 3, 450000, 4000000),   -- Monthly
	(4, 4, 120000, 4000000),   -- Weekly
	(4, 5, 45000, 4000000),    -- Daily
	(4, 6, 7000, 4000000),     -- Hourly
	
	-- Lessor 5, Service 6 (TV/Màn hình) - lessorServiceID = 5
	(5, 1, 7000000, 12000000), -- Yearly - TV/Màn hình lớn văn phòng ~12tr
	(5, 2, 3000000, 12000000), -- Seasonal
	(5, 3, 1200000, 12000000), -- Monthly
	(5, 4, 350000, 12000000),  -- Weekly
	(5, 5, 90000, 12000000),   -- Daily
	(5, 6, 15000, 12000000),   -- Hourly
	
	-- Lessor 6, Service 3 (Bàn đứng) - lessorServiceID = 6
	(6, 1, 5500000, 5000000),  -- Yearly - Bàn đứng standing desk ~5tr
	(6, 2, 1400000, 5000000),  -- Seasonal
	(6, 3, 550000, 5000000),   -- Monthly
	(6, 4, 150000, 5000000),   -- Weekly
	(6, 5, 55000, 5000000),    -- Daily
	(6, 6, 9000, 5000000),     -- Hourly
	
	-- Lessor 6, Service 7 (Bảng trắng) - lessorServiceID = 7
	(7, 1, 3000000, 2000000),  -- Yearly - Bảng trắng lớn ~2tr
	(7, 2, 800000, 2000000),   -- Seasonal
	(7, 3, 300000, 2000000),   -- Monthly
	(7, 4, 80000, 2000000),    -- Weekly
	(7, 5, 30000, 2000000),    -- Daily
	(7, 6, 5000, 2000000),     -- Hourly
	
	-- Lessor 6, Service 10 (Tủ lưu trữ) - lessorServiceID = 8
	(8, 1, 2000000, 3000000),  -- Yearly - Tủ lưu trữ văn phòng ~3tr
	(8, 2, 520000, 3000000),   -- Seasonal
	(8, 3, 200000, 3000000),   -- Monthly
	(8, 4, 55000, 3000000),    -- Weekly
	(8, 5, 20000, 3000000),    -- Daily
	(8, 6, 3500, 3000000),     -- Hourly
	
	-- Lessor 6, Service 13 (Dịch vụ vệ sinh) - lessorServiceID = 9
	(9, 1, 18000000, 5000000), -- Yearly - Thiết bị vệ sinh chuyên nghiệp ~5tr
	(9, 2, 4700000, 5000000),  -- Seasonal
	(9, 3, 1500000, 5000000),  -- Monthly
	(9, 4, 400000, 5000000),   -- Weekly
	(9, 5, 60000, 5000000),    -- Daily
	(9, 6, 10000, 5000000),    -- Hourly
	
	-- Lessor 8, Service 1 (Ghế Ergonomic) - lessorServiceID = 10
	(10, 1, 5200000, 3500000), -- Yearly - Ghế ergonomic thị trường ~3.5tr
	(10, 2, 1350000, 3500000), -- Seasonal
	(10, 3, 520000, 3500000),  -- Monthly
	(10, 4, 140000, 3500000),  -- Weekly
	(10, 5, 52000, 3500000),   -- Daily
	(10, 6, 8500, 3500000),    -- Hourly
	
	-- Lessor 8, Service 4 (Đèn bàn) - lessorServiceID = 11
	(11, 1, 1800000, 800000),  -- Yearly - Đèn bàn LED cao cấp ~800k
	(11, 2, 470000, 800000),   -- Seasonal
	(11, 3, 180000, 800000),   -- Monthly
	(11, 4, 50000, 800000),    -- Weekly
	(11, 5, 18000, 800000),    -- Daily
	(11, 6, 3000, 800000),     -- Hourly
	
	-- Lessor 8, Service 8 (Máy in/máy scan) - lessorServiceID = 12
	(12, 1, 7000000, 10000000), -- Yearly - Máy in scan đa năng ~10tr
	(12, 2, 1800000, 10000000), -- Seasonal
	(12, 3, 700000, 10000000),  -- Monthly
	(12, 4, 190000, 10000000),  -- Weekly
	(12, 5, 70000, 10000000),   -- Daily
	(12, 6, 12000, 10000000),   -- Hourly
	
	-- Lessor 8, Service 11 (Tủ khóa) - lessorServiceID = 13
	(13, 1, 2500000, 6000000), -- Yearly - Tủ khóa điện tử ~6tr
	(13, 2, 650000, 6000000),  -- Seasonal
	(13, 3, 250000, 6000000),  -- Monthly
	(13, 4, 70000, 6000000),   -- Weekly
	(13, 5, 25000, 6000000),   -- Daily
	(13, 6, 4000, 6000000),    -- Hourly
	
	-- Lessor 8, Service 12 (Máy phát điện dự phòng) - lessorServiceID = 14
	(14, 1, 15000000, 25000000), -- Yearly - Máy phát điện công nghiệp ~25tr
	(14, 2, 3900000, 25000000),  -- Seasonal
	(14, 3, 1500000, 25000000),  -- Monthly
	(14, 4, 400000, 25000000),   -- Weekly
	(14, 5, 150000, 25000000),   -- Daily
	(14, 6, 25000, 25000000),    -- Hourly
	
	-- Lessor 9, Service 5 (Máy chiếu) - lessorServiceID = 15
	(15, 1, 9500000, 8000000),  -- Yearly - Máy chiếu văn phòng ~8tr
	(15, 2, 2470000, 8000000),  -- Seasonal
	(15, 3, 950000, 8000000),   -- Monthly
	(15, 4, 280000, 8000000),   -- Weekly
	(15, 5, 40000, 8000000),    -- Daily
	(15, 6, 6500, 8000000),     -- Hourly
	
	-- Lessor 10, Service 2 (Bàn điều chỉnh) - lessorServiceID = 16
	(16, 1, 4800000, 4000000),  -- Yearly - Bàn điều chỉnh độ cao ~4tr
	(16, 2, 1250000, 4000000),  -- Seasonal
	(16, 3, 480000, 4000000),   -- Monthly
	(16, 4, 130000, 4000000),   -- Weekly
	(16, 5, 48000, 4000000),    -- Daily
	(16, 6, 8000, 4000000),     -- Hourly
	
	-- Lessor 10, Service 9 (Máy photocopy) - lessorServiceID = 17
	(17, 1, 8500000, 15000000), -- Yearly - Máy photocopy văn phòng ~15tr
	(17, 2, 2210000, 15000000), -- Seasonal
	(17, 3, 850000, 15000000),  -- Monthly
	(17, 4, 230000, 15000000),  -- Weekly
	(17, 5, 85000, 15000000),   -- Daily
	(17, 6, 14000, 15000000),   -- Hourly
	
	-- Lessor 10, Service 13 (Dịch vụ vệ sinh) - lessorServiceID = 18
	(18, 1, 19200000, 5000000), -- Yearly - Thiết bị vệ sinh chuyên nghiệp ~5tr
	(18, 2, 5000000, 5000000),  -- Seasonal
	(18, 3, 1600000, 5000000),  -- Monthly
	(18, 4, 420000, 5000000),   -- Weekly
	(18, 5, 65000, 5000000),    -- Daily
	(18, 6, 11000, 5000000);    -- Hourly