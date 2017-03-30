class Bankaccount

#class

  @@accounts = []
  @@interest_rate = 0.20

  def self.all_accounts
    @@accounts
  end

  def self.create(x)
    x = Bankaccount.new
    @@accounts.push(x)
  end

  def self.total_funds
    total = 0
    @@accounts.each do |acc|

      puts  total += acc.balance

    end

  end

  def self.interest_time(i)

    @@interest_rate = i
    @@accounts.each do |acc|

    acc.interest_add(@@interest_rate)

    end

  end

#instance
  attr_reader :balance

  def initialize

    @balance = 0.00
    @interest_rate = 0.00

  end

  def deposit(m_in)
    @balance += m_in.to_f
  end

  def withdraw(m_out)
    @balance -= m_out.to_f
  end

  def interest_add (i)
    @interest_rate = i
    @balance += i * @balance
  end

end


# Add a class method called interest_time that iterates through all accounts and increases their balances according to @@interest_rate.
