#Define functions here
def deposit(currentBalance)
    newBalance = currentBalance + 20
end

def withdraw(currentBalance)
    newBalance = currentBalance - 20
end

def update(currentBalance)
    balance = currentBalance
end

def display_balance(currentBalance)
    puts("Current balance is $#{currentBalance}")
end

#Start here
puts ("What is the starting balance?")
balance = gets.to_i
display_balance(balance)

10.times do #ask the user 10 times
  puts ("For withdrawal, enter 1. For deposit, enter 2")
  option = gets.to_i

  if option == 1 && balance > 0
      newBalance = withdraw(balance)
      balance = update(newBalance)
      display_balance(balance)
    elsif option == 2
      newBalance = deposit(balance)
      balance = update(newBalance)
      display_balance(balance)
    else
      puts("Wrong input or insufficient fund")
  end
end
