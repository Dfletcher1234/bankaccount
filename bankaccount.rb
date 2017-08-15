class BankAccount
  @@interest_rate = 0.15
  @@accounts = []

  def self.create
    account_new = BankAccount.new
    @@accounts << account_new
    return account_new
  end

  def self.total_funds
    sum = 0
    @@accounts.each do |value|
    sum += value.balance
  end
    return sum
  end

  def self.interest_time
    sum = 0
    @@accounts.each do |account|
      account.balance *= @@interest_rate
    end
  end


  def initialize
  @balance = 0
  end

  def balance
  return @balance
  end

  def balance=(account_balance)
  return @balance += account_balance
  end

  def deposit(number)
  @balance = @balance + number
  end

  def withdraw(withdraw_amount)
  @balace -= withdraw_amount
  end
end

p my_account = BankAccount.create
# p your_account = BankAccount.create
p my_account.balance
p BankAccount.total_funds
p my_account.deposit(200)
p my_account.balance
p BankAccount.total_funds
p BankAccount.interest_time
