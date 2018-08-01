To do list:
1. create tCustAddr - customer address table
2. replace the ship columns from tOrder and replace them into tCustAddr
3. add a status column (ordStatusDef) for tOrder
4. add a lookup table tOrderStatus to define the shorthand of the status
5. add statuses ordered (OD) and cancelled (CA) to tOrderStatus
6. create a stored procedure to place an order spPlaceOrder @cid, @pid, @discount, @qty
..*creates a new order
..*populates the order table (populates with a ordered default status)
..*populates the orderdetail table
7. create a stored procedure to cancel an order spCancelOrder
