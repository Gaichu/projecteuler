-- problem6.lua
function problem6()
  local t, a, b = {}, 0, 0
  for i=1,100 do 
    t[#t+1] = i
  end
  for i=1,#t do 
    a = a + t[i]*t[i]
    b = b + t[i];
    if i==#t then 
      b = b^2;
    end
  end
end