use OfficeSpaceRental;

INSERT INTO Role (roleName)
VALUES 
	('Manager'),
	('Sales'),
	('Lessor'),
	('Lessee');

INSERT INTO User (username, password, email, lastName, firstName, gender, dOB, address, phoneNumber)
VALUES
	('nguyenvananh', '123', 'nguyenvananh@example.com', 'Nguyễn Văn', 'Anh', 'Male', '1990-01-21', '123 Đường Mã Lò, Quận Bình Tân, TP.HCM', '0912345678'),
    ('tranthimai', '123', 'tranthimai@example.com', 'Trần Thị', 'Mai', 'Female', '1991-02-14', '456 Đường Lê Lợi, Quận 2, TP.HCM', '0912345679'),
    ('lengochung', '123', 'lengochung@example.com', 'Lê Ngọc', 'Hùng', 'Male', '1992-03-23', '789 Đường Trần Quốc Toản, Quận 3, TP.HCM', '0912345680'),
    ('hoangngoclinh', '123', 'hoangngoclinh@example.com', 'Hoàng Ngọc', 'Linh', 'Female', NULL, '1011 Đường Điện Biên Phủ, Quận 4, TP.HCM', '0912345681'),
    ('phamminhduc', '123', 'phamminhduc@example.com', 'Phạm Minh', 'Đức', 'Male', NULL, '1213 Đường Pasteur, Quận 5, TP.HCM', '0912345682'),
    ('buithithu', '123', 'buithithu@example.com', 'Bùi Thị', 'Thu', 'Female', NULL, '1415 Đường Trần Hưng Đạo, Quận 6, TP.HCM', '0912345683'),
    ('tieuanhtuan', '123', 'tieuanhtuan@example.com', 'Tiêu Anh', 'Tuấn', 'Male', NULL, '1617 Đường Nguyễn Thiện Thuật, Quận 7, TP.HCM', '0912345684'),
    ('duongngocchau', '123', 'duongngocchau@example.com', 'Dương Ngọc', 'Châu', 'Female', NULL, '1819 Đường Hoàng Diệu, Quận 8, TP.HCM', '0912345685'),
    ('dovankien', '123', 'dovankien@example.com', 'Đỗ Văn', 'Kiên', 'Male', NULL, '2021 Đường Nguyễn Văn Cừ, Quận 9, TP.HCM', '0912345686'),
    ('vuhyphuong', '123', 'vuhyphuong@example.com', 'Vũ Hỷ', 'Phương', 'Female', NULL, '2223 Đường Nguyễn Hữu Tháp, Quận 10, TP.HCM', '0912345687');
    
-- Role Admin
INSERT INTO DetailRole (userID, roleID) 
VALUES 
	(1, 1);

-- Role Sales
INSERT INTO DetailRole (userID, roleID) 
VALUES 
	(2, 2),
	(3, 2);

-- Role Lessor và Lessee
INSERT INTO DetailRole (userID, roleID) 
VALUES 
	(4, 3), (4, 4),
	(5, 3), (5, 4),
	(6, 3), (6, 4),
	(7, 3), (7, 4),
	(8, 3), (8, 4),
	(9, 3), (9, 4),
	(10, 3), (10, 4);

INSERT INTO Building (buildingName, street, ward_commune, district, city_province)
VALUES
    ('The Elysian', '46 Nguyễn Huệ', 'Bến Nghé', 'Quận 1', 'Hồ Chí Minh'),
    ('Azure Skies', '123 Thảo Điền', 'An Thú', 'Quận 2', 'Hồ Chí Minh'),
    ('The Haven', '225 Nguyễn Văn Linh', 'Tân Phú', 'Quận 7', 'Hồ Chí Minh'),
    ('The Grandiose', '79 Nguyễn Thị Minh Khai', '6', 'Quận 3', 'Hồ Chí Minh'),
    ('The Pinnacle', '88 Phạm Ngọc Thạch', 'Phú Nhuận', 'Quận 5', 'Hồ Chí Minh'),
    ('The Willow Creek', 'Phố Hàng Trọng', 'Hàng Trọng', 'Hoàn Kiếm', 'Hà Nội'),
    ('Ocean Breeze', 'Hồ Trúc Bạch', 'Trúc Bạch', 'Tây Hồ', 'Hà Nội'),
    ('The Forest Retreat', '1162 Nguyễn Du', 'Đống Đa', 'Đống Đa', 'Hà Nội'),
    ('Mountain View', '80 Võ Chí Công', 'Cửa Lò', 'Bắc Từ Liêm', 'Hà Nội'),
    ('The Sunnyside', '638 Trường Chinh', 'Thanh Xuân Trung', 'Thanh Xuân', 'Hà Nội'),
    ('The Wanderlust', '980 Võ Nguyên Giáp', 'Khai Hương', 'Ngũ Hành Sơn', 'Đà Nẵng'),
    ('The Nomad', '76 Trường Sa', 'An Hải Bắc', 'Sơn Trà', 'Đà Nẵng'),
    ('The Eccentric', '90 Hoàng Hoa Thắm', 'Thanh Khê Tây', 'Thanh Khê', 'Đà Nẵng'),
    ('The Bohemian', '11 Nguyễn Văn Linh', 'Liên Chiều', 'Liên Chiều', 'Đà Nẵng'),
    ('The Enigma', '912 Nguyễn Văn Linh', 'Cẩm Lệ', 'Cẩm Lệ', 'Đà Nẵng'),
	('Sunrise', '12 Mai Chí Thọ', 'An Phú', 'Quận 2', 'Hồ Chí Minh'),
    ('The Urban', '28 Lê Văn Sỹ', 'Phường 14', 'Quận Phú Nhuận', 'Hồ Chí Minh'),
    ('The Luxe', '15 Nguyễn Văn Cừ', 'Cầu Kho', 'Quận 1', 'Hồ Chí Minh'),
    ('The Skyline', '102 Nguyễn Tri Phương', 'Phường 9', 'Quận 10', 'Hồ Chí Minh'),
    ('The Sapphire', '7 Điện Biên Phủ', 'Phường 17', 'Quận Bình Thạnh', 'Hồ Chí Minh'),
    ('The Crescent', '18 Lý Thường Kiệt', 'Tràng Tiền', 'Hoàn Kiếm', 'Hà Nội'),
    ('The Emerald', '123 Xuân Diệu', 'Quảng An', 'Tây Hồ', 'Hà Nội'),
    ('The Lotus', '56 Cát Linh', 'Cát Linh', 'Đống Đa', 'Hà Nội'),
    ('The Serene', '202 Láng Hạ', 'Láng Thượng', 'Đống Đa', 'Hà Nội'),
    ('The Radiant', '5 Nguyễn Văn Huyên', 'Nghĩa Đô', 'Cầu Giấy', 'Hà Nội'),
    ('The Wave', '36 Bạch Đằng', 'Hải Châu 1', 'Hải Châu', 'Đà Nẵng'),
    ('The Ocean Pearl', '45 Trần Hưng Đạo', 'Nại Hiên Đông', 'Sơn Trà', 'Đà Nẵng'),
    ('The Golden Sands', '89 Nguyễn Tất Thành', 'Xuân Hà', 'Thanh Khê', 'Đà Nẵng'),
    ('The Horizon', '102 Ngũ Hành Sơn', 'Mỹ An', 'Ngũ Hành Sơn', 'Đà Nẵng'),
    ('The Velvet', '60 Trần Phú', 'Thạch Thang', 'Hải Châu', 'Đà Nẵng');

-- Insert Traditional Office
INSERT INTO TypeOffice (type, description) 
VALUES 
	('Traditional Office', 'Văn phòng có thiết kế cố định, sử dụng lâu dài, thường được thuê hoặc sở hữu riêng với các phòng làm việc và tiện nghi cơ bản.'),
	('Co-working Space', 'Không gian làm việc chung nơi các doanh nghiệp chia sẻ tiện nghi và dịch vụ cần thiết, tạo môi trường làm việc cộng đồng.'),
	('Shared Office', 'Mô hình văn phòng có không gian làm việc riêng biệt cho từng đơn vị nhưng chia sẻ tiện nghi chung như phòng họp, khu tiếp khách và thiết bị văn phòng.'),
	('Biophilic Office', 'Văn phòng thiết kế thân thiện với môi trường, sử dụng vật liệu tự nhiên, tận dụng ánh sáng tự nhiên và cây xanh để tạo không gian làm việc lành mạnh.'),
	('Smart Office', 'Văn phòng tích hợp công nghệ tiên tiến và hệ thống tự động hóa, kết nối IoT nhằm tối ưu quy trình làm việc và nâng cao hiệu quả hoạt động.');
    
INSERT INTO OfficeSpace (title, typeOfficeID, size, capacity, buildingID, lessorID)
VALUES
    ('Elite Executive Suite', 1, 75.00, 10, 1, 7),
    ('Azure Coworking Hub', 2, 40.00, 15, 2, 5),
    ('Haven Business Center', 3, 250.00, 50, 3, 8),
    ('Grandiose Corporate Office', 1, 120.00, 25, 4, 6),
    ('Pinnacle Smart Workspace', 5, 30.00, 8, 5, 9),
    ('Willow Creek Professional Space', 1, 60.00, 12, 6, 4),
    ('Ocean Breeze Creative Studio', 2, 45.00, 18, 7, 10),
    ('Forest Retreat Eco Office', 4, 180.00, 35, 8, 8),
    ('Mountain View Business Suite', 3, 100.00, 20, 9, 7),
    ('Sunnyside Tech Hub', 5, 25.00, 6, 10, 5),
    ('Wanderlust Collaborative Space', 2, 80.00, 30, 11, 9),
    ('Nomad Flexible Office', 3, 35.00, 7, 12, 4),
    ('Eccentric Innovation Center', 5, 200.00, 40, 13, 6),
    ('Bohemian Creative Loft', 4, 150.00, 30, 14, 10),
    ('Enigma Smart Office', 5, 20.00, 5, 15, 8),
    ('Sunrise Professional Center', 1, 150.00, 30, 16, 7),
    ('Urban Coworking Community', 2, 60.00, 24, 17, 5),
    ('Luxe Executive Offices', 1, 300.00, 60, 18, 9),
    ('Skyline Shared Workspace', 3, 50.00, 10, 19, 4),
    ('Sapphire Biophilic Office', 4, 35.00, 7, 20, 6),
    ('Crescent Corporate Headquarters', 1, 80.00, 16, 21, 8),
    ('Emerald Collaborative Space', 2, 45.00, 18, 22, 10),
    ('Lotus Shared Office Solutions', 3, 120.00, 24, 23, 5),
    ('Serene Green Office', 4, 250.00, 50, 24, 7),
    ('Radiant Tech Office', 5, 30.00, 6, 25, 9),
    ('Wave Business Center', 1, 90.00, 18, 26, 6),
    ('Ocean Pearl Innovation Hub', 5, 55.00, 12, 27, 4),
    ('Golden Sands Corporate Suites', 1, 230.00, 46, 28, 8),
    ('Horizon Coworking Space', 2, 140.00, 56, 29, 10),
    ('Velvet Shared Office Center', 3, 25.00, 5, 30, 7);
    
-- Additional OfficeSpace entries for existing buildings
INSERT INTO OfficeSpace (title, typeOfficeID, size, capacity, buildingID, lessorID)
VALUES
    -- Additional spaces for Building 1 (The Elysian)
    ('Elysian Executive Corner', 1, 85.00, 12, 1, 5),
    ('Elysian Coworking Zone', 2, 120.00, 40, 1, 8),
    ('Elysian Smart Conference Center', 5, 60.00, 20, 1, 4),
    
    -- Additional spaces for Building 2 (Azure Skies)
    ('Azure Private Offices', 3, 50.00, 10, 2, 6),
    ('Azure Biophilic Workspace', 4, 90.00, 18, 2, 9),
    
    -- Additional spaces for Building 3 (The Haven)
    ('Haven Green Office Suites', 4, 150.00, 30, 3, 7),
    ('Haven Tech Innovation Lab', 5, 100.00, 25, 3, 10),
    ('Haven Traditional Corner Offices', 1, 120.00, 15, 3, 4),
    
    -- Additional spaces for Building 4 (The Grandiose)
    ('Grandiose Coworking Lounge', 2, 150.00, 45, 4, 8),
    ('Grandiose Shared Meeting Rooms', 3, 80.00, 16, 4, 5),
    
    -- Additional spaces for Building 5 (The Pinnacle)
    ('Pinnacle Eco-Friendly Offices', 4, 110.00, 22, 5, 6),
    ('Pinnacle Executive Boardroom', 1, 60.00, 14, 5, 10),
    
    -- Additional spaces for Building 6 (The Willow Creek)
    ('Willow Creek Innovation Hub', 5, 90.00, 18, 6, 7),
    ('Willow Creek Shared Studio', 3, 70.00, 14, 6, 9),
    
    -- Additional spaces for Building 7 (Ocean Breeze)
    ('Ocean Breeze Executive Suite', 1, 85.00, 12, 7, 4),
    ('Ocean Breeze Green Office', 4, 100.00, 20, 7, 8),
    
    -- Additional spaces for Buildings 8-10
    ('Forest Tech Incubator', 5, 120.00, 25, 8, 5),
    ('Mountain Collaborative Commons', 2, 130.00, 50, 9, 6),
    ('Sunnyside Private Offices', 3, 75.00, 15, 10, 10),
    
    -- Additional spaces for Buildings 11-15
    ('Wanderlust Green Meeting Center', 4, 65.00, 16, 11, 8),
    ('Nomad Executive Boardroom', 1, 70.00, 14, 12, 7),
    ('Eccentric Coworking Community', 2, 160.00, 60, 13, 9),
    ('Bohemian Shared Office Suites', 3, 95.00, 20, 14, 5),
    ('Enigma Green Workspace', 4, 45.00, 9, 15, 6),
    
    -- Additional spaces for Buildings 16-21
    ('Sunrise Tech Laboratory', 5, 80.00, 16, 16, 4),
    ('Urban Traditional Offices', 1, 110.00, 22, 17, 10),
    ('Luxe Collaborative Space', 2, 150.00, 45, 18, 8),
    ('Skyline Eco-Friendly Suite', 4, 85.00, 17, 19, 7),
    ('Sapphire Smart Conference Center', 5, 65.00, 25, 20, 9),
    ('Crescent Shared Workstations', 3, 100.00, 30, 21, 4);
    
INSERT INTO Tag (tagName) 
VALUES 
    ('Featured'),
    ('New'),
    ('Popular');
    
INSERT INTO Amenity (amenityName) 
VALUES 
    ('Wi-Fi'),
    ('Ghế Ergonomic'),
    ('Bàn Điều Chỉnh'),
	('Bàn Đứng'),
    ('Đèn Bàn'),
    ('Máy Chiếu'),
    ('TV/Màn Hình'),
    ('Bảng Trắng'),
    ('Máy In/Máy Scan'),
    ('Máy Photocopy'),
    ('Máy Pha Cà Phê'),
    ('Máy Lọc Nước'),
    ('Điều Hòa'),
    ('Hệ Thống Sưởi'),
    ('Tủ Lưu Trữ'),
    ('Tủ Khóa'),
    ('Cây Xanh Trong Nhà'),
    ('Camera Giám Sát'),
    ('Máy Phát Điện Dự Phòng'),
    ('Cách Âm'),
    ('Rèm/Màn Cửa'),
    ('Ánh Sáng Tự Nhiên'),
    ('Sân Thượng');

INSERT INTO DetailAmenity (officeSpaceID, amenityID, quantity)
VALUES
	-- Elite Executive Suite (ID: 1) - Văn phòng cao cấp loại 1
	(1, 1, 1), -- Wi-Fi
	(1, 2, 10), -- Ghế Ergonomic (cho 10 người)
	(1, 3, 8), -- Bàn Điều Chỉnh (8 bàn)
	(1, 4, 2), -- Bàn Đứng (2 bàn)
	(1, 5, 10), -- Đèn Bàn (10 đèn)
	(1, 6, 1), -- Máy Chiếu
	(1, 7, 2), -- TV/Màn Hình
	(1, 8, 2), -- Bảng Trắng
	(1, 9, 1), -- Máy In/Máy Scan
	(1, 11, 1), -- Máy Pha Cà Phê
	(1, 12, 1), -- Máy Lọc Nước
	(1, 13, 2), -- Điều Hòa
	(1, 15, 3), -- Tủ Lưu Trữ
	(1, 16, 10), -- Tủ Khóa (cho mỗi người)
	(1, 17, 5), -- Cây Xanh Trong Nhà
	(1, 18, 4), -- Camera Giám Sát
	(1, 20, 1), -- Cách Âm
	(1, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Azure Coworking Hub (ID: 2) - Không gian làm việc chung loại 2
	(2, 1, 1), -- Wi-Fi
	(2, 2, 15), -- Ghế Ergonomic (cho 15 người)
	(2, 3, 10), -- Bàn Điều Chỉnh
	(2, 4, 5), -- Bàn Đứng
	(2, 5, 15), -- Đèn Bàn
	(2, 7, 3), -- TV/Màn Hình
	(2, 8, 2), -- Bảng Trắng
	(2, 9, 1), -- Máy In/Máy Scan
	(2, 11, 2), -- Máy Pha Cà Phê
	(2, 12, 2), -- Máy Lọc Nước
	(2, 13, 2), -- Điều Hòa
	(2, 17, 8), -- Cây Xanh Trong Nhà
	(2, 18, 3), -- Camera Giám Sát
	(2, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Haven Business Center (ID: 3) - Trung tâm kinh doanh loại 3
	(3, 1, 1), -- Wi-Fi
	(3, 2, 50), -- Ghế Ergonomic
	(3, 3, 40), -- Bàn Điều Chỉnh
	(3, 4, 10), -- Bàn Đứng
	(3, 5, 50), -- Đèn Bàn
	(3, 6, 3), -- Máy Chiếu
	(3, 7, 8), -- TV/Màn Hình
	(3, 8, 6), -- Bảng Trắng
	(3, 9, 3), -- Máy In/Máy Scan
	(3, 10, 2), -- Máy Photocopy
	(3, 11, 3), -- Máy Pha Cà Phê
	(3, 12, 4), -- Máy Lọc Nước
	(3, 13, 6), -- Điều Hòa
	(3, 15, 10), -- Tủ Lưu Trữ
	(3, 16, 50), -- Tủ Khóa
	(3, 17, 15), -- Cây Xanh Trong Nhà
	(3, 18, 10), -- Camera Giám Sát
	(3, 19, 1), -- Máy Phát Điện Dự Phòng
	(3, 20, 1), -- Cách Âm
	(3, 21, 1), -- Rèm/Màn Cửa
	(3, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Grandiose Corporate Office (ID: 4) - Văn phòng doanh nghiệp lớn loại 1
	(4, 1, 1), -- Wi-Fi
	(4, 2, 25), -- Ghế Ergonomic
	(4, 3, 20), -- Bàn Điều Chỉnh
	(4, 4, 5), -- Bàn Đứng
	(4, 5, 25), -- Đèn Bàn
	(4, 6, 2), -- Máy Chiếu
	(4, 7, 4), -- TV/Màn Hình
	(4, 8, 3), -- Bảng Trắng
	(4, 9, 2), -- Máy In/Máy Scan
	(4, 10, 1), -- Máy Photocopy
	(4, 11, 2), -- Máy Pha Cà Phê
	(4, 12, 2), -- Máy Lọc Nước
	(4, 13, 3), -- Điều Hòa
	(4, 15, 6), -- Tủ Lưu Trữ
	(4, 16, 25), -- Tủ Khóa
	(4, 17, 10), -- Cây Xanh Trong Nhà
	(4, 18, 6), -- Camera Giám Sát
	(4, 19, 1), -- Máy Phát Điện Dự Phòng
	(4, 20, 1), -- Cách Âm
	(4, 21, 1), -- Rèm/Màn Cửa
	(4, 22, 1), -- Ánh Sáng Tự Nhiên
	(4, 23, 1), -- Sân Thượng

	-- Pinnacle Smart Workspace (ID: 5) - Không gian làm việc thông minh loại 5
	(5, 1, 1), -- Wi-Fi (cấp độ cao)
	(5, 2, 8), -- Ghế Ergonomic
	(5, 3, 6), -- Bàn Điều Chỉnh
	(5, 4, 2), -- Bàn Đứng
	(5, 5, 8), -- Đèn Bàn
	(5, 7, 3), -- TV/Màn Hình (màn hình thông minh)
	(5, 8, 1), -- Bảng Trắng
	(5, 9, 1), -- Máy In/Máy Scan
	(5, 12, 1), -- Máy Lọc Nước
	(5, 13, 1), -- Điều Hòa (điều khiển thông minh)
	(5, 16, 8), -- Tủ Khóa
	(5, 17, 4), -- Cây Xanh Trong Nhà 
	(5, 18, 3), -- Camera Giám Sát
	(5, 20, 1), -- Cách Âm
	(5, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Willow Creek Professional Space (ID: 6) - Không gian chuyên nghiệp loại 1
	(6, 1, 1), -- Wi-Fi
	(6, 2, 12), -- Ghế Ergonomic
	(6, 3, 10), -- Bàn Điều Chỉnh
	(6, 4, 2), -- Bàn Đứng
	(6, 5, 12), -- Đèn Bàn
	(6, 6, 1), -- Máy Chiếu
	(6, 7, 2), -- TV/Màn Hình
	(6, 8, 2), -- Bảng Trắng
	(6, 9, 1), -- Máy In/Máy Scan
	(6, 11, 1), -- Máy Pha Cà Phê
	(6, 12, 1), -- Máy Lọc Nước
	(6, 13, 2), -- Điều Hòa
	(6, 15, 3), -- Tủ Lưu Trữ
	(6, 16, 12), -- Tủ Khóa
	(6, 17, 4), -- Cây Xanh Trong Nhà
	(6, 18, 3), -- Camera Giám Sát

	-- Ocean Breeze Creative Studio (ID: 7) - Studio sáng tạo loại 2
	(7, 1, 1), -- Wi-Fi
	(7, 2, 18), -- Ghế Ergonomic
	(7, 3, 15), -- Bàn Điều Chỉnh
	(7, 4, 3), -- Bàn Đứng
	(7, 5, 18), -- Đèn Bàn
	(7, 7, 3), -- TV/Màn Hình
	(7, 8, 4), -- Bảng Trắng (lớn, để brainstorming)
	(7, 9, 1), -- Máy In/Máy Scan
	(7, 11, 1), -- Máy Pha Cà Phê
	(7, 12, 2), -- Máy Lọc Nước
	(7, 13, 2), -- Điều Hòa
	(7, 16, 18), -- Tủ Khóa
	(7, 17, 10), -- Cây Xanh Trong Nhà (nhiều để tăng tính sáng tạo)
	(7, 22, 1), -- Ánh Sáng Tự Nhiên (rất quan trọng cho không gian sáng tạo)

	-- Forest Retreat Eco Office (ID: 8) - Văn phòng sinh thái loại 4
	(8, 1, 1), -- Wi-Fi
	(8, 2, 35), -- Ghế Ergonomic (từ vật liệu tái chế)
	(8, 3, 25), -- Bàn Điều Chỉnh (làm từ gỗ tự nhiên)
	(8, 4, 10), -- Bàn Đứng (làm từ gỗ tự nhiên)
	(8, 5, 35), -- Đèn Bàn (tiết kiệm năng lượng)
	(8, 7, 4), -- TV/Màn Hình (tiết kiệm năng lượng)
	(8, 8, 3), -- Bảng Trắng
	(8, 9, 2), -- Máy In/Máy Scan (tiết kiệm năng lượng)
	(8, 12, 3), -- Máy Lọc Nước
	(8, 13, 4), -- Điều Hòa (thân thiện với môi trường)
	(8, 15, 5), -- Tủ Lưu Trữ (làm từ vật liệu tái chế)
	(8, 16, 35), -- Tủ Khóa
	(8, 17, 20), -- Cây Xanh Trong Nhà (rất nhiều)
	(8, 18, 6), -- Camera Giám Sát
	(8, 22, 1), -- Ánh Sáng Tự Nhiên (thiết kế tối đa hóa ánh sáng tự nhiên)
	(8, 23, 1), -- Sân Thượng (khu vườn trên mái)

	-- Mountain View Business Suite (ID: 9) - Văn phòng kinh doanh loại 3
	(9, 1, 1), -- Wi-Fi
	(9, 2, 20), -- Ghế Ergonomic
	(9, 3, 16), -- Bàn Điều Chỉnh
	(9, 4, 4), -- Bàn Đứng
	(9, 5, 20), -- Đèn Bàn
	(9, 6, 1), -- Máy Chiếu
	(9, 7, 3), -- TV/Màn Hình
	(9, 8, 2), -- Bảng Trắng
	(9, 9, 2), -- Máy In/Máy Scan
	(9, 10, 1), -- Máy Photocopy
	(9, 11, 1), -- Máy Pha Cà Phê
	(9, 12, 2), -- Máy Lọc Nước
	(9, 13, 3), -- Điều Hòa
	(9, 15, 4), -- Tủ Lưu Trữ
	(9, 16, 20), -- Tủ Khóa
	(9, 17, 8), -- Cây Xanh Trong Nhà
	(9, 18, 5), -- Camera Giám Sát
	(9, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Sunnyside Tech Hub (ID: 10) - Không gian công nghệ loại 5
	(10, 1, 1), -- Wi-Fi (tốc độ cao)
	(10, 2, 6), -- Ghế Ergonomic
	(10, 3, 4), -- Bàn Điều Chỉnh
	(10, 4, 2), -- Bàn Đứng
	(10, 5, 6), -- Đèn Bàn
	(10, 7, 3), -- TV/Màn Hình (độ phân giải cao)
	(10, 8, 1), -- Bảng Trắng
	(10, 9, 1), -- Máy In/Máy Scan
	(10, 11, 1), -- Máy Pha Cà Phê
	(10, 12, 1), -- Máy Lọc Nước
	(10, 13, 1), -- Điều Hòa (điều khiển thông minh)
	(10, 16, 6), -- Tủ Khóa
	(10, 17, 3), -- Cây Xanh Trong Nhà
	(10, 18, 2), -- Camera Giám Sát
	(10, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Wanderlust Collaborative Space (ID: 11) - Không gian làm việc chung loại 2
	(11, 1, 1), -- Wi-Fi
	(11, 2, 30), -- Ghế Ergonomic
	(11, 3, 25), -- Bàn Điều Chỉnh
	(11, 4, 5), -- Bàn Đứng
	(11, 5, 30), -- Đèn Bàn
	(11, 6, 2), -- Máy Chiếu
	(11, 7, 4), -- TV/Màn Hình
	(11, 8, 3), -- Bảng Trắng
	(11, 9, 2), -- Máy In/Máy Scan
	(11, 11, 2), -- Máy Pha Cà Phê
	(11, 12, 3), -- Máy Lọc Nước
	(11, 13, 3), -- Điều Hòa
	(11, 16, 30), -- Tủ Khóa
	(11, 17, 12), -- Cây Xanh Trong Nhà
	(11, 18, 6), -- Camera Giám Sát
	(11, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Nomad Flexible Office (ID: 12) - Văn phòng linh hoạt loại 3
	(12, 1, 1), -- Wi-Fi
	(12, 2, 7), -- Ghế Ergonomic
	(12, 3, 5), -- Bàn Điều Chỉnh
	(12, 4, 2), -- Bàn Đứng
	(12, 5, 7), -- Đèn Bàn
	(12, 7, 1), -- TV/Màn Hình
	(12, 8, 1), -- Bảng Trắng
	(12, 9, 1), -- Máy In/Máy Scan
	(12, 12, 1), -- Máy Lọc Nước
	(12, 13, 1), -- Điều Hòa
	(12, 16, 7), -- Tủ Khóa
	(12, 17, 3), -- Cây Xanh Trong Nhà
	(12, 18, 2), -- Camera Giám Sát

	-- Eccentric Innovation Center (ID: 13) - Trung tâm đổi mới sáng tạo loại 5
	(13, 1, 1), -- Wi-Fi (siêu tốc)
	(13, 2, 40), -- Ghế Ergonomic (thiết kế đặc biệt)
	(13, 3, 30), -- Bàn Điều Chỉnh
	(13, 4, 10), -- Bàn Đứng
	(13, 5, 40), -- Đèn Bàn
	(13, 6, 3), -- Máy Chiếu (độ phân giải cao)
	(13, 7, 8), -- TV/Màn Hình (màn hình cong, 4K)
	(13, 8, 5), -- Bảng Trắng (tương tác)
	(13, 9, 3), -- Máy In/Máy Scan
	(13, 10, 1), -- Máy Photocopy
	(13, 11, 3), -- Máy Pha Cà Phê (chuyên nghiệp)
	(13, 12, 4), -- Máy Lọc Nước
	(13, 13, 5), -- Điều Hòa (thông minh)
	(13, 15, 8), -- Tủ Lưu Trữ
	(13, 16, 40), -- Tủ Khóa
	(13, 17, 15), -- Cây Xanh Trong Nhà
	(13, 18, 10), -- Camera Giám Sát
	(13, 19, 1), -- Máy Phát Điện Dự Phòng
	(13, 20, 1), -- Cách Âm (cao cấp)
	(13, 22, 1), -- Ánh Sáng Tự Nhiên
	(13, 23, 1), -- Sân Thượng

	-- Bohemian Creative Loft (ID: 14) - Không gian sáng tạo loại 4
	(14, 1, 1), -- Wi-Fi
	(14, 2, 30), -- Ghế Ergonomic (thiết kế nghệ thuật)
	(14, 3, 25), -- Bàn Điều Chỉnh (kiểu dáng sáng tạo)
	(14, 4, 5), -- Bàn Đứng
	(14, 5, 30), -- Đèn Bàn (đèn nghệ thuật)
	(14, 7, 4), -- TV/Màn Hình
	(14, 8, 5), -- Bảng Trắng
	(14, 9, 2), -- Máy In/Máy Scan
	(14, 11, 2), -- Máy Pha Cà Phê
	(14, 12, 3), -- Máy Lọc Nước
	(14, 13, 3), -- Điều Hòa
	(14, 16, 30), -- Tủ Khóa (thiết kế nghệ thuật)
	(14, 17, 15), -- Cây Xanh Trong Nhà
	(14, 18, 6), -- Camera Giám Sát
	(14, 20, 1), -- Cách Âm
	(14, 22, 1), -- Ánh Sáng Tự Nhiên (cửa sổ lớn trần cao)
	(14, 23, 1), -- Sân Thượng (khu vực sáng tác ngoài trời)

	-- Enigma Smart Office (ID: 15) - Văn phòng thông minh nhỏ loại 5
	(15, 1, 1), -- Wi-Fi (tốc độ cao)
	(15, 2, 5), -- Ghế Ergonomic
	(15, 3, 4), -- Bàn Điều Chỉnh
	(15, 4, 1), -- Bàn Đứng
	(15, 5, 5), -- Đèn Bàn
	(15, 7, 2), -- TV/Màn Hình (màn hình thông minh)
	(15, 8, 1), -- Bảng Trắng
	(15, 9, 1), -- Máy In/Máy Scan
	(15, 12, 1), -- Máy Lọc Nước
	(15, 13, 1), -- Điều Hòa (điều khiển thông minh)
	(15, 16, 5), -- Tủ Khóa
	(15, 17, 3), -- Cây Xanh Trong Nhà
	(15, 18, 2), -- Camera Giám Sát
	(15, 20, 1), -- Cách Âm

    -- ID 16: Sunrise Professional Center (Professional/Executive)
    (16, 1, 1),   -- Wi-Fi
    (16, 2, 30),  -- Ghế Ergonomic (cho capacity 30)
    (16, 3, 20),  -- Bàn Điều Chỉnh
    (16, 5, 30),  -- Đèn Bàn
    (16, 6, 2),   -- Máy Chiếu
    (16, 7, 4),   -- TV/Màn Hình
    (16, 8, 3),   -- Bảng Trắng
    (16, 9, 1),   -- Máy In/Máy Scan
    (16, 10, 1),  -- Máy Photocopy
    (16, 11, 2),  -- Máy Pha Cà Phê
    (16, 12, 2),  -- Máy Lọc Nước
    (16, 13, 4),  -- Điều Hòa
    (16, 15, 10), -- Tủ Lưu Trữ
    (16, 16, 30), -- Tủ Khóa
    (16, 18, 6),  -- Camera Giám Sát
    (16, 20, 1),  -- Cách Âm
    (16, 21, 8),  -- Rèm/Màn Cửa
    (16, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 17: Urban Coworking Community (Coworking)
    (17, 1, 1),   -- Wi-Fi
    (17, 2, 24),  -- Ghế Ergonomic (cho capacity 24)
    (17, 3, 18),  -- Bàn Điều Chỉnh
    (17, 4, 6),   -- Bàn Đứng
    (17, 5, 24),  -- Đèn Bàn
    (17, 6, 1),   -- Máy Chiếu
    (17, 7, 2),   -- TV/Màn Hình
    (17, 8, 2),   -- Bảng Trắng
    (17, 9, 1),   -- Máy In/Máy Scan
    (17, 11, 2),  -- Máy Pha Cà Phê
    (17, 12, 2),  -- Máy Lọc Nước
    (17, 13, 3),  -- Điều Hòa
    (17, 15, 4),  -- Tủ Lưu Trữ
    (17, 16, 24), -- Tủ Khóa
    (17, 17, 8),  -- Cây Xanh Trong Nhà
    (17, 18, 4),  -- Camera Giám Sát
    (17, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 18: Luxe Executive Offices (Executive)
    (18, 1, 1),   -- Wi-Fi
    (18, 2, 60),  -- Ghế Ergonomic (cho capacity 60)
    (18, 3, 40),  -- Bàn Điều Chỉnh
    (18, 4, 20),  -- Bàn Đứng
    (18, 5, 60),  -- Đèn Bàn
    (18, 6, 4),   -- Máy Chiếu
    (18, 7, 10),  -- TV/Màn Hình
    (18, 8, 6),   -- Bảng Trắng
    (18, 9, 3),   -- Máy In/Máy Scan
    (18, 10, 2),  -- Máy Photocopy
    (18, 11, 4),  -- Máy Pha Cà Phê
    (18, 12, 3),  -- Máy Lọc Nước
    (18, 13, 8),  -- Điều Hòa
    (18, 14, 1),  -- Hệ Thống Sưởi
    (18, 15, 20), -- Tủ Lưu Trữ
    (18, 16, 60), -- Tủ Khóa
    (18, 17, 15), -- Cây Xanh Trong Nhà
    (18, 18, 15), -- Camera Giám Sát
    (18, 19, 1),  -- Máy Phát Điện Dự Phòng
    (18, 20, 1),  -- Cách Âm
    (18, 21, 15), -- Rèm/Màn Cửa
    (18, 22, 1),  -- Ánh Sáng Tự Nhiên
    (18, 23, 1),  -- Sân Thượng

    -- ID 19: Skyline Shared Workspace (Shared Office)
    (19, 1, 1),   -- Wi-Fi
    (19, 2, 10),  -- Ghế Ergonomic (cho capacity 10)
    (19, 3, 8),   -- Bàn Điều Chỉnh
    (19, 4, 2),   -- Bàn Đứng
    (19, 5, 10),  -- Đèn Bàn
    (19, 7, 2),   -- TV/Màn Hình
    (19, 8, 1),   -- Bảng Trắng
    (19, 9, 1),   -- Máy In/Máy Scan
    (19, 11, 1),  -- Máy Pha Cà Phê
    (19, 12, 1),  -- Máy Lọc Nước
    (19, 13, 2),  -- Điều Hòa
    (19, 15, 3),  -- Tủ Lưu Trữ
    (19, 16, 10), -- Tủ Khóa
    (19, 17, 4),  -- Cây Xanh Trong Nhà
    (19, 18, 2),  -- Camera Giám Sát
    (19, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 20: Sapphire Biophilic Office (Green/Eco)
    (20, 1, 1),   -- Wi-Fi
    (20, 2, 7),   -- Ghế Ergonomic (cho capacity 7)
    (20, 3, 5),   -- Bàn Điều Chỉnh
    (20, 4, 2),   -- Bàn Đứng
    (20, 5, 7),   -- Đèn Bàn
    (20, 7, 1),   -- TV/Màn Hình
    (20, 8, 1),   -- Bảng Trắng
    (20, 9, 1),   -- Máy In/Máy Scan
    (20, 11, 1),  -- Máy Pha Cà Phê
    (20, 12, 1),  -- Máy Lọc Nước
    (20, 13, 1),  -- Điều Hòa
    (20, 15, 2),  -- Tủ Lưu Trữ
    (20, 16, 7),  -- Tủ Khóa
    (20, 17, 10), -- Cây Xanh Trong Nhà (nhiều hơn vì là biophilic)
    (20, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 21: Crescent Corporate Headquarters (Executive/Corporate)
    (21, 1, 1),   -- Wi-Fi
    (21, 2, 16),  -- Ghế Ergonomic (cho capacity 16)
    (21, 3, 12),  -- Bàn Điều Chỉnh
    (21, 4, 4),   -- Bàn Đứng
    (21, 5, 16),  -- Đèn Bàn
    (21, 6, 2),   -- Máy Chiếu
    (21, 7, 4),   -- TV/Màn Hình
    (21, 8, 2),   -- Bảng Trắng
    (21, 9, 1),   -- Máy In/Máy Scan
    (21, 10, 1),  -- Máy Photocopy
    (21, 11, 1),  -- Máy Pha Cà Phê
    (21, 12, 1),  -- Máy Lọc Nước
    (21, 13, 3),  -- Điều Hòa
    (21, 15, 6),  -- Tủ Lưu Trữ
    (21, 16, 16), -- Tủ Khóa
    (21, 17, 4),  -- Cây Xanh Trong Nhà
    (21, 18, 4),  -- Camera Giám Sát
    (21, 19, 1),  -- Máy Phát Điện Dự Phòng
    (21, 20, 1),  -- Cách Âm
    (21, 21, 5),  -- Rèm/Màn Cửa
    (21, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 22: Emerald Collaborative Space (Coworking)
    (22, 1, 1),   -- Wi-Fi
    (22, 2, 18),  -- Ghế Ergonomic (cho capacity 18)
    (22, 3, 14),  -- Bàn Điều Chỉnh
    (22, 4, 4),   -- Bàn Đứng
    (22, 5, 18),  -- Đèn Bàn
    (22, 6, 1),   -- Máy Chiếu
    (22, 7, 2),   -- TV/Màn Hình
    (22, 8, 2),   -- Bảng Trắng
    (22, 9, 1),   -- Máy In/Máy Scan
    (22, 11, 1),  -- Máy Pha Cà Phê
    (22, 12, 1),  -- Máy Lọc Nước
    (22, 13, 2),  -- Điều Hòa
    (22, 15, 3),  -- Tủ Lưu Trữ
    (22, 16, 18), -- Tủ Khóa
    (22, 17, 6),  -- Cây Xanh Trong Nhà
    (22, 18, 3),  -- Camera Giám Sát
    (22, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 23: Lotus Shared Office Solutions (Shared Office)
    (23, 1, 1),   -- Wi-Fi
    (23, 2, 24),  -- Ghế Ergonomic (cho capacity 24)
    (23, 3, 20),  -- Bàn Điều Chỉnh
    (23, 4, 4),   -- Bàn Đứng
    (23, 5, 24),  -- Đèn Bàn
    (23, 6, 2),   -- Máy Chiếu
    (23, 7, 3),   -- TV/Màn Hình
    (23, 8, 2),   -- Bảng Trắng
    (23, 9, 2),   -- Máy In/Máy Scan
    (23, 10, 1),  -- Máy Photocopy
    (23, 11, 2),  -- Máy Pha Cà Phê
    (23, 12, 2),  -- Máy Lọc Nước
    (23, 13, 3),  -- Điều Hòa
    (23, 15, 8),  -- Tủ Lưu Trữ
    (23, 16, 24), -- Tủ Khóa
    (23, 17, 6),  -- Cây Xanh Trong Nhà
    (23, 18, 4),  -- Camera Giám Sát
    (23, 21, 6),  -- Rèm/Màn Cửa
    (23, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 24: Serene Green Office (Green/Eco)
    (24, 1, 1),   -- Wi-Fi
    (24, 2, 50),  -- Ghế Ergonomic (cho capacity 50)
    (24, 3, 35),  -- Bàn Điều Chỉnh
    (24, 4, 15),  -- Bàn Đứng
    (24, 5, 50),  -- Đèn Bàn
    (24, 6, 3),   -- Máy Chiếu
    (24, 7, 5),   -- TV/Màn Hình
    (24, 8, 4),   -- Bảng Trắng
    (24, 9, 2),   -- Máy In/Máy Scan
    (24, 10, 1),  -- Máy Photocopy
    (24, 11, 3),  -- Máy Pha Cà Phê
    (24, 12, 3),  -- Máy Lọc Nước
    (24, 13, 5),  -- Điều Hòa
    (24, 15, 10), -- Tủ Lưu Trữ
    (24, 16, 50), -- Tủ Khóa
    (24, 17, 25), -- Cây Xanh Trong Nhà (nhiều vì là Green Office)
    (24, 18, 6),  -- Camera Giám Sát
    (24, 22, 1),  -- Ánh Sáng Tự Nhiên
    (24, 23, 1),  -- Sân Thượng

    -- ID 25: Radiant Tech Office (Smart Office)
    (25, 1, 1),   -- Wi-Fi
    (25, 2, 6),   -- Ghế Ergonomic (cho capacity 6)
    (25, 3, 4),   -- Bàn Điều Chỉnh
    (25, 4, 2),   -- Bàn Đứng
    (25, 5, 6),   -- Đèn Bàn
    (25, 6, 1),   -- Máy Chiếu
    (25, 7, 3),   -- TV/Màn Hình (nhiều hơn vì là Tech Office)
    (25, 8, 1),   -- Bảng Trắng
    (25, 9, 1),   -- Máy In/Máy Scan
    (25, 11, 1),  -- Máy Pha Cà Phê
    (25, 12, 1),  -- Máy Lọc Nước
    (25, 13, 1),  -- Điều Hòa
    (25, 15, 2),  -- Tủ Lưu Trữ
    (25, 16, 6),  -- Tủ Khóa
    (25, 17, 2),  -- Cây Xanh Trong Nhà
    (25, 18, 2),  -- Camera Giám Sát (Smart Office - an ninh tốt)
    (25, 19, 1),  -- Máy Phát Điện Dự Phòng
    (25, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 26: Wave Business Center (Executive)
    (26, 1, 1),   -- Wi-Fi
    (26, 2, 18),  -- Ghế Ergonomic (cho capacity 18)
    (26, 3, 14),  -- Bàn Điều Chỉnh
    (26, 4, 4),   -- Bàn Đứng
    (26, 5, 18),  -- Đèn Bàn
    (26, 6, 2),   -- Máy Chiếu
    (26, 7, 3),   -- TV/Màn Hình
    (26, 8, 2),   -- Bảng Trắng
    (26, 9, 1),   -- Máy In/Máy Scan
    (26, 10, 1),  -- Máy Photocopy
    (26, 11, 1),  -- Máy Pha Cà Phê
    (26, 12, 1),  -- Máy Lọc Nước
    (26, 13, 2),  -- Điều Hòa
    (26, 15, 6),  -- Tủ Lưu Trữ
    (26, 16, 18), -- Tủ Khóa
    (26, 17, 5),  -- Cây Xanh Trong Nhà
    (26, 18, 4),  -- Camera Giám Sát
    (26, 20, 1),  -- Cách Âm
    (26, 21, 6),  -- Rèm/Màn Cửa
    (26, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 27: Ocean Pearl Innovation Hub (Smart Office)
    (27, 1, 1),   -- Wi-Fi
    (27, 2, 12),  -- Ghế Ergonomic (cho capacity 12)
    (27, 3, 8),   -- Bàn Điều Chỉnh
    (27, 4, 4),   -- Bàn Đứng
    (27, 5, 12),  -- Đèn Bàn
    (27, 6, 1),   -- Máy Chiếu
    (27, 7, 4),   -- TV/Màn Hình (nhiều hơn vì là Innovation Hub)
    (27, 8, 2),   -- Bảng Trắng
    (27, 9, 1),   -- Máy In/Máy Scan
    (27, 11, 1),  -- Máy Pha Cà Phê
    (27, 12, 1),  -- Máy Lọc Nước
    (27, 13, 2),  -- Điều Hòa
    (27, 15, 4),  -- Tủ Lưu Trữ
    (27, 16, 12), -- Tủ Khóa
    (27, 17, 4),  -- Cây Xanh Trong Nhà
    (27, 18, 3),  -- Camera Giám Sát
    (27, 19, 1),  -- Máy Phát Điện Dự Phòng
    (27, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 28: Golden Sands Corporate Suites (Executive)
    (28, 1, 1),   -- Wi-Fi
    (28, 2, 46),  -- Ghế Ergonomic (cho capacity 46)
    (28, 3, 35),  -- Bàn Điều Chỉnh
    (28, 4, 11),  -- Bàn Đứng
    (28, 5, 46),  -- Đèn Bàn
    (28, 6, 3),   -- Máy Chiếu
    (28, 7, 8),   -- TV/Màn Hình
    (28, 8, 5),   -- Bảng Trắng
    (28, 9, 2),   -- Máy In/Máy Scan
    (28, 10, 2),  -- Máy Photocopy
    (28, 11, 3),  -- Máy Pha Cà Phê
    (28, 12, 3),  -- Máy Lọc Nước
    (28, 13, 6),  -- Điều Hòa
    (28, 14, 1),  -- Hệ Thống Sưởi
    (28, 15, 15), -- Tủ Lưu Trữ
    (28, 16, 46), -- Tủ Khóa
    (28, 17, 10), -- Cây Xanh Trong Nhà
    (28, 18, 12), -- Camera Giám Sát
    (28, 19, 1),  -- Máy Phát Điện Dự Phòng
    (28, 20, 1),  -- Cách Âm
    (28, 21, 12), -- Rèm/Màn Cửa
    (28, 22, 1),  -- Ánh Sáng Tự Nhiên
    (28, 23, 1),  -- Sân Thượng

    -- ID 29: Horizon Coworking Space (Coworking)
    (29, 1, 1),   -- Wi-Fi
    (29, 2, 56),  -- Ghế Ergonomic (cho capacity 56)
    (29, 3, 40),  -- Bàn Điều Chỉnh
    (29, 4, 16),  -- Bàn Đứng
    (29, 5, 56),  -- Đèn Bàn
    (29, 6, 2),   -- Máy Chiếu
    (29, 7, 4),   -- TV/Màn Hình
    (29, 8, 3),   -- Bảng Trắng
    (29, 9, 2),   -- Máy In/Máy Scan
    (29, 10, 1),  -- Máy Photocopy
    (29, 11, 3),  -- Máy Pha Cà Phê
    (29, 12, 3),  -- Máy Lọc Nước
    (29, 13, 5),  -- Điều Hòa
    (29, 15, 8),  -- Tủ Lưu Trữ
    (29, 16, 56), -- Tủ Khóa
    (29, 17, 12), -- Cây Xanh Trong Nhà
    (29, 18, 6),  -- Camera Giám Sát
    (29, 21, 8),  -- Rèm/Màn Cửa
    (29, 22, 1),  -- Ánh Sáng Tự Nhiên

    -- ID 30: Velvet Shared Office Center (Shared Office)
    (30, 1, 1),   -- Wi-Fi
    (30, 2, 5),   -- Ghế Ergonomic (cho capacity 5)
    (30, 3, 4),   -- Bàn Điều Chỉnh
    (30, 4, 1),   -- Bàn Đứng
    (30, 5, 5),   -- Đèn Bàn
    (30, 7, 1),   -- TV/Màn Hình
    (30, 8, 1),   -- Bảng Trắng
    (30, 9, 1),   -- Máy In/Máy Scan
    (30, 11, 1),  -- Máy Pha Cà Phê
    (30, 12, 1),  -- Máy Lọc Nước
    (30, 13, 1),  -- Điều Hòa
    (30, 15, 2),  -- Tủ Lưu Trữ
    (30, 16, 5),  -- Tủ Khóa
    (30, 17, 2),  -- Cây Xanh Trong Nhà
    (30, 18, 2),  -- Camera Giám Sát
    (30, 22, 1),  -- Ánh Sáng Tự Nhiên

	-- Elysian Executive Corner (ID: 31)
	(31, 1, 1), -- Wi-Fi
	(31, 2, 12), -- Ghế Ergonomic
	(31, 3, 10), -- Bàn Điều Chỉnh
	(31, 4, 2), -- Bàn Đứng
	(31, 5, 12), -- Đèn Bàn
	(31, 6, 1), -- Máy Chiếu
	(31, 7, 3), -- TV/Màn Hình
	(31, 8, 2), -- Bảng Trắng
	(31, 9, 1), -- Máy In/Máy Scan
	(31, 11, 1), -- Máy Pha Cà Phê
	(31, 12, 1), -- Máy Lọc Nước
	(31, 13, 2), -- Điều Hòa
	(31, 15, 4), -- Tủ Lưu Trữ
	(31, 16, 12), -- Tủ Khóa
	(31, 17, 6), -- Cây Xanh Trong Nhà
	(31, 18, 4), -- Camera Giám Sát
	(31, 20, 1), -- Cách Âm
	(31, 21, 1), -- Rèm/Màn Cửa
	(31, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Elysian Coworking Zone (ID: 32)
	(32, 1, 1), -- Wi-Fi
	(32, 2, 40), -- Ghế Ergonomic
	(32, 3, 35), -- Bàn Điều Chỉnh
	(32, 4, 5), -- Bàn Đứng
	(32, 5, 40), -- Đèn Bàn
	(32, 7, 5), -- TV/Màn Hình
	(32, 8, 3), -- Bảng Trắng
	(32, 9, 2), -- Máy In/Máy Scan
	(32, 11, 2), -- Máy Pha Cà Phê
	(32, 12, 3), -- Máy Lọc Nước
	(32, 13, 4), -- Điều Hòa
	(32, 16, 40), -- Tủ Khóa
	(32, 17, 15), -- Cây Xanh Trong Nhà
	(32, 18, 8), -- Camera Giám Sát
	(32, 22, 1),

	-- Elysian Smart Conference Center (ID: 33)
	(33, 1, 1), -- Wi-Fi
	(33, 2, 20), -- Ghế Ergonomic
	(33, 6, 2), -- Máy Chiếu
	(33, 7, 4), -- TV/Màn Hình
	(33, 8, 3), -- Bảng Trắng
	(33, 13, 2), -- Điều Hòa
	(33, 17, 8), -- Cây Xanh Trong Nhà
	(33, 18, 4), -- Camera Giám Sát
	(33, 20, 1), -- Cách Âm

	-- Azure Private Offices (ID: 34)
	(34, 1, 1), -- Wi-Fi
	(34, 2, 10), -- Ghế Ergonomic
	(34, 3, 8), -- Bàn Điều Chỉnh
	(34, 5, 10), -- Đèn Bàn
	(34, 7, 2), -- TV/Màn Hình
	(34, 9, 1), -- Máy In/Máy Scan
	(34, 12, 1), -- Máy Lọc Nước
	(34, 13, 2), -- Điều Hòa
	(34, 15, 2), -- Tủ Lưu Trữ
	(34, 16, 10), -- Tủ Khóa
	(34, 17, 4), -- Cây Xanh Trong Nhà
	(34, 18, 3), -- Camera Giám Sát
	(34, 20, 1), -- Cách Âm

	-- Azure Biophilic Workspace (ID: 35)
	(35, 1, 1), -- Wi-Fi
	(35, 2, 18), -- Ghế Ergonomic
	(35, 3, 15), -- Bàn Điều Chỉnh
	(35, 4, 3), -- Bàn Đứng
	(35, 5, 18), -- Đèn Bàn
	(35, 12, 2), -- Máy Lọc Nước
	(35, 13, 2), -- Điều Hòa
	(35, 16, 18), -- Tủ Khóa
	(35, 17, 20), -- Cây Xanh Trong Nhà (rất nhiều)
	(35, 22, 1), -- Ánh Sáng Tự Nhiên
	(35, 23, 1), -- Sân Thượng (khu vườn)

	-- Haven Green Office Suites (ID: 36)
	(36, 1, 1), -- Wi-Fi
	(36, 2, 30), -- Ghế Ergonomic
	(36, 3, 25), -- Bàn Điều Chỉnh
	(36, 4, 5), -- Bàn Đứng
	(36, 5, 30), -- Đèn Bàn
	(36, 9, 1), -- Máy In/Máy Scan
	(36, 12, 3), -- Máy Lọc Nước
	(36, 13, 3), -- Điều Hòa
	(36, 15, 5), -- Tủ Lưu Trữ
	(36, 16, 30), -- Tủ Khóa
	(36, 17, 25), -- Cây Xanh Trong Nhà (rất nhiều)
	(36, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Haven Tech Innovation Lab (ID: 37)
	(37, 1, 1), -- Wi-Fi (tốc độ cao)
	(37, 2, 25), -- Ghế Ergonomic
	(37, 3, 20), -- Bàn Điều Chỉnh
	(37, 4, 5), -- Bàn Đứng
	(37, 5, 25), -- Đèn Bàn
	(37, 6, 2), -- Máy Chiếu
	(37, 7, 6), -- TV/Màn Hình
	(37, 8, 4), -- Bảng Trắng
	(37, 9, 2), -- Máy In/Máy Scan
	(37, 11, 2), -- Máy Pha Cà Phê
	(37, 12, 2), -- Máy Lọc Nước
	(37, 13, 3), -- Điều Hòa
	(37, 16, 25), -- Tủ Khóa
	(37, 17, 10), -- Cây Xanh Trong Nhà
	(37, 18, 5), -- Camera Giám Sát
	(37, 20, 1), -- Cách Âm

	-- Haven Traditional Corner Offices (ID: 38)
	(38, 1, 1), -- Wi-Fi
	(38, 2, 15), -- Ghế Ergonomic
	(38, 3, 12), -- Bàn Điều Chỉnh
	(38, 5, 15), -- Đèn Bàn
	(38, 7, 2), -- TV/Màn Hình
	(38, 8, 1), -- Bảng Trắng
	(38, 9, 1), -- Máy In/Máy Scan
	(38, 11, 1), -- Máy Pha Cà Phê
	(38, 12, 1), -- Máy Lọc Nước
	(38, 13, 2), -- Điều Hòa
	(38, 15, 4), -- Tủ Lưu Trữ
	(38, 16, 15), -- Tủ Khóa
	(38, 17, 5), -- Cây Xanh Trong Nhà
	(38, 18, 3), -- Camera Giám Sát
	(38, 20, 1), -- Cách Âm
	(38, 21, 1), -- Rèm/Màn Cửa

	-- Grandiose Coworking Lounge (ID: 39)
	(39, 1, 1), -- Wi-Fi
	(39, 2, 45), -- Ghế Ergonomic
	(39, 3, 35), -- Bàn Điều Chỉnh
	(39, 4, 10), -- Bàn Đứng
	(39, 5, 45), -- Đèn Bàn
	(39, 6, 2), -- Máy Chiếu
	(39, 7, 6), -- TV/Màn Hình
	(39, 8, 4), -- Bảng Trắng
	(39, 9, 2), -- Máy In/Máy Scan
	(39, 11, 3), -- Máy Pha Cà Phê
	(39, 12, 4), -- Máy Lọc Nước
	(39, 13, 4), -- Điều Hòa
	(39, 16, 45), -- Tủ Khóa
	(39, 17, 18), -- Cây Xanh Trong Nhà
	(39, 18, 8), -- Camera Giám Sát
	(39, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Grandiose Shared Meeting Rooms (ID: 40)
	(40, 1, 1), -- Wi-Fi
	(40, 2, 16), -- Ghế Ergonomic
	(40, 6, 3), -- Máy Chiếu
	(40, 7, 4), -- TV/Màn Hình
	(40, 8, 4), -- Bảng Trắng
	(40, 13, 2), -- Điều Hòa
	(40, 17, 6), -- Cây Xanh Trong Nhà
	(40, 18, 3), -- Camera Giám Sát
	(40, 20, 1), -- Cách Âm
	(40, 21, 1), -- Rèm/Màn Cửa

	-- Pinnacle Eco-Friendly Offices (ID: 41)
	(41, 1, 1), -- Wi-Fi
	(41, 2, 22), -- Ghế Ergonomic (từ vật liệu tái chế)
	(41, 3, 18), -- Bàn Điều Chỉnh (làm từ gỗ bền vững)
	(41, 4, 4), -- Bàn Đứng
	(41, 5, 22), -- Đèn Bàn (tiết kiệm năng lượng)
	(41, 7, 3), -- TV/Màn Hình (tiết kiệm năng lượng)
	(41, 8, 2), -- Bảng Trắng
	(41, 9, 1), -- Máy In/Máy Scan (tiết kiệm năng lượng)
	(41, 12, 2), -- Máy Lọc Nước
	(41, 13, 3), -- Điều Hòa (thân thiện với môi trường)
	(41, 15, 4), -- Tủ Lưu Trữ (làm từ vật liệu tái chế)
	(41, 16, 22), -- Tủ Khóa
	(41, 17, 15), -- Cây Xanh Trong Nhà (rất nhiều)
	(41, 18, 5), -- Camera Giám Sát
	(41, 22, 1), -- Ánh Sáng Tự Nhiên (tối đa hóa)

	-- Pinnacle Executive Boardroom (ID: 42)
	(42, 1, 1), -- Wi-Fi
	(42, 2, 14), -- Ghế Ergonomic (cao cấp)
	(42, 6, 1), -- Máy Chiếu (độ phân giải cao)
	(42, 7, 2), -- TV/Màn Hình (lớn)
	(42, 8, 2), -- Bảng Trắng
	(42, 11, 1), -- Máy Pha Cà Phê
	(42, 12, 1), -- Máy Lọc Nước
	(42, 13, 1), -- Điều Hòa
	(42, 17, 4), -- Cây Xanh Trong Nhà
	(42, 18, 2), -- Camera Giám Sát
	(42, 20, 1), -- Cách Âm (cao cấp)
	(42, 21, 1), -- Rèm/Màn Cửa

	-- Willow Creek Innovation Hub (ID: 43)
	(43, 1, 1), -- Wi-Fi (tốc độ cao)
	(43, 2, 18), -- Ghế Ergonomic
	(43, 3, 15), -- Bàn Điều Chỉnh
	(43, 4, 3), -- Bàn Đứng
	(43, 5, 18), -- Đèn Bàn
	(43, 6, 1), -- Máy Chiếu
	(43, 7, 3), -- TV/Màn Hình
	(43, 8, 3), -- Bảng Trắng
	(43, 9, 1), -- Máy In/Máy Scan
	(43, 11, 1), -- Máy Pha Cà Phê
	(43, 12, 2), -- Máy Lọc Nước
	(43, 13, 2), -- Điều Hòa
	(43, 16, 18), -- Tủ Khóa
	(43, 17, 7), -- Cây Xanh Trong Nhà
	(43, 18, 4), -- Camera Giám Sát
	(43, 20, 1), -- Cách Âm

	-- Willow Creek Shared Studio (ID: 44)
	(44, 1, 1), -- Wi-Fi
	(44, 2, 14), -- Ghế Ergonomic
	(44, 3, 12), -- Bàn Điều Chỉnh
	(44, 4, 2), -- Bàn Đứng
	(44, 5, 14), -- Đèn Bàn
	(44, 7, 2), -- TV/Màn Hình
	(44, 8, 2), -- Bảng Trắng
	(44, 9, 1), -- Máy In/Máy Scan
	(44, 12, 1), -- Máy Lọc Nước
	(44, 13, 2), -- Điều Hòa
	(44, 16, 14), -- Tủ Khóa
	(44, 17, 5), -- Cây Xanh Trong Nhà
	(44, 18, 3), -- Camera Giám Sát
	(44, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Ocean Breeze Executive Suite (ID: 45)
	(45, 1, 1), -- Wi-Fi
	(45, 2, 12), -- Ghế Ergonomic (cao cấp)
	(45, 3, 10), -- Bàn Điều Chỉnh
	(45, 4, 2), -- Bàn Đứng
	(45, 5, 12), -- Đèn Bàn
	(45, 6, 1), -- Máy Chiếu
	(45, 7, 3), -- TV/Màn Hình
	(45, 8, 2), -- Bảng Trắng
	(45, 9, 1), -- Máy In/Máy Scan
	(45, 11, 1), -- Máy Pha Cà Phê
	(45, 12, 1), -- Máy Lọc Nước
	(45, 13, 2), -- Điều Hòa
	(45, 15, 3), -- Tủ Lưu Trữ
	(45, 16, 12), -- Tủ Khóa
	(45, 17, 5), -- Cây Xanh Trong Nhà
	(45, 18, 4), -- Camera Giám Sát
	(45, 20, 1), -- Cách Âm
	(45, 21, 1), -- Rèm/Màn Cửa
	(45, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Ocean Breeze Green Office (ID: 46)
	(46, 1, 1), -- Wi-Fi
	(46, 2, 20), -- Ghế Ergonomic (từ vật liệu tái chế)
	(46, 3, 15), -- Bàn Điều Chỉnh (làm từ gỗ bền vững)
	(46, 4, 5), -- Bàn Đứng
	(46, 5, 20), -- Đèn Bàn (tiết kiệm năng lượng)
	(46, 7, 2), -- TV/Màn Hình (tiết kiệm năng lượng)
	(46, 8, 2), -- Bảng Trắng
	(46, 9, 1), -- Máy In/Máy Scan (tiết kiệm năng lượng)
	(46, 12, 2), -- Máy Lọc Nước
	(46, 13, 2), -- Điều Hòa (thân thiện với môi trường)
	(46, 15, 3), -- Tủ Lưu Trữ (làm từ vật liệu tái chế)
	(46, 16, 20), -- Tủ Khóa
	(46, 17, 15), -- Cây Xanh Trong Nhà (rất nhiều)
	(46, 18, 4), -- Camera Giám Sát
	(46, 22, 1), -- Ánh Sáng Tự Nhiên (tối đa hóa)

	-- Forest Tech Incubator (ID: 47)
	(47, 1, 1), -- Wi-Fi (tốc độ cao)
	(47, 2, 25), -- Ghế Ergonomic
	(47, 3, 20), -- Bàn Điều Chỉnh
	(47, 4, 5), -- Bàn Đứng
	(47, 5, 25), -- Đèn Bàn
	(47, 6, 2), -- Máy Chiếu
	(47, 7, 5), -- TV/Màn Hình
	(47, 8, 4), -- Bảng Trắng
	(47, 9, 2), -- Máy In/Máy Scan
	(47, 11, 2), -- Máy Pha Cà Phê
	(47, 12, 2), -- Máy Lọc Nước
	(47, 13, 3), -- Điều Hòa
	(47, 16, 25), -- Tủ Khóa
	(47, 17, 12), -- Cây Xanh Trong Nhà
	(47, 18, 6), -- Camera Giám Sát
	(47, 19, 1), -- Máy Phát Điện Dự Phòng
	(47, 20, 1), -- Cách Âm
	(47, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Mountain Collaborative Commons (ID: 48)
	(48, 1, 1), -- Wi-Fi
	(48, 2, 50), -- Ghế Ergonomic
	(48, 3, 40), -- Bàn Điều Chỉnh
	(48, 4, 10), -- Bàn Đứng
	(48, 5, 50), -- Đèn Bàn
	(48, 6, 3), -- Máy Chiếu
	(48, 7, 6), -- TV/Màn Hình
	(48, 8, 5), -- Bảng Trắng
	(48, 9, 3), -- Máy In/Máy Scan
	(48, 10, 1), -- Máy Photocopy
	(48, 11, 3), -- Máy Pha Cà Phê
	(48, 12, 4), -- Máy Lọc Nước
	(48, 13, 5), -- Điều Hòa
	(48, 16, 50), -- Tủ Khóa
	(48, 17, 20), -- Cây Xanh Trong Nhà
	(48, 18, 10), -- Camera Giám Sát
	(48, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Sunnyside Private Offices (ID: 49)
	(49, 1, 1), -- Wi-Fi
	(49, 2, 15), -- Ghế Ergonomic
	(49, 3, 12), -- Bàn Điều Chỉnh
	(49, 5, 15), -- Đèn Bàn
	(49, 7, 2), -- TV/Màn Hình
	(49, 8, 1), -- Bảng Trắng
	(49, 9, 1), -- Máy In/Máy Scan
	(49, 12, 1), -- Máy Lọc Nước
	(49, 13, 2), -- Điều Hòa
	(49, 15, 3), -- Tủ Lưu Trữ
	(49, 16, 15), -- Tủ Khóa
	(49, 17, 5), -- Cây Xanh Trong Nhà
	(49, 18, 3), -- Camera Giám Sát

	-- Wanderlust Green Meeting Center (ID: 50)
	(50, 1, 1), -- Wi-Fi
	(50, 2, 16), -- Ghế Ergonomic (từ vật liệu tái chế)
	(50, 6, 1), -- Máy Chiếu (tiết kiệm năng lượng)
	(50, 7, 2), -- TV/Màn Hình (tiết kiệm năng lượng)
	(50, 8, 2), -- Bảng Trắng
	(50, 12, 2), -- Máy Lọc Nước
	(50, 13, 2), -- Điều Hòa (thân thiện với môi trường)
	(50, 17, 12), -- Cây Xanh Trong Nhà (rất nhiều)
	(50, 18, 3), -- Camera Giám Sát
	(50, 22, 1), -- Ánh Sáng Tự Nhiên (tối đa hóa)

	-- Nomad Executive Boardroom (ID: 51)
	(51, 1, 1), -- Wi-Fi
	(51, 2, 14), -- Ghế Ergonomic (cao cấp)
	(51, 6, 1), -- Máy Chiếu (độ phân giải cao)
	(51, 7, 2), -- TV/Màn Hình (lớn)
	(51, 8, 1), -- Bảng Trắng
	(51, 11, 1), -- Máy Pha Cà Phê
	(51, 12, 1), -- Máy Lọc Nước
	(51, 13, 1), -- Điều Hòa
	(51, 17, 4), -- Cây Xanh Trong Nhà
	(51, 18, 2), -- Camera Giám Sát
	(51, 20, 1), -- Cách Âm (cao cấp)
	(51, 21, 1), -- Rèm/Màn Cửa

	-- Eccentric Coworking Community (ID: 52)
	(52, 1, 1), -- Wi-Fi (tốc độ cao)
	(52, 2, 60), -- Ghế Ergonomic
	(52, 3, 50), -- Bàn Điều Chỉnh
	(52, 4, 10), -- Bàn Đứng
	(52, 5, 60), -- Đèn Bàn
	(52, 6, 3), -- Máy Chiếu
	(52, 7, 8), -- TV/Màn Hình
	(52, 8, 5), -- Bảng Trắng
	(52, 9, 3), -- Máy In/Máy Scan
	(52, 10, 1), -- Máy Photocopy
	(52, 11, 4), -- Máy Pha Cà Phê
	(52, 12, 5), -- Máy Lọc Nước
	(52, 13, 6), -- Điều Hòa
	(52, 16, 60), -- Tủ Khóa
	(52, 17, 25), -- Cây Xanh Trong Nhà
	(52, 18, 12), -- Camera Giám Sát
	(52, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Bohemian Shared Office Suites (ID: 53)
	(53, 1, 1), -- Wi-Fi
	(53, 2, 20), -- Ghế Ergonomic
	(53, 3, 16), -- Bàn Điều Chỉnh
	(53, 4, 4), -- Bàn Đứng
	(53, 5, 20), -- Đèn Bàn
	(53, 7, 3), -- TV/Màn Hình
	(53, 8, 2), -- Bảng Trắng
	(53, 9, 1), -- Máy In/Máy Scan
	(53, 11, 1), -- Máy Pha Cà Phê
	(53, 12, 2), -- Máy Lọc Nước
	(53, 13, 2), -- Điều Hòa
	(53, 16, 20), -- Tủ Khóa
	(53, 17, 8), -- Cây Xanh Trong Nhà
	(53, 18, 4), -- Camera Giám Sát
	(53, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Enigma Green Workspace (ID: 54)
	(54, 1, 1), -- Wi-Fi
	(54, 2, 9), -- Ghế Ergonomic (từ vật liệu tái chế)
	(54, 3, 7), -- Bàn Điều Chỉnh (làm từ gỗ bền vững)
	(54, 4, 2), -- Bàn Đứng
	(54, 5, 9), -- Đèn Bàn (tiết kiệm năng lượng)
	(54, 12, 1), -- Máy Lọc Nước
	(54, 13, 1), -- Điều Hòa (thân thiện với môi trường)
	(54, 16, 9), -- Tủ Khóa
	(54, 17, 10), -- Cây Xanh Trong Nhà (rất nhiều)
	(54, 18, 2), -- Camera Giám Sát
	(54, 22, 1), -- Ánh Sáng Tự Nhiên (tối đa hóa)

	-- Sunrise Tech Laboratory (ID: 55)
	(55, 1, 1), -- Wi-Fi (tốc độ cao)
	(55, 2, 16), -- Ghế Ergonomic
	(55, 3, 12), -- Bàn Điều Chỉnh
	(55, 4, 4), -- Bàn Đứng
	(55, 5, 16), -- Đèn Bàn
	(55, 6, 1), -- Máy Chiếu
	(55, 7, 4), -- TV/Màn Hình (độ phân giải cao)
	(55, 8, 2), -- Bảng Trắng
	(55, 9, 1), -- Máy In/Máy Scan
	(55, 12, 1), -- Máy Lọc Nước
	(55, 13, 2), -- Điều Hòa
	(55, 16, 16), -- Tủ Khóa
	(55, 17, 6), -- Cây Xanh Trong Nhà
	(55, 18, 4), -- Camera Giám Sát
	(55, 20, 1), -- Cách Âm

	-- Urban Traditional Offices (ID: 56)
	(56, 1, 1), -- Wi-Fi
	(56, 2, 22), -- Ghế Ergonomic
	(56, 3, 18), -- Bàn Điều Chỉnh
	(56, 5, 22), -- Đèn Bàn
	(56, 7, 3), -- TV/Màn Hình
	(56, 8, 2), -- Bảng Trắng
	(56, 9, 1), -- Máy In/Máy Scan
	(56, 10, 1), -- Máy Photocopy
	(56, 11, 1), -- Máy Pha Cà Phê
	(56, 12, 2), -- Máy Lọc Nước
	(56, 13, 3), -- Điều Hòa
	(56, 15, 5), -- Tủ Lưu Trữ
	(56, 16, 22), -- Tủ Khóa
	(56, 17, 8), -- Cây Xanh Trong Nhà
	(56, 18, 5), -- Camera Giám Sát
	(56, 20, 1), -- Cách Âm
	(56, 21, 1), -- Rèm/Màn Cửa

	-- Luxe Collaborative Space (ID: 57)
	(57, 1, 1), -- Wi-Fi
	(57, 2, 45), -- Ghế Ergonomic
	(57, 3, 35), -- Bàn Điều Chỉnh
	(57, 4, 10), -- Bàn Đứng
	(57, 5, 45), -- Đèn Bàn
	(57, 6, 3), -- Máy Chiếu
	(57, 7, 6), -- TV/Màn Hình
	(57, 8, 4), -- Bảng Trắng
	(57, 9, 2), -- Máy In/Máy Scan
	(57, 10, 1), -- Máy Photocopy
	(57, 11, 3), -- Máy Pha Cà Phê
	(57, 12, 4), -- Máy Lọc Nước
	(57, 13, 4), -- Điều Hòa
	(57, 16, 45), -- Tủ Khóa
	(57, 17, 20), -- Cây Xanh Trong Nhà
	(57, 18, 8), -- Camera Giám Sát
	(57, 19, 1), -- Máy Phát Điện Dự Phòng
	(57, 22, 1), -- Ánh Sáng Tự Nhiên

	-- Skyline Eco-Friendly Suite (ID: 58)
	(58, 1, 1), -- Wi-Fi
	(58, 2, 17), -- Ghế Ergonomic (từ vật liệu tái chế)
	(58, 3, 14), -- Bàn Điều Chỉnh (làm từ gỗ bền vững)
	(58, 4, 3), -- Bàn Đứng
	(58, 5, 17), -- Đèn Bàn (tiết kiệm năng lượng)
	(58, 7, 2), -- TV/Màn Hình (tiết kiệm năng lượng)
	(58, 8, 1), -- Bảng Trắng
	(58, 9, 1), -- Máy In/Máy Scan (tiết kiệm năng lượng)
	(58, 12, 2), -- Máy Lọc Nước
	(58, 13, 2), -- Điều Hòa (thân thiện với môi trường)
	(58, 15, 3), -- Tủ Lưu Trữ (làm từ vật liệu tái chế)
	(58, 16, 17), -- Tủ Khóa
	(58, 17, 14), -- Cây Xanh Trong Nhà (rất nhiều)
	(58, 18, 3), -- Camera Giám Sát
	(58, 22, 1), -- Ánh Sáng Tự Nhiên (tối đa hóa)

	-- Sapphire Smart Conference Center (ID: 59)
	(59, 1, 1), -- Wi-Fi (tốc độ cao)
	(59, 2, 25), -- Ghế Ergonomic
	(59, 6, 2), -- Máy Chiếu (độ phân giải cao)
	(59, 7, 4), -- TV/Màn Hình
	(59, 8, 3), -- Bảng Trắng
	(59, 11, 1), -- Máy Pha Cà Phê
	(59, 12, 2), -- Máy Lọc Nước
	(59, 13, 2), -- Điều Hòa (điều khiển thông minh)
	(59, 17, 8), -- Cây Xanh Trong Nhà
	(59, 18, 5), -- Camera Giám Sát
	(59, 20, 1), -- Cách Âm
	(59, 21, 1), -- Rèm/Màn Cửa

	-- Crescent Shared Workstations (ID: 60)
	(60, 1, 1), -- Wi-Fi
	(60, 2, 30), -- Ghế Ergonomic
	(60, 3, 25), -- Bàn Điều Chỉnh
	(60, 4, 5), -- Bàn Đứng
	(60, 5, 30), -- Đèn Bàn
	(60, 7, 4), -- TV/Màn Hình
	(60, 8, 3), -- Bảng Trắng
	(60, 9, 2), -- Máy In/Máy Scan
	(60, 11, 2), -- Máy Pha Cà Phê
	(60, 12, 3), -- Máy Lọc Nước
	(60, 13, 3), -- Điều Hòa
	(60, 16, 30), -- Tủ Khóa
	(60, 17, 12), -- Cây Xanh Trong Nhà
	(60, 18, 6), -- Camera Giám Sát
	(60, 22, 1); -- Ánh Sáng Tự Nhiên
