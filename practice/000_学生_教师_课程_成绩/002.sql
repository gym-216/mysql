-- 2、查询平均成绩大于60分的学生的学号和平均成绩(简单，第二道重点) 
-- 知识点：
-- 		分组 筛选 求平均值 group by ... having ... avg()
-- 解题思路：
-- 			根据学号分组,再按平均成绩筛选

select s_id, avg(s_score) 
from score
group by s_id
having avg(s_score)>60;