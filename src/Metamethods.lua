
---用LUA實現Set的功能其實就是用table的key不可重複的特性
Set = {}

function Set.new(t)

  local set={}
  for _,l in ipairs(t) do
    set[l] = true--其實這邊的true，也就是右值是什麽無所謂的，關鍵是要用它的key
  end
  
  return set
end

function Set.union(a,b)
  local res = Set.new{}

  for k in pairs(a) do res[k] = true end

  for k in pairs(b) do res[k] = true end
end

function Set.intersection (a,b)

  local res = Set.new{}

  for k in pairs(a) do

    res[k] = b[k]

  end

  return res

end


function Set.tostring (set)

    local s = "{"

    local sep = ""

    for e in pairs(set) do

       s = s .. sep .. e

       sep = ", "

    end

    return s .. "}"

end

function Set.print (s)

    print(Set.tostring(s))

end


testSet = Set.new({"313",1231,45345})
Set.print(testSet)


