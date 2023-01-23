---Create a procedure which  will ask the customer about the product  he wants should be of which country---

create or replace procedure query4
as
l_p_id product.p_id%type := &l_p_id;
l_country product.country%type := &l_country;
l_p_name product.p_name%type;
begin
select p_id, country, p_name into l_p_id, l_country, l_p_name from product where p_id=l_p_id;
dbms_output.put_line('the customer wants the product '||l_p_id||' '||(l_p_name)||' '||'of country'||' '||l_country);
end;
