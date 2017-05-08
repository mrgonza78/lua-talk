local my_co = coroutine.create(function ()
  coroutine.yield(1)
  coroutine.yield(2)
  coroutine.yield(3)
  coroutine.yield(4)
end)

print(coroutine.status(my_co))
print(coroutine.resume(my_co))
print(coroutine.status(my_co))
print(coroutine.resume(my_co))
print(coroutine.status(my_co))
print(coroutine.resume(my_co))
print(coroutine.status(my_co))
print(coroutine.resume(my_co))
print(coroutine.status(my_co))
print(coroutine.resume(my_co))
print(coroutine.status(my_co))
print(coroutine.resume(my_co))
print(coroutine.status(my_co))

print(type(my_co))