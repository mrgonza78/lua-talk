var Account = {
  add: function(nr) {
    this.balance = this.balance + nr
  },
  sub: function(nr) {
    this.balance = this.balance - nr
  }
}

var my_account = { balance: 0 }

my_account.__proto__ = Account

console.log(my_account.balance)

my_account.add(5)

console.log(my_account.balance)

my_account.sub(6)

console.log(my_account.balance)
