row1 = '   A   B   C '
row2 = '1 ___|___|___'
row3 = '2 ___|___|___'
row4 = '3    |   |   '

def display_board(*rows)
  puts rows
  puts '----------------'
end

def check_victory(row2, row3, row4)
  [3, 7, 11].each do |i|
    next unless row2[i] == 'X' && row3[i] == 'X' && row4[i] == 'X'

    puts 'X wins! Game over...'
    $winner_declared = true
    break
  end
  if row2[3] == 'X' && row2[7] == 'X' && row2[11] == 'X'
    puts 'X wins! Game over...'
    $winner_declared = true
  elsif row3[3] == 'X' && row3[7] == 'X' && row3[11] == 'X'
    puts 'X wins! Game over...'
    $winner_declared = true
  elsif row4[3] == 'X' && row4[7] == 'X' && row4[11] == 'X'
    puts 'X wins! Game over...'
    $winner_declared = true
  elsif row2[3] == 'X' && row3[7] == 'X' && row4[11] == 'X'
    puts 'X wins! Game over...'
    $winner_declared = true
  elsif row2[11] == 'X' && row3[7] == 'X' && row4[3] == 'X'
    puts 'X wins! Game over...'
    $winner_declared = true
  end
  [3, 7, 11].each do |i|
    next unless row2[i] == 'O' && row3[i] == 'O' && row4[i] == 'O'

    puts 'O wins! Game over...'
    $winner_declared = true
    break
  end
  if row2[3] == 'O' && row2[7] == 'O' && row2[11] == 'O'
    puts 'O wins! Game over...'
    $winner_declared = true
  elsif row3[3] == 'O' && row3[7] == 'O' && row3[11] == 'O'
    puts 'O wins! Game over...'
    $winner_declared = true
  elsif row4[3] == 'O' && row4[7] == 'O' && row4[11] == 'O'
    puts 'O wins! Game over...'
    $winner_declared = true
  elsif row2[3] == 'O' && row3[7] == 'O' && row4[11] == 'O'
    puts 'O wins! Game over...'
    $winner_declared = true
  elsif row2[11] == 'O' && row3[7] == 'O' && row4[3] == 'O'
    puts 'O wins! Game over...'
    $winner_declared = true
  end
end

$winner_declared = false

puts " "
puts "Let's play Tic Tac Toe!"
puts "On your turn, enter a coordinate like 'B2' to mark 'X' or 'O'."
puts " "
display_board(row1, row2, row3, row4)
puts " "
puts "Game Start!"
puts " "


def p1_columnA(row)
  array = row.split('')
  array[3] = 'X'
  row = array.join
end

def p1_columnB(row)
  array = row.split('')
  array[7] = 'X'
  row = array.join
end

def p1_columnC(row)
  array = row.split('')
  array[11] = 'X'
  row = array.join
end

def p2_columnA(row)
  array = row.split('')
  array[3] = 'O'
  row = array.join
end

def p2_columnB(row)
  array = row.split('')
  array[7] = 'O'
  row = array.join
end

def p2_columnC(row)
  array = row.split('')
  array[11] = 'O'
  row = array.join
end

i = 1
while $winner_declared == false
  puts "X's turn! Enter a coordinate: "
  loop do
    p1_selection = gets.chomp.upcase

    case p1_selection
    when 'A1'
      if row2[3] != '_'
        puts 'Invalid play. Try again.'
        next
      else row2 = p1_columnA(row2)
           break
      end
    when 'B1'
      if row2[7] != '_'
        puts 'Invalid play. Try again.'
        next
      else row2 = p1_columnB(row2)
           break
      end
    when 'C1'
      if row2[11] != '_'
        puts 'Invalid play. Try again.'
        next
      else row2 = p1_columnC(row2)
           break
      end
    when 'A2'
      if row3[3] != '_'
        puts 'Invalid play. Try again.'
        next
      else row3 = p1_columnA(row3)
           break
      end
    when 'B2'
      if row3[7] != '_'
        puts 'Invalid play. Try again.'
        next
      else row3 = p1_columnB(row3)
           break
      end
    when 'C2'
      if row3[11] != '_'
        puts 'Invalid play. Try again.'
        next
      else row3 = p1_columnC(row3)
           break
      end
    when 'A3'
      if row4[3] != ' '
        puts 'Invalid play. Try again.'
        next
      else row4 = p1_columnA(row4)
           break
      end
    when 'B3'
      if row4[7] != ' '
        puts 'Invalid play. Try again.'
        next
      else row4 = p1_columnB(row4)
           break
      end
    when 'C3'
      if row4[11] != ' '
        puts 'Invalid play. Try again.'
        next
      else row4 = p1_columnC(row4)
           break
      end
    else
      puts 'Invalid input. Try again.'
    end
  end

  display_board(row1, row2, row3, row4)
  check_victory(row2, row3, row4)
  i += 1
  break if $winner_declared == true
  break if i > 9

  puts "O's turn! Enter a coordinate: "
  loop do
    p2_selection = gets.chomp.upcase

    case p2_selection
    when 'A1'
      if row2[3] != '_'
        puts 'Invalid play. Try again.'
        next
      else row2 = p2_columnA(row2)
           break
      end
    when 'B1'
      if row2[7] != '_'
        puts 'Invalid play. Try again.'
        next
      else row2 = p2_columnB(row2)
           break
      end
    when 'C1'
      if row2[11] != '_'
        puts 'Invalid play. Try again.'
        next
      else row2 = p2_columnC(row2)
           break
      end
    when 'A2'
      if row3[3] != '_'
        puts 'Invalid play. Try again.'
        next
      else row3 = p2_columnA(row3)
           break
      end
    when 'B2'
      if row3[7] != '_'
        puts 'Invalid play. Try again.'
        next
      else row3 = p2_columnB(row3)
           break
      end
    when 'C2'
      if row3[11] != '_'
        puts 'Invalid play. Try again.'
        next
      else row3 = p2_columnC(row3)
           break
      end
    when 'A3'
      if row4[3] != ' '
        puts 'Invalid play. Try again.'
        next
      else row4 = p2_columnA(row4)
           break
      end
    when 'B3'
      if row4[7] != ' '
        puts 'Invalid play. Try again.'
        next
      else row4 = p2_columnB(row4)
           break
      end
    when 'C3'
      if row4[3] != ' '
        puts 'Invalid play. Try again.'
        next
      else row4 = p2_columnC(row4)
           break
      end
    else puts 'Invalid input. Try again.'
    end
  end

  display_board(row1, row2, row3, row4)
  check_victory(row2, row3, row4)
  i += 1
  break if $winner_declared == true
  break if i > 9
end

puts "It's a draw! Game over..." if i > 9 && $winner_declared == false
