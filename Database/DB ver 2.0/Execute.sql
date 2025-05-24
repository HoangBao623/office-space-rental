use OfficeSpaceRental;

select * from role;
select * from user;
select * from building;
select * from typeoffice;
select * from officespace where lessorID = 8;
select * from image;
select * from tag;
select * from OStag;
select * from amenity;
select * from OSamenity;
select * from renttype;
select * from OSrenttype;
select * from service;
select * from servicerenttype;
select * from lessorservice where serviceID = 4;
select * from status;
select * from OSstatus;
select * from reservation;
select * from `order`;
select * from orderrenttype;
select * from orderservice;
select * from payment;
select * from favorite;
select * from lessorpayment;

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
                        from OSStatus os1    
                        join Status s on os1.statusID = s.statusID    
                        where os1.startDate = (        select max(os2.startDate)        from OSStatus os2        where os2.officeSpaceID = os1.officeSpaceID    ) 
                        ) lateststatus on officespace.officeSpaceID = lateststatus.officeSpaceID  
where 1 = 1  and lateststatus.statusName = 'Available' 
group by officespace.officeSpaceID;

select officespace.officeSpaceID, title, size, capacity, officespace.buildingID, officespace.lessorID, officespace.typeOfficeID 
from officespace  
join building on officespace.buildingID = building.buildingID 
join (    select os1.officeSpaceID, s.statusName    
from OSStatus os1    
join Status s on os1.statusID = s.statusID    
where os1.startDate = (        select max(os2.startDate)        from OSStatus os2        where os2.officeSpaceID = os1.officeSpaceID    ) ) 
lateststatus on officespace.officeSpaceID = lateststatus.officeSpaceID  AND cityprovince like'%ho chi minh%' 
where 1 = 1  and lateststatus.statusName = 'Available'  
group by officespace.officeSpaceID;