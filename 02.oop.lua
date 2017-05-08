
local my_account = {
  balance = 0,
  add = function(nr)
    my_account.balance = my_account.balance + nr
  end
}

my_account.sub = function(an_account,nr)
  an_account.balance = an_account.balance - nr
end

print(my_account.balance)
-- my_account.add(5)
print(my_account.balance)
my_account.sub(6)
print(my_account.balance)

-- my_account:add(5)
-- print(my_account.balance)