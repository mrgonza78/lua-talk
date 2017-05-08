local my_co = coroutine.create(function(resume_value)
  print('my_co',resume_value)
  resume_value = coroutine.yield(1)
  print('my_co',resume_value)
  resume_value = coroutine.yield(2)
  print('my_co',resume_value)
  resume_value = coroutine.yield(3)
  print('my_co',resume_value)
  resume_value = coroutine.yield(4)
  print('my_co',resume_value)
  return 5
end)

local function iter()
  local ok, val = coroutine.resume(my_co)
  if ok then return val else return nil end
end

for val in iter do
  print(val)
end
