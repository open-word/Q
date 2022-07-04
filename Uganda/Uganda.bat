@ECHO OFF

sqlcmd -i 0.1.sql
sqlcmd -i 0.2-sRN.sql
sqlcmd -i 0.3-RN.sql
sqlcmd -i 1.1-P.sql
sqlcmd -i 2.1-Y.sql
sqlcmd -i 2.2-PY.sql
sqlcmd -i 3.1-I.sql
sqlcmd -i 3.2-PI.sql
sqlcmd -i 3.3-PYI.sql
sqlcmd -i 4.1-A.sql
sqlcmd -i 4.2-PA.sql
sqlcmd -i 4.3-PYIA.sql
sqlcmd -i 5.1-Tests.sql
sqlcmd -i 6.1-vPYIA.sql
PAUSE