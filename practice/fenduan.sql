select case
         when score > 0 and score <= 5 then
          '0~5'
         when score > 5 and score <= 10 then
          '5~ 10'
         when score > 10 and score <= 15 then
          '10~ 15'
         when score > 15 and score <= 20 then
          '15~ 20'
         when score > 20 and score <= 25  then
          '20~ 25'
         when score > 25 and score <= 30  then
          '25~ 30'
         when score > 30 and score <= 35  then
          '30~ 35'
         when score > 35 and score <= 40  then
          '35~ 40'
         when score > 40 and score <= 45  then
          '40~ 45'
         when score > 45 and score <= 50  then
          '45~ 50'
         when score > 50 and score <= 55  then
          '50~ 55'
         when score > 55 and score <= 60  then
          '55~ 60'
         when score > 60 and score <= 65  then
          '60~ 65'
         when score > 65 and score <= 70  then
          '65~ 70'
         when score > 70 and score <= 75  then
          '70~ 75'
         when score > 75 and score <= 80  then
          '75~ 80'
         when score > 80 and score <= 85  then
          '80~ 85'
         when score > 85 and score <= 90  then
          '85~ 90'
         when score > 90 and score <= 95  then
          '90~ 95'
         when score > 95 and score <= 100  then
          '95~ 100'
       end "成绩分布区间",
       count(id) "人数"
from tb_score
where course='数据库' and id like '2017C3301%'
group by case
         when score > 0 and score <= 5 then
          '0~5'
         when score > 5 and score <= 10 then
          '5~ 10'
         when score > 10 and score <= 15 then
          '10~ 15'
         when score > 15 and score <= 20 then
          '15~ 20'
         when score > 20 and score <= 25  then
          '20~ 25'
         when score > 25 and score <= 30  then
          '25~ 30'
         when score > 30 and score <= 35  then
          '30~ 35'
         when score > 35 and score <= 40  then
          '35~ 40'
         when score > 40 and score <= 45  then
          '40~ 45'
         when score > 45 and score <= 50  then
          '45~ 50'
         when score > 50 and score <= 55  then
          '50~ 55'
         when score > 55 and score <= 60  then
          '55~ 60'
         when score > 60 and score <= 65  then
          '60~ 65'
         when score > 65 and score <= 70  then
          '65~ 70'
         when score > 70 and score <= 75  then
          '70~ 75'
         when score > 75 and score <= 80  then
          '75~ 80'
         when score > 80 and score <= 85  then
          '80~ 85'
         when score > 85 and score <= 90  then
          '85~ 90'
         when score > 90 and score <= 95  then
          '90~ 95'
         when score > 95 and score <= 100  then
          '95~ 100'
          end;
