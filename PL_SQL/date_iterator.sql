/*
set serveroutput on size 99999
set linesize 300
*/
declare
    start_dt_tm date;
    end_dt_tm date;
begin
    start_dt_tm := to_date('10/7/2002', 'mm/dd/yyyy');
    while start_dt_tm < sysdate
    loop
        end_dt_tm := start_dt_tm + 1;
        dbms_output.put_line(to_char(start_dt_tm, 'mm/dd/yyyy hh:mi:ss PM') || ' thru ' || to_char(end_dt_tm, 'mm/dd/yyyy hh:mi:ss PM'));
        start_dt_tm := end_dt_tm;
    end loop;
end;
/
