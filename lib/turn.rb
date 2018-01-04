def display_board(board)
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

def turn(board)
  puts "Please enter 1-9:"
  index = (gets.to_i) - 1
    if index <= 8
      move(board, index, token = "X")
      display_board(board)
    else
      turn(board)
    end
end

def valid_move?(board, index)
#return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.
  if position_taken?(board, index) == true
    return false
  elsif index <= 8
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def move(board, index, token)
#should set the correct index value of that position within the board equal to the token.
  if valid_move?(board, index) == true
  board[index] = "X"
  end
end
