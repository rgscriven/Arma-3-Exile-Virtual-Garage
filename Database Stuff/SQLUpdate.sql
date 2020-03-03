ALTER TABLE `exile`.`virtual_garage`
ADD COLUMN `position_x` DOUBLE NOT NULL DEFAULT '0' AFTER `pin_code`,
ADD COLUMN `position_y` DOUBLE NOT NULL DEFAULT '0' AFTER `position_x`,
ADD COLUMN `position_z` DOUBLE NOT NULL DEFAULT '0' AFTER `position_y`,
ADD COLUMN `direction_x` DOUBLE NOT NULL DEFAULT '0' AFTER `position_z`,
ADD COLUMN `direction_y` DOUBLE NOT NULL DEFAULT '0' AFTER `direction_x`,
ADD COLUMN `direction_z` DOUBLE NOT NULL DEFAULT '0' AFTER `direction_y`,
ADD COLUMN `up_x` DOUBLE NOT NULL DEFAULT '0' AFTER `direction_z`,
ADD COLUMN `up_y` DOUBLE NOT NULL DEFAULT '0' AFTER `up_x`,
ADD COLUMN `up_z` DOUBLE NOT NULL DEFAULT '1' AFTER `up_y`,
ADD COLUMN `vehicle_texture` TEXT NOT NULL AFTER `up_z`;
