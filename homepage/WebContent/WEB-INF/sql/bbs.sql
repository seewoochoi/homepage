DROP TABLE bbs PURGE; 
 
CREATE TABLE bbs ( 
  bbsno   NUMBER(7)     NOT NULL,  -- 글 일련 번호, -9999999 ~ +9999999 
  wname   VARCHAR(20)   NOT NULL,  -- 글쓴이 
  title   VARCHAR(100)  NOT NULL,  -- 제목(*) 
  content VARCHAR(4000) NOT NULL,  -- 글 내용 
  passwd  VARCHAR(15)   NOT NULL,  -- 비밀 번호 
  viewcnt NUMBER(5)     DEFAULT 0, -- 조회수, 기본값 사용 
  wdate   DATE          NOT NULL,  -- 등록 날짜, sysdate 
  grpno   NUMBER(7)     DEFAULT 0, -- 부모글 번호 
  indent  NUMBER(2)     DEFAULT 0, -- 답변여부,답변의 깊이
  ansnum  NUMBER(5)     DEFAULT 0, -- 답변 순서 
  PRIMARY KEY (bbsno)  
); 

 
--부모글 삭제못하게 하기 위한 컬럼
alter table bbs
add(refnum		number default 0)


alter table bbs
add(filename varchar(30),
	filesize number default 0)

select * from bbs 

--create
select nvl(max(bbsno),0) +1 as max from bbs;

--서브쿼리를 이용한 레코드 추가
INSERT INTO bbs(bbsno, wname, title, content, passwd, wdate,grpno)  
VALUES((SELECT NVL(MAX(bbsno), 0) + 1 as bbsno FROM bbs), 
'왕눈이', '제목', '내용', '123', sysdate,
(SELECT NVL(MAX(grpno), 0) + 1 as bbsno FROM bbs)
);       

  -- ASC: 오름 차순, DESC: 내림 차순 
select bbsno, wname, title, viewcnt, wdate, grpno, indent, ansnum, r
from(
select bbsno, wname, title, viewcnt, wdate, grpno, indent, ansnum, rownum as r
from(
SELECT bbsno, wname, title, viewcnt, to_char(wdate,'yyyy-MM-dd') wdate, grpno, indent, ansnum, rownum 
FROM bbs  
ORDER BY bbsno DESC, ansnum 
) 
)where r>= 6 and r<=10


--조회수 증가
UPDATE bbs 
SET viewcnt = viewcnt + 1 
WHERE bbsno=1; 

select bbsno, wname, title, content, viewcnt, wdate, grpno, indent, ansnum, passwd
from bbs
where bbsno =1;

update bbs
set wname='왕눈이', title='비오는 날', content='개구리 연못'
where bbsno=1;

--패스워드 검사
select count (bbsno) as cnt
from bbs
where bbsno=1 and passwd='123';

--모든레코드 삭제
delete from bbs;
--1번 레코드만 삭제
delete from bbs where bbsno=1;

select  * from bbs;


select bbsno, grpno, indent, ansnum, refnum
from bbs
order by grpno desc, ansnum


