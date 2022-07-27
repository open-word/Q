use World;
go

create function PadCode (@Code nvarchar(100)) returns nvarchar(100)
as
begin
	declare @Result nvarchar(1000);

	select 
		@Result = string_agg(t.Segment,'.')
	from
		(select 
			case 
				when isnumeric(value)=1 and len(value)=1 then '0'+value
				else value
			end Segment
		from 
			string_split(@Code,'.')) t

	return @Result;
end
go

select '0.1';
go