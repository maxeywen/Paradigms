% Specification of Append
% Function append(l1, l2) returns l3
% if l1=[a1,a2,...,an] and l2=[b1,b2,...,bk]
% then l3 = [a1,a2,...,an,b1,b2,...,bk]

declare
fun {Append L1 L2}
   case L1
   of nil then L2
   [] H|T then H|{Append T L2}
   end
end

{Browse {Append [1 2 5] [8 7 6]}}

declare
proc {Append L1 L2 L3}
   case L1 of nil then L3 = L2
   else case L1 of H|T then
		   local T3 in
			  L3 = H|T3
			  {Append T L2 T3}
		   end
		end
   end
end
local R in {Append [1 2 5] [8 7 6] R}
   {Browse R}
end
