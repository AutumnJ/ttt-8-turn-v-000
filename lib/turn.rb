def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
    if index <= 8 && valid_move?(board, index) == true
      move(board, index, token = "X")
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

def move(board, index, token = "X")
#should set the correct index value of that position within the board equal to the token.
  board[index] = token
  display_board(board)
end
