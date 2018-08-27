print "Enter ending number: "
endNum = gets.chomp.to_i

numbers = 2..endNum
primes = [2]

for number in numbers
  for prime in primes
    remainder = number % prime
    if remainder == 0
      break
    end
  end
  if remainder != 0
    primes << number
  end
end

print primes
puts "\nNumber of Primes: #{primes.length}"
