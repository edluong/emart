create table tCustomer(
    cid int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    fname varchar(50) not null,
    lname varchar(50) not null,
    email varchar(50),
    phone varchar(15),
    insertdate timestamp default now()
  )