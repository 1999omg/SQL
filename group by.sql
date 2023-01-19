-- group by clause 


select* from employeeD
-- country wise show sallery 

--group by clasuse alway use with select function 

select counrty , sum (sallery) as 'total sallery'from  employeeD group by counrty ;

select counrty ,min (sallery )as 'minimun sallery 'from employeeD group by counrty;