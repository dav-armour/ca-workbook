# Calculates cost of buying books with multibuy discounts

# 5 books = 25%
# 4 books = 20%
# 3 books = 10%
# 2 books = 5%

books_hash = {
  'book1' => 2,
  'book2' => 2,
  'book3' => 2,
  'book4' => 1,
  'book5' => 1
}

qty_hash = {
  '2' => 3,
  '1' => 2
}

max_qty = 0
for book, qty in books_hash
  if qty > max_qty
    max_qty = qty
    how_many = 1
  elsif qty == max_qty
    how_many += 1
  end
end

puts "Max QTY: #{max_qty}, How Many: #{how_many}"

