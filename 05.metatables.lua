
local some_table = {
  __index = function(...)
    print('index metamethod',...)
  end,
  __newindex = function(table, key, value,...)
    print('newindex metamethod',table,key, value,...)
    rawset(table, key, value)
  end,
  __call = function(...)
    print('call metamethod',...)
  end,
  __len = function(...)
    print('len metamethod',...)
  end,
  __tostring = function(table,...)
    -- print('tostring metamethod',...)
    return '(some_table here!)'
  end,
  __concat = function(...)
    print('concat metamethod',...)
  end,
  -- Arimethic
  __add = function(...)
    print('add metamethod',...)
  end,
  __mul = function(...)
    print('mul metamethod',...)
  end,
  __sub = function(...)
    print('sub metamethod',...)
  end,
  __div = function(...)
    print('div metamethod',...)
  end,
  __unm = function(...)
    print('negation metamethod',...)
  end,
  __pow = function(...)
    print('pow metamethod',...)
  end,
  __eg = function(...)
    print('equal metamethod',...)
  end,
  __le = function(...)
    print('less-than-or-equal metamethod',...)
  end,
  __lt = function(...)
    print('less-than metamethod',...)
  end,
}

local my_obj = {}
setmetatable(my_obj,some_table)

print(my_obj.foo)
my_obj.foo = 'bar'
print(my_obj.foo)
print(my_obj())
print(#my_obj)
print(tostring(my_obj))
print(my_obj+1)
print(my_obj*2)
print(my_obj/3)
print(my_obj-4)
print(not my_obj)
print(my_obj == 'a_string')
print(my_obj ~= 'a_string')
print(my_obj < my_obj)
print(my_obj <= my_obj)
