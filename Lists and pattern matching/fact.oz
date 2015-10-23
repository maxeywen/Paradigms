declare
fun {Fact N}
   local FactAux in
	  fun {FactAux N K F}
		 if K>N then nil
		 else K*F | {FactAux N K+1 K*F} end
	  end
	  {FactAux N 1 1}
   end
end

{Browse {Fact 4}}