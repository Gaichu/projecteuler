-- please note: this solution will give you a table overflow for N=10^11, but
-- will possibly work fine for N<=5*10^3. I just uploaded this so you can see the idea behind the problem
function problem439(N)
  local add,it = 0,{} 
  for j=0,N do -- generate one table containing teh relevant numbers up to N 
    for i=1,N-j do
      it[#it+1] = (j+1)*(i+j)
    end
  end
  local cp = it 
  for i=1,#cp do -- rm squares from table cp and merge cp and it  
    if (((cp[i]^0.5)%1) ~= 0) then 
      it[#it+1] = cp[i] 
    end
  end
  local cp = nil
  for j=1,#it do 
    for i=1,#it do -- find divisors and add them up
      if ((it[j]%i==0)) then 
        add = add + i;
      end
    end
  end
end
