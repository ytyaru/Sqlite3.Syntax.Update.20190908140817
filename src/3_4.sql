create table T(A text check(length(A)=1));
insert into T values('A');
insert into T values('B');
update or ignore T set A='AA' where rowid=1;
select * from T;

