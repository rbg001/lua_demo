print (1~=2)
--LUA中nil 和false 为假 其余都为真

-- and比较时，只要存在false 就返回false，如果都不是false 则返回最后一个值

print (1 and false  and 2)
print(1 and 2 and 3 and 4)
print(1 and 2 and 3 and nil)

-- or 比较时，全部为false 才会返回false 否则返回第一个不为false 的值
print(false or 5 or 4)
print(false or false)

--lua 中用 .. 连接两个字符串