## schema design for epostal
## for mySQL
## use source to load it into mysql say source EPOSTAL_table.sql from the mysql shell
use sample_postal;
DROP TABLE IF EXISTS Voter_history;
CREATE TABLE `Voter_history` (
  `sequence` bigint(20) NOT NULL,
  `Voter` int(10) NOT NULL,
  `Precinct_Name` varchar(64) NOT NULL,
  `Precinct_Code` varchar(32) NOT NULL,
  `ward` varchar(64) NOT NULL,
  `Township` varchar(64) NOT NULL,
  `Party_Affiliation` varchar(1) NOT NULL,
  `Absentee_Voter` varchar(1) NOT NULL,
  `Voter_Statusvar` char(16) NOT NULL,
  `Early_Voter_Status` varchar(16) NOT NULL,
  `General_2014` varchar(1) NOT NULL,
  `General_2012` varchar(1) NOT NULL,
  `General_2010` varchar(1) NOT NULL,
  `General_2008` varchar(1) NOT NULL,
  `General_2006` varchar(1) NOT NULL,
  `General_2004` varchar(1) NOT NULL,
  `General_2002` varchar(1) NOT NULL,
  `General_2000` varchar(1) NOT NULL,
  `Primary_2014` varchar(1) NOT NULL,
  `Primary_2012` varchar(1) NOT NULL,
  `Primary_2010` varchar(1) NOT NULL,
  `Primary_2008` varchar(1) NOT NULL,
  `Primary_2006` varchar(1) NOT NULL,
  `Primary_2004` varchar(1) NOT NULL,
  `Primary_2002` varchar(1) NOT NULL,
  `Primary_2000` varchar(1) NOT NULL,
  `Primary_Voted_Times` int(11) NOT NULL,
  `General_Voted_Times` int(11) NOT NULL,
  `Times_Voted_General_Recent` int(10) NOT NULL,
  `Times_Voted_Primary_Recent` int(10) NOT NULL,
  `Times_Voted_Most_Recent` int(10) NOT NULL,
  PRIMARY KEY (`sequence`)
);

LOAD DATA LOCAL  INFILE '/home/ubuntu/Data_Elements_Postal_Voter_Sample.csv'  INTO TABLE Voter_history FIELDS TERMINATED BY ','  ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS;

SELECT count(*) from Voter_history ;
#show warnings;