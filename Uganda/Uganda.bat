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
sqlcmd -i 2.05-YI.sql
sqlcmd -i 2.06-YA.sql
sqlcmd -i 2.07-YS.sql
sqlcmd -i 2.08-IA.sql
sqlcmd -i 2.09-IS.sql
sqlcmd -i 2.10-AS.sql

sqlcmd -i 3.01-PYI.sql
sqlcmd -i 3.02-PYIPerformance.sql
sqlcmd -i 3.03-PYA.sql
sqlcmd -i 3.04-PYS.sql
sqlcmd -i 3.05-PYSBudget.sql
sqlcmd -i 3.06-PIA.sql
sqlcmd -i 3.07-PIS.sql
sqlcmd -i 3.08-PAS.sql
sqlcmd -i 3.09-YIA.sql

sqlcmd -i 4.1-PYIA.sql
sqlcmd -i 5.1-PYIAS.sql

REM sqlcmd -i 6.1-Tests.sql
REM sqlcmd -i 7.1-vPYIA.sql
PAUSE