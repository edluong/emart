begin;
select spPlaceOrderIS(2,3,8);
select spPlaceOrderIS(1,1,4);
select spPlaceOrderIS(2,1,1);
select spPlaceOrderIS(2,3,1);

rollback;
commit;

select * from torderdetail
select * from torder

alter sequence torder_oid_seq restart with 1

