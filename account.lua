
local Account = { _VERSION = '1.12' }

print("fdsadsf")

function Account.new(initial_balance)
  local account = { balance = initial_balance or 0 }
  setmetatable(account,{__index = Account})
  return account
end

function Account.add(acct,nr)
  acct.balance = acct.balance + nr
end

function Account.sub(acct,nr)
  acct.balance = acct.balance - nr
end

return Account