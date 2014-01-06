-- problem3.lua
require 'problem7'

function problem3(n)
  for i=1,math.sqrt(n) do
    if (n%i==0) and isPrimeNew(i) then
      print(i)
    end
   end
end
 
