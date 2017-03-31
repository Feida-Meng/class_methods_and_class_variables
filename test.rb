# require_relative "bankaccount"
#
# Bankaccount.create("feida1")
# Bankaccount.create("feida2")
# Bankaccount.create("feida3")
#
# Bankaccount.all_accounts[0].deposit(1000)
# Bankaccount.all_accounts[1].deposit(2000)
# Bankaccount.all_accounts[2].deposit(3000)
#
# Bankaccount.total_funds
#
# Bankaccount.interest_time(0.0)
#
# Bankaccount.total_funds
#
# Bankaccount.all_accounts[0].withdraw(1000/2)
# Bankaccount.all_accounts[1].withdraw(2000/2)
# Bankaccount.all_accounts[2].withdraw(3000/2)
#
# Bankaccount.total_funds


# require_relative "book"
# Book.create("starwarsI","Lucas","ISBN434523452")
# Book.create("starwarsII","Lucas","ISBN434523453")
# Book.create("starwarsIII","Lucas","ISBN434523454")
#
# Book.display_available
# book = Book.find_available("blah")
# book.borrow
#
# puts "Book available: #{Book.available}"
# star_wars = Book.available
# star_wars.borrow
# Book.available[0].borrow
# Book.available[0].borrow
# puts "Book available: #{Book.available}"
#
# puts "Book available: #{Book.borrowed}"
# puts Book.available
# Book.borrowed[0].borrow
# Book.borrowed[0].borrow
# Book.borrowed[0].borrow
# puts "Book available: #{Book.borrowed}"
# puts "Book available: #{Book.available}"

# require_relative "zombie"
#
# Zombie.new_day
# puts Zombie.all.inspect
#
# puts Zombie.all.length
#
# Zombie.all.each do |zombie|
#   zombie.encounter
# end
