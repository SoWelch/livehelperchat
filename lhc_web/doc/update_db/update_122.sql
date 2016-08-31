ALTER TABLE `lh_departament`
DROP COLUMN `start_hour`,
DROP COLUMN `end_hour`;

ALTER TABLE `lh_departament`
ADD `start_hour_monday` int(2) NOT NULL AFTER `sud`,
ADD `start_hour_tuesday` int(2) NOT NULL AFTER `start_hour_monday`,
ADD `start_hour_wednesday` int(2) NOT NULL AFTER `start_hour_tuesday`,
ADD `start_hour_thursday` int(2) NOT NULL AFTER `start_hour_wednesday`,
ADD `start_hour_friday` int(2) NOT NULL AFTER `start_hour_thursday`,
ADD `start_hour_saturday` int(2) NOT NULL AFTER `start_hour_friday`,
ADD `start_hour_sunday` int(2) NOT NULL AFTER `start_hour_saturday`,
ADD `end_hour_monday` int(2) NOT NULL AFTER `start_hour_sunday`,
ADD `end_hour_tuesday` int(2) NOT NULL AFTER `end_hour_monday`,
ADD `end_hour_wednesday` int(2) NOT NULL AFTER `end_hour_tuesday`,
ADD `end_hour_thursday` int(2) NOT NULL AFTER `end_hour_wednesday`,
ADD `end_hour_friday` int(2) NOT NULL AFTER `end_hour_thursday`,
ADD `end_hour_saturday` int(2) NOT NULL AFTER `end_hour_friday`,
ADD `end_hour_sunday` int(2) NOT NULL AFTER `end_hour_saturday`,
COMMENT='';

ALTER TABLE `lh_departament`
DROP INDEX `oha_sh_eh`;

ALTER TABLE `lh_departament`
ADD INDEX `oha_sh_eh` (`online_hours_active`,`start_hour_monday`,`start_hour_tuesday`,`start_hour_wednesday`,`start_hour_thursday`,`start_hour_friday`,`start_hour_saturday`,`start_hour_sunday`,
                    `end_hour_monday`,`end_hour_tuesday`,`end_hour_wednesday`,`end_hour_thursday`,`end_hour_friday`,`end_hour_saturday`,`end_hour_sunday`);