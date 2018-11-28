drop table img

create table img(
	no			number			not null,
	name		varchar(30)		not null,
	title		varchar(800)	not null,	
	passwd		varchar(20)		not null,
	mdate		date			not null,
	fname		varchar(50)		default 'member.jpg',
	grpno		number			default 0,
	indent		number			default 0,
	ansnum		number			default 0,

	primary key(no)
)


insert into img(no, name, title, passwd, mdate, fname, grpno)
values((select nvl(max(no),0)+1 no from img), '김하', '아무거나', '1234', sysdate, 'main.jpg', (select nvl(max(grpno),0)+1 no from img))

--패스워드 변경
update img
set passwd='1234'
where no='';
--이미지 변경
update img 
set fname = ''
where no=''

-삭제
delete from img
where no=''

--read
select * from img where no = ''

--list
select no, name, title, mdate, fname, r
from(
	select no, name, title, mdate, fname, rownum r
	from(
		select no, name, title, mdate, fname
		from img where name like '%하하하%'
		order by mdate desc
		))where r>=1 and r<=5



select * from img

 SELECT COUNT(no) as cnt
		FROM img
		WHERE no='2' AND passwd='1234'


