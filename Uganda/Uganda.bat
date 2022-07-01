@ECHO OFF

sqlcmd -i 0.1.sql
REM sqlcmd -i 0.2-RN.sql do manually
sqlcmd -i 1.1-P.sql
sqlcmd -i 1.2-A.sql
sqlcmd -i 1.3-D.sql
sqlcmd -i 2.1-PA.sql
sqlcmd -i 3.1-PAD.sql
sqlcmd -i 4.1-Y.sql
sqlcmd -i 4.2-PY.sql
sqlcmd -i 4.3-PAY.sql
sqlcmd -i 4.4-PADY.sql
sqlcmd -i 5.1-B.sql
sqlcmd -i 5.2-YB.sql
sqlcmd -i 5.3-PYB.sql
sqlcmd -i 5.4-PAYB.sql
sqlcmd -i 5.5-PADYB.sql
sqlcmd -i 6.1-I.sql
sqlcmd -i 6.2-YI.sql
sqlcmd -i 6.3-PYR.sql
sqlcmd -i 6.4-PAYR.sql
sqlcmd -i 6.5-PADYR.sql


sqlcmd -i 8.1-QA.sql
sqlcmd -i 8.2-QA.Q.sql
PAUSE