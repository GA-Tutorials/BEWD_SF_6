#One Possible Solution:
1.upto(100) do |i|
  if i % 5 == 0 && i % 3 == 0
    puts "FizzBuzz"
  elsif i % 5 == 0
    puts "Buzz"
  elsif i % 3 == 0
    puts "Fizz"
  else
    puts i
  end
end

#Another Solution:
# def fizzbuzz(maximum)
#   1.upto(maximum).each do |n|
#     line = ''
#     line << 'Fizz' if n % 3 == 0
#     line << 'Buzz' if n % 5 == 0
#     line = n if line.empty?
#     puts line
#   end
# end