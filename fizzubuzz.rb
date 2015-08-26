# x = 1
# while x < 101
# puts "#{x}"
# x += 1
# end

# def print_num
#   x = 1
#   while x < 101
#     if x % 3 == 0
#       puts "fizz"
#     else
#       puts "#{x}"
#     end
#     x += 1
#   end
# end

# print_num

def print_num
  x = 1
  while x < 101
    if x % 3 == 0
      puts "fizz"
    elsif x % 5 == 0
      puts "buzz"
    elsif ((x % 3 == 0) && (x % 5 == 0))
      puts "fizzbuzz"
    else
      puts "#{x}"
    end
    x += 1
end

print_num

