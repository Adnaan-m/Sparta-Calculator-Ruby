def Add num1 , num2
  totalsum = (num1.to_i + num2.to_i)
  puts "The Total is #{num1} + #{num2} = #{totalsum}"
end
def Minus num1 , num2
  totalminus = (num1.to_i - num2.to_i)
  puts "The Total is #{num1} - #{num2} = #{totalminus}"
end
def Divide num1 , num2
  totalDivide = num1.to_i / num2.to_i
  puts "The Total is #{num1} ÷ #{num2} = #{totalDivide}"
end
def Multiply num1 , num2
  totalMultiply = (num1.to_i * num2.to_i)
  puts "The Total is #{num1} x #{num2} = #{totalMultiply}"
end
def Power num1 , num2
  totalPower = (num1.to_i ** num2.to_i)
  puts "#{num1} to the power of #{num2} = #{totalPower}"
end
def Sqroot num1
  totalsqrt = Math.sqrt(num1.to_i)
  puts "√#{num1} = #{totalsqrt}"
end

puts "Welcome to BTEC Ruby calculator V2.0.1.2"

puts "Here you can use our amazing standard and advanced calculators"

restrtResponse = true
while restrtResponse

  puts "To use the Standard Calculator type 'S' OR Advanced type 'A'"

  calcType = gets.chomp
  puts calcType

  # IF STATEMENT FOR CALCULATOR TYPE 1
  if calcType == "S"
    puts "Select your first number"
    num1 = gets.chomp
    puts "Select your second number"
    num2 = gets.chomp
    puts "Press A to add,
    S to subtract
    D to Divide
    and M to multiply"
    operatorSelection = gets.chomp

    if operatorSelection == "A"
      Add num1,num2
    elsif operatorSelection == "S"
      Minus num1 , num2
    elsif operatorSelection == "D"
      Divide num1 , num2
    elsif operatorSelection == "M"
      Multiply num1 , num2
    end

    # START AGAIN
    puts "Would you like to start again?
    Y - Yes
    N - No"
    restrtResp = gets.chomp
    if restrtResp == "N"
      restrtResponse = false
    end

    # IF STATEMENT FOR CALCULATOR TYPE 2
  elsif calcType == "A"
    puts "Press S to square-root OR
    P to process the power"
    operatorSelection = gets.chomp
    if operatorSelection == "S"
      puts "Select your number to square-root"
      num1 = gets.chomp
      Sqroot num1
    elsif operatorSelection == "P"
      puts "Select your first number"
      num1 = gets.chomp
      puts "Select your second number"
      num2 = gets.chomp
      Power num1,num2
    end

    # START AGAIN
    puts "Would you like to start again?
    Y - Yes
    N - No"
    restrtResp = gets.chomp
    if restrtResp == "N"
      restrtResponse = false
    end

    # END OF CALCULATOR TYPE SECTION
  end
  #end for while loop
end
