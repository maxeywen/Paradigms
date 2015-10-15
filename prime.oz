declare
fun {Prime N}
   local SubPrime in
	  fun {SubPrime N A}
		 if A==1 then true
		 else
			if (N mod A)==0 then false
			else
			   {SubPrime N A-1}
			end
		 end
	  end
	  if N==1 then false
	  else
		 {SubPrime N N-1}
	  end
   end
end
{Browse {Prime 5}}