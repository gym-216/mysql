-- 查询学生表
select * from student;
select s_id, s_name, s_birth, s_sex from student;

-- 查询教师表
select * from teacher;
select t_id, t_name from teacher;

-- 查询课程表
select * from course;
select c_id, c_name, t_id from course;

-- 查询成绩表  所有学生所有课程的成绩
select * from score;
select s_id, c_id, s_score from score;