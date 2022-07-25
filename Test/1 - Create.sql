use Test;
go

drop table if exists ABCD;
drop table if exists D;
drop table if exists C;
drop table if exists B;
drop table if exists A;
go

create table A (ACode nchar(1), APoints float, AWeight float,				  constraint PK_A primary key (ACode));
create table B (BCode nchar(3), BPoints float, BWeight float, ACode nchar(1), constraint PK_B primary key (BCode), constraint FK_B_A foreign key (ACode) references A (ACode));
create table C (CCode nchar(5), CPoints float, CWeight float, BCode nchar(3), constraint PK_C primary key (CCode), constraint FK_C_B foreign key (BCode) references B (BCode));
create table D (DCode nchar(7), DPoints float, DWeight float, CCode nchar(5), constraint PK_D primary key (DCode), constraint FK_D_C foreign key (CCode) references C (CCode));
go

insert A (ACode, APoints) values
('1',1);

insert B (BCode, BPoints, ACode) values
('1.1',1,'1'),
('1.2',1,'1');

insert C (CCode, CPoints, BCode) values
('1.1.1',1,'1.1'),
('1.1.2',1,'1.1'),
('1.2.1',1,'1.2'),
('1.2.2',1,'1.2');

insert D (DCode, DPoints, CCode) values
('1.1.1.1',1,'1.1.1'),
('1.1.1.2',1,'1.1.1'),
('1.1.2.1',1,'1.1.2'),
('1.1.2.2',1,'1.1.2'),
('1.2.1.1',1,'1.2.1'),
('1.2.1.2',1,'1.2.1'),
('1.2.2.1',1,'1.2.2'),
('1.2.2.2',1,'1.2.2');

select 
	*
from
	A join
	B on A.ACode = B.ACode join
	C on B.BCode = C.BCode join
	D ON c.CCode = D.CCode
order by
	A.ACode,
	B.BCode,
	C.CCode,
	D.DCode;