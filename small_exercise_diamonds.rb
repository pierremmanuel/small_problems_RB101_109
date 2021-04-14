def print_row(grid_size, white_spaces)
  numbers_of_stars = grid_size - (2 * white_spaces)
  stars = "*" * numbers_of_stars
  puts stars.center(grid_size)
end


def diamond(grid_size)
  max_white_spaces = (number - 1) / 2
  max_white_spaces.downto(0) { |white_spaces| print_row(grid_size, white_spaces) }
  1.upto(max_white_spaces) { |white_spaces| print_row(grid_size, white_spaces)}
end








# first method, logic not great...
def diamond1(number)
  stars = 1
  white_spaces = (number / 2).floor
  loop do
    puts " " * white_spaces + "*" * stars + " " * white_spaces
    break if stars == number
    white_spaces -= 1
    stars += 2
  end
  while stars >= 2 do
    white_spaces += 1
    stars -= 2
    puts " " * white_spaces + "*" * stars + " " * white_spaces
  end
end

# second try, not better..
def diamond2(number)
  stars = 1
  white_spaces = (number / 2).floor
  white_spaces.step(0, -1) do |i|
    puts " " * i + "*" * stars + " " * i
    stars += 2 unless stars >= number
  end
  white_spaces = 1
  stars = number - 2
  stars.step(1, -2) do |star|
    puts " " * white_spaces + "*" * star + " " * white_spaces
    white_spaces += 1
  end
end

diamond(9)
