 create or replace procedure query3
 as
 l_product_id requirement.p_id%type := &l_product_id;
 l_req_id requirement.req_id%type;
 l_staff_id requirement.staff_id%type;
 l_demand requirement.demand%type;
 cursor req is
 select p_id, req_id, staff_id, demand from requirement where p_id=l_product_id and demand>=1;
 begin
 open req;
 loop
 fetch req into l_product_id, l_req_id, l_staff_id, l_demand;
 exit when req%notfound;
 dbms_output.put_line('productID:-'||l_product_id||' '||'Request_ID:-'|| ' '||l_req_id||' '||'Staff_id:-'||l_staff_id||' '||'Demand:-'||l_demand);
 end loop;
 close req;
 end;