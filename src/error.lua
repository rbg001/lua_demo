--print "enter a number:"

--n = assert(io.read("*number"), "invalid input")


function foo(a) 

print(a)
error("this is a test message");

end


if(pcall(foo,1) ) then
print(1)
else
print(2)
end

local status, err = pcall(function () a = 'a'+1 end)

print(err)

--> stdin:1: attempt to perform arithmetic on a string value

 

local status, err = pcall(function () error("my error") end)

print(err)
