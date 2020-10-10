-- 4、查询姓“猴”的老师的个数(不重要)	统计个数  模糊查询 count()  like '%'
--	% 任意字符

select count(t_id)
from teacher
where t_name like '猴%';

-- 不同名
select count(distinct t_name)
from teacher
where t_name like '猴%';

-- 延伸：查询名字中有'猴'的老师的个数
select count(t_id)
from teacher
where t_name like '%猴%';

-- 延伸：查询最后一个字是'猴'的老师的个数
select count(t_id)
from teacher
where t_name like '%猴';