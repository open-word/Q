@ECHO OFF

sqlcmd -i 0.0.sql
PAUSE
sqlcmd -i 0.1-RN.sql
PAUSE
sqlcmd -i 1.1-P.sql
PAUSE
sqlcmd -i 1.2-M.sql
PAUSE
sqlcmd -i 1.3-D.sql
PAUSE
sqlcmd -i 1.4-PM.sql
PAUSE
sqlcmd -i 1.5-MD.sql
PAUSE
sqlcmd -i 1.6-PMD.sql
PAUSE
sqlcmd -i 2.1-Y.sql
PAUSE
sqlcmd -i 2.2-PY.sql
PAUSE
sqlcmd -i 2.3.0-PMYS.sql
PAUSE
sqlcmd -i 2.3.1-PMY.sql
PAUSE
sqlcmd -i 2.4.0-PMDYS.sql
PAUSE
sqlcmd -i 2.4.1-PMDY.sql
PAUSE
sqlcmd -i 4.0-QA.sql
PAUSE