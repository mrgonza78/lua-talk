
local my_co = coroutine.create(function ()
  print("1")
  coroutine.yield(1)
  coroutine.yield(2)
  local t = "fdsds"..true
  coroutine.yield(3)
  if true then return 24343 end
  coroutine.yield(4)
end)

local ok, ret = coroutine.resume(my_co)

print(coroutine.resume(my_co))
print(coroutine.resume(my_co))
print(coroutine.resume(my_co))
print(coroutine.resume(my_co))
print(coroutine.resume(my_co))

print(type(my_co))
print(type(sum))