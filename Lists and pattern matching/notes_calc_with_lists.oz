% Calculating with lists

%piece by piece
declare X1 X2 in
X1 = 6 | X2

{Browse X1}

declare X3 in
X2 = 7 | X3

X3 = nil

% Built-in func for lists
{Browse X1}
{Browse [6 7] == 6|7|nil}

{Browse X1} % [6 7]
{Browse X1.1} % 6
{Browse X1.2} % [7]
{Browse X1.2.1} % 7

% Recursive f on a list
% Sum of elements
declare
fun {Sum L}
   if L==nil then 0
   else L.1+{Sum L.2} end
end

{Browse {Sum X1}}

% Tail-recursive Sum
declare
fun {Sum2 L A}
   if L == nil then A
   else {Sum2 L.2 A+L.1} end
end

{Browse {Sum2 X1 0}}

% Nth element of a list
declare
fun {Nth L N}
   if N==1 then L.1
   else {Nth L.2 N-1} end
end

{Browse {Nth X1 2}}