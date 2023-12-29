--SQL CODING CHALLENGE PETPAL


--1)Provide a SQL script that initializes the database for the Pet Adoption Platform "PetPals"
CREATE DATABASE PETPAL;

USE PETPAL;


--2)Create tables for pets, shelters, donations, adoption events, and participants.
--3)Define appropriate primary keys, foreign keys, and constraints. 
CREATE TABLE Pets(
PETID INT PRIMARY KEY,
NAME VARCHAR(255),
AGE INT,
BREED VARCHAR(255),
TYPE VARCHAR(255),
AvailableForAdoption bit);


CREATE TABLE SHELTERS(
ShelterID int PRIMARY KEY,
Name varchar(255),
Location varchar(255)
)


Create Table Donations(
DonationId int PRIMARY KEY,
DonorName varchar(255),
DonationType varchar(255),
DonationAmount decimal,
DonationItem Varchar(255),
DonationDate datetime
)

Create Table AdoptionEvents(
EventId int PRIMARY KEY,
EventName varchar(255),
EventDate datetime,
Location varchar(255)
)

Create Table Participants(
ParticipantId int PRIMARY key,
ParticipantName varchar(255),
ParticipantType varchar(255),
EventId int Foreign Key (EventId) References AdoptionEvents(EventId)
)



--4)Ensure the script handles potential errors, such as if the database or tables already exist.

create database Petpal




--Inserting Values
insert into Pets (PetID, Name, Age, Breed, Type, AvailableForAdoption)
values
    (1, 'Argus', 2, 'German Shepherd', 'Dog', 1),
    (2, 'Alf', 1, 'Persian', 'Cat', 1),
    (3, 'Basil', 3, 'German Shepherd', 'Dog', 0),
    (4, 'Ivory', 1, 'Pomeranian', 'Dog', 1),
    (5, 'Houdini', 2, 'Ragdoll', 'Cat', 1),
    (6, 'Jake', 4, 'Beagle', 'Dog', 1),
    (7, 'Nellie', 1, 'Maine Coon', 'Dog', 0),
    (8, 'Mitch', 2, 'Siamese', 'Cat', 1),
    (9, 'Wayne', 1, 'Golden Retriever', 'Dog', 1),
    (10, 'Scarlett', 3, 'Golden Retriever', 'Dog', 1);

insert into Shelters (ShelterID, Name, Location)
values
    (1, 'Loving Paws Sanctuary', 'Mumbai, Maharashtra'),
    (2, 'Harmony Haven for Pets', 'Delhi, Delhi'),
    (3, 'Whisker Haven', 'Bangalore, Karnataka'),
    (4, 'Rainbow Shelter', 'Chennai, Tamil Nadu'),
    (5, 'Fur-ever Home Shelter', 'Kolkata, West Bengal'),
    (6, 'Furry Friends Shelter', 'Hyderabad, Telangana'),
    (7, 'Tail Wagging Retreat', 'Pune, Maharashtra'),
    (8, 'Joyful Tails', 'Ahmedabad, Gujarat'),
    (9, 'Rescue Me Pet Sanctuary', 'Jaipur, Rajasthan'),
    (10, 'Second Chance Critter Rescue', 'Lucknow, Uttar Pradesh');

insert into Donations (DonationID, DonorName, DonationType, DonationAmount, DonationItem, DonationDate)
values
    (1, 'Alexander Mitchell Reynolds', 'Cash', 100.00, NULL, '2023-01-15 10:30:00'),
    (2, 'Sophia Grace Anderson', 'Item', NULL, 'Pet Food', '2023-02-02 15:45:00'),
    (3, 'Emma Rose Bennett', 'Cash', 50.00, NULL, '2023-03-10 08:20:00'),
    (4, 'Ananya Sharma', 'Item', NULL, 'Pet Toys', '2023-04-05 12:10:00'),
    (5, 'Vikram Jain', 'Cash', 75.00, NULL, '2023-05-20 14:55:00'),
    (6, 'Ava Katherine Foster', 'Item', NULL, 'Pet Bed', '2023-06-18 09:30:00'),
    (7, 'Isabella Claire Jenkins', 'Cash', 120.00, NULL, '2023-07-03 11:40:00'),
    (8, 'Priya Sharma', 'Item', NULL, 'Cat Litter', '2023-08-22 16:15:00'),
    (9, 'Grace Elizabeth Roberts', 'Cash', 90.00, NULL, '2023-09-14 13:25:00'),
    (10, 'Oliver James Parker', 'Item', NULL, 'Dog Leash', '2023-10-30 07:50:00');

insert into AdoptionEvents (EventID, EventName, EventDate, Location)
values
    (1, 'Paws and Adoptions Festival', '2023-01-25 11:00:00', 'Mumbai, Maharashtra'),
    (2, 'Furry Friends Find Homes Expo', '2023-03-15 14:30:00', 'Lucknow, Uttar Pradesh'),
    (3, 'Adopt-a-Palooza', '2023-05-05 12:00:00', 'Bangalore, Karnataka'),
    (4, 'Whiskers and Wags', '2023-07-10 10:00:00', 'Bangalore, Karnataka'),
    (5, 'Tail-Endearing Adoption', '2023-09-02 15:00:00', 'Ahmedabad, Gujarat'),
    (6, 'Paws for Love', '2023-10-18 13:45:00', 'Mumbai, Maharashtra'),
    (7, 'Homes for Hounds & Meows Fair', '2023-12-01 09:30:00', 'Lucknow, Uttar Pradesh'),
    (8, 'Hearts Shelter Adoption Drive', '2024-02-08 11:20:00', 'Kolkata, West Bengal'),
    (9, 'Heartstrings Adoption Showcase', '2024-04-03 16:00:00', 'Jaipur, Rajasthan'),
    (10, 'Wagging Tails Adoption Affair', '2024-06-22 10:45:00', 'Chennai, Tamil Nadu');

insert into Participants (ParticipantID, ParticipantName, ParticipantType, EventID)
values
    (1, 'Loving Paws Sanctuary', 'Shelter', 1),
    (2, 'Alexander Mitchell Reynolds', 'Adopter', 1),
    (3, 'Second Chance Critter Rescue', 'Shelter', 2),
    (4, 'Oliver James Parker', 'Adopter', 2),
    (5, 'Harmony Haven for Pets', 'Shelter', 3),
    (6, 'Grace Elizabeth Roberts', 'Adopter', 3),
    (7, 'Joyful Tails', 'Shelter', 4),
    (8, 'Isabella Claire Jenkins', 'Adopter', 4),
    (9, 'Rainbow Shelter', 'Shelter', 5),
    (10, 'Ananya Sharma', 'Adopter', 5);



select * from Pets
select * from shelters
select * from Donations
select * from AdoptionEvents
select * from Participants

--5)
/*
Write an SQL query that retrieves a list of available pets (those marked as available for adoption)
from the "Pets" table. Include the pet's name, age, breed, and type in the result set. Ensure that
the query filters out pets that are not available for adoption.
*/


Select * from Pets
Where(AvailableForAdoption='True');


/*6. Write an SQL query that retrieves the names of participants (shelters and adopters) registered
for a specific adoption event. Use a parameter to specify the event ID. Ensure that the query
joins the necessary tables to retrieve the participant names and types.*/


Select P.* from Participants P
join AdoptionEvents A on P.EventId=A.EventId
Where A.EventId=1;

--or
declare @EventId int
set @EventId=1
Select P.* from Participants P
join AdoptionEvents A on P.EventId=A.EventId
Where A.EventId=@EventId;


/*7. Create a stored procedure in SQL that allows a shelter to update its information (name and
location) in the "Shelters" table. Use parameters to pass the shelter ID and the new information.
Ensure that the procedure performs the update and handles potential errors, such as an invalid
shelter ID.
*/







/*8. Write an SQL query that calculates and retrieves the total donation amount for each shelter (by
shelter name) from the "Donations" table. The result should include the shelter name and the
total donation amount. Ensure that the query handles cases where a shelter has received no
donations.
*/

--Handling Cases







/*9. Write an SQL query that retrieves the names of pets from the "Pets" table that do not have an
owner (i.e., where "OwnerID" is null). Include the pet's name, age, breed, and type in the result
set.*/

create table Users(
	UserId int primary key,
	UserName varchar(255)
);

insert into Users 
values	
	(1, 'Michael'),
	(2, 'Hemsworth'),
	(3, 'Chris');

alter table Pets 
add OwnerID int foreign key references Users(UserID);

update Pets set OwnerID = 2 where PetID = 2;
update Pets set OwnerID = 3 where PetID = 7;


select Name, Age, Breed, Type from Pets 
where OwnerID is null;






/*10. Write an SQL query that retrieves the total donation amount for each month and year (e.g.,
January 2023) from the "Donations" table. The result should include the month-year and the
corresponding total donation amount. Ensure that the query handles cases where no donations
were made in a specific month-year.*/

select format(DonationDate, 'MMMM yyyy') as Month_Year, sum(DonationAmount) as TotalDonationAmount
from Donations
group by format(DonationDate, 'MMMM yyyy');





/*11. Retrieve a list of distinct breeds for all pets that are either aged between 1 and 3 years or older
than 5 years.*/

Select Distinct(Breed) from Pets
Where (Age between 1 and 3) or Age>5;






/*12. Retrieve a list of pets and their respective shelters where the pets are currently available for
adoption.*/

Alter Table Pets
Add ShelterId int identity;

Alter Table Pets
Add Constraint ShelterId Foreign Key (ShelterId) references Shelters(ShelterId)


select P.Name,S.Name as Shelter_Name from Pets P
join Shelters S on P.ShelterId=S.ShelterId
Where(P.AvailableForAdoption='True');







/*13. Find the total number of participants in events organized by shelters located in specific city.
Example: City=Chennai*/

Select Count(P.ParticipantId) as Total_Participants from Participants P
join AdoptionEvents A on P.EventID = A.EventID
join Shelters S on A.Location = S.Location 
Where S.Location='Mumbai, Maharashtra'






/*14. Retrieve a list of unique breeds for pets with ages between 1 and 5 years.*/
select Distinct(Breed) from Pets 
where Age between 1 and 5;





/*15. Find the pets that have not been adopted by selecting their information from the 'Pet' table.*/


Select * from Pets
Where AvailableForAdoption Not In (select AvailableForAdoption from Pets Where(AvailableForAdoption='False'))

--or

Select * from Pets
Where AvailableForAdoption='True';


/*16. Retrieve the names of all adopted pets along with the adopter's name from the 'Adoption' and
'User' tables.*/

create table Adoption(
	AdoptionID int primary key,
	PetID int foreign key references Pets(PetID),
	UserID int foreign key references Users(UserID)
);

insert into Adoption values 
	(1, 3, 1),
	(2, 7, 2);

select P.Name [Name of Pet], U.UserName as [Adopter Name]
from Pets as P 
join Adoption as A on P.PetID = A.PetID 
join Users U on A.UserID = U.UserID;





/*17. Retrieve a list of all shelters along with the count of pets currently available for adoption in each
shelter.*/
select S.ShelterID, S.Name AS ShelterName, count(P.PetID) as Available_For_Adoption from Shelters S
left join Pets P ON S.ShelterID = P.ShelterID
where P.AvailableForAdoption = 1
group by S.ShelterID,S.Name;

/*18. Find pairs of pets from the same shelter that have the same breed.*/




/*19. List all possible combinations of shelters and adoption events.*/

Select S.*,A.* from Shelters s
cross join AdoptionEvents A;


/*20. Determine the shelter that has the highest number of adopted pets.*/

