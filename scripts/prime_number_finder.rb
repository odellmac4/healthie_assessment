require 'prime'

# --------------------
# "Long Way" Manual Method (Commented Out)
# checks range from square root of a number down to 2
# and returns true if number isn't evenly divisible by number within the range
# --------------------
# def is_prime?(num)
#   return false if num < 2
#   (2..Math.sqrt(num))
#     .each {|i| return false if num % i == 0}
#   true
# end

def find_prime_number(seconds)
  initial_time = Time.now
  prime_nums = []

  num = 2
  while Time.now - initial_time < seconds
    # ruby provides a prime class that makes it easy to identify prime numbers
    if num.prime?
      prime_nums << num
    end
    num += 1
  end
  puts "Largets prime number: #{prime_nums.last}"
  nil
end

puts find_prime_number(5)



