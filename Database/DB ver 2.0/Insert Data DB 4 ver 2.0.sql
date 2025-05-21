use OfficeSpaceRental;

INSERT INTO Status (statusName) VALUES
	('Available'),
	('Unavailable'),
	('Occupied'),
	('Pending_Approval');

INSERT INTO OS_Status (officeSpaceID, statusID, startDate, endDate, reason) 
VALUES
	-- Office Space 1: Elite Executive Suite
	(1, 3, '2025-01-01 08:00:00', '2025-06-30 17:00:00', 'Đã được thuê bởi công ty FPT Software cho nhóm dự án ngân hàng'),
	(1, 1, '2025-07-01 08:00:00', '2025-12-31 17:00:00', 'Có sẵn để cho thuê sau khi hợp đồng kết thúc'),
	(1, 2, '2026-01-01 08:00:00', '2026-01-15 17:00:00', 'Đang sửa chữa hệ thống điều hòa và nâng cấp mạng internet'),

	-- Office Space 2: Azure Coworking Hub
	(2, 1, '2025-01-01 08:00:00', '2025-02-28 17:00:00', 'Mở cửa cho thuê ngắn hạn'),
	(2, 3, '2025-03-01 08:00:00', '2025-05-31 17:00:00', 'Đã được đặt cho hội thảo công nghệ của Viettel'),
	(2, 1, '2025-06-01 08:00:00', '2025-08-31 17:00:00', 'Mở cửa cho thuê theo giờ hoặc theo ngày'),
	(2, 2, '2025-09-01 08:00:00', '2025-09-15 17:00:00', 'Bảo trì hệ thống âm thanh và ánh sáng'),

	-- Office Space 3: Haven Business Center
	(3, 3, '2025-01-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê dài hạn bởi Ngân hàng Vietcombank cho trụ sở chi nhánh mới'),
	(3, 2, '2026-01-01 08:00:00', '2026-01-31 17:00:00', 'Đang cải tạo nội thất theo yêu cầu của khách hàng mới'),
	(3, 4, '2026-02-01 08:00:00', '2026-02-15 17:00:00', 'Đang chờ phê duyệt cho thuê từ Tập đoàn Vingroup'),

	-- Office Space 4: Grandiose Corporate Office
	(4, 2, '2025-01-01 08:00:00', '2025-02-15 17:00:00', 'Đang nâng cấp hệ thống phòng cháy chữa cháy'),
	(4, 1, '2025-02-16 08:00:00', '2025-04-30 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành nâng cấp an toàn'),
	(4, 3, '2025-05-01 08:00:00', '2025-10-31 17:00:00', 'Đã được thuê bởi công ty TNHH Samsung Việt Nam cho phòng thiết kế'),
	(4, 4, '2025-11-01 08:00:00', '2025-11-15 17:00:00', 'Đang chờ gia hạn hợp đồng từ Samsung Việt Nam'),

	-- Office Space 5: Pinnacle Smart Workspace
	(5, 1, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Mở cửa cho thuê theo giờ cho các startup công nghệ'),
	(5, 3, '2025-02-01 08:00:00', '2025-03-31 17:00:00', 'Đã được thuê bởi Zalo cho nhóm nghiên cứu AI'),
	(5, 1, '2025-04-01 08:00:00', '2025-06-30 17:00:00', 'Mở cửa cho thuê ngắn hạn sau dự án Zalo'),
	(5, 2, '2025-07-01 08:00:00', '2025-07-15 17:00:00', 'Đang nâng cấp thiết bị công nghệ và hệ thống họp trực tuyến'),

	-- Office Space 6: Willow Creek Professional Space
	(6, 3, '2025-01-01 08:00:00', '2025-08-31 17:00:00', 'Đã được thuê bởi Công ty Luật YKVN cho văn phòng chi nhánh'),
	(6, 2, '2025-09-01 08:00:00', '2025-09-30 17:00:00', 'Đang sơn lại và thay thảm toàn bộ văn phòng'),
	(6, 1, '2025-10-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành sửa chữa'),

	-- Office Space 7: Ocean Breeze Creative Studio
	(7, 4, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang chờ phê duyệt cho thuê từ Công ty Truyền thông Dentsu Việt Nam'),
	(7, 3, '2025-01-16 08:00:00', '2025-07-15 17:00:00', 'Đã được thuê bởi Dentsu Việt Nam cho studio sáng tạo'),
	(7, 1, '2025-07-16 08:00:00', '2025-10-31 17:00:00', 'Mở cửa cho thuê theo dự án sáng tạo ngắn hạn'),
	(7, 2, '2025-11-01 08:00:00', '2025-12-31 17:00:00', 'Đang nâng cấp hệ thống ánh sáng studio và thiết bị ghi hình'),

	-- Office Space 8: Forest Retreat Eco Office
	(8, 2, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Đang hoàn thiện khu vực vườn sinh thái và không gian xanh'),
	(8, 1, '2025-02-01 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê với mô hình văn phòng xanh mới'),
	(8, 3, '2025-04-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi WWF Việt Nam làm trụ sở chính'),

	-- Office Space 9: Mountain View Business Suite
	(9, 1, '2025-01-01 08:00:00', '2025-02-28 17:00:00', 'Có sẵn để cho thuê ngắn và dài hạn'),
	(9, 4, '2025-03-01 08:00:00', '2025-03-15 17:00:00', 'Đang chờ phê duyệt hợp đồng từ Công ty Du lịch Saigontourist'),
	(9, 3, '2025-03-16 08:00:00', '2025-09-15 17:00:00', 'Đã được thuê bởi Saigontourist cho phòng kinh doanh'),
	(9, 1, '2025-09-16 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi hợp đồng Saigontourist kết thúc'),

	-- Office Space 10: Sunnyside Tech Hub
	(10, 3, '2025-01-01 08:00:00', '2025-04-30 17:00:00', 'Đã được thuê bởi Tiki cho nhóm phát triển ứng dụng di động'),
	(10, 2, '2025-05-01 08:00:00', '2025-05-15 17:00:00', 'Đang nâng cấp đường truyền internet tốc độ cao'),
	(10, 3, '2025-05-16 08:00:00', '2025-11-30 17:00:00', 'Đã được thuê tiếp bởi Tiki cho dự án mới'),
	(10, 1, '2025-12-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê cuối năm'),

	-- Office Space 11-15
	(11, 3, '2025-01-01 08:00:00', '2025-06-30 17:00:00', 'Đã được thuê bởi WeWork Việt Nam làm không gian làm việc chung'),
	(12, 2, '2025-01-01 08:00:00', '2025-02-15 17:00:00', 'Đang sửa chữa hệ thống cấp thoát nước'),
	(13, 1, '2025-01-01 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê theo tuần cho các sự kiện đổi mới sáng tạo'),
	(14, 4, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Đang chờ phê duyệt từ Nhà đầu tư Hàn Quốc'),
	(15, 3, '2025-01-01 08:00:00', '2025-08-31 17:00:00', 'Đã được thuê bởi Lazada làm văn phòng đại diện'),

	-- Office Space 16-20
	(16, 1, '2025-01-01 08:00:00', '2025-05-31 17:00:00', 'Mở cửa cho thuê theo giờ hoặc theo ngày'),
	(17, 3, '2025-01-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê dài hạn bởi VNG Corporation cho phòng phát triển game'),
	(18, 2, '2025-01-01 08:00:00', '2025-03-15 17:00:00', 'Đang nâng cấp nội thất và thiết bị văn phòng'),
	(19, 4, '2025-01-01 08:00:00', '2025-02-28 17:00:00', 'Đang chờ phê duyệt từ Tập đoàn Bảo Việt'),
	(20, 3, '2025-01-01 08:00:00', '2025-09-30 17:00:00', 'Đã được thuê bởi Shopee Vietnam cho đội ngũ marketing'),

	-- Office Space 21-25
	(21, 1, '2025-01-01 08:00:00', '2025-04-30 17:00:00', 'Có sẵn để cho thuê theo tháng'),
	(21, 3, '2025-05-01 08:00:00', '2025-10-31 17:00:00', 'Đã được thuê bởi Công ty Truyền thông Ogilvy Vietnam'),
	(21, 1, '2025-11-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi Ogilvy chuyển đi'),
	(22, 2, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Đang sửa chữa hệ thống điện'),
	(22, 1, '2025-02-01 08:00:00', '2025-06-30 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành sửa chữa'),
	(22, 3, '2025-07-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi BIDV cho phòng giao dịch mới'),
	(23, 3, '2025-01-01 08:00:00', '2025-05-31 17:00:00', 'Đã được thuê bởi Grab Vietnam cho văn phòng vận hành'),
	(24, 4, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang chờ phê duyệt từ Phòng Thương mại và Công nghiệp Việt Nam'),
	(25, 2, '2025-01-01 08:00:00', '2025-02-28 17:00:00', 'Đang cải tạo theo tiêu chuẩn xanh LEED'),

	-- Office Space 26-30
	(26, 1, '2025-01-01 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê ngắn hạn'),
	(26, 3, '2025-04-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Techcombank làm văn phòng giao dịch'),
	(27, 2, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang sửa chữa sau sự cố rò rỉ nước'),
	(27, 1, '2025-01-16 08:00:00', '2025-06-30 17:00:00', 'Mở cửa cho thuê ngắn hạn hoặc dài hạn'),
	(27, 3, '2025-07-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi VietinBank làm văn phòng đại diện'),
	(28, 3, '2025-01-01 08:00:00', '2025-10-31 17:00:00', 'Đã được thuê bởi Tập đoàn Vinamilk cho trụ sở chi nhánh miền Nam'),
	(29, 4, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Đang chờ phê duyệt từ Tập đoàn Dầu khí Việt Nam'),
	(30, 1, '2025-01-01 08:00:00', '2025-02-28 17:00:00', 'Mở cửa cho thuê theo giờ cho các cuộc họp và hội nghị'),
	(30, 3, '2025-03-01 08:00:00', '2025-08-31 17:00:00', 'Đã được thuê bởi Microsoft Vietnam cho văn phòng đào tạo'),
	(30, 1, '2025-09-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê ngắn hạn sau khi Microsoft rời đi'),

	-- Office Space 31-33 (additional spaces for buildings)
	(31, 3, '2025-01-01 08:00:00', '2025-06-30 17:00:00', 'Đã được thuê bởi PwC Vietnam làm văn phòng kiểm toán'),
	(31, 1, '2025-07-01 08:00:00', '2025-09-30 17:00:00', 'Mở cửa cho thuê sau khi PwC chuyển đi'),
	(31, 2, '2025-10-01 08:00:00', '2025-10-15 17:00:00', 'Đang bảo trì hệ thống điều hòa trung tâm'),
	(31, 4, '2025-10-16 08:00:00', '2025-10-31 17:00:00', 'Đang chờ phê duyệt từ KPMG Vietnam'),
	(31, 3, '2025-11-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi KPMG Vietnam làm văn phòng tư vấn'),
	(32, 1, '2025-01-01 08:00:00', '2025-04-30 17:00:00', 'Mở cửa cho thuê với mô hình không gian làm việc chung'),
	(32, 3, '2025-05-01 08:00:00', '2025-11-30 17:00:00', 'Đã được thuê bởi Google Vietnam cho không gian làm việc sáng tạo'),
	(32, 1, '2025-12-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê theo giờ cho các sự kiện công nghệ'),
	(33, 2, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Đang nâng cấp hệ thống hội nghị thông minh'),
	(33, 1, '2025-02-01 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành nâng cấp'),
	(33, 3, '2025-04-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Coca-Cola Việt Nam làm văn phòng đại diện miền Bắc'),

	-- Office Space 34-37
	(34, 4, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang chờ phê duyệt từ PepsiCo Việt Nam'),
	(34, 3, '2025-01-16 08:00:00', '2025-08-31 17:00:00', 'Đã được thuê bởi PepsiCo Việt Nam cho phòng marketing'),
	(34, 1, '2025-09-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi PepsiCo rời đi'),
	(35, 3, '2025-01-01 08:00:00', '2025-05-31 17:00:00', 'Đã được thuê bởi Unilever Việt Nam cho phòng nghiên cứu thị trường'),
	(35, 2, '2025-06-01 08:00:00', '2025-06-15 17:00:00', 'Đang sửa chữa hệ thống camera an ninh'),
	(35, 3, '2025-06-16 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê tiếp bởi Unilever Việt Nam cho dự án mới'),
	(36, 1, '2025-01-01 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê theo tháng hoặc theo quý'),
	(36, 3, '2025-04-01 08:00:00', '2025-10-31 17:00:00', 'Đã được thuê bởi P&G Việt Nam làm văn phòng đại diện'),
	(36, 1, '2025-11-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi P&G chuyển đi'),
	(37, 2, '2025-01-01 08:00:00', '2025-02-15 17:00:00', 'Đang cải tạo theo tiêu chuẩn WELL Building'),
	(37, 1, '2025-02-16 08:00:00', '2025-05-31 17:00:00', 'Mở cửa cho thuê không gian làm việc lành mạnh'),
	(37, 3, '2025-06-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Abbott Việt Nam làm văn phòng đại diện'),

	-- Office Space 38-40
	(38, 1, '2025-01-01 08:00:00', '2025-02-28 17:00:00', 'Mở cửa cho thuê với mô hình 24/7'),
	(38, 3, '2025-03-01 08:00:00', '2025-09-30 17:00:00', 'Đã được thuê bởi Shopee Việt Nam cho nhóm kỹ thuật'),
	(38, 1, '2025-10-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê theo giờ cho các sự kiện công nghệ'),
	(39, 4, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Đang chờ phê duyệt từ Ngân hàng HSBC Việt Nam'),
	(39, 3, '2025-02-01 08:00:00', '2025-08-31 17:00:00', 'Đã được thuê bởi HSBC Việt Nam làm văn phòng giao dịch'),
	(39, 1, '2025-09-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi HSBC rời đi'),
	(40, 2, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang nâng cấp hệ thống an ninh'),
	(40, 1, '2025-01-16 08:00:00', '2025-04-30 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành nâng cấp'),
	(40, 3, '2025-05-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Citibank Việt Nam làm văn phòng đại diện'),

	-- Office Space 41-43
	(41, 3, '2025-01-01 08:00:00', '2025-07-31 17:00:00', 'Đã được thuê bởi Standard Chartered Bank làm văn phòng giao dịch'),
	(41, 1, '2025-08-01 08:00:00', '2025-10-31 17:00:00', 'Mở cửa cho thuê sau khi Standard Chartered rời đi'),
	(41, 2, '2025-11-01 08:00:00', '2025-11-15 17:00:00', 'Đang bảo trì hệ thống phòng cháy chữa cháy'),
	(41, 1, '2025-11-16 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành bảo trì'),
	(42, 1, '2025-01-01 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê theo tháng'),
	(42, 3, '2025-04-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi ANZ Bank Việt Nam làm văn phòng đại diện'),
	(43, 4, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang chờ phê duyệt từ Ngân hàng UOB Việt Nam'),
	(43, 3, '2025-01-16 08:00:00', '2025-07-31 17:00:00', 'Đã được thuê bởi UOB Việt Nam làm văn phòng giao dịch'),
	(43, 1, '2025-08-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi UOB rời đi'),

	-- Office Space 44-50
	(44, 2, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Đang cải tạo theo tiêu chuẩn văn phòng thông minh'),
	(44, 1, '2025-02-01 08:00:00', '2025-04-30 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành cải tạo'),
	(44, 3, '2025-05-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Intel Việt Nam làm trung tâm nghiên cứu'),
	(45, 3, '2025-01-01 08:00:00', '2025-06-30 17:00:00', 'Đã được thuê bởi Oracle Việt Nam làm văn phòng đại diện'),
	(45, 2, '2025-07-01 08:00:00', '2025-07-15 17:00:00', 'Đang nâng cấp hệ thống mạng'),
	(45, 3, '2025-07-16 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê tiếp bởi Oracle Việt Nam sau khi nâng cấp'),
	(46, 1, '2025-01-01 08:00:00', '2025-02-28 17:00:00', 'Mở cửa cho thuê ngắn hạn'),
	(46, 4, '2025-03-01 08:00:00', '2025-03-15 17:00:00', 'Đang chờ phê duyệt từ IBM Việt Nam'),
	(46, 3, '2025-03-16 08:00:00', '2025-09-30 17:00:00', 'Đã được thuê bởi IBM Việt Nam làm trung tâm dịch vụ'),
	(46, 1, '2025-10-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi IBM rời đi'),
	(47, 2, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang sửa chữa hệ thống thang máy'),
	(47, 1, '2025-01-16 08:00:00', '2025-05-31 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành sửa chữa'),
	(47, 3, '2025-06-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi SAP Việt Nam làm văn phòng đại diện'),
	(48, 3, '2025-01-01 08:00:00', '2025-07-31 17:00:00', 'Đã được thuê bởi Manulife Việt Nam làm văn phòng giao dịch'),
	(48, 1, '2025-08-01 08:00:00', '2025-10-31 17:00:00', 'Mở cửa cho thuê sau khi Manulife rời đi'),
	(48, 4, '2025-11-01 08:00:00', '2025-11-15 17:00:00', 'Đang chờ phê duyệt từ Prudential Việt Nam'),
	(48, 3, '2025-11-16 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Prudential Việt Nam làm văn phòng kinh doanh'),
	(49, 1, '2025-01-01 08:00:00', '2025-04-30 17:00:00', 'Mở cửa cho thuê dài hạn'),
	(49, 3, '2025-05-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi AIA Việt Nam làm trung tâm đào tạo'),
	(50, 2, '2025-01-01 08:00:00', '2025-02-15 17:00:00', 'Đang nâng cấp hệ thống cửa thông minh'),
	(50, 1, '2025-02-16 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành nâng cấp'),
	(50, 3, '2025-04-01 08:00:00', '2025-10-31 17:00:00', 'Đã được thuê bởi Bảo Minh làm văn phòng đại diện'),
	(50, 1, '2025-11-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi Bảo Minh rời đi'),

	-- Office Space 51-55
	(51, 3, '2025-01-01 08:00:00', '2025-06-30 17:00:00', 'Đã được thuê bởi Nestlé Việt Nam làm văn phòng marketing'),
	(51, 2, '2025-07-01 08:00:00', '2025-07-31 17:00:00', 'Đang sửa chữa hệ thống điều hòa'),
	(51, 3, '2025-08-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê tiếp bởi Nestlé Việt Nam sau khi sửa chữa'),
	(52, 4, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang chờ phê duyệt từ Mondelez Việt Nam'),
	(52, 3, '2025-01-16 08:00:00', '2025-08-31 17:00:00', 'Đã được thuê bởi Mondelez Việt Nam làm văn phòng đại diện'),
	(52, 1, '2025-09-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi Mondelez rời đi'),
	(53, 1, '2025-01-01 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê ngắn hạn'),
	(53, 3, '2025-04-01 08:00:00', '2025-10-31 17:00:00', 'Đã được thuê bởi Danone Việt Nam làm văn phòng hành chính'),
	(53, 2, '2025-11-01 08:00:00', '2025-11-30 17:00:00', 'Đang nâng cấp hệ thống an ninh'),
	(53, 1, '2025-12-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành nâng cấp'),
	(54, 3, '2025-01-01 08:00:00', '2025-05-31 17:00:00', 'Đã được thuê bởi Heineken Việt Nam làm văn phòng đại diện'),
	(54, 1, '2025-06-01 08:00:00', '2025-08-31 17:00:00', 'Mở cửa cho thuê sau khi Heineken rời đi'),
	(54, 4, '2025-09-01 08:00:00', '2025-09-15 17:00:00', 'Đang chờ phê duyệt từ Carlsberg Việt Nam'),
	(54, 3, '2025-09-16 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Carlsberg Việt Nam làm văn phòng marketing'),
	(55, 2, '2025-01-01 08:00:00', '2025-01-31 17:00:00', 'Đang cải tạo theo mô hình không gian mở'),
	(55, 1, '2025-02-01 08:00:00', '2025-04-30 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành cải tạo'),
	(55, 3, '2025-05-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi SABECO làm văn phòng đại diện'),

	-- Office Space 56-60
	(56, 1, '2025-01-01 08:00:00', '2025-02-28 17:00:00', 'Mở cửa cho thuê theo tuần'),
	(56, 3, '2025-03-01 08:00:00', '2025-09-30 17:00:00', 'Đã được thuê bởi Habeco làm văn phòng kinh doanh'),
	(56, 1, '2025-10-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi Habeco rời đi'),
	(57, 3, '2025-01-01 08:00:00', '2025-07-31 17:00:00', 'Đã được thuê bởi Mercedes-Benz Việt Nam làm showroom'),
	(57, 2, '2025-08-01 08:00:00', '2025-08-31 17:00:00', 'Đang sửa chữa hệ thống chiếu sáng'),
	(57, 3, '2025-09-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê tiếp bởi Mercedes-Benz Việt Nam sau khi sửa chữa'),
	(58, 4, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang chờ phê duyệt từ BMW Việt Nam'),
	(58, 3, '2025-01-16 08:00:00', '2025-06-30 17:00:00', 'Đã được thuê bởi BMW Việt Nam làm văn phòng marketing'),
	(58, 1, '2025-07-01 08:00:00', '2025-09-30 17:00:00', 'Mở cửa cho thuê sau khi BMW rời đi'),
	(58, 3, '2025-10-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Porsche Việt Nam làm văn phòng đại diện'),
	(59, 1, '2025-01-01 08:00:00', '2025-03-31 17:00:00', 'Mở cửa cho thuê ngắn hạn'),
	(59, 3, '2025-04-01 08:00:00', '2025-10-31 17:00:00', 'Đã được thuê bởi Audi Việt Nam làm văn phòng kinh doanh'),
	(59, 2, '2025-11-01 08:00:00', '2025-11-30 17:00:00', 'Đang nâng cấp hệ thống điện'),
	(59, 1, '2025-12-01 08:00:00', '2025-12-31 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành nâng cấp'),
	(60, 2, '2025-01-01 08:00:00', '2025-01-15 17:00:00', 'Đang cải tạo theo tiêu chuẩn Platinum LEED'),
	(60, 1, '2025-01-16 08:00:00', '2025-04-30 17:00:00', 'Mở cửa cho thuê sau khi hoàn thành cải tạo'),
	(60, 3, '2025-05-01 08:00:00', '2025-12-31 17:00:00', 'Đã được thuê bởi Lexus Việt Nam làm văn phòng đại diện');