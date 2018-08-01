begin;

insert into tproduct(
	prodname,
	price,
    description
)
values 
('book',20,'a great adventure and new york best seller'),
('wallet',20.98,'made out of leather'),
('camera',199,'waterproof'),
('laptop',700.99,'2TB hard drive'),
('smartphone',800.83,'waterproof'),
('video game console',340.84,'portable')

--commit;
--rollback;

select * from tproduct


