-- Instance Sunwell Plateau
-- ------------------------

-- ------------
-- Kalegcos ---
-- ------------
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 25795; -- make normal realm bunnie invis to players and ect 
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 25796; -- make spectral realm bunnies invis to players and ect

UPDATE `creature_template` SET `modelid_1` = 20577 WHERE `entry` in (25796, 25795);

-- correct spawn of kalegcos spawn
DELETE FROM `creature` WHERE `id`=24891;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(102510, 24891, 580, 1, 1, 0, 3001, 1704.49, 925.522, -74.5584, 4.72577, 604800, 0, 0, 828555, 169350, 0, 0);

-- corrected spawn of Sathrovarr the Corruptor
DELETE FROM `creature` WHERE `id`=24892;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(100698, 24892, 580, 1, 1, 0, 0, 1704.63, 916.777, -74.5584, 1.68785, 604800, 0, 0, 2018275, 1693500, 0, 0);

-- ------------
-- Brutallus --
-- ------------

-- madrigosa fixes
DELETE FROM `creature` WHERE `id`=24895;  -- origanl YTDB Data
-- INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
-- (80778, 24895, 580, 1, 1, 0, 0, 1459.35, 636.81, 19.9428, 4.93474, 604800, 0, 0, 424900, 3387, 0, 0);

DELETE FROM `creature` WHERE `id`=25160; -- new data for madrigosa
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
(4456501, 25160, 580, 1, 1, 0, 0, 1461.27, 647.103, 38.6641, 5.05014, 60000, 0, 0, 424900, 3387, 0, 0),
(100738, 25160, 530, 1, 1, 0, 0, 12164.9, -7066.29, 72.0305, 1.32201, 14400, 0, 0, 424900, 3387, 0, 0);

-- he was damging brutallus to much during intro 8P
UPDATE `creature_template` SET `mindmg` = 1, `maxdmg` = 1, `attackpower` = 1, `dmg_multiplier` = 1 WHERE `entry` = 25160;
-- UPDATE `creature_template` SET `mindmg` = 226, `maxdmg` = 339, `attackpower` = 85, `dmg_multiplier` = 4.1 WHERE `entry` = 25160; -- Restore what YTDB(605) had

-- -------------
-- Felmyst -----
-- -------------

-- Felmyst

-- REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('44883', '1', '24882');
-- REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('45063', '1', '24882');
-- REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('44885', '1', '25038');
-- REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('46350', '1', '25038');

UPDATE `creature_template` SET `faction_A` = 7, `faction_H` = 7 WHERE `entry` = 25038;  -- Felmyst doesnt attack til attacked

DELETE FROM `creature` WHERE `id`=25038; -- remove static spawn as she is summoned when needed
-- INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`DeathState`,`MovementType`) VALUES
-- (57715, 25038, 580, 1, 1, 0, 0, 1459.35, 636.81, 19.9428, 4.93474, 604800, 0, 0, 4903346, 3387, 0, 0);

-- ---------------------------------------------
-- InstanceFixes and Related Data --------------
-- ---------------------------------------------