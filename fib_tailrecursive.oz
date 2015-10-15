declare
fun {Fib N}
   local FibAux in
	  fun {FibAux N Acc1 Acc2}
		 if N==0 then Acc1
		 else
			if N==1 then Acc2
			else
			   {FibAux N-1 Acc2 Acc1+Acc2}
			end
		 end
	  end
	  {FibAux N 0 1}
   end
end
{Browse {Fib 42}}