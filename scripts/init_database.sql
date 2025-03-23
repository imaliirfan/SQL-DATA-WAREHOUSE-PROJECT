/*
==============================================================
Create Database and Schema
==============================================================
Script Purpose:
 this script create a new database nmaed 'datawarehouse' after checking if it already exists.
 if the database exists, it is dropped and recreated. Additionally , the script sets up three 
schema within the database: 'bronze','silver','gold'.

WARNING:
   Running this script will drop the entire 'Dataearehouse' database if it exists.
   All data in the database will be permanentally deleted. Proceed with caution and
   enusre you have proper backups before running this script.
*/
USE master; 
GO 
-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name='DataWarehouse')
BEGIN
   ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE DataWarehouse;
END;
GO
-- Create Database 'DataWarehouse'
USE master;

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
