-- problem216.lua you might consider not using this as it takes hours to run through 

require 'problem7' -- isPrimeNew(p)

local t,n = {},50*10^6
for i=2,n do
  if isPrimeNew(2*i^2 -1) then
    if ((((2*i^2 - 1)^0.5)%1) ~= 0) then
      t[#t+1] = 2*i^2 - 1 
    end
  end
end
for i=1,#t do print(i,t[i]) end
