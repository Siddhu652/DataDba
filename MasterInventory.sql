

select * from requirement;

Create table staff(staff_id number primary key, staff_name varchar2(15), staff_mobile number(10), staff_address varchar2(50));

Create table transaction_details(pay_cust_id number, pay_id number, pay_amt number, pay_date DATE, pay_desc varchar2(37), trans_no number, cust_contact number(10), trans_date DATE, t_mode varchar2(20));

Create table product(p_id number(6) , p_type varchar2(34), p_desc varchar2(50), country varchar2(15), varchar2(20));

Create table requirement(req_id number, p_id number, demand number, staff_id number);

Create table inventory(inv_id number, inv_item varchar2(28), availability number);
desc transaction_details;
insert into transaction_details values(&pay_cust_id, &pay_id, &pay_amt, '&pay_date', '&pay_desc', &trans_no ,&cust_contact, '&trans_date', '&t_mode');