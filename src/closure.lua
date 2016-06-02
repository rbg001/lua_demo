
--±Õ°ü
function iter_tab(tab)
local i = 0
local n = table.getn(tab)
return function()
  i=i+1
  if i<=n then return tab[i] end

end
end

t={"gaobing",21,"asdasd"}

it = iter_tab (t)

while true do

  local v = it()
  if v==nil then 
    break 
  else
    print(v)
  
  end
end


for el in iter_tab (t) do

print(el)
end

