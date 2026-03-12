-- Project 3 : Cloud Data Warehouse Database Schema
-- Database used in AWS RDS accessed via Bastion Host

-- Create Database
CREATE DATABASE db_demo;

-- Use Database
USE db_demo;

-- Create Table
CREATE TABLE Interns (
    InternID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Insert Sample Data
INSERT INTO Interns (FirstName, LastName, Email)
VALUES
('John','Doe','jdoe@decodelabs.com'),
('Jane','Smith','jsmith@decodelabs.com'),
('Conan',"O'Leary",'coleary@decodelabs.com');

-- Retrieve Data
SELECT * FROM Interns;
