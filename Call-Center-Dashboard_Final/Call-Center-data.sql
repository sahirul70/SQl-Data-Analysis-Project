-- create database
create database call_center;
-- uses database name 
use call_center;

-- show table values 
select * from `call-center-data`;

-- show total calls
Select count(*) as total_calls from `call-center-data`;
/* Ans: toatl 1455 calls  */

-- show total Agent 
Select count(distinct `Agent`) as total_Agent 
from `call-center-data`;
/* Ans: toatl 8 Agent */


-- Show Agent Name and count each Agent Value 
Select distinct(`Agent`) as Agent, count(`Agent`) Count_Agent 
from `call-center-data`
group by `Agent` ;

-- Total Department 
Select count( distinct `Department` ) as total_department 
from `call-center-data`;

-- Ans total Department 5

-- Show Department Name and count each Department Value 
Select distinct(`Department`) as Agent, count(`Department`) Count_Agent 
from `call-center-data`
group by `Department` ;




