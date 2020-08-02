select t1.dirver_id from tableA t1 join tableA t2 on t1.company_id != t2.company_id and t1.driver_id = t2.driver_id group by t1.driver_id having count(t1.driver_id)=2;



select t1.dirver_id from didi t1 join didi t2 on t1.company_id != t2.driver_id and t1.driver_id = t2.driver_id and (t1.time between '2020-06-01' and '2020-06-30') and (t2.time between '2020-06-01' and '2020-06-30') group by t1.driver_id having count(t1.driver_id)=2;
