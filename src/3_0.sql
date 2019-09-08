create table T(A text);
insert into T values('A');
insert into T values('B');
update or rollback T set A='C' where rowid=1;
select * from T;

