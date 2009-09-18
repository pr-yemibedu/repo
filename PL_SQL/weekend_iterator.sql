declare
    weekend_start_dt date := to_date('10/12/2002', 'mm/dd/yyyy');
    start_dt date;
    end_dt date;
    weekend_day varchar(20) := 'saturday';
    last_nm v_emp.last_nm%type;
    first_nm v_emp.first_nm%type;
    wein v_emp.wein%type;
    trans_dt sampl_trans.trans_dt%type;
begin
    start_dt := weekend_start_dt;
    while start_dt < sysdate
    loop
        end_dt := start_dt + 1;
        declare
            cursor sample_cursor is
            select
                v_emp.last_nm, v_emp.first_nm, v_emp.wein, sampl_trans.trans_dt
            from
                sampl_trans,
                v_emp
            where
                v_emp.sampl_distbtr_id = sampl_trans.sampl_distbtr_id
                and sampl_trans.trans_code_type_id = 'TRTYP'
                and sampl_trans.trans_type_code_id = '6'
                and sampl_trans.trans_src_code_id  = 'E'
                and sampl_trans.trans_dt >= start_dt
                and sampl_trans.trans_dt < end_dt
            order by
                v_emp.last_nm,
                v_emp.first_nm,
                sampl_trans.trans_dt desc;
        begin 
            if not sample_cursor%isopen
            then
                open sample_cursor;
            end if;
    
            fetch sample_cursor into last_nm, first_nm, wein, trans_dt;
            
            while sample_cursor%found
            loop
                dbms_output.put_line(last_nm || ',' || first_nm || ',' || wein || ',' || to_char(trans_dt, 'mm/dd/yyyy hh:mi:ss PM'));
                fetch sample_cursor into last_nm, first_nm, wein, trans_dt;
            end loop;

            if sample_cursor%isopen
            then
                close sample_cursor;
            end if;
        end;

        if weekend_day = 'saturday' then
            start_dt := start_dt + 1;
            weekend_day := 'sunday';
        else
            start_dt := start_dt + 6;
            weekend_day := 'saturday';
        end if;
        
    end loop;
end;
/
