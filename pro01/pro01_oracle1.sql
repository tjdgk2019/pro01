select * from NOTICE;

insert into notice values (nseq.nextval, '제목1', '내용1', sysdate, 0);
insert into notice values (nseq.nextval, '제목2', '내용2', sysdate, 0);
insert into notice values (nseq.nextval, '제목3', '내용3', sysdate, 0);
insert into notice values (nseq.nextval, '제목4', '내용4', sysdate, 0);
insert into notice values (nseq.nextval, '제목5', '내용5', sysdate, 0);

select * from member;
insert into member values ('admin','1234','관리자','admin@wangsimni.org','010-1234-5678');
insert into member values ('lee','1234','이성하','lee@naver.com','010-1234-2345');