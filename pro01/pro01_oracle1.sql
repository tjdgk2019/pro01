select * from NOTICE;

insert into notice values (nseq.nextval, '제목1', '내용1', sysdate, 0);
insert into notice values (nseq.nextval, '제목2', '내용2', sysdate, 0);
insert into notice values (nseq.nextval, '제목3', '내용3', sysdate, 0);
insert into notice values (nseq.nextval, '제목4', '내용4', sysdate, 0);
insert into notice values (nseq.nextval, '제목5', '내용5', sysdate, 0);

select * from member;
insert into member values ('admin','1234','관리자','admin@wangsimni.org','010-1234-5678');
insert into member values ('lee','1234','이성하','lee@naver.com','010-1234-2345');

select * from traffic;

alter table traffic add uri varchar2(150);

commit;


select * from qna;
update qna set title='질문2', content='질문2의 내용' where no=3;
select * from qna;

-- plevel -> 1:질문, 2:답변
-- parno -> 질문(부모)글번호, 질문:자기자신번호, 답변:질문에 대한 글번호

-- 최근 질문 및 답변 목록 출력
select * from (select * from qna order by parno desc, plevel asc) where rownum<=5;

-- 질문 및 답변의 목록 출력 : 질문(부모)글번호인 parno의 내림차순으로 하고, 
-- 같은 경우은 질문부터 출력될 수 있도록 plevel의 오름차순으로 정렬하도록 한다.
select * from qna order by parno desc, plevel asc;

-- 질문 등록
insert into qna values(qseq.nextval,1,1,'제목1','내용1',default,0,'lee');
update qna set parno=qseq.currval 
where no = (select * from (select no from qna order by no desc) where rownum<=1);

-- 답변 등록
insert into qna values(qseq.nextval,2,2,'질문의 답변1','질문의 답변 내용1',default,0,'admin');

-- 질문 및 답변 수정
update qna set title='', content='' where no=1;

-- 질문 및 답변 삭제
delete from qna where no=1;

commit;

commit;

select * from traffic;

desc traffic;

alter table traffic modify route varchar2(1000);

-- 교통편 검색
select * from traffic order by ttype desc, no asc;

-- 교통편 수정
update traffic set route='', coment='' where tno=1;

-- 교통편 삭제
delete from traffic where tno=1;

commit;

select * from guide;

-- 장소 수정
update guide set pname='', paddr='', ptel='', pgps='', pcoment='' where pcode=1;

-- 장소 삭제
delete from guide where pcode=1;

-- ptype : 01-주요 빌딩, 02-주요 협회 단체, 03-맛집안내, 04-숙박시설, 05-교육시설, 06-공원 및 스포츠 시설, 07-상업시설, 08-기타시설 