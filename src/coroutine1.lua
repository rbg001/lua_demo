local x = os.clock()
co = coroutine.create(function() 


  for i=1,100000 do
    print(i)
   coroutine.yield();
  end


end)

print(coroutine.status(co))

coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
print(os.clock() - x)

