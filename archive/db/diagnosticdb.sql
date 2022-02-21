create database GarageManagement

use GarageManagement

create table Functions(
    
	FunctionId int primary key identity,
	FunctionLabel varchar(90)
)


create table Services(
	ServiceId int primary key identity,
	ServiceLabel varchar(90),
	ServiceDescription varchar(600),
	ServicePrice float,
	ServiceManagerId varchar(60)
)




create table Employees(
   
   EmployeeId varchar(60) primary key ,
   EmployeeName varchar(90),
   EmployeeLastname varchar(90),
   EmployeeCin varchar(20),
   EmployeeAdress varchar(90),
   EmployeeManager varchar(60) ,
   EmployeeFunctionId  int foreign key references Functions(FunctionId),
   EmployeeEmail varchar(90),
   EmployeePhone varchar(90),
   EmployeeDateBirth date,
   EmployeeService int  foreign key references Services (ServiceId)
)

alter table services 
add foreign key (ServiceManagerId) references Employees(EmployeeId)



create table Users (
UserId int primary key,
UserName varchar(20),
Password varchar(20),
EmployeeService varchar(60) foreign key references Employees (EmployeeId)
)

create table Clients(
ClientId int primary key identity,
ClientName varchar(90),
ClientLastname varchar(90),
ClientCin varchar(20),
ClientPhone varchar(90)
)

Create table Cars(
CarId int primary key identity,
Matricule varchar(15) unique,
Model varchar(30),
ClientId int foreign key references Clients (ClientId),
)

--fiche de description 

create table TasksDescription(
IdTasksDescription int primary key,
EnterDate date,
Enddate date, 
description varchar(30),
TotalPrice float,
Statu Varchar (30),
CarId int foreign key references Cars (Carid)

)

create table Tasks(
IdTask int primary key identity,
TaskStatu Varchar(30),
TaskDateStart date,
TaskDateEnd date,
Description varchar(30),
IdTasksDescription int foreign key references TasksDescription (IdTasksDescription),
ServiceId int foreign key references services (ServiceId)
)