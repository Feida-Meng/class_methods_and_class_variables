require_relative "bankaccount"

Bankaccount.create("feida1")
Bankaccount.create("feida2")
Bankaccount.create("feida3")

Bankaccount.all_accounts[0].deposit(1000)
Bankaccount.all_accounts[1].deposit(2000)
Bankaccount.all_accounts[2].deposit(3000)

Bankaccount.total_funds

Bankaccount.interest_time(0.0)

Bankaccount.total_funds

Bankaccount.all_accounts[0].withdraw(1000/2)
Bankaccount.all_accounts[1].withdraw(2000/2)
Bankaccount.all_accounts[2].withdraw(3000/2)

Bankaccount.total_funds
