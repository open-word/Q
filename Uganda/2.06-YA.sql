use Uganda;
go

create Table YA
(
	YearID int,
	ActorID int,
	constraint PK_YA primary key (YearID, ActorID),
	constraint FK_YA_Y foreign key (YearID) references Y (YearID),
	constraint FK_YA_I foreign key (ActorID) references A (ActorID)
);
go

insert YA (YearID, ActorID)
select
	Y.YearID,
	A.ActorID
from
	Y
	cross join A
order by
	Y.YearID,
	A.ActorID;

--select * from YA;

select '2.06'
go