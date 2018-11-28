--create
insert into address
(no, name, phone, zipcode, address, address2)
values(
(select nvl(max(no),0)+1 from address),'김태리','010-7777-7777','12345',
'서울시 종로구 관철동','종로코아빌딩 5층'
)

--read 
select*from address
where no = 1


--update 
update address
set phone = '010-2222-3333',
	zipcode = '00000',
	address = '서울시 강남구 서초동',
	address2= '교보빌딩 5층'
where no = 1

--delete
delete from ADDRESS
where no = 1

--list
select no, name, phone
from address
order by no desc

drop table address

select * from address

--DDL



create table address(
	no			number 			not null,
	name 		varchar(20)		not null,
	phone		varchar(30)		not null,
	zipcode		varchar(6)		not null,
	address		varchar(1000)	not null,
	address2	varchar(1000)	null,
	primary key(no)
 

)

alter table address
add(grpno   number default 0,
	indent number default 0,
	ansnum  number default 0,
	refnum number default 0)

	
	alter table address
	 (refnum number default 0)

	 
	select no, name, phone, grpno, indent, ansnum, r 
	from(
	select no, name, phone, grpno, indent, ansnum, rownum as r
	from(
	select no, name, phone, grpno, indent, ansnum 
	from address
	where name like '%부모%'
	order by grpno desc, ansnum
	)
	)
