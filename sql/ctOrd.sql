create table tOrder(
    oid INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    cid int REFERENCES tcustomer(cid),
    orddate timestamp default now(),
    shipdate timestamp,
    ordstatusdef varchar(10)
    )  