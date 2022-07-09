@echo off

sqlcmd -i 0-ndp3.sql
pause
sqlcmd -i 1-ndp3.Acronyms.sql
pause
sqlcmd -i 2-ndp3.ProgrammeObjectiveInterventions.sql
pause
sqlcmd -i 3-ndp3.Programmes.sql
pause
sqlcmd -i 4-ndp3.Actors.sql
pause 
sqlcmd -i 5-ndp3.ProgrammesActors.sql
pause
sqlcmd -i 6-ndp3.Tests.sql
pause