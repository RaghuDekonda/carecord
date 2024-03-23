create database car;
use car;
-- read data--
select * from car.cardekho;
-- count of total cars--
select count(*) from cardekho;
-- how many cars available in 2023--
select count(*) from cardekho 
where year = 2023;
-- how many cars are available 2022,2021,2022--
select count(*) from cardekho
where year in (2020,2021,2022);
-- group by --
select count(*) from cardekho
where year in (2021,2020,2022) group by year
with rollup ;
-- total count of cars by year--
select year ,count(*) from cardekho
group by year;
-- how many diesel cars in 2020--
select count(*) from cardekho 
where year = 2020 and fuel="diesel";
-- how many petrol cars in 2020--
select count(*) from cardekho 
where year = 2020 and fuel="petrol";
-- count of all fuels--
select fuel, count(*) from cardekho  
group by fuel;
-- which year has more then 500 cars--
select year , count(*) from cardekho
group by year 
having count(*)>500;
-- count of cars between 2015 and 2023--
select year ,count(*) from cardekho
where year between 2015 and 2023
group by year;