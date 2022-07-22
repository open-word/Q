
-- Do we have any records from an Area that is not a Country?
select * from R join A on R.ACode = A.ACode where A.Type <> 'Country';

-- Do we have any Area that is a Country but has no Record?
select distinct * from A left join R on A.ACode = R.ACode where A.Type = 'Country' and R.ACode is null;