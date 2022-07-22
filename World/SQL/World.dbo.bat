@ECHO OFF

sqlcmd -i 0.0.sql
sqlcmd -i 0.1-Functions.sql
sqlcmd -i 0.2-A.sql
sqlcmd -i 0.3-A-Type.sql
sqlcmd -i 0.4-Y.sql
sqlcmd -i 1.1-F.sql
sqlcmd -i 1.2-G.sql
sqlcmd -i 1.3-T.sql
sqlcmd -i 1.4-I.sql
sqlcmd -i 1.5-S.sql
sqlcmd -i 2.1-IS.sql
sqlcmd -i 3.1-FGTISAY.sql
sqlcmd -i 4.1-R.sql
REM sqlcmd -i 4.2-FGTISAYWeightCoverage.sql
REM sqlcmd -i 5.1-Tests.sql
PAUSE