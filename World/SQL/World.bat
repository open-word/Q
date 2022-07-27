@ECHO OFF

sqlcmd -i %~dp0\api\0.0.sql
sqlcmd -i %~dp0\api\GeoArea_List.sql
sqlcmd -i %~dp0\api\GeoArea_Tree.sql
sqlcmd -i %~dp0\api\Goal_List.sql
sqlcmd -i %~dp0\api\Indicator_List.sql
sqlcmd -i %~dp0\api\Series_List.sql
sqlcmd -i %~dp0\api\Target_List.sql

sqlcmd -i %~dp0\dbo\0.0.sql
sqlcmd -i %~dp0\dbo\0.1-Functions.sql
sqlcmd -i %~dp0\dbo\1.1-F.sql
sqlcmd -i %~dp0\dbo\1.2-G.sql
sqlcmd -i %~dp0\dbo\1.3-T.sql
sqlcmd -i %~dp0\dbo\1.4-I.sql
sqlcmd -i %~dp0\dbo\1.5-S.sql
sqlcmd -i %~dp0\dbo\1.6-IS.sql
sqlcmd -i %~dp0\dbo\1.7-A.sql
sqlcmd -i %~dp0\dbo\1.8-Y.sql
sqlcmd -i %~dp0\dbo\2.1-FG.sql
sqlcmd -i %~dp0\dbo\2.2-FGT.sql
sqlcmd -i %~dp0\dbo\2.3-FGTI.sql
sqlcmd -i %~dp0\dbo\2.4-FGTIS.sql
sqlcmd -i %~dp0\dbo\2.5-FGTISA.sql
sqlcmd -i %~dp0\dbo\2.6-FGTISAY.sql
sqlcmd -i %~dp0\dbo\3.1-R.sql
sqlcmd -i %~dp0\dbo\4.1-FGTISAY.sql
sqlcmd -i %~dp0\dbo\6.1-Tests.sql
PAUSE