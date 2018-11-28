CREATE TABLE memo(
	memono NUMBER(6) NOT NULL,
	title VARCHAR(100) NOT NULL,
	content VARCHAR(4000) NOT NULL,
	passwd  VARCHAR(15)   NOT NULL,  
	wdate DATE 			NOT NULL,
	viewcnt NUMBER 		DEFAULT 0,
	 PRIMARY KEY(memono)
	 );
	 
	DROP sequence memo_seq;
	DROP TABLE MEMO
	
select * from memo	
	--답변용 칼럼 추가 
	alter table memo
	add(grpno   number   default 0,
		indent  number   default 0,
		ansnum  number   default 0)
		
	
	--추가한 칼럼 화면
		select memono, grpno, indent, ansnum
		from memo
	
	CREATE SEQUENCE memo_seq
	START WITH 1
	INCREMENT BY 1
	MINVALUE 0
	CACHE 100;
	
	SELECT memo_seq.nextval FROM dual;
	
	SELECT memo_seq.currval FROM dual;
	
	INSERT INTO memo(memono, title, content, wdate)
	VALUES(memo_seq.nextval,'오늘의 메모','이전주 토익 시험 준비',sysdate);
	
	SELECT memono, title, wdate, viewcnt
	FROM memo
	ORDER BY memono ASC;
	
	INSERT INTO memo(memono, title, content, wdate)
	VALUES(memo_seq.nextval,'읽을 도서','가메출판사 오라클 11g',sysdate);
	
	INSERT INTO memo(memono, title, content, wdate)
	VALUES(memo_seq.nextval,'수업 복습','메모 제작',sysdate);
	
	INSERT INTO memo
	VALUES(memo_seq.nextval,'도서구입','JSP Web programming',sysdate,0)

	
select memono,title, wdate, viewcnt, grpno, indent, ansnum, r   	
from(
select memono,title, wdate, viewcnt, grpno, indent, ansnum, rownum as r   	
from(
select memono,title,                 
to_char(wdate,'yyyy-mm-dd') wdate, viewcnt
,grpno, indent, ansnum                 
from memo                    
--where title like '%부모1%' 
order by grpno desc, ansnum   
))
where r>=1 and r<=5
 
alter table memo
add(refnum  number default 0)	

alter table memo
add(refnum number default 0)
  
	alter table memo
	add(passwd varchar(15) )
	
	
select count(refnum) 
from memo
where refnum =memono;

INSERT INTO memo(memono, title, content, wdate,grpno)  
VALUES((SELECT NVL(MAX(bbsno), 0) + 1 as bbsno FROM bbs), 
'제목', '내용', sysdate,
(SELECT NVL(MAX(grpno), 0) + 1 as bbsno FROM bbs)
);   

