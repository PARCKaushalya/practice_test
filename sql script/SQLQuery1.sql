CREATE DATABASE HOTEL_MANAGMENT_SYSTEM;
USE HOTEL_MANAGMENT_SYSTEM;

CREATE TABLE Tbl_Login(Id int primary key identity(1,1),UserName varchar(50),Password varchar(30));
CREATE TABLE Tbl_Customer(Id int primary key  identity (1,1),Name varchar(30),ContactNo int);
CREATE TABLE Tbl_Item(Id int primary key identity(1,1),Name varchar(30),Description varchar(200));
CREATE TABLE Tbl_Order(Id int primary key identity(1,1),Order_Number varchar(50),Description varchar(200),type varchar(30),customer_Id 
int FOREIGN KEY REFERENCES Tbl_Customer(Id)); 
CREATE TABLE Tbl_Order_Details(Id int primary key identity(1,1),OrderId int FOREIGN KEY REFERENCES Tbl_Order(Id),itemId 
int FOREIGN KEY REFERENCES Tbl_Item(Id),Qty int);

insert into Tbl_Login(UserName,Password)values('ádmin',123);
select*from Tbl_Login