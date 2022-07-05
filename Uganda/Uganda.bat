@ECHO OFF

sqlcmd -i 0.1.sql
sqlcmd -i 0.2-sRN.sql
sqlcmd -i 0.3-RN.sql
sqlcmd -i 0.4-S.sql

sqlcmd -i 1.1-P.sql
sqlcmd -i 1.2-Y.sql
sqlcmd -i 1.3-I.sql
sqlcmd -i 1.4-A.sql

sqlcmd -i 2.1-PY.sql
sqlcmd -i 2.2-PI.sql
sqlcmd -i 2.3-PA.sql

sqlcmd -i 3.1-PYS.sql

sqlcmd -i 4.1-PYSB.sql

sqlcmd -i 5.1-PYI.sql

sqlcmd -i 6.1-PYIA.sql
REM sqlcmd -i 6.1-Tests.sql
REM sqlcmd -i 7.1-vPYIA.sql
PAUSE