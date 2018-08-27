# Convert number input to single digits

# Get input
puts "Enter number"
num_string = gets.chomp
output = ''
num_string.each_char do |char|
  output += char + ','
end
puts output.chomp(',')
