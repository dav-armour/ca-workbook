# Calculates cost of buying books with multibuy discounts

# 5 books = 25%
# 4 books = 20%
# 3 books = 10%
# 2 books = 5%

BOOK_COST = 8.0
BOOK_COST2 = BOOK_COST * 2 * 0.95
BOOK_COST3 = BOOK_COST * 3 * 0.90
BOOK_COST4 = BOOK_COST * 4 * 0.80
BOOK_COST5 = BOOK_COST * 5 * 0.75
puts "6 books"
puts "5 + 1 = #{BOOK_COST5 + BOOK_COST}"
puts "7 books"
puts "5 + 2 = #{BOOK_COST5 + BOOK_COST2}"
puts "8 books"
puts "4 + 4 = #{BOOK_COST4 + BOOK_COST4}"
puts "9 books"
puts "5 + 4 = #{BOOK_COST5 + BOOK_COST4}"
puts "10 books"
puts "5 + 5 = #{BOOK_COST5 + BOOK_COST5}"
puts "11 books"
puts "5 + 5 + 1 = #{BOOK_COST5 + BOOK_COST5 + BOOK_COST}"
puts "12 books"
puts "5 + 5 + 2 = #{BOOK_COST5 + BOOK_COST5 + BOOK_COST2}"
puts "13 books"
puts "5 + 4 + 4 = #{BOOK_COST5 + BOOK_COST4 + BOOK_COST4}"

# puts "5 + 4 + 2 = #{BOOK_COST5 + BOOK_COST4 + BOOK_COST2}"

# puts "5 + 5 = #{BOOK_COST5 + BOOK_COST5}"
# puts "5 + 5 = #{BOOK_COST5 + BOOK_COST5}"

books_hash = {
  'book1' => 2,
  'book2' => 2,
  'book3' => 2,
  'book4' => 1,
  'book5' => 1
}

# qty_hash = {
#   '2' => 3,
#   '1' => 2
# }

max_qty = 0
min_qty = 9999999
how_many_max = 0
how_many_min = 0
for book, qty in books_hash
  if qty > max_qty
    max_qty = qty
    how_many_max = 1
  elsif qty == max_qty
    how_many_max += 1
  end
  if min_qty > qty
    min_qty = qty
    how_many_min = 1
  elsif min_qty == qty
    how_many_min += 1
  end
end

puts "Max QTY: #{max_qty}, How Many: #{how_many_max}"
puts "Min QTY: #{min_qty}, How Many: #{how_many_min}"

while min_qty > 1
  # Sell off 5 book
  min_qty -= 1
end

# cost = BOOK_COST
# puts "Cost of one book: #{cost} Per Book: #{cost}"
# cost = BOOK_COST * 2 * 0.95
# puts "Cost of two books: #{cost} Per Book: #{cost / 2}"
# cost = BOOK_COST * 3 * 0.90
# puts "Cost of three books: #{cost} Per Book: #{cost / 3}"
# cost = BOOK_COST * 4 * 0.80
# puts "Cost of four books: #{cost} Per Book: #{cost / 4}"
# cost = BOOK_COST * 5 * 0.75
# puts "Cost of five books: #{cost} Per Book: #{cost / 5}"




