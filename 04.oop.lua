local Account = {}

  function Account.new(bal)
    local newinstance= {balance=bal}
    setmetatable(newinstance,{__index = Account})
    return newinstance
  end
  function Account.add(acct,nr)
    acct.balance = acct.balance + nr
  end
  function Account.sub(acct,nr)
    acct.balance = acct.balance - nr
  end


acc = Account.new()
acc:add(5)

local NonNegativeAccount = {
  sub = function(acct,nr)
    if acct.balance >= nr then
      Account.sub(acct,nr)
    else
      print("Account cannot go negative")
      acct.balance = 0
    end
  end
}

setmetatable(NonNegativeAccount,{__index = Account})

local brou_account = { balance = 0 }

setmetatable(brou_account,{__index = NonNegativeAccount})

print(brou_account.balance)

brou_account:add(5)

print(brou_account.balance)

brou_account:sub(4)

print(brou_account.balance)

brou_account:sub(4)

print(brou_account.balance)
