-- 1.查询课程编号为“01”的课程比“02”的课程成绩高的所有学生的学号(重点) *子查询 内联结
-- 解题思路:
-- 			构建新表  -- 通过构建子查询
--					s_id		c_id_01			c_id_02
--					学生编号	课程01的成绩	课程02的成绩
--					select * from table where 01>02
--			分步构建子查询
--					查询课程编号为'01'的课程成绩
--						select s_id, c_id, s_score from score where c_id = '01';
--					查询课程编号为'02'的课程成绩
--						select s_id, c_id, s_score from score where c_id = '02';
--			表联结

select a.s_id from
(select s_id, c_id, s_score from score where c_id = '01') as a
inner join
(select s_id, c_id, s_score from score where c_id = '02') as b
on a.s_id = b.s_id
where a.s_score>b.s_score;

-- 延伸：获得更详细信息,该学生的'01'和'02'成绩
select a.s_id, a.s_score "01", b.s_score "02" from
(select s_id, c_id, s_score from score where c_id = '01') as a
inner join
(select s_id, c_id, s_score from score where c_id = '02') as b
on a.s_id = b.s_id
where a.s_score>b.s_score;

-- 延伸：在此基础上,获取学生姓名
select a.s_id, c.s_name, a.s_score "01", b.s_score "02" from
(select s_id, c_id, s_score from score where c_id = '01') as a
inner join
(select s_id, c_id, s_score from score where c_id = '02') as b
on a.s_id = b.s_id
inner join student as c
on c.s_id = a.s_id
where a.s_score>b.s_score;