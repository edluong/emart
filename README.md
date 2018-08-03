## Weekly to do list
- [X] create tCustAddr - customer address table
- [X] replace the ship columns from tOrder and replace them into tCustAddr
- [X] add a status column (ordStatusDef) for tOrder
- [X] add a lookup table tOrderStatus to define the shorthand of the status
- [X] add statuses ordered (OR) and cancelled (CA) to tOrderStatus
- [X] create a stored procedure to place an order spPlaceOrderIS @cid, @pid, @discount, @qty 
  - [X] creates a new order
  - [X] populates the order table (populates with a ordered default status)
  - [X] populates the orderdetail table
  - [X] QA Complete
- [X] create a stored procedure to cancel an order spCancelOrderIS
  - [X] QA Complete
- [ ] insert a canceltime column in torder to see when an order was cancelled, default is null
- [ ] modify the existing spCancelOrderUS to insert the current_time to canceltime column
- [ ] set up node project
- [ ] install express
- [ ] create .gitignore for the node_modules and other potential files

## Bonus feature 
- [ ] create audit schema
- [ ] create audit table called torder_adt
- [ ] create trigger on torder when there is an update (this will be before the update)
