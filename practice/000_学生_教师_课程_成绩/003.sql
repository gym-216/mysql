-- 3、查询所有学生的学号、姓名、选课数、总成绩(不重要)  分组 求个数 求和 group by ... count() sum()
-- 解题思路：
-- 			构建新表
--				学号	姓名	课程编号	这门课的成绩
-- 				 1		小张		1			 80
-- 				 1		小张		2			 70
-- 				 2		小李		1			 50
-- 				 2		小李		2			 80
-- 				 3		大王		1			 50
-- 				 3		大王		2			 30

--	inner join 求交集

-- 得到所有学生选了哪门课,及这门课的成绩
select s.s_id, s.s_name, sc.c_id, sc.s_score
from student s
left join score sc
on s.s_id = sc.s_id;

-- 统计 每个学生的选课数及总成绩	求个数count() 求和sum()
select s.s_id, s.s_name, count(sc.c_id), sum(sc.s_score)
from student s
left join score sc
on s.s_id = sc.s_id
group by s.s_id, s.s_name;

-- 延伸：总成绩为NULL时,值改为0		case when
select s.s_id, s.s_name, count(sc.c_id), sum(case when sc.s_score is NULL then 0 else sc.s_score end)
from student s
left join score sc
on s.s_id = sc.s_id
group by s.s_id, s.s_name;