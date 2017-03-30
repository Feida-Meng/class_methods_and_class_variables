class Bankaccount

#class
  @@accounts = []
  @@total_funds = 0

  def self.create
    @@accounts.push(Bankaccount.new)
  end

  def self.total_funds


    @@accounts.each do |account|

        @@total_funds += @@account.@balance

    end

  end

  def self.interest_time

  end

#instance

  def initialize

    @balance = 0.00

  end

  def deposit(m_in)
    @balance += m_in.to_f
  end

  def withdraw(m_out)
    @balance -= m_out.to_f
  end



end


# Add a class method called interest_time that iterates through all accounts and increases their balances according to @@interest_rate.
