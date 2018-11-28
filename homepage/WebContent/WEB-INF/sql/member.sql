DROP TABLE member purge;

select *  from member

create table member(
 id				varchar(10)		not null,
 passwd			varchar(20)		not null,
 mname			varchar(20)		not null,
 tel			varchar(14)		null,
 email			varchar(50)		not null unique,
 zipcode		varchar(7)		null,
 address1		varchar(150)	null,
 address2		varchar(50)		null,
 job			varchar(20)		not null,
 mdate			date			not null, 
 fname 			varchar(50)		default 'member.jpg',
 grade			char(1)			default 'h',
 primary key (id)	
 );

 
 INSERT INTO member(id, passwd, mname, tel, email, zipcode,  
address1,address2, job, mdate, grade) 
VALUES('admin', '1234', '관리자', '123-1234', 'admin@mail.com',  
'123-123','인천시', '남동구' ,'A01', sysdate,'A'); 
  
 INSERT INTO member(id, passwd, mname, tel, email, zipcode,  
address1,address2, job, mdate, fname, grade) 
VALUES('user1', '1234', '개발32', '123-1234', 'email2123@mail.com',  
'123-123','광명시','남동구' ,'A01', sysdate, 'man.jpg', 'H'); 
 
INSERT INTO member(id, passwd, mname, tel, email, zipcode,  
address1,address2, job, mdate, fname, grade) 
VALUES('user3', '1234', '개발자3', '123-1234', 'email3@mail.com',  
'123-123','용인시','남동구' ,'A01', sysdate, 'myface.jpg', 'H'); 

--중복 아이디 검사 관련 sql
--0:중복 아님, 1:중복
select count(id)
from member
where id='user1';

--이메일 중복 확인
select count(email) as cnt
from member
where email='email2@mail.com';

--user1 회원정보 보기
select id, passwd, mname, tel, email, zipcode, address1, address2,
	job, mdate, fname, grade
	from member
	where id='user1';
	
--회원 이미지의 수정
	update member
	set fname=''
	where id = 'user1';

--패스워드 변경
	update member
	set passwd='1234'
	where id = '';
	
--회원정보 수정
update member
set passwd='test',
tel='123-123',
email='email10',
zipcode='test',
	address1='수원',
	address2='팔달구',
	job='test'
	where id = 'user3';
	
	--'user3' 회원삭제
	delete from member where id = 'user3';
	
	--로그인 관련 sql
	select count(id) as cnt
	from member
	where id = 'user1' and passwd = '1234'; 
	
--list
	select id, mname, tel, email, zipcode, address1, address2, fname, r
	from(
		select id, mname, tel, email, zipcode, address1, address2, fname, rownum as r
	from(
			select id, mname, tel, email, zipcode, address1, address2, fname
	from member
	where mname like '%홍%'
	order by mdate desc
	)
	)where r >= 1 and r <=5
	
	
	select * from member
	
	delete from member
	
alter table memo
set(refnum number default 0)
	
	