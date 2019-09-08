create table T(A text not null);
insert into T values('A');
insert into T values('B');
update or replace T set A=NULL where rowid=1;
select * from T;

create table T(A text not null default 'DEF');
insert into T values('A');
insert into T values('B');
update or replace T set A=NULL where rowid=1;
select * from T;

create table T(A text check(length(A)=1));
insert into T values('A');
insert into T values('B');
update or replace T set A='AA' where rowid=1;
select * from T;

create table U(id integer primary key);
insert into U values(1);
insert into U values(2);
create table T(A integer references U(id));
insert into T values(1);
insert into T values(2);
update or replace T set A=0 where A=1;
select * from T;
