
local acct_module = require('account')

local an_account = acct_module.new()

an_account:add(5)

an_account:sub(5)

local inspect = require('inspect')

-- print(inspect(an_account))

print(inspect(package,{depth=1}))

print(inspect(package.loaded,{depth=1}))
print(inspect(package.loaded.account,{depth=1}))

print(package.path)

local LoggeableAccount = {}

function LoggeableAccount.new(initial_balance)
  local loggeable_account = { account = acct_module.new(initial_balance) }
  setmetatable(loggeable_account,{__index = LoggeableAccount})
  return loggeable_account
end

function LoggeableAccount.add(loggeable_acct,nr)
  print("adding "..nr.." to account "..inspect(loggeable_acct.account))
  return loggeable_acct.account:add(nr)
end

function LoggeableAccount.sub(loggeable_acct,nr)
  print("substracting "..nr.." from account "..inspect(loggeable_acct.account))
  return loggeable_acct.account:sub(nr)
end

package.loaded['account'] = LoggeableAccount

local mocked_acct_module = require('account')

an_account = mocked_acct_module.new()

an_account:add(5)

an_account:sub(5)
