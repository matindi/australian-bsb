CREATE DATABASE AustralianBsb_Db;

CREATE TABLE KEYABBREVIATIONS
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


copy keyabbreviations from  '/datafiles/KEY TO ABBREVIATIONS AND BSB NUMBERS Oct 2017.csv' with csv DELIMITER ',' QUOTE '"';

copy BsbDirectory from  '/datafiles/BSBDirectoryOct17-259.csv' with csv DELIMITER ',' QUOTE '"';

copy BsbDirectoryUpdate from  '/datafiles/BSB Directory Update 02Nov17-01Dec17.csv' with csv DELIMITER ',' QUOTE '"';