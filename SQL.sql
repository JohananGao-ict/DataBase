--show
--������
create table test(tid number constraint test_tid primary key, 
tchar varchar2(20) constraint tchar_notnull not null);
--����һ������
insert into test values(1, ��name1��);
--�鿴����������
select * from test;
--��������
update test set tchar=��name2�� where tid=1;
--ɾ������
delete from test where tid=1;

--����ֶ���ɾ�Ĳ�
--���һ��
alter table test add tname varchar2(40);
--�޸�һ��
alter table test modify tname varchar2(20);
--�޸�����tnameΪmyname
alter table test rename column tname to myname;
--ɾ��һ��
alter table test drop column  myname;


--ɾ����ͼ
drop view viewname

--����ͬ��ʣ����Ǳ�����
create synonym ttt for test;

--�޸�LINUX����
--vi /ec/sysconfig/i18n
--echo $LANG  zh_CN.UTF-8 //��ʾ��zh_CN,�洢��UTF-8
-------�������
--row��
commit;
rollback;

--mysql   �ֺŽ�����
--���ݿ����ɾ�Ĳ�
--�鿴���ݿ��б�
show databases;
--�����ݿ�
use xx
--ɾ��xx���ݿ�
drop database xxx
--����xx���ݿ�
create database xxx 
create database xxx character set utf8
--�޸����ݿ��ַ���
alter database xxx character set utf8
--��ʾ�������ݿ�������Ϣ
show create database xxx


--�����ɾ�Ĳ�
--��ʾ������������Ϣ
show create table xxx
--�鿴ĳ�����ݿ��µ�ȫ����
show tables
--��������Լ�� primary key
--���������Զ����� auto_increment
--����ΨһԼ��unique
--����ǿ�Լ�� not null
--�������Լ�� foreign key
--check

alter table xxx drop primary key;

