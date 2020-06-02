CREATE DATABASE DB_NICOLAS;
USE DB_NICOLAS;

CREATE TABLE Person (
  Id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name varchar(100) DEFAULT NULL,
  LastName varchar(100) DEFAULT NULL,
  Age int DEFAULT NULL,
  Phone varchar(15) DEFAULT NULL,
  DocumentNumber varchar(20) DEFAULT NULL,
  Address varchar(250) DEFAULT NULL,
  State bit(1) DEFAULT NULL,
  CreatedAt datetime DEFAULT NULL,
  UpdatedAt datetime DEFAULT NULL,
  UserAuditor varchar(100) DEFAULT NULL
);

CREATE TABLE Department (
 Id BIGINT NOT NULL PRIMARY KEY,
 NameDepartment VARCHAR(100) NULL
);

CREATE TABLE Province (
 Id BIGINT NOT NULL PRIMARY KEY,
 NameProvince VARCHAR(100) NULL,
 IdDepartment BIGINT NULL
);

CREATE TABLE District (
 Id BIGINT NOT NULL PRIMARY KEY,
 NameDistrict VARCHAR(100) NULL,
 IdProvince BIGINT NULL
);


CREATE TABLE Place (
  Id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Name varchar(100) DEFAULT NULL,
  Description varchar(100) DEFAULT NULL,
  IdDepartment bigint DEFAULT NULL,
  IdProvince bigint DEFAULT NULL,
  IdDistrict bigint DEFAULT NULL,
  State bit(1) DEFAULT NULL,
  CreatedAt datetime DEFAULT NULL,
  UpdatedAt datetime DEFAULT NULL,
  UserAuditor varchar(100) DEFAULT NULL
);