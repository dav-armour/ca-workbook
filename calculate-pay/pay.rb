# Calcluate pay with overtime

# Get Input
print 'Enter hours: '
hours = gets.chomp.to_f
print 'Enter rate: '
rate = gets.chomp.to_f
if hours <= 40
  pay = hours * rate
else
  pay = 40 * rate + (hours - 40) * rate * 1.5
end
puts pay
