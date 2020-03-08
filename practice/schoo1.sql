select s1.Sid,s1.Score,s2.Sid,s2.Score
from
(select Sid,Score from SC where Cid=01) as s1
join
(select Sid,Score from SC where Cid=02) as s2
on s1.Sid=s2.Sid 
where s1.Score > s2.Score;