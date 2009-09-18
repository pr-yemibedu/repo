declare
    counter number := 0;
begin
    while counter < 5000 loop
        dbms_output.put_line(to_char(counter) || ' fill up the buffer');
        counter := counter + 1;
    end loop;
end;
