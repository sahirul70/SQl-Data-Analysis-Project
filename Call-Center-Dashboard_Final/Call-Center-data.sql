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

/* Rename colume */

alter table `call-center-data` 
 rename column `Column1` to `TAF`;
 
  /* Again chack table*/
 select * from `call-center-data`;
 
 /* chack all column values */

select `TAF`, Count(`TAF`) as total_values  
from `call-center-data`
 group by `TAF`;
 
 -- Show Answered (Y/N) values count 
 
 select `Answered (Y/N)`, Count(`Answered (Y/N)`) as total_values
 from `call-center-data`
 group by `Answered (Y/N)`;
 
 -- Ans  y is 1455 
 
 -- Show Resolved  values count 
 
 select `Resolved`, Count(`Resolved`) as total_values
 from `call-center-data`
 group by `Resolved`;
 
 -- Ans Y is 1311 and N is 144
 
 -- top 5 speed of Answer ahow
 select `speed of Answer`, count(`speed of Answer`) as count_value 
 from `call-center-data`
 group by`speed of Answer`
 order by`count_value`desc 
 limit 5 ;
 
 /* count rating number of client */
 select `satisfaction rating`, count(`satisfaction rating`) as count_value 
 from `call-center-data`
 group by`satisfaction rating`
 order by`satisfaction rating`desc 
 limit 5 ;
 
 
 /* count(`satisfaction rating`) as count_value */
select `satisfaction rating`, `Department` from `call-center-data` group by `satisfaction rating`;



select `Department` from `call-center-data`;







