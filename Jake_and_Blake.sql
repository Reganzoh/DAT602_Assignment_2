drop database if exists DAT602_Jake_and_Blake;
create database DAT602_Jake_and_Blake;
use DAT602_Jake_and_Blake;

 
drop procedure if exists createdb;
delimiter //
create procedure createdb()
begin

 


    CREATE TABLE `Player` (
      `Player_ID` int NOT NULL AUTO_INCREMENT,
      `Username` varchar(50) NOT NULL,
      `Email` varchar(255) NOT NULL,
      `Password` varchar(255) NOT NULL,
      `Admin_User` smallint default NULL,
      `User_Locked` smallint default null, 
      `Login_Attempts` smallint default null,
      `Wins` int default 0,
      PRIMARY KEY (`Player_ID`)
    ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
    
    create table `Player_Session` (
    `PlayerPlayer_ID` int not null,
    `SessionSession_ID` int not null,
    Primary Key (`PlayerPlayer_ID, SessionSession_ID`));
	
    
    Create Table `Session` (
    `Session_ID` int not null Auto_Increment,
    Primary Key (`Session_ID`));
    
    Create table `Game` (
    `Game_ID` int not null auto_increment,
    `SessionSession_ID` int not null,
    `Game_Time` time default 0,
    `Turn_Timer` time default 0,
    primary key (`Game_ID`),
    foreign key (`SessionSession_ID`) references `Session`(`SessionSession_ID`);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
