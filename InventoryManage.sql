---Create a procedure which take contact, name, address , email of customer as input and store customer details in system,---
---so that we can use that data for further purpose also.--- 
---By this we can evaluate weather the customer is new or old customer.---


create or replace procedure query1(p_cust_contact IN customer.cust_contact%type,
p_cust_name IN customer.cust_name%type,
p_cust_id IN customer.cust_id%type,
p_cust_address IN customer.cust_address%type,
p_cust_email IN customer.cust_email%type)
as
l_cust_contact customer.cust_contact%type := p_cust_contact;
l_cust_name customer.cust_name%type := p_cust_name;
l_cust_id customer.cust_id%type := p_cust_id;
l_cust_address customer.cust_address%type := p_cust_address;
l_cust_email customer.cust_email%type := p_cust_email;
begin
select cust_contact, cust_name, cust_id, cust_address, cust_email into l_cust_contact, l_cust_name, l_cust_id, l_cust_address, l_cust_email from customer 
where customer.cust_id = p_cust_id;
insert into customer(cust_contact, cust_name, cust_id, cust_address, cust_email) values(l_cust_contact,l_cust_name, l_cust_id, l_cust_address, l_cust_email);
exception 
when DUP_VAL_ON_INDEX then
dbms_output.put_line('old customer');
when no_data_found then
insert into customer(cust_contact, cust_name, cust_id, cust_address, cust_email) values(l_cust_contact,l_cust_name, l_cust_id, l_cust_address, l_cust_email);
dbms_output.put_line('new customer');
end;
