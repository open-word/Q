@ECHO OFF

sqlcmd -i 100-NDP3.sql
PAUSE
sqlcmd -i 110-NDP3.RandomNumbers.sql
PAUSE
sqlcmd -i 120-NDP3.Regions.sql
PAUSE
sqlcmd -i 130-NDP3.Districts.sql
PAUSE
sqlcmd -i 140-NDP3.Ministries.sql
PAUSE
sqlcmd -i 150-NDP3.Programmes.sql
PAUSE
sqlcmd -i 160-NDP3.ProgrammeYearlyBudgets.sql
PAUSE
sqlcmd -i 170-NDP3.ProgrammeKeyResults.sql
PAUSE
sqlcmd -i 180-NDP3.ProgrammeKeyResultYearlyTargets.sql
PAUSE
sqlcmd -i 190-NDP3.ProgrammeKeyResultYearlyTargets-Update.sql
PAUSE
sqlcmd -i 200-NDP3.vResults.sql
PAUSE
sqlcmd -i 210-NDP3.vResults-QA.sql
PAUSE