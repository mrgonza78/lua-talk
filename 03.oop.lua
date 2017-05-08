local Account = {
  balance = 0,
  add = function(acct,nr)
    acct.balance = acct.balance + nr
  end,
  sub = function(acct,nr)
    acct.balance = acct.balance - nr
  end
}

local my_account = { balance = 0 }

print(my_account.balance)

Account.add(my_account,5)

print(my_account.balance)

Account.sub(my_account,6)

print(my_account.balance)

-- my_account:add(5)

local brou_account = { balance = 0 }
setmetatable(brou_account,{__index = Account})

print(brou_account.balance)

brou_account:add(5)

print(brou_account.balance)

brou_account:sub(6)

print(brou_account.balance)
