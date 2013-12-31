-- problem1.lua 
function findMultiples(n) 
  local t, add = {},0;
  if ((n>0) and (n<n+1)) then
   for i=1,n do
      if (i%3 == 0) or (i%5==0) then 
        t[#t+1] = i;
      end
    end
  end
  for i=1,#t do add = add + t[i]; end
end
