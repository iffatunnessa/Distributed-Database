create or replace view myview(view_sid,view_sname, view_address) as
select sid,sname, address from shop where sid not in (select sid from records);

select *from myview;