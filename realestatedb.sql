create database realestate_db;
use realestate_db;

create table properties(PropertyID int primary key auto_increment,Address varchar(100),City varchar(50),State varchar(50),ZipCode varchar(50),Type varchar(50),
				        Size int,Price decimal,Status varchar(50),AgentID int);
                        
create table Agents(AgentID int primary key auto_increment,FirstName varchar(50),LastName varchar(50),Email varchar(70),Phone varchar(20),CommissionRate decimal(12,2));

create table Clients(ClientID int primary key auto_increment,FirstName varchar(50),LastName varchar(50),Email varchar(50),Phone varchar(50));

create table Transactions(TransactionID int primary key auto_increment,PropertyID int,ClientID int,AgentID int,SalePrice decimal(12,2),SaleDate date,
				         Commission decimal(12,2),foreign key(PropertyID)references properties(PropertyID),foreign key(ClientID) references Clients(ClientID), 
                         foreign key(AgentID)  references Agents(AgentID));

INSERT INTO Agents (FirstName,LastName,Email,Phone,CommissionRate) VALUES
('Arun','Kumar','arun@mail.com','9001002001',0.05),
('Divya','Ramesh','divya@mail.com','9001002002',0.04),
('Suresh','Nair','suresh@mail.com','9001002003',0.06),
('Meena','Ravi','meena@mail.com','9001002004',0.05),
('Vignesh','Shetty','vignesh@mail.com','9001002005',0.03);

INSERT INTO Clients (FirstName,LastName,Email,Phone) VALUES
('Karthik','Raja','karthik@mail.com','9884011111'),
('Anjali','Menon','anjali@mail.com','9884011112'),
('Praveen','Naidu','praveen@mail.com','9884011113'),
('Revathi','Pillai','revathi@mail.com','9884011114'),
('Manoj','Gowda','manoj@mail.com','9884011115'),
('Sathya','Narayanan','sathya@mail.com','9884011116'),
('Harish','Shetty','harish@mail.com','9884011117'),
('Deepa','Krishnan','deepa@mail.com','9884011118'),
('Arvind','Reddy','arvind@mail.com','9884011119'),
('Nithya','Lakshmi','nithya@mail.com','9884011120');
INSERT INTO Clients (FirstName,LastName,Email,Phone) VALUES
('Arjun','Iyer','arjun@mail.com','9884011121'),
('Lakshmi','Nair','lakshmi@mail.com','9884011122'),
('Sanjay','Reddy','sanjay@mail.com','9884011123'),
('Priya','Krishnan','priya@mail.com','9884011124'),
('Vijay','Menon','vijay@mail.com','9884011125'),
('Kavya','Shetty','kavya@mail.com','9884011126'),
('Rohit','Naidu','rohit@mail.com','9884011127'),
('Swathi','Pillai','swathi@mail.com','9884011128');
INSERT INTO Clients (FirstName,LastName,Email,Phone) VALUES
('Rakesh','Varma','rakesh@mail.com','9884011129'),
('Neha','Reddy','neha@mail.com','9884011130');
INSERT INTO Clients (FirstName,LastName,Email,Phone) VALUES
('Rakesh','Varma','rakesh@mail.com','9884011131'),
('Neha','Reddy','neha@mail.com','9884011132'),
('Sridhar','Iyer','sridhar@mail.com','9884011133'),
('Anitha','Menon','anitha@mail.com','9884011134'),
('Kiran','Naidu','kiran@mail.com','9884011135'),
('Lavanya','Pillai','lavanya@mail.com','9884011136'),
('Sanjana','Krishnan','sanjana@mail.com','9884011137'),
('Deepak','Shetty','deepak@mail.com','9884011138'),
('Varun','Kumar','varun@mail.com','9884011139'),
('Swetha','Rao','swetha@mail.com','9884011140');
select * from agents;
INSERT INTO Properties (Address,City,State,ZipCode,Type,Size,Price,Status,AgentID) VALUES
('Anna Nagar','Chennai','TN','600040','Apartment',1200,5500000,'Sold',1),
('T Nagar','Chennai','TN','600017','House',1800,7500000,'Sold',2),
('OMR Road','Chennai','TN','600096','Villa',2400,9800000,'Available',1),
('Whitefield','Bengaluru','KA','560066','Apartment',1300,6000000,'Sold',3),
('Indiranagar','Bengaluru','KA','560038','Villa',2600,11500000,'Sold',1),
('Banjara Hills','Hyderabad','TG','500034','Villa',2500,10500000,'Sold',4),
('Gachibowli','Hyderabad','TG','500032','Apartment',1350,6200000,'Available',3),
('Kakkanad','Kochi','KL','682030','Apartment',1200,5400000,'Sold',2),
('Beach Road','Visakhapatnam','AP','530001','Apartment',1250,5700000,'Sold',5),
('MVP Colony','Visakhapatnam','AP','530017','House',2100,8300000,'Available',2);
INSERT INTO Properties (Address,City,State,ZipCode,Type,Size,Price,Status,AgentID) VALUES
('Velachery','Chennai','TN','600042','Apartment',1100,5200000,'Available',3),
('Adyar','Chennai','TN','600020','House',2000,8200000,'Sold',2),
('Electronic City','Bengaluru','KA','560100','Apartment',1250,5800000,'Available',4),
('HSR Layout','Bengaluru','KA','560102','House',1900,8800000,'Sold',2),
('JP Nagar','Bengaluru','KA','560078','Apartment',1400,6500000,'Sold',5),
('Madhapur','Hyderabad','TG','500081','Commercial',3000,15000000,'Sold',1),
('Kukatpally','Hyderabad','TG','500072','House',1700,7000000,'Available',5),
('Edappally','Kochi','KL','682024','House',1850,7600000,'Sold',4),
('Aluva','Kochi','KL','683101','Villa',2300,9200000,'Available',3),
('Gajuwaka','Visakhapatnam','AP','530026','Commercial',2800,12000000,'Available',4);
INSERT INTO Properties (Address,City,State,ZipCode,Type,Size,Price,Status,AgentID) VALUES
('Tambaram','Chennai','TN','600045','Apartment',1150,5300000,'Available',3),
('Porur','Chennai','TN','600116','House',1750,7400000,'Sold',2),
('Marathahalli','Bengaluru','KA','560037','Apartment',1300,6100000,'Available',4),
('Koramangala','Bengaluru','KA','560095','House',2100,9200000,'Sold',1),
('Jubilee Hills','Hyderabad','TG','500033','Villa',2700,13500000,'Available',4),
('Hitech City','Hyderabad','TG','500081','Apartment',1400,6700000,'Sold',3),
('Kaloor','Kochi','KL','682017','House',1900,7800000,'Available',2),
('Thrippunithura','Kochi','KL','682301','Villa',2400,9600000,'Available',3),
('Rushikonda','Visakhapatnam','AP','530045','Apartment',1250,5900000,'Sold',5),
('Seethammadhara','Visakhapatnam','AP','530013','House',2050,8500000,'Available',2);
INSERT INTO Transactions (PropertyID,ClientID,AgentID,SalePrice,SaleDate,Commission) VALUES
(1,1,1,5600000,'2025-01-10',NULL),
(2,2,2,7600000,'2025-01-15',NULL),
(4,3,3,6100000,'2025-02-05',NULL),
(5,4,1,11800000,'2025-02-18',NULL),
(6,5,4,10700000,'2025-03-10',NULL),
(8,6,2,5500000,'2025-03-25',NULL),
(9,7,5,5800000,'2025-04-05',NULL),
(1,8,1,5650000,'2025-04-18',NULL),
(2,9,2,7700000,'2025-05-02',NULL),
(4,10,3,6150000,'2025-05-20',NULL);
INSERT INTO Transactions (PropertyID,ClientID,AgentID,SalePrice,SaleDate,Commission) VALUES
(11,11,3,5250000,'2025-09-05',NULL),
(12,12,2,8300000,'2025-09-10',NULL),
(14,13,4,8900000,'2025-09-15',NULL),
(15,14,5,6600000,'2025-09-20',NULL),
(16,15,1,15100000,'2025-09-25',NULL),
(18,16,5,7100000,'2025-10-02',NULL),
(19,17,4,7700000,'2025-10-08',NULL),
(13,18,2,6400000,'2025-10-15',NULL),
(5,19,1,11900000,'2025-10-22',NULL),
(9,20,2,8950000,'2025-10-30',NULL);
INSERT INTO Transactions (PropertyID,ClientID,AgentID,SalePrice,SaleDate,Commission) VALUES
(3,6,1,8700000,'2025-09-05',NULL),
(4,7,3,6100000,'2025-09-08',NULL),
(7,8,2,7800000,'2025-09-10',NULL),
(8,9,4,5900000,'2025-09-12',NULL),
(9,10,5,6500000,'2025-09-14',NULL),
(10,11,2,8900000,'2025-09-16',NULL),
(11,12,3,6200000,'2025-09-18',NULL),
(12,13,4,10100000,'2025-09-20',NULL),
(13,14,1,14900000,'2025-09-22',NULL),
(14,15,5,7100000,'2025-09-25',NULL),

(15,16,2,5600000,'2025-10-02',NULL),
(16,17,4,7800000,'2025-10-04',NULL),
(17,18,3,9300000,'2025-10-06',NULL),
(18,1,5,5800000,'2025-10-08',NULL),
(19,2,2,8400000,'2025-10-10',NULL),
(20,3,4,12100000,'2025-10-12',NULL),
(1,4,1,5650000,'2025-10-15',NULL),
(2,5,2,7700000,'2025-10-18',NULL),
(3,6,1,9900000,'2025-10-20',NULL),
(4,7,3,6050000,'2025-10-22',NULL),

(5,8,1,11800000,'2025-10-25',NULL),
(6,9,3,6150000,'2025-10-27',NULL),
(7,10,1,11600000,'2025-10-30',NULL),
(8,11,4,6000000,'2025-11-02',NULL),
(9,12,2,8850000,'2025-11-04',NULL),
(10,13,5,6650000,'2025-11-06',NULL),
(11,14,3,6300000,'2025-11-08',NULL),
(12,15,4,10700000,'2025-11-10',NULL),
(13,16,1,15100000,'2025-11-12',NULL),
(14,17,5,7050000,'2025-11-15',NULL),

(15,18,2,5450000,'2025-11-18',NULL),
(16,1,4,7650000,'2025-11-20',NULL),
(17,2,3,9150000,'2025-11-22',NULL),
(18,3,5,5750000,'2025-11-25',NULL),
(19,4,2,8550000,'2025-11-27',NULL),
(20,5,4,12200000,'2025-11-30',NULL),
(1,6,1,5600000,'2025-12-02',NULL),
(2,7,2,7600000,'2025-12-04',NULL),
(3,8,1,9800000,'2025-12-06',NULL),
(4,9,3,6000000,'2025-12-08',NULL),

(5,10,1,11900000,'2025-12-10',NULL),
(6,11,3,6200000,'2025-12-12',NULL),
(7,12,1,11700000,'2025-12-14',NULL),
(8,13,4,5850000,'2025-12-16',NULL),
(9,14,2,8950000,'2025-12-18',NULL),
(10,15,5,6700000,'2025-12-20',NULL),
(11,16,3,6350000,'2025-12-22',NULL),
(12,17,4,10600000,'2025-12-24',NULL),
(13,18,1,15200000,'2025-12-26',NULL),
(14,1,5,7200000,'2025-12-28',NULL),

(15,2,2,5500000,'2025-12-29',NULL),
(16,3,4,7700000,'2025-12-30',NULL),
(17,4,3,9200000,'2025-12-30',NULL),
(18,5,5,5900000,'2025-12-31',NULL),
(19,6,2,8450000,'2025-12-31',NULL),
(20,7,4,12000000,'2025-12-31',NULL);
INSERT INTO Transactions (PropertyID,ClientID,AgentID,SalePrice,SaleDate,Commission) VALUES
(3,21,1,8750000,'2026-01-02',NULL),
(4,22,3,6150000,'2026-01-04',NULL),
(5,23,2,11850000,'2026-01-06',NULL),
(6,24,4,6200000,'2026-01-08',NULL),
(7,25,1,11750000,'2026-01-10',NULL),
(8,26,5,5900000,'2026-01-12',NULL),
(9,27,2,8900000,'2026-01-14',NULL),
(10,28,3,6650000,'2026-01-16',NULL),
(11,29,4,6350000,'2026-01-18',NULL),
(12,30,1,15250000,'2026-01-20',NULL),

(13,1,2,8400000,'2026-01-22',NULL),
(14,2,5,7200000,'2026-01-24',NULL),
(15,3,3,5500000,'2026-01-26',NULL),
(16,4,4,7700000,'2026-01-27',NULL),
(17,5,1,9300000,'2026-01-28',NULL),
(18,6,5,6000000,'2026-01-29',NULL),
(19,7,2,8600000,'2026-01-30',NULL),
(20,8,4,12150000,'2026-01-31',NULL),
(1,9,1,5650000,'2026-02-02',NULL),
(2,10,2,7650000,'2026-02-04',NULL),

(3,11,1,9900000,'2026-02-06',NULL),
(4,12,3,6100000,'2026-02-08',NULL),
(5,13,1,11950000,'2026-02-10',NULL);
select * from transactions;
select count(*) from transactions;
# joins

select p.PropertyID, p.address,p.city, a.firstname AgentName,c.firstname as ClientName,t.saleprice,t.saledate from transactions t
join properties p on p.propertyID = t.propertyID
join agents a on a.agentID = t.agentID
join clients c on c.clientID =t.clientID;

# view 

create view soldpropertyview as 
select 
      p.address,
      p.city,
      a.firstname agentsName,
      t.saleprice,
      t.commission
      from properties p
join transactions t on t.propertyID = p.propertyID
join agents a on a.agentID = p.agentID;

select * from soldpropertyview;
# subquery 
select propertyID, saleprice from transactions where saleprice >(select avg(saleprice) from transactions);
    
# trigger 

delimiter $$
create trigger beforeinsertontransaction
before insert on transactions
for each row 
begin 
    declare rate decimal(5,2);
    select CommissionRate into rate from agents 
    where agentID =new.agentID;
    set new.Commission= new.saleprice*rate;
    end $$
    delimiter ;
    

INSERT INTO Transactions 
(PropertyID, ClientID, AgentID, SalePrice, SaleDate, Commission)
VALUES 
(3, 4, 1, 8500000, '2025-09-15', NULL);

select * from transactions 
order by transactionID desc;

update transactions t
join agents a on a.agentID = t.agentID
set commission = saleprice * CommissionRate;

# store procedure 
delimiter &&
create procedure GetagentRenvenue(in agentID int)
begin
	select
         a.firstname as agentname,
		count(t.transactionID) as total_sales,
        sum(t.saleprice) as total_revenue
        from agents a
		join transactions t 
        on t.agentID = a.agentID
        where a.agentID = agentID
        group by a.agentId,a.firstname;
end &&
 delimiter ;
 call GetagentRenvenue(2);
 
 -- rank agents by revenue
 
 select a.agentID,
        a.firstname as agent_name,
        sum(t.SalePrice) as total_revenue,
        dense_rank ()over(order by sum(t.SalePrice) desc) as rank_revenue
        from transactions t
        join agents a
        on a.agentID = t.agentID
        group by a.agentID , agent_name
        order by rank_revenue;
        
-- revenue per month
select 
     extract(year from SaleDate) as sale_year,
     extract(month from SaleDate) as sale_month,
     sum(saleprice) as Total_Revenue
     from transactions
     group by sale_year,sale_month
     order by sale_year,sale_month ;
     
-- month to month growth
select 
      year,
      month,
      total_revenue,
      lag(total_revenue) over (order by year,month)as previous_month_revenue,
      (total_revenue - lag(total_revenue) over (order by year,month))
      / lag(total_revenue) over (order by year,month) as mom_growth
 from ( select
            extract(year from saleDate)as year,
            extract(month from saleDate)as month,
            sum(saleprice) as total_revenue
            from transactions
            group by year,month
            order by year,month) as monthly_growth;
            
-- revenue contribution %
select 
      p.city,
      sum(t.saleprice)as city_revenue, 
      round(
      sum(t.saleprice)*100/
      (select sum(saleprice) from transactions),2) as revenue_percentage 
      from transactions t
      join properties p
      on p.propertyID = t.propertyID
      group by p.city 
      order by revenue_percentage desc;
      
-- price segmentation
select
     case
       when saleprice < 6000000 then "LOW PRICE"
       WHEN saleprice between 6000000 and 9000000 then "MEDIUM PRICE"
       else "HIGH PRICE"
       END as price_segment ,
       count(*) as total_sales, 
       sum(saleprice) as total_revenue
       FROM TRANSACTIONS
	   group by price_segment
       order by total_revenue desc;
      