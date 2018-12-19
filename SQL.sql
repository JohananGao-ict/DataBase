--show
--创建表
create table test(tid number constraint test_tid primary key, 
tchar varchar2(20) constraint tchar_notnull not null);
--插入一行数据
insert into test values(1, ‘name1’);
--查看表所有数据
select * from test;
--更改数据
update test set tchar=‘name2’ where tid=1;
--删除数据
delete from test where tid=1;

--表的字段增删改查
--添加一列
alter table test add tname varchar2(40);
--修改一列
alter table test modify tname varchar2(20);
--修改列名tname为myname
alter table test rename column tname to myname;
--删除一列
alter table test drop column  myname;


--删除视图
drop view viewname

--创建同义词（就是别名）
create synonym ttt for test;

--修改LINUX乱码
--vi /ec/sysconfig/i18n
--echo $LANG  zh_CN.UTF-8 //显示是zh_CN,存储是UTF-8
-------事物回退
--row行
commit;
rollback;

--mysql   分号结束；
--数据库的增删改查
--查看数据库列表
show databases;
--打开数据库
use xx
--删除xx数据库
drop database xxx
--创建xx数据库
create database xxx 
create database xxx character set utf8
--修改数据库字符集
alter database xxx character set utf8
--显示创建数据库的语句信息
show create database xxx


--表的增删改查
--显示创建表的语句信息
show create table xxx
--查看某个数据库下的全部表
show tables
--定义主键约束 primary key
--定义主键自动增长 auto_increment
--定义唯一约束unique
--定义非空约束 not null
--定义外键约束 foreign key
--check

alter table xxx drop primary key;

