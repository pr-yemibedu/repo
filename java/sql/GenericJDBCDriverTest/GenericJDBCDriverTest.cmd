@echo on
if "%1" == "microsoft" goto microsoft
if "%1" == "jturbo" goto jturbo
if "%1" == "oracle" goto oracle
if "%1" == "shadow" goto shadow
goto usage

:jturbo
REM set class=com.newatlanta.jturbo.driver.Driver
set class=com.ashna.jturbo.driver.Driver
set connection_string=jdbc:JTurbo://uswpa-afatfssql.merck.com/FTS_Inv
set user=afariaweb
set password=afariaweb
rem set query=select count(*) from cust
set query=SELECT ^'^<a href=/query/jsp/process?action=query^&type=html^&datasource=prd_sam^&title=pda^&statement=select%20sampl_trans.trans_dt%2C%20cust.last_nm%2C%20cust.first_nm%2C%20cust.mddl_nm%2C%20sampl_trans.trans_src_code_id%20from%20sampl_trans%2C%20cust%2C%20v_emp%20where%20sampl_trans.sampl_distbtr_id%20%3D%20V_emp.sampl_distbtr_id%20and%20cust.cust_id%20%3D%20sampl_trans.Cust_id%20and%20v_emp.wein%20%3D%20%2710085257%27%20and%20sampl_trans.trans_dt%20%3E%20sysdate-30%20order%20by%20sampl_trans.trans_dt%20desc ^>Samples History^</a^>^' ^'PDA^'
goto run

:microsoft
set class=com.microsoft.jdbc.sqlserver.SQLServerDriver
set connection_string=jdbc:microsoft:sqlserver://uswpapfeilbr:1433;DatabaseName=Insight
set user=sa
set password=
set query=select count(*) from cust
goto run

:oracle
set class=oracle.jdbc.driver.OracleDriver
set connection_string=jdbc:oracle:thin:@UXWSIT04:25391:USHHGT01
set user=fsnetdev
set password=hifsnet
set query=select count(*) from fsnet.link
goto run

:shadow
set class=com.neon.jdbc.Driver
set connection_string=jdbc:neon:FACTS_TEST_D5723SE
set user=d5723se
set password=d5723se
set query=SELECT COUNT (*) FROM SYSIBM.SYSDBRM
goto run

:run
java GenericJDBCDriverTest "%class%" "%connection_string%" "%user%" "%password%" "%query%"
goto exit

:usage
echo "usage: GenericJDBCDriverTest microsoft | jturbo"

:exit
