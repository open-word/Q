@ECHO OFF

sqlcmd -i 0.0.sql
sqlcmd -i 0.1-Functions.sql
sqlcmd -i 0.2-Constants.sql
sqlcmd -i 1.1-F.sql
sqlcmd -i 1.2-G.sql
sqlcmd -i 1.3-T.sql
sqlcmd -i 1.4-I.sql
sqlcmd -i 1.5-S.sql
sqlcmd -i 1.6-IS.sql
sqlcmd -i 1.7-A.sql
sqlcmd -i 1.8-Y.sql
sqlcmd -i 2.1-FG.sql
sqlcmd -i 2.2-FGT.sql
sqlcmd -i 2.3-FGTI.sql
sqlcmd -i 2.4-FGTIS.sql
sqlcmd -i 2.5-FGTISA.sql
sqlcmd -i 2.6-FGTISAY.sql
sqlcmd -i 3.1-R.sql
sqlcmd -i 4.1-FGTISAY.sql
sqlcmd -i 6.1-Tests.sql
PAUSE