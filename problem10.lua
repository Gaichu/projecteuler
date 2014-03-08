require 'problem7' -- for isPrimeNew(p) function which checks whether (p) is prime

local a = 0
function problem10()
for i=2,2*10^6 do
  if isPrimeNew(i) then 
    a = a + i
    print(a)
  end
end
end
