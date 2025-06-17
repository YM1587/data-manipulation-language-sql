-- DATA MANIPULATION LANGUAGE:used  to add ,edit or delete data(INSERT,UPDATE AND DELETE)
CREATE DATABASE united_nationz;
USE united_nationz;
CREATE TABLE united_nationz.Access_2_Basic_Services(
	Region varchar(32),
    Sub_region varchar(25),
    Country_name integer NOT NULL,
    Time_period integer NOT NULL,
    Pct_mananged_drinking_water_services numeric(5,2),
    Pct_mananged_sanitation_services numeric(5,2),
    Est_population_in_millions numeric(11,6),
    Est_gdp_in_billions numeric(8,2),
    Land_area numeric(10,2),
    Pct_unemployment numeric(5,2)
    
);

ALTER TABLE access_2_basic_services
MODIFY COLUMN  Country_name varchar(32);

INSERT INTO Access_2_Basic_Services(

	Region ,
    Sub_region ,
    Country_name ,
    Time_period ,
    Pct_mananged_drinking_water_services ,
    Pct_mananged_sanitation_services ,
    Est_population_in_millions ,
    Est_gdp_in_billions ,
    Land_area ,
    Pct_unemployment 

)
VALUES
('Sub-Saharan Africa','Southern Africa','South Africa',2020,92.0,78.67,58.801927,337.62,1213090.0,24.34),
('Central and Southern Asia','Central Asia','Kazahstan',2020,95.0,98.0,18.75556,171.08,2699700.0,4.89),
('Sub-Saharan Africa','Southern Africa','Botswana',2020,89.67,74.33,2.546402,14.93,566739.0,NULL),
('Sub-Saharan Africa','Southern Africa','Lesotho',2020,79.87,65.33,21.546402,140.93,56639.0,NULL);

select distinct * from Access_2_Basic_Services;

-- Disable Safe Update Mode Temporarily
set SQL_SAFE_UPDATES = 0;

delete from Access_2_Basic_Services
where Sub_region = 'Central Asia';

truncate table Access_2_Basic_Services;

select * from Access_2_Basic_Services;

update Access_2_Basic_Services
set Pct_unemployment = 4.53
where Country_name = 'China'
and Time_period = 2016;