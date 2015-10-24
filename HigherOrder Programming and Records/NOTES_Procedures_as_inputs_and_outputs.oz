% Higher-order programming and records
% Procedures as inputs and outputs

% Genericity
% when a func is passed as input
declare
fun {Map F L}
   case L of nil then nil
   [] H|T then {F H}|{Map F T}
   end
end

{Browse {Map fun {$X} X*X end [7 8 9]}} % [49 64 81]

% Instantiation
% when func returned as output
declare
fun {MakeAdd A}
   fun {$ X} X+A end
end
Add5 = {MakeAdd 5}

{Browse {Add5 100}} % 105

% Function composition
% input 2 funcs(f & g), return the composition of f and g
declare
fun {Compose F G}
   fun {$ X}{F{G X}} end
end
Fnew = {Compose fun {$ X} X*X end
		        fun {$ X} X+1 end
	   }

{Browse {Fnew 2}} % 9
{Browse {{Compose Fnew Fnew}2}} % 100

% Definition of FoldL
% L: list, F: Func, U: init value/accum
declare
fun {FoldL L F U}
   case L
   of nil then U
   [] H|T then {FoldL T F {F U H}}
   end
end

S = {FoldL [5 6 7] fun {$ X Y} X+Y end 0}
{Browse S} % 18

% Encapsulation
declare
fun {Zero} 0 end
fun {Inc H}
   N = {H}+1 in
       fun {$} N end
end
Three = {Inc {Inc {Inc Zero}}}

{Browse {Three}} %3

% Delayed Execution
% define statement, pass to func which decides if execute
declare
proc {IfTrue Cond Stmt}
   if {Cond} then {Stmt} end
end
Stmt = proc {$}{Browse 111*111} end
{IfTrue fun {$} 1<2 end Stmt} %12321