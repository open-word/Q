use Uganda;
go

create Table SA
(
	SectorID int,
	ActorID int,
	constraint PK_SA primary key (SectorID, ActorID),
	constraint FK_SA_S foreign key (SectorID) references S (SectorID),
	constraint FK_SA_A foreign key (ActorID) references A (ActorID)
);
go

insert SA (SectorID, ActorID) values
(1 ,1   ),
(1 ,2   ),
(1 ,3   ),
(1 ,4   ),
(1 ,5   ),
(1 ,6   ),
(1 ,7   ),
(1 ,8   ),
(1 ,9   ),
(1 ,10  ),
(1 ,11  ),
(1 ,12  ),
(1 ,13  ),
(1 ,14  ),
(1 ,15  ),
(1 ,16  ),
(1 ,17  ),
(1 ,18  ),
(1 ,19  ),
(1 ,20  ),
(1 ,21  ),
(1 ,22  ),
(1 ,23  ),
(1 ,24  ),
(1 ,25  ),
(1 ,26  ),
(2 ,27  ),
(1 ,28  ),
(1 ,29  ),
(1 ,30  ),
(1 ,31  ),
(1 ,32  ),
(1 ,33  ),
(1 ,34  ),
(1 ,35  ),
(1 ,36  ),
(1 ,37  ),
(1 ,38  ),
(1 ,39  ),
(1 ,40  ),
(1 ,41  ),
(1 ,42  ),
(1 ,43  ),
(2 ,44  ),
(2 ,45  ),
(2 ,46  ),
(2 ,47  ),
(1 ,48  ),
(2 ,49  ),
(1 ,50  ),
(1 ,51  ),
(1 ,52  ),
(1 ,53  ),
(1 ,54  ),
(1 ,55  ),
(1 ,56  ),
(1 ,57  ),
(1 ,58  ),
(1 ,59  ),
(1 ,60  ),
(2 ,61  ),
(2 ,62  ),
(1 ,63  ),
(1 ,64  ),
(2 ,65  ),
(2 ,66  ),
(2 ,67  ),
(2 ,68  ),
(1 ,69  ),
(1 ,70  ),
(1 ,71  ),
(2 ,72  ),
(1 ,73  ),
(1 ,74  ),
(1 ,75  ),
(1 ,76  ),
(1 ,77  ),
(1 ,78  ),
(1 ,79  ),
(1 ,80  ),
(1 ,81  ),
(1 ,82  ),
(1 ,83  ),
(1 ,84  ),
(1 ,85  ),
(1 ,86  ),
(2 ,87  ),
(1 ,88  ),
(1 ,89  ),
(1 ,90  ),
(1 ,91  ),
(1 ,92  ),
(1 ,93  ),
(1 ,94  ),
(1 ,95  ),
(1 ,96  ),
(1 ,97  ),
(1 ,98  ),
(1 ,99  ),
(1 ,100 ),
(1 ,101 ),
(1 ,102 ),
(1 ,103 ),
(1 ,104 ),
(1 ,105 ),
(1 ,106 ),
(1 ,107 ),
(1 ,108 ),
(1 ,109 ),
(1 ,110 ),
(1 ,111 ),
(1 ,112 ),
(1 ,113 ),
(1 ,114 ),
(1 ,115 ),
(1 ,116 ),
(1 ,117 ),
(1 ,118 ),
(1 ,119 ),
(1 ,120 ),
(1 ,121 ),
(1 ,122 ),
(1 ,123 ),
(1 ,124 ),
(1 ,125 ),
(1 ,126 ),
(1 ,127 ),
(1 ,128 ),
(1 ,129 ),
(2 ,130 ),
(1 ,131 ),
(1 ,132 ),
(1 ,133 ),
(1 ,134 ),
(1 ,135 ),
(1 ,136 ),
(1 ,137 ),
(1 ,138 ),
(1 ,139 ),
(1 ,140 ),
(2 ,141 ),
(2 ,142 ),
(1 ,143 ),
(1 ,144 ),
(1 ,145 ),
(1 ,146 ),
(1 ,147 ),
(1 ,148 ),
(1 ,149 ),
(1 ,150 ),
(1 ,151 ),
(2 ,152 ),
(2 ,153 ),
(1 ,154 ),
(1 ,155 ),
(1 ,156 ),
(1 ,157 ),
(1 ,158 ),
(1 ,159 ),
(1 ,160 ),
(2 ,161 ),
(1 ,162 ),
(2 ,163 ),
(2 ,164 ),
(2 ,165 ),
(1 ,166 ),
(1 ,167 ),
(1 ,168 ),
(1 ,169 ),
(1 ,170 ),
(1 ,171 ),
(2 ,172 ),
(1 ,173 ),
(1 ,174 ),
(1 ,175 ),
(1 ,176 ),
(1 ,177 ),
(1 ,178 ),
(1 ,179 ),
(1 ,180 ),
(1 ,181 ),
(1 ,182 ),
(1 ,183 ),
(1 ,184 ),
(1 ,185 ),
(1 ,186 ),
(1 ,187 ),
(1 ,188 ),
(1 ,189 ),
(1 ,190 ),
(1 ,191 ),
(1 ,192 ),
(1 ,193 ),
(1 ,194 ),
(1 ,195 ),
(1 ,196 ),
(1 ,197 ),
(1 ,198 ),
(1 ,199 ),
(1 ,200 ),
(1 ,201 ),
(1 ,202 ),
(1 ,203 ),
(1 ,204 ),
(1 ,205 ),
(1 ,206 ),
(1 ,207 ),
(1 ,208 ),
(1 ,209 ),
(1 ,210 ),
(1 ,211 ),
(1 ,212 ),
(1 ,213 ),
(1 ,214 ),
(1 ,215 ),
(1 ,216 ),
(1 ,217 ),
(1 ,218 ),
(1 ,219 ),
(1 ,220 ),
(1 ,221 ),
(1 ,222 ),
(1 ,223 ),
(1 ,224 ),
(1 ,225 ),
(1 ,226 ),
(1 ,227 ),
(1 ,228 ),
(1 ,229 ),
(1 ,230 ),
(1 ,231 ),
(1 ,232 ),
(1 ,233 ),
(1 ,234 ),
(1 ,235 ),
(1 ,236 ),
(1 ,237 ),
(1 ,238 ),
(1 ,239 ),
(1 ,240 ),
(1 ,241 ),
(1 ,242 ),
(1 ,243 ),
(1 ,244 );

--select * from SA;

select '2.4'
go