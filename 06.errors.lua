local function sum(one,two)
  return one+two
end

-- print(sum(1,"two"))

-- print(sum(1,2))

print(pcall(function()
  return sum(1,"two")
end))
print(pcall(sum,1,"two"))
print(pcall(sum,1,2))

-- local redis = require('redis')
-- local function connect()
--   return redis.connect('127.0.0.1', 6379)
-- end

-- -- local client = connect()
-- local ok, result = pcall(connect)
-- print(client, result)

-- if ok then
--   local client = result
--   print(client:set('my-key',1))
--   print(client:get('my-key'))
--   print(client:get('other-key'))
-- end

-- print(io.open("unexistent-file", "r"))
-- print(io.open("errors.lua", "r"))

-- local file = io.open("errors.lua", "r")
-- print(type(file))