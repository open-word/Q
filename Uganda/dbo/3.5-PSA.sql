use Uganda;
go

create Table PSA
(
	ProgrammeID int,
	SectorID int,
	ActorID int,
	constraint PK_PSA primary key (ProgrammeID, SectorID, ActorID),
	constraint FK_PSA_PS foreign key (ProgrammeID, SectorID) references PS (ProgrammeID, SectorID),
	constraint FK_PSA_SA foreign key (SectorID, ActorID) references SA (SectorID, ActorID)
);
go

insert PSA (ProgrammeID, SectorID, ActorID) values
(1  ,1 ,1   ),
(1  ,1 ,3   ),
(1  ,1 ,11  ),
(1  ,1 ,17  ),
(1  ,1 ,24  ),
(1  ,1 ,26  ),
(1  ,1 ,30  ),
(1  ,1 ,41  ),
(1  ,1 ,43  ),
(1  ,2 ,44  ),
(1  ,2 ,49  ),
(1  ,1 ,51  ),
(1  ,2 ,68  ),
(1  ,1 ,78  ),
(1  ,1 ,81  ),
(1  ,1 ,83  ),
(1  ,1 ,89  ),
(1  ,1 ,91  ),
(1  ,1 ,92  ),
(1  ,1 ,93  ),
(1  ,1 ,94  ),
(1  ,1 ,95  ),
(1  ,1 ,96  ),
(1  ,1 ,97  ),
(1  ,1 ,98  ),
(1  ,1 ,100 ),
(1  ,1 ,101 ),
(1  ,1 ,104 ),
(1  ,1 ,106 ),
(1  ,1 ,108 ),
(1  ,1 ,110 ),
(1  ,1 ,111 ),
(1  ,1 ,112 ),
(1  ,1 ,113 ),
(1  ,1 ,115 ),
(1  ,1 ,121 ),
(1  ,1 ,123 ),
(1  ,1 ,124 ),
(1  ,1 ,127 ),
(1  ,1 ,128 ),
(1  ,1 ,131 ),
(1  ,1 ,139 ),
(1  ,1 ,144 ),
(1  ,1 ,145 ),
(1  ,1 ,155 ),
(1  ,1 ,157 ),
(1  ,1 ,158 ),
(1  ,1 ,174 ),
(1  ,1 ,181 ),
(1  ,1 ,183 ),
(1  ,1 ,184 ),
(1  ,1 ,185 ),
(1  ,1 ,190 ),
(1  ,1 ,191 ),
(1  ,1 ,193 ),
(1  ,1 ,195 ),
(1  ,1 ,203 ),
(1  ,1 ,205 ),
(1  ,1 ,207 ),
(1  ,1 ,211 ),
(1  ,1 ,213 ),
(1  ,1 ,219 ),
(1  ,1 ,221 ),
(1  ,1 ,222 ),
(1  ,1 ,231 ),
(1  ,1 ,234 ),
(1  ,1 ,241 ),
(1  ,1 ,243 ),
(1  ,2 ,152 ),
(2  ,1 ,1   ),
(2  ,1 ,4   ),
(2  ,1 ,13  ),
(2  ,1 ,16  ),
(2  ,1 ,26  ),
(2  ,1 ,33  ),
(2  ,1 ,36  ),
(2  ,2 ,49  ),
(2  ,1 ,78  ),
(2  ,1 ,91  ),
(2  ,1 ,92  ),
(2  ,1 ,93  ),
(2  ,1 ,94  ),
(2  ,1 ,95  ),
(2  ,1 ,97  ),
(2  ,1 ,99  ),
(2  ,1 ,102 ),
(2  ,1 ,103 ),
(2  ,1 ,104 ),
(2  ,1 ,106 ),
(2  ,1 ,118 ),
(2  ,1 ,122 ),
(2  ,1 ,131 ),
(2  ,1 ,139 ),
(2  ,1 ,145 ),
(2  ,1 ,157 ),
(2  ,1 ,187 ),
(2  ,1 ,190 ),
(2  ,1 ,191 ),
(2  ,1 ,195 ),
(2  ,1 ,203 ),
(2  ,1 ,206 ),
(2  ,1 ,209 ),
(2  ,1 ,213 ),
(2  ,1 ,214 ),
(2  ,1 ,216 ),
(2  ,1 ,218 ),
(2  ,1 ,226 ),
(2  ,1 ,228 ),
(2  ,1 ,235 ),
(2  ,2 ,152 ),
(3  ,1 ,1   ),
(3  ,1 ,11  ),
(3  ,2 ,61  ),
(3  ,2 ,72  ),
(3  ,1 ,78  ),
(3  ,1 ,89  ),
(3  ,1 ,90  ),
(3  ,1 ,91  ),
(3  ,1 ,92  ),
(3  ,1 ,94  ),
(3  ,1 ,95  ),
(3  ,1 ,96  ),
(3  ,1 ,97  ),
(3  ,1 ,98  ),
(3  ,1 ,99  ),
(3  ,1 ,101 ),
(3  ,1 ,106 ),
(3  ,1 ,108 ),
(3  ,1 ,118 ),
(3  ,1 ,122 ),
(3  ,1 ,126 ),
(3  ,1 ,131 ),
(3  ,1 ,139 ),
(3  ,1 ,140 ),
(3  ,1 ,145 ),
(3  ,1 ,146 ),
(3  ,1 ,157 ),
(3  ,1 ,182 ),
(3  ,1 ,190 ),
(3  ,1 ,213 ),
(3  ,1 ,223 ),
(3  ,1 ,224 ),
(3  ,1 ,228 ),
(3  ,1 ,239 ),
(3  ,2 ,152 ),
(4  ,1 ,14  ),
(4  ,2 ,27  ),
(4  ,1 ,38  ),
(4  ,2 ,61  ),
(4  ,1 ,69  ),
(4  ,1 ,75  ),
(4  ,1 ,78  ),
(4  ,1 ,85  ),
(4  ,1 ,89  ),
(4  ,1 ,90  ),
(4  ,1 ,92  ),
(4  ,1 ,93  ),
(4  ,1 ,94  ),
(4  ,1 ,95  ),
(4  ,1 ,96  ),
(4  ,1 ,97  ),
(4  ,1 ,98  ),
(4  ,1 ,100 ),
(4  ,1 ,101 ),
(4  ,1 ,104 ),
(4  ,1 ,105 ),
(4  ,1 ,106 ),
(4  ,1 ,108 ),
(4  ,1 ,117 ),
(4  ,1 ,120 ),
(4  ,1 ,134 ),
(4  ,1 ,139 ),
(4  ,1 ,175 ),
(4  ,1 ,182 ),
(4  ,1 ,183 ),
(4  ,1 ,184 ),
(4  ,1 ,190 ),
(4  ,1 ,195 ),
(4  ,1 ,198 ),
(4  ,1 ,202 ),
(4  ,1 ,203 ),
(4  ,1 ,224 ),
(4  ,1 ,225 ),
(4  ,1 ,236 ),
(4  ,1 ,239 ),
(4  ,1 ,240 ),
(4  ,1 ,242 ),
(4  ,2 ,152 ),
(5  ,1 ,1   ),
(5  ,1 ,7   ),
(5  ,1 ,8   ),
(5  ,1 ,14  ),
(5  ,1 ,22  ),
(5  ,1 ,26  ),
(5  ,2 ,27  ),
(5  ,1 ,28  ),
(5  ,1 ,34  ),
(5  ,1 ,35  ),
(5  ,1 ,36  ),
(5  ,2 ,47  ),
(5  ,1 ,75  ),
(5  ,1 ,78  ),
(5  ,1 ,79  ),
(5  ,1 ,83  ),
(5  ,1 ,89  ),
(5  ,1 ,90  ),
(5  ,1 ,91  ),
(5  ,1 ,92  ),
(5  ,1 ,93  ),
(5  ,1 ,94  ),
(5  ,1 ,96  ),
(5  ,1 ,97  ),
(5  ,1 ,98  ),
(5  ,1 ,99  ),
(5  ,1 ,100 ),
(5  ,1 ,101 ),
(5  ,1 ,103 ),
(5  ,1 ,104 ),
(5  ,1 ,105 ),
(5  ,1 ,106 ),
(5  ,1 ,107 ),
(5  ,1 ,108 ),
(5  ,1 ,109 ),
(5  ,1 ,122 ),
(5  ,1 ,123 ),
(5  ,1 ,126 ),
(5  ,1 ,131 ),
(5  ,1 ,137 ),
(5  ,1 ,139 ),
(5  ,1 ,145 ),
(5  ,1 ,146 ),
(5  ,2 ,153 ),
(5  ,1 ,157 ),
(5  ,2 ,165 ),
(5  ,1 ,180 ),
(5  ,1 ,188 ),
(5  ,1 ,190 ),
(5  ,1 ,193 ),
(5  ,1 ,196 ),
(5  ,1 ,203 ),
(5  ,1 ,207 ),
(5  ,1 ,212 ),
(5  ,1 ,213 ),
(5  ,1 ,216 ),
(5  ,1 ,222 ),
(5  ,1 ,223 ),
(5  ,1 ,224 ),
(5  ,1 ,225 ),
(5  ,1 ,226 ),
(5  ,1 ,229 ),
(5  ,1 ,231 ),
(5  ,1 ,232 ),
(5  ,1 ,239 ),
(5  ,2 ,152 ),
(6  ,1 ,1   ),
(6  ,1 ,11  ),
(6  ,1 ,20  ),
(6  ,1 ,36  ),
(6  ,1 ,38  ),
(6  ,1 ,40  ),
(6  ,2 ,45  ),
(6  ,1 ,59  ),
(6  ,1 ,69  ),
(6  ,1 ,78  ),
(6  ,1 ,88  ),
(6  ,1 ,91  ),
(6  ,1 ,93  ),
(6  ,1 ,94  ),
(6  ,1 ,95  ),
(6  ,1 ,97  ),
(6  ,1 ,99  ),
(6  ,1 ,100 ),
(6  ,1 ,103 ),
(6  ,1 ,104 ),
(6  ,1 ,106 ),
(6  ,1 ,108 ),
(6  ,1 ,131 ),
(6  ,1 ,133 ),
(6  ,1 ,145 ),
(6  ,1 ,147 ),
(6  ,1 ,149 ),
(6  ,1 ,150 ),
(6  ,1 ,157 ),
(6  ,2 ,172 ),
(6  ,1 ,180 ),
(6  ,1 ,190 ),
(6  ,1 ,191 ),
(6  ,1 ,195 ),
(6  ,1 ,197 ),
(6  ,1 ,203 ),
(6  ,1 ,206 ),
(6  ,1 ,209 ),
(6  ,1 ,213 ),
(6  ,1 ,215 ),
(6  ,1 ,216 ),
(6  ,1 ,230 ),
(6  ,1 ,233 ),
(6  ,1 ,234 ),
(6  ,1 ,235 ),
(6  ,2 ,152 ),
(7  ,1 ,1   ),
(7  ,1 ,2   ),
(7  ,1 ,15  ),
(7  ,1 ,36  ),
(7  ,1 ,55  ),
(7  ,2 ,67  ),
(7  ,1 ,78  ),
(7  ,2 ,87  ),
(7  ,1 ,89  ),
(7  ,1 ,91  ),
(7  ,1 ,93  ),
(7  ,1 ,94  ),
(7  ,1 ,96  ),
(7  ,1 ,97  ),
(7  ,1 ,98  ),
(7  ,1 ,99  ),
(7  ,1 ,103 ),
(7  ,1 ,104 ),
(7  ,1 ,106 ),
(7  ,1 ,108 ),
(7  ,1 ,119 ),
(7  ,1 ,122 ),
(7  ,1 ,145 ),
(7  ,1 ,190 ),
(7  ,1 ,195 ),
(7  ,1 ,197 ),
(7  ,1 ,203 ),
(7  ,1 ,206 ),
(7  ,1 ,209 ),
(7  ,1 ,213 ),
(7  ,1 ,226 ),
(7  ,1 ,228 ),
(7  ,2 ,152 ),
(8  ,1 ,14  ),
(8  ,1 ,78  ),
(8  ,1 ,91  ),
(8  ,1 ,94  ),
(8  ,1 ,95  ),
(8  ,1 ,98  ),
(8  ,1 ,99  ),
(8  ,1 ,100 ),
(8  ,1 ,101 ),
(8  ,1 ,108 ),
(8  ,1 ,126 ),
(8  ,1 ,146 ),
(8  ,1 ,149 ),
(8  ,1 ,177 ),
(8  ,1 ,193 ),
(8  ,1 ,196 ),
(8  ,1 ,223 ),
(8  ,1 ,224 ),
(8  ,1 ,226 ),
(8  ,1 ,228 ),
(8  ,1 ,231 ),
(8  ,1 ,232 ),
(8  ,2 ,152 ),
(9  ,1 ,26  ),
(9  ,1 ,36  ),
(9  ,1 ,41  ),
(9  ,1 ,78  ),
(9  ,1 ,89  ),
(9  ,1 ,91  ),
(9  ,1 ,92  ),
(9  ,1 ,93  ),
(9  ,1 ,94  ),
(9  ,1 ,96  ),
(9  ,1 ,98  ),
(9  ,1 ,101 ),
(9  ,1 ,103 ),
(9  ,1 ,106 ),
(9  ,1 ,108 ),
(9  ,1 ,122 ),
(9  ,1 ,157 ),
(9  ,1 ,160 ),
(9  ,1 ,192 ),
(9  ,1 ,193 ),
(9  ,1 ,194 ),
(9  ,1 ,196 ),
(9  ,1 ,197 ),
(9  ,1 ,203 ),
(9  ,1 ,209 ),
(9  ,1 ,210 ),
(9  ,1 ,213 ),
(9  ,1 ,223 ),
(9  ,1 ,239 ),
(9  ,2 ,152 ),
(10 ,1 ,1   ),
(10 ,1 ,7   ),
(10 ,1 ,12  ),
(10 ,1 ,19  ),
(10 ,1 ,21  ),
(10 ,1 ,75  ),
(10 ,1 ,78  ),
(10 ,1 ,91  ),
(10 ,1 ,92  ),
(10 ,1 ,97  ),
(10 ,1 ,98  ),
(10 ,1 ,100 ),
(10 ,1 ,102 ),
(10 ,1 ,103 ),
(10 ,1 ,106 ),
(10 ,1 ,108 ),
(10 ,1 ,117 ),
(10 ,1 ,118 ),
(10 ,1 ,122 ),
(10 ,1 ,126 ),
(10 ,1 ,127 ),
(10 ,1 ,143 ),
(10 ,1 ,148 ),
(10 ,1 ,169 ),
(10 ,1 ,179 ),
(10 ,1 ,183 ),
(10 ,1 ,193 ),
(10 ,1 ,196 ),
(10 ,1 ,204 ),
(10 ,1 ,237 ),
(10 ,2 ,152 ),
(11 ,1 ,19  ),
(11 ,1 ,26  ),
(11 ,1 ,36  ),
(11 ,1 ,60  ),
(11 ,1 ,75  ),
(11 ,1 ,78  ),
(11 ,1 ,79  ),
(11 ,1 ,82  ),
(11 ,1 ,83  ),
(11 ,1 ,89  ),
(11 ,1 ,91  ),
(11 ,1 ,92  ),
(11 ,1 ,94  ),
(11 ,1 ,95  ),
(11 ,1 ,96  ),
(11 ,1 ,100 ),
(11 ,1 ,101 ),
(11 ,1 ,104 ),
(11 ,1 ,106 ),
(11 ,1 ,108 ),
(11 ,1 ,122 ),
(11 ,1 ,131 ),
(11 ,1 ,135 ),
(11 ,1 ,139 ),
(11 ,2 ,141 ),
(11 ,1 ,157 ),
(11 ,1 ,197 ),
(11 ,1 ,203 ),
(11 ,1 ,220 ),
(11 ,1 ,228 ),
(11 ,2 ,152 ),
(12 ,1 ,5   ),
(12 ,1 ,7   ),
(12 ,1 ,19  ),
(12 ,1 ,22  ),
(12 ,1 ,26  ),
(12 ,2 ,27  ),
(12 ,1 ,33  ),
(12 ,1 ,36  ),
(12 ,1 ,39  ),
(12 ,1 ,50  ),
(12 ,1 ,53  ),
(12 ,1 ,54  ),
(12 ,1 ,56  ),
(12 ,1 ,57  ),
(12 ,1 ,58  ),
(12 ,2 ,62  ),
(12 ,2 ,65  ),
(12 ,2 ,66  ),
(12 ,1 ,74  ),
(12 ,1 ,78  ),
(12 ,1 ,86  ),
(12 ,1 ,89  ),
(12 ,1 ,90  ),
(12 ,1 ,91  ),
(12 ,1 ,92  ),
(12 ,1 ,93  ),
(12 ,1 ,94  ),
(12 ,1 ,95  ),
(12 ,1 ,96  ),
(12 ,1 ,97  ),
(12 ,1 ,98  ),
(12 ,1 ,99  ),
(12 ,1 ,100 ),
(12 ,1 ,102 ),
(12 ,1 ,103 ),
(12 ,1 ,104 ),
(12 ,1 ,106 ),
(12 ,1 ,108 ),
(12 ,1 ,117 ),
(12 ,1 ,118 ),
(12 ,1 ,120 ),
(12 ,1 ,121 ),
(12 ,1 ,122 ),
(12 ,1 ,125 ),
(12 ,1 ,128 ),
(12 ,1 ,129 ),
(12 ,1 ,131 ),
(12 ,1 ,132 ),
(12 ,1 ,139 ),
(12 ,1 ,145 ),
(12 ,1 ,151 ),
(12 ,1 ,154 ),
(12 ,1 ,156 ),
(12 ,1 ,157 ),
(12 ,2 ,163 ),
(12 ,2 ,164 ),
(12 ,1 ,168 ),
(12 ,1 ,170 ),
(12 ,2 ,172 ),
(12 ,1 ,173 ),
(12 ,1 ,176 ),
(12 ,1 ,177 ),
(12 ,1 ,180 ),
(12 ,1 ,186 ),
(12 ,1 ,200 ),
(12 ,1 ,209 ),
(12 ,1 ,217 ),
(12 ,1 ,221 ),
(12 ,1 ,222 ),
(12 ,1 ,226 ),
(12 ,1 ,230 ),
(12 ,1 ,233 ),
(12 ,2 ,152 ),
(13 ,1 ,1   ),
(13 ,1 ,7   ),
(13 ,1 ,9   ),
(13 ,1 ,16  ),
(13 ,1 ,36  ),
(13 ,1 ,40  ),
(13 ,1 ,78  ),
(13 ,1 ,89  ),
(13 ,1 ,91  ),
(13 ,1 ,92  ),
(13 ,1 ,93  ),
(13 ,1 ,94  ),
(13 ,1 ,96  ),
(13 ,1 ,97  ),
(13 ,1 ,98  ),
(13 ,1 ,99  ),
(13 ,1 ,101 ),
(13 ,1 ,103 ),
(13 ,1 ,104 ),
(13 ,1 ,108 ),
(13 ,1 ,114 ),
(13 ,1 ,115 ),
(13 ,1 ,117 ),
(13 ,1 ,118 ),
(13 ,1 ,128 ),
(13 ,1 ,131 ),
(13 ,1 ,139 ),
(13 ,1 ,145 ),
(13 ,2 ,165 ),
(13 ,1 ,180 ),
(13 ,1 ,206 ),
(13 ,1 ,209 ),
(13 ,1 ,213 ),
(13 ,1 ,216 ),
(13 ,1 ,221 ),
(13 ,1 ,233 ),
(13 ,1 ,238 ),
(13 ,2 ,152 ),
(14 ,1 ,26  ),
(14 ,1 ,36  ),
(14 ,1 ,37  ),
(14 ,1 ,52  ),
(14 ,1 ,71  ),
(14 ,1 ,73  ),
(14 ,1 ,78  ),
(14 ,1 ,80  ),
(14 ,1 ,90  ),
(14 ,1 ,92  ),
(14 ,1 ,93  ),
(14 ,1 ,95  ),
(14 ,1 ,96  ),
(14 ,1 ,98  ),
(14 ,1 ,99  ),
(14 ,1 ,100 ),
(14 ,1 ,102 ),
(14 ,1 ,106 ),
(14 ,1 ,116 ),
(14 ,2 ,130 ),
(14 ,1 ,131 ),
(14 ,1 ,132 ),
(14 ,1 ,137 ),
(14 ,1 ,138 ),
(14 ,1 ,139 ),
(14 ,2 ,142 ),
(14 ,1 ,159 ),
(14 ,2 ,161 ),
(14 ,1 ,178 ),
(14 ,1 ,189 ),
(14 ,1 ,199 ),
(14 ,1 ,201 ),
(14 ,1 ,226 ),
(14 ,1 ,244 ),
(14 ,2 ,152 ),
(15 ,1 ,10  ),
(15 ,1 ,18  ),
(15 ,1 ,25  ),
(15 ,1 ,26  ),
(15 ,1 ,29  ),
(15 ,1 ,31  ),
(15 ,1 ,32  ),
(15 ,1 ,36  ),
(15 ,1 ,37  ),
(15 ,1 ,42  ),
(15 ,1 ,48  ),
(15 ,1 ,63  ),
(15 ,1 ,70  ),
(15 ,1 ,71  ),
(15 ,1 ,74  ),
(15 ,1 ,76  ),
(15 ,1 ,78  ),
(15 ,1 ,83  ),
(15 ,1 ,84  ),
(15 ,1 ,90  ),
(15 ,1 ,94  ),
(15 ,1 ,95  ),
(15 ,1 ,96  ),
(15 ,1 ,97  ),
(15 ,1 ,98  ),
(15 ,1 ,99  ),
(15 ,1 ,100 ),
(15 ,1 ,103 ),
(15 ,1 ,125 ),
(15 ,1 ,128 ),
(15 ,1 ,131 ),
(15 ,1 ,136 ),
(15 ,1 ,137 ),
(15 ,1 ,139 ),
(15 ,1 ,145 ),
(15 ,1 ,149 ),
(15 ,1 ,201 ),
(15 ,1 ,208 ),
(15 ,1 ,226 ),
(15 ,1 ,227 ),
(15 ,1 ,228 ),
(15 ,1 ,233 ),
(15 ,2 ,152 ),
(16 ,1 ,36  ),
(16 ,1 ,52  ),
(16 ,1 ,64  ),
(16 ,1 ,77  ),
(16 ,1 ,78  ),
(16 ,1 ,92  ),
(16 ,1 ,94  ),
(16 ,1 ,96  ),
(16 ,1 ,98  ),
(16 ,1 ,99  ),
(16 ,1 ,100 ),
(16 ,1 ,102 ),
(16 ,1 ,118 ),
(16 ,1 ,125 ),
(16 ,1 ,126 ),
(16 ,1 ,128 ),
(16 ,1 ,131 ),
(16 ,1 ,137 ),
(16 ,1 ,139 ),
(16 ,1 ,145 ),
(16 ,1 ,157 ),
(16 ,1 ,169 ),
(16 ,1 ,173 ),
(16 ,1 ,178 ),
(16 ,1 ,183 ),
(16 ,1 ,199 ),
(16 ,1 ,225 ),
(16 ,1 ,228 ),
(17 ,1 ,23  ),
(17 ,1 ,26  ),
(17 ,1 ,36  ),
(17 ,2 ,46  ),
(17 ,1 ,78  ),
(17 ,1 ,89  ),
(17 ,1 ,91  ),
(17 ,1 ,94  ),
(17 ,1 ,95  ),
(17 ,1 ,98  ),
(17 ,1 ,100 ),
(17 ,1 ,104 ),
(17 ,1 ,105 ),
(17 ,1 ,106 ),
(17 ,1 ,108 ),
(17 ,1 ,115 ),
(17 ,1 ,122 ),
(17 ,1 ,126 ),
(17 ,1 ,131 ),
(17 ,1 ,139 ),
(17 ,1 ,144 ),
(17 ,1 ,160 ),
(17 ,1 ,171 ),
(17 ,1 ,203 ),
(17 ,1 ,224 ),
(17 ,1 ,236 ),
(17 ,2 ,152 ),
(18 ,1 ,1   ),
(18 ,1 ,6   ),
(18 ,1 ,26  ),
(18 ,1 ,28  ),
(18 ,1 ,77  ),
(18 ,1 ,78  ),
(18 ,1 ,94  ),
(18 ,1 ,95  ),
(18 ,1 ,97  ),
(18 ,1 ,98  ),
(18 ,1 ,100 ),
(18 ,1 ,101 ),
(18 ,1 ,102 ),
(18 ,1 ,103 ),
(18 ,1 ,108 ),
(18 ,1 ,125 ),
(18 ,1 ,126 ),
(18 ,1 ,131 ),
(18 ,1 ,132 ),
(18 ,1 ,136 ),
(18 ,1 ,137 ),
(18 ,1 ,139 ),
(18 ,1 ,145 ),
(18 ,1 ,149 ),
(18 ,1 ,162 ),
(18 ,1 ,166 ),
(18 ,1 ,167 ),
(18 ,1 ,180 ),
(18 ,1 ,221 ),
(18 ,1 ,228 ),
(18 ,1 ,233 );

--select * from PSA;

select '3.5'
go

--select 
--	'('+
--	convert(nchar(3), PA.ProgrammeID) +','+
--	convert(nchar(2), SA.SectorID) +','+
--	convert(nchar(4), SA.ActorID) +
--	'),'
--from 
--	PA join
--	PS on PA.ProgrammeID = PS.ProgrammeID join
--	SA on PA.ActorID = SA.ActorID and PS.SectorID = SA.SectorID
--order by
--	PA.ProgrammeID,
--	SA.SectorID,
--	SA.ActorID;

-- ---------------
-- Pre-work
-- ---------------

--drop table if exists PA;

---- Take everything.
--select 
--	* 
--into
--	PA
--from
--	ndp3.ProgrammesActors;
--go

---- 18 has no budget for private sector, so leave the sector 2's out.
--delete from PA where ProgrammeID = 18 and ActorID in (1,28,162);

----  Add a generic Private Sector actor to all Programmes that do not already have one (if they have Private Sector budget).
--insert PA (ProgrammeID, ActorID) values 
--	(3  ,152), 
--	(8  ,152),
--	(9  ,152),
--	(14 ,152),
--	(15 ,152),
--	(17, 152);
--go

---- Now check ...
---- All ProgrammeActor must be valid.
---- All ProgrammeSector must have an Actor.
--select
--	PS.ProgrammeID,
--	PS.SectorID,
--	PAS.ProgrammeID,
--	PAS.SectorID,
--	PAS.ActorID
--from 
--	PS full outer join
--	(
--		select
--			PA.ProgrammeID,
--			SA.SectorID,
--			A.ActorID
--		from 
--			PA join
--			A on PA.ActorID = A.ActorID join
--			SA on A.ActorID = SA.ActorID
--	) PAS on
--		PS.ProgrammeID = PAS.ProgrammeID and
--		PS.SectorID = PAS.SectorID
--where
--	PS.ProgrammeID is null or PAS.ProgrammeID is null;