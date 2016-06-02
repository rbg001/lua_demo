
---------------------���demoʵ������ι���Set���ϣ����Ҷ�����Set���ཻ �ϲ�  �Ƚϴ�С��������java�е���дtoString�ĺ���-------------


---��LUA���FSet�Ĺ����䌍������table��key�������}������
---��δ������潫չʾ�������+�Ų�����
Set = {}
Set.mt={}

function Set.new(t)
  local set={}
  setmetatable(set,Set.mt)
  for _,l in ipairs(t) do
    set[l] = true--�䌍�@߅��true��Ҳ������ֵ��ʲ��o���^�ģ��P�I��Ҫ������key
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
Set.mt.__le=Set.le--С�ڵ���
Set.mt.__eq=function(a,b) return  a>=b and b>=a end--����
Set.mt.__lt = function (a,b)--С��
 return a <= b and not (b <= a)
end
Set.mt.__tostring = Set.tostring
Set.mt.__metatable = "not your business"--����������ⲿ�������޸�����ʵ�ֵ�metatable



------------�����ǲ��Դ���
s1 = Set.new{"313",1231,45345,"wewer"}
s2= Set.new {"wewer","ddff"}


Set.print(s1 + s2)--�󲢼�

Set.print(s1 * s2)--����


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
