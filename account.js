function Account(initial_balance) {
  this.balance = initial_balance || 0
}

Account.prototype.add = function(nr){
  this.balance = this.balance + nr
}

Account.prototype.sub = function (nr){
  this.balance = this.balance - nr
}

return Account