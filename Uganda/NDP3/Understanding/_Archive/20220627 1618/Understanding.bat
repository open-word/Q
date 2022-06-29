@ECHO OFF

sqlcmd -i 0.1.sql
PAUSE
sqlcmd -i 0.2-RN.sql
PAUSE
sqlcmd -i 1.1-P.sql
PAUSE
sqlcmd -i 1.2-M.sql
PAUSE
sqlcmd -i 1.3-D.sql
PAUSE
sqlcmd -i 2.1-PM.sql
PAUSE
sqlcmd -i 2.2-MD.sql
PAUSE
sqlcmd -i 3.1-PMD.sql
PAUSE
sqlcmd -i 4.1-Y.sql
PAUSE
sqlcmd -i 4.2-PY.sql
PAUSE
sqlcmd -i 4.3-PMY.sql
PAUSE
sqlcmd -i 4.4-PMDY.sql
PAUSE
sqlcmd -i 5.1-B.sql
PAUSE
sqlcmd -i 5.2-YB.sql
PAUSE
sqlcmd -i 5.3-PYB.sql
PAUSE
sqlcmd -i 5.4-PMYB.sql
PAUSE
sqlcmd -i 5.5-PMDYB.sql
PAUSE
sqlcmd -i 6.1-R.sql
PAUSE
sqlcmd -i 6.2-yr.sql
PAUSE
REM sqlcmd -i 6.3-PYR.sql
REM PAUSE
REM sqlcmd -i 6.4-PMYR.sql
REM PAUSE
REM sqlcmd -i 6.5-PMDYR.sql
REM PAUSE
sqlcmd -i 7.1-QA.sql
PAUSE