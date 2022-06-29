use Understanding;
go

drop table YR;

create table YR
(
	YearID int,
	ResultID nchar(5),
	constraint PK_YR primary key (YearID, ResultID),
	constraint FK_YR_Y foreign key (YearID) references Y (YearID),
	constraint FK_YR_R foreign key (ResultID) references R (ResultID)
);
go

insert
	YR
select
	*
from
	Y
	cross join R;

-- select * from YR;

select '6.2'
go