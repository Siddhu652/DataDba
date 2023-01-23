create or replace procedure query2
as
l_cust_id transaction_details.pay_cust_id%type := &l_cust_id;
l_cust_contact transaction_details.cust_contact%type := &l_cust_contact;
l_trans_date transaction_details.trans_date%type := &l_trans_date;
l_trans_mode transaction_details.t_mode%type := &l_trans_mode;
cursor cus is 
select pay_cust_id, cust_contact, trans_date, t_mode into l_cust_id, l_cust_contact, l_trans_date, l_trans_mode from transaction_details 
where pay_cust_id=l_cust_id;
begin
open cus;
loop
fetch cus into l_cust_id, l_cust_contact, l_trans_date, l_trans_mode;
 exit when cus%notfound;
  dbms_output.put_line('the customer'||' '||l_cust_id||' '||'with contact number'||' '||l_cust_contact||' '||'on the date of'||' '||l_trans_date||' '||'is done their transaction with'||' '||l_trans_mode);
end loop;
close cus;
   end;

