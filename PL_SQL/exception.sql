declare
    counter number := 0;
    var number := 0;
begin
    while counter < 100 loop
        begin
            if counter = 50 then
                number := number / 0;
            end if;
            dbms_output.put_line(to_char(counter));            
        exception
            when others
                dbms_output.put_line('Exception enconutered');
        end;    
        counter := counter + 1;
    end loop;
end;
