create table product(
        prodid INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
        prodname varchar(50),
        price decimal(6,2)
)