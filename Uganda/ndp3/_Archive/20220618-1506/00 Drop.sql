exec msdb.dbo.sp_delete_database_backuphistory @database_name = N'Uganda'
go

use master
go 

alter database Uganda set single_user with rollback immediate
GO

drop database Uganda;
go