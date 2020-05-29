/*
Kristofer Hughes
CSC 355 Section 402 
Assignment 2
September 27th, 2019 
*/

drop table RESERVATION;

drop table TRAVELER;

drop table CRUISE;



create table TRAVELER(

    TID char(3) not null,

    TName varchar2(60),

    TPhone char(10),
    PRIMARY KEY (TID)

);

CREATE TABLE CRUISE(

    CID char(2) not null,

    PortName varchar2(50),

    "Length" number(2) not null,

    Price number(7, 2),
    
    primary key(CID)

);

CREATE TABLE RESERVATION(

    CruiseID char(2),

    TravelerID char(3),

    CruiseDate date,

    primary key(CruiseID, TravelerID),

    foreign key(CruiseID) references CRUISE(CID),

    foreign key(TravelerID) references TRAVELER(TID)

);


insert into CRUISE values (01, 'St. Kitts', 25, 3500);
insert into CRUISE values (02, 'Los Angeles', 50, 2000);
insert into CRUISE values (03, 'Miami', 30, 1500);
insert into CRUISE values (04, 'Montego Bay', 70, 5000);

insert into TRAVELER values (111, 'Hughes', 5554567);
insert into TRAVELER values (235, 'Pitcher', 5552345);
insert into TRAVELER values (678, 'Smith', 5559876);

insert into RESERVATION values (01, 235, '13-NOV-2017');
insert into RESERVATION values (04, 111, '27-DEC-2017');
insert into RESERVATION values (02, 235, '24-FEB-2018');
insert into RESERVATION values (03, 678, '08-AUG-2018');

select * from RESERVATION;
select * from CRUISE;
select * from TRAVELER;