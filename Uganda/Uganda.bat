@ECHO OFF

sqlcmd -i 0.1.sql
sqlcmd -i 0.2-sRN.sql
sqlcmd -i 0.3-RN.sql

sqlcmd -i 1.1-P.sql
sqlcmd -i 1.2-Y.sql
sqlcmd -i 1.3-I.sql
sqlcmd -i 1.4-A.sql
sqlcmd -i 1.5-S.sql

sqlcmd -i 2.01-PY.sql
sqlcmd -i 2.02-PI.sql
sqlcmd -i 2.03-PA.sql
sqlcmd -i 2.04-PS.sql
sqlcmd -i 2.10-AS.sql

sqlcmd -i 3.01-PYI.sql
sqlcmd -i 3.02-PYIPerformance.sql
sqlcmd -i 3.04-PYS.sql
sqlcmd -i 3.05-PYSBudget.sql

sqlcmd -i 4.1-PYIA.sql
sqlcmd -i 5.1-PYIAS.sql
sqlcmd -i 6.1-PYIASBudgetPerformance.sql
sqlcmd -i 7.1-Tests.sql
sqlcmd -i 8.1-vPYIAS.sql
PAUSE