def fizzbuzz(n)
  return 'fizzbuzz' if (n % 15).zero?
  return 'buzz'     if (n %  5).zero?
  return 'fizz'     if (n %  3).zero?
  n # this is like an 'else' statement
end

fizzbuzz(1)
fizzbuzz(3)

1.upto(100) do |n|
  puts fizzbuzz(n)
end

(1..100).each do |n|
  if (n % 15).zero?
   puts "fizzbuzz"
  elsif (n % 5).zero?
    puts "buzz"
  elsif (n % 3).zero?
    puts "fizz"
  else
    puts n
  end
end

