
---------------------这个demo实现了如何构造Set集合，并且定义了Set的相交 合并  比较大小还有类似java中的重写toString的函数-------------


---用LUA實現Set的功能其實就是用table的key不可重複的特性
---这段代码里面将展示如何重载+号操作符
Set = {}
Set.mt={}

function Set.new(t)
  local set={}
  setmetatable(set,Set.mt)
  for _,l in ipairs(t) do
    set[l] = true--其實這邊的true，也就是右值是什麽無所謂的，關鍵是要用它的key
  end
  return set
end

function Set.union(a,b)
  local res = Set.new{}
  for k in pairs(a) do res[k] = true end
  for k in pairs(b) do res[k] = true end
  return res
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
function Set.le(a,b)
  local total_a =0
  local total_b =0
  for v in pairs(a) do
    if type(v)=='number' then
      total_a=total_a+v
    end
  end
  
  for t in pairs(b) do
    if type(t)=='number' then
      total_b = total_b+t
    end
  end

  print("total_a is :"..total_a)
  print("total_b is :"..total_b)
  return total_a<=total_b
end




Set.mt.__add=Set.union
Set.mt.__mul = Set.intersection
Set.mt.__le=Set.le--小于等于
Set.mt.__eq=function(a,b) return  a>=b and b>=a end--等于
Set.mt.__lt = function (a,b)--小于
 return a <= b and not (b <= a)
end
Set.mt.__tostring = Set.tostring
Set.mt.__metatable = "not your business"--定义这个，外部将不能修改我们实现的metatable



------------以下是测试代码
s1 = Set.new{"313",1231,45345,"wewer"}
s2= Set.new {"wewer","ddff"}


Set.print(s1 + s2)--求并集

Set.print(s1 * s2)--交集


t = {tg=true,asdad=nil}
for v in pairs(t) do
  print (v)
end

a1 = Set.new {1,2,3,4,5,6}
a2 = Set.new({1,2,3,4,5,6})

print (a1==a2)
print (a1>a2)

ss = Set.new({})
print(getmetatable(ss))
