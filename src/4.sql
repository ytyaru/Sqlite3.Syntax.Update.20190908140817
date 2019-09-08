create table T(A text, B text);
insert into T values('B','B');
insert into T values('D','D');
insert into T values('A','A');
insert into T values('C','C');

update T 
  set A='Z'
  order by A 
  limit 1 offset 1;
select * from T order by A;

