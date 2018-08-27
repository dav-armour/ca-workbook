row1 = [1]
row2 = [3, 5]
row3 = [7, 9, 11]
row4 = [13, 15, 17, 19]
row5 = [21, 23, 25, 27, 29]
rows = [ row1, row2, row3, row4, row5 ]
rows.each_with_index do |row, index|
  print "#{index + 1}:"
  puts row.join(' ').center(20)
end
row_input = 0
while !(1..5).include?(row_input)
  puts ('What row do you want to sum?')
  row_input = gets.chomp.to_i
end
puts "Sum of row #{row_input}: #{rows[row_input].sum}"
