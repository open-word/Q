@ECHO OFF

sqlcmd -i 0.1.sql
REM PAUSE
sqlcmd -i 0.2-RN.sql
REM PAUSE
sqlcmd -i 1.1-P.sql
REM PAUSE
sqlcmd -i 1.2-M.sql
REM PAUSE
sqlcmd -i 1.3-D.sql
REM PAUSE
sqlcmd -i 2.1-PM.sql
REM PAUSE
sqlcmd -i 3.1-PMD.sql
REM PAUSE
sqlcmd -i 4.1-Y.sql
REM PAUSE
sqlcmd -i 4.2-PY.sql
REM PAUSE
sqlcmd -i 4.3-PMY.sql
REM PAUSE
sqlcmd -i 4.4-PMDY.sql
REM PAUSE
sqlcmd -i 5.1-B.sql
REM PAUSE
sqlcmd -i 5.2-YB.sql
REM PAUSE
sqlcmd -i 5.3-PYB.sql
REM PAUSE
sqlcmd -i 5.4-PMYB.sql
REM PAUSE
sqlcmd -i 5.5-PMDYB.sql
REM PAUSE
sqlcmd -i 6.1-I.sql
REM PAUSE
sqlcmd -i 6.2-YI.sql
REM PAUSE
sqlcmd -i 6.3-PYR.sql
REM PAUSE
sqlcmd -i 6.4-PMYR.sql
REM PAUSE
sqlcmd -i 6.5-PMDYR.sql
REM PAUSE
sqlcmd -i 7.1-PYQ.sql
REM PAUSE
sqlcmd -i 7.2-PMYQ.sql
REM PAUSE
sqlcmd -i 7.3-PMDYQ.sql
REM PAUSE
sqlcmd -i 8.1-QA.sql
REM PAUSE
sqlcmd -i 8.2-QA.Q.sql
PAUSE