@ECHO OFF

sqlcmd -i 0.1.sql
sqlcmd -i 0.2-A.sql
sqlcmd -i 0.3-Y.sql
sqlcmd -i 1.1-F.sql
sqlcmd -i 1.2-G.sql
sqlcmd -i 1.3-T.sql
sqlcmd -i 1.4-I.sql
sqlcmd -i 1.5-S.sql
sqlcmd -i 2.3-IS.sql
sqlcmd -i 3.1-R.sql
sqlcmd -i 4.1-FGTISAY.sql
sqlcmd -i 4.2-FGTISAYWeightCoverage.sql
sqlcmd -i 5.1-Tests.sql
PAUSE