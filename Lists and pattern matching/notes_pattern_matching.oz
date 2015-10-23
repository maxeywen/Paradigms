% Pattern Matching

declare
fun {Sum L}
   case L
   of H|T then H + {Sum T}
   [] nil then 0
   end
end

{Browse {Sum [5 6 7]}}

% Tail-recursive
declare
fun {Sum2 L A}
   case L
   of H|T then {Sum2 T H+A}
   [] nil then A
   end
end
{Browse {Sum2 [5 6 7] 0}}

% Pattern Engineering
declare
fun {Sum3 L A}
   case L
	  of H1|H2|T then {Sum3 T H1+H2+A}
   []H|T then {Sum3 T H+A}
   [] nil then A
   end
end
{Browse {Sum3 [5 6 7] 0}}