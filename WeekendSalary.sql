CREATE OR REPLACE TRIGGER HOLIDAY
BEFORE DELETE OR INSERT OR UPDATE ON transaction_details
FOR EACH ROW
BEGIN
if TO_CHAR(sysdate,'DY', 'nls_date_language = ENGLISH')='SUN' then
raise_application_error(-20500,'cannt inserted');
else
dbms_output.put_line('update or insert successful');
end if;
END;


SELECT TO_CHAR(PAY_DATE, 'DAY')FROM TRANSACTION_DETAILS WHERE PAY_ID=123014;