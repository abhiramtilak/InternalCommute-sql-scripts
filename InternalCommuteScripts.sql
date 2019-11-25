CREATE SCHEMA `internalcommute` ;

CREATE TABLE `internalcommute`.`users` (
  `userId` INT NOT NULL,
  `firstName` VARCHAR(45) NULL,
  `lastName` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  `mobileNumber` INT NOT NULL,
  `role` VARCHAR(45) NULL,
  `officeAddress` VARCHAR(45) NULL,
  `homeAddress` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `vehicle` VARCHAR(45) NULL,
  `availableSeats` VARCHAR(45) NULL,
  PRIMARY KEY (`userId`, `email`, `mobileNumber`));