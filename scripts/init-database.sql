/*
create database and schema
script purpose:
 this script creates a new database named ' DataWarehouse ' after checking if it already exists.
 If the database exists, it is dropped and recreated .Additionally , the script sets up three schemas within the databse:'bronze',
 silver' and 'gold'.
*/
use master;
GO
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  Alter database DataWharehouse set single_user with rolleback immediate;
  drop database DataWarehouse;
end;
go
-- create the datawarehouse database
CREATE DATABASE DataWarehouse;
go

USE DataWarehouse;
go
--create schema
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
