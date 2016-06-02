
--说明，初看有一点点没搞明白，其实很简单
list = nil--这个是根



for i=1,100 do

  --每次list先用next连接到之前的list上去，然后value是自己的值
  list = {next=list,value = i}

end

while list do
  print(list.value)
  list =list.next
end
