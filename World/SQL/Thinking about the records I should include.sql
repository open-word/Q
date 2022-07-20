--select count(1), min(TimePeriod) FirstYear, max(TimePeriod) LastYear from Records group by Goal;




select AreaCode, A.Name, sum(Performance), sum(Weight) from GTISAYQ join A on GTISAYQ.AreaCode = a.Code group by AreaCode, A.Name;