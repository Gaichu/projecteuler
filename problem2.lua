function fib(n)
  if n < 3 then return 1;
  else return acml.fib(n-1) + acml.fib(n-2); end
end
function checkExceed() 
  local exceed,even,add = 4*10^6,{},0;
  for i=1,33 do 
    if (i%3 == 0) then -- values on those keys are true checking v%2==0 
      if not(acml.fib(i)>exceed) then
        even[#even+1] = acml.fib(i);
      end
    end
  end
  for i=1,#even do add = add + even[i]; end
end
