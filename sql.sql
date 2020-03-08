--学过01 且 学过 02 课程的同学的信息
select stu.* from Student as stu 
where Sid in (select distinct s.Sid from SC as s 
join (select Sid from SC where Cid = 01) as s1 on s.Sid = s1.Sid 
join (select Sid from SC where Cid = 02) as s2 on s1.Sid = s2.Sid);


--学过01 但没 学过 02 课程的同学的信息
select stu.* from Student as stu 
join SC as s1 on s1.Sid = stu.Sid and s1.Cid='01'
where s1.Sid not in (select s2.Sid from SC as s2 where s2.Cid ='02');


--查询 没有学全 所有课程的同学的信息
select stu.* from Student as stu
join SC as s1 on stu.Sid = s1.Sid
group by s1.Sid having count(s1.Sid)!=(select count(*) from Course);


--查询至少有一门课与 学号为01 的同学所学相同的同学的信息.
select distinct stu.* from Student as stu
join SC as s1 on stu.Sid = s1.Sid and s1.Sid!=01
where s1.Cid in (select s2.Cid from SC as s2 where s2.Sid = 01);


--查询没学过张三老师讲课的学生姓名
select Sname from Student where Sid in 
(select distinct Sid from Student where Sid not in
(select Sid from SC where Cid =
(select Cid from Course where Tid = 
(select Tid from Teacher where Tname='张三'))));


--查询 01课程分数小于60,按分数降序排列的学生信息
select stu.*,SC.Score from Student stu,SC
where stu.Sid = SC.Sid and SC.Score<60 and SC.cid = 01 order by SC.Score desc; 


--求每门课程的学生人数
select SC.Cid,Cname,count(*) as '人数'
from SC,Course where SC.Cid=Course.Cid group by Cid,Cname;


--查询不及格的课程
select stu.Sname,c.Cname,s.Score
from Student as stu,Course as c,SC as s
where s.Score < 60 and c.Cid=s.Cid and stu.Sid=s.Sid;

--查询平均成绩大于或等于 85 的学生的学号,姓名和平均成绩
select stu.Sid,stu.Sname,avg(s.Score)
from Student as stu,SC as s
where s.Sid = stu.Sid 
group by stu.Sid,stu.Sname having avg(s.Score)>=85;


--查询选修了全部课程的学生
select stu.*
from Student as stu,SC as s where stu.Sid=s.Sid
group by Sid having count(*) = (select count(*) from Course);
