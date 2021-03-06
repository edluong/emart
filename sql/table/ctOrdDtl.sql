create table tOrderDetail(
    odid int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    oid INT REFERENCES torder(oid),
    prodid INT REFERENCES tproduct(prodid),
    cid int REFERENCES tcustomer(cid),
    quantity int,
    discount decimal(3,2),
    insertdate timestamp default now()
    )