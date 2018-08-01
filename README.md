To do list:
- [ ] create tCustAddr - customer address table
- [ ] replace the ship columns from tOrder and replace them into tCustAddr
- [ ] add a status column (ordStatusDef) for tOrder
- [ ] add a lookup table tOrderStatus to define the shorthand of the status
- [ ] add statuses ordered (OD) and cancelled (CA) to tOrderStatus
- [ ] create a stored procedure to place an order spPlaceOrder @cid, @pid, @discount, @qty (
*creates a new order
*populates the order table (populates with a ordered default status)
*populates the orderdetail table)
- [ ] create a stored procedure to cancel an order spCancelOrder
