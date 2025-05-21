use OfficeSpaceRental;

select * from role;
select * from user;
select * from building;
select * from typeoffice;
select * from officespace;
select * from image;
select * from tag;
-- select * from OS_tag;
select * from amenity;
select * from OS_amenity;
select * from renttype;
select * from OS_renttype;
select * from status;
-- select * from OS_status;
-- select * from reservation;
-- select * from contract;
-- select * from payment;
-- select * from favorite;
-- select * from lessorpayment;

select
        officespace.officeSpaceID,
        title,
        size,
        capacity 
    from
        officespace  
    join
        image 
            on officespace.officeSpaceID = image.officeSpaceID 
    where
        1 = 1  
        AND title LIKE '%Elite Executive Suite%' 
    group by
        officespace.officeSpaceID;

select officespace.officeSpaceID, title, size, capacity, buildingID, lessorID, typeOfficeID, statusName
from officespace  join (    
						select os1.officeSpaceID, s.statusName    
                        from OS_Status os1    
                        join Status s on os1.statusID = s.statusID    
                        where os1.startDate = (        select max(os2.startDate)        from OS_Status os2        where os2.officeSpaceID = os1.officeSpaceID    ) 
                        ) latest_status on officespace.officeSpaceID = latest_status.officeSpaceID  
where 1 = 1  and latest_status.statusName = 'Available'  
group by officespace.officeSpaceID;