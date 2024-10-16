set linesize 480
set pagesize 0
set heading off
set feedback off
set verify off
set long 3000000
spool "D:\DRIVE E\Project\BL_LIVE_GIT\ESS_DATA_EXPORT_LIVE\EXPORT_ORACLE_CSV_BATSCRIPT\EXPORT_ORACLE_CSV_BATSCRIPT.csv"
-- Change csv file save path with file name
-- Replace first select filed list with your CSV HEADER and last colum to remove blank space (line number 11)
-- Replace select select filed list with your table column name, we used TEXT and =TRIM for csv data convert and blank space handle (line number 12)
select '"SCNO","DISTRIBUTOR_CODE",=TRIM("PRODUCTCODE")' TEXT from DUAL;
select '"=TEXT('||a.SCNO||', 0)","'||b.CODE||'",=TRIM("'||c.PRODUCTCODE||'")' Text 
from scstatus a, distributor b, cfdb.tblproduct c 
where 1=1 ;


spool off
