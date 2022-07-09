@ECHO OFF

sqlcmd -i 00-NDP3.sql
PAUSE
sqlcmd -i 01-NDP3.RandomNumbers.sql
PAUSE
sqlcmd -i 02-NDP3.Ministries.sql
PAUSE
sqlcmd -i 03-NDP3.Programmes.sql
PAUSE
sqlcmd -i 04.00-NDP3.ProgrammeKeyResults.sql
PAUSE
sqlcmd -i 04.12-NDP3.ProgrammeKeyResults.sql
PAUSE
sqlcmd -i 05.00-NDP3.ProgrammeKeyResultTargets.sql
PAUSE
sqlcmd -i 05.12-NDP3.ProgrammeKeyResultTargets.sql
PAUSE
sqlcmd -i 06-NDP3.ProgrammeKeyResultTargets-Update.sql
PAUSE
sqlcmd -i 09-NDP3.vResults.sql
PAUSE
sqlcmd -i 10-NDP3.vResults-QA.sql
PAUSE
