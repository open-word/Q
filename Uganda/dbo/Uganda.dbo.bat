@ECHO OFF

sqlcmd -i 0.1.sql
sqlcmd -i 0.2-sRN.sql
sqlcmd -i 0.3-RN.sql

sqlcmd -i 1.1-Plans.sql
sqlcmd -i 1.2-P.sql
sqlcmd -i 1.3-Y.sql
sqlcmd -i 1.4-S.sql
sqlcmd -i 1.5-I.sql
sqlcmd -i 1.6-A.sql

sqlcmd -i 2.1-PlanP.sql
sqlcmd -i 2.2-PY.sql
sqlcmd -i 2.3-PS.sql
sqlcmd -i 2.4-PI.sql
sqlcmd -i 2.5-SA.sql

sqlcmd -i 3.1-PYI.sql
sqlcmd -i 3.2-PYIPerformance.sql
sqlcmd -i 3.3-PYS.sql 
sqlcmd -i 3.4-PYSBudget.sql
sqlcmd -i 3.5-PSA.sql

sqlcmd -i 4.1-PYSI.sql
sqlcmd -i 4.2-PYSA.sql

sqlcmd -i 5.1-PYSIA.sql
sqlcmd -i 5.2-PYSIABudgetPerformance.sql

sqlcmd -i 6.1-Tests.sql

sqlcmd -i 7.1-Vision2040.sql
PAUSE