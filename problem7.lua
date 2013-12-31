-- problem7.lua 
function isPrimeNew(p) -- prime check testing
  local isPrime = true;
  if ((p < 2) or ((p > 2) and (p%2 == 0))) then return not isPrime; end
  if p == 2 then return isPrime; end
  for i=2,p do 
    if p%i == 0 and i ~= p then return not isPrime; end
  end
  return isPrime; 
end
function primeGenNew(n) -- generate primes.
  local t = {} -- hold primes 
  for i=1,n do 
    if acml.isPrimeNew(i) then 
      t[#t+1] = i; 
    end
  end
end
