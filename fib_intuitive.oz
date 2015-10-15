declare
fun {Fib N}
   if N==0 then 0
   elseif N==1 then 1
   else
	  {Fib N-1} + {Fib N-2}
   end
end
{Browse {Fib 5}}
{Browse {Fib 6}}
{Browse {Fib 7}}