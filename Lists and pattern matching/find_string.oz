declare
fun {Prefix L1 L2}
   case L1
   of nil then true
   [] H1|T1 then
	  case L2
		 of nil then false
		 [] H2|T2 then
			if H1==H2 then {Prefix T1 T2}
			else false end
	  end
   end
end

% {Browse {Prefix[1 2 3] [1 2 3 4 5]}} = true

fun {FindString L1 L2}
   case L2
   of nil then
	  if L1==nil then true else false end
   [] H2|T2 then
	  case L1
	  of nil then false
	  [] H1|T1 then
		 if H2==H1 then {Prefix L1 L2}
		 else {FindString L1 L2.2} end
	  end
   end
end

{Browse {FindString nil nil}} % = true
{Browse {FindString [4 5 6] [1 2 3 4 5 6 7 8 9]}}