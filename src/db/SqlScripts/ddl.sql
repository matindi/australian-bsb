CREATE DATABASE AustralianBsb_Db;

\c australianbsb_db;

CREATE TABLE KeyAbbreviations
(
    BankCode VARCHAR(3) NOT NULL, 
    BankName VARCHAR(500) NOT NULL,
    BankCount VARCHAR(10) NULL
);

CREATE TABLE BsbDirectory
(
   Bsb VARCHAR(7) NOT NULL, 
   BankCode VARCHAR(3) NOT NULL, 
   AddressLine1 VARCHAR(256) NOT NULL, 
   AddressLine2 VARCHAR(256) NOT NULL, 
   Suburb VARCHAR(100) NOT NULL,
   State VARCHAR(5) NOT NULL, 
   Postcode VARCHAR(4) NOT NULL, 
   Other VARCHAR(5) NULL
);

CREATE TABLE BsbDirectoryUpdate
(
   Change VARCHAR(3) NOT NULL,
   BankCode VARCHAR(3) NOT NULL, 
   Bsb VARCHAR(7) NOT NULL,   
   AddressLine1 VARCHAR(256) NOT NULL, 
   AddressLine2 VARCHAR(256) NOT NULL, 
   Suburb VARCHAR(100) NOT NULL,
   State VARCHAR(5) NOT NULL, 
   Postcode VARCHAR(4) NOT NULL, 
   Other VARCHAR(5) NULL 
);