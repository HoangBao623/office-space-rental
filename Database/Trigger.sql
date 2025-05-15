-- Triggers

-- Trigger: Update DetailStatus when a Contract is inserted
DELIMITER //
CREATE TRIGGER after_contract_insert
AFTER INSERT ON Contract
FOR EACH ROW
BEGIN
    INSERT INTO DetailStatus (officeSpaceID, statusID, startDate, reason)
    VALUES (NEW.officeSpaceID, 
            (SELECT statusID FROM Status WHERE statusName = 'Occupied'),
            NEW.startDate,
            'Contract created');
END //
DELIMITER ;

use real_estate;
SET GLOBAL event_scheduler = ON;
SHOW EVENTS;
-- DROP EVENT IF EXISTS update_status_periodically;

CREATE EVENT update_invoiceStatus_periodically
ON SCHEDULE EVERY 1 MINUTE
DO
    -- Cập nhật trạng thái trong bảng invoice
    UPDATE invoice
    SET status = 'Completed'
    WHERE (endDate < NOW()) AND (status != 'Completed');

ALTER EVENT update_accomStatus_periodically
ON SCHEDULE EVERY 1 MINUTE
DO
    -- Cập nhật trạng thái trong bảng accommodation
    UPDATE accommodation
    SET status = 'Unavailable'
    WHERE accommodation.accommodationID IN ( SELECT accommodationID FROM invoice WHERE status = 'Completed')
			AND status = 'Occupied';



    
