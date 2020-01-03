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
               
   
  CREATE TABLE `internalcommute`.`rides` (
  `ride_id` INT NOT NULL,
  `user_id` VARCHAR(45) NULL,
  `vehicle` VARCHAR(45) NULL,
  `available_seats` VARCHAR(45) NULL,
  `vehicle_number` VARCHAR(45) NULL,
  `ride_date` DATETIME NULL,
  `ride_time` VARCHAR(45) NULL,
  PRIMARY KEY (`ride_id`));
  
  ALTER TABLE `internalcommute`.`rides` CHANGE COLUMN `ride_id` `ride_id` INT(11) NOT NULL AUTO_INCREMENT ;

               
  ALTER TABLE `internalcommute`.`rides` 
  ADD COLUMN `from_address` VARCHAR(45) NULL AFTER `ride_time`,
  ADD COLUMN `to_address` VARCHAR(45) NULL AFTER `from_address`;
               
  CREATE TABLE `internalcommute`.`ride_requests` (
  `request_id` INT NOT NULL,
  `rider_id` VARCHAR(45) NULL,
  `ride_taker_id` VARCHAR(45) NULL,
  `ride_id` INT NULL,
  `status` VARCHAR(45) NULL,
  PRIMARY KEY (`request_id`),
  INDEX `ride_id_idx` (`ride_id` ASC),
  CONSTRAINT `ride_id`
    FOREIGN KEY (`ride_id`)
    REFERENCES `internalcommute`.`rides` (`ride_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

ALTER TABLE `internalcommute`.`rides` 
ADD COLUMN `cancelled` TINYINT NULL DEFAULT 0 AFTER `to_address`;


ALTER TABLE `internalcommute`.`ride_requests` 
CHANGE COLUMN `request_id` `request_id` INT(11) NOT NULL AUTO_INCREMENT ;

