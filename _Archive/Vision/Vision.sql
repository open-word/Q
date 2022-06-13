use BITest;

drop table Points;

create table Points (
	PointId int identity not null,
	x int not null,
	y int not null,
	z int not null,
	Value int not null,
	constraint PK_Points primary key (PointId)
);

insert Points (x, y, z, Value) values
	(1,1,1,1),
	(1,1,2,2),
	(1,2,1,3),
	(1,2,2,4),
	(2,1,1,5),
	(2,1,2,6),
	(2,2,1,7),
	(2,2,2,8);

-- 1.
select value from points where x=2 and y=2 and z=1;

-- 2.
select x, value from points where y=2 and z=1;
select sum(value) from points where y=2 and z=1;

-- 3.
select y, value from points where x=2 and z=1;
select sum(value) from points where x=2 and z=1;

-- 4.
select z, value from points where x=2 and y=2;
select sum(value) from points where x=2 and y=2;

-- 5.
select x, z, value from points where y=2;
select x, sum(value) from points where y=2 group by x;
select z, sum(value) from points where y=2 group by z;
select sum(value) from points where y=2;

--6 .
select x, y, value from points where z=1;
select x, sum(value) from points where z=1 group by x;
select y, sum(value) from points where y=1 group by y;
select sum(value) from points where z=1;

-- 7.
select y, z, value from points where x=2;
select y, sum(value) from points where x=2 group by y;
select z, sum(value) from points where x=2 group by z;
select sum(value) from points where x=2;

-- 8.
select x, y, z, value from points;
select x, y, sum(value) from points group by x, y;	-- along z-axis (front to back)
select x, z, sum(value) from points group by x, z;	-- along y-axis (bottom to top)
select y, z, sum(value) from points group by y, z;	-- along x-axis (left to right)
select sum(value) from points;
