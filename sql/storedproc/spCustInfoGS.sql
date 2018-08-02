create function spCustInfo (p_cid int) 
RETURNS TABLE(fname varchar(50),lname varchar(50),email varchar(50),phone varchar(15)) AS $$
begin
	return query select c.fname,c.lname,c.email,c.phone from tcustomer as c
    				where c.cid = p_cid;
end;
$$ LANGUAGE plpgsql;