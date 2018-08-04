begin;
select spPlaceOrderIS(2,3,8);
select spPlaceOrderIS(1,1,4);
select spPlaceOrderIS(2,1,1);
select spPlaceOrderIS(2,3,1);

select spCancelOrderUS(1);
rollback;
commit;


-- reset tables to initial state
truncate table torderdetail
delete from torder

alter sequence torder_oid_seq restart with 1;
alter sequence torderdetail_odid_seq restart with 1;

select * from torder
select * from torderdetail
