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
  if position_taken?(board, index) == true || index < 0 || index > 8
    puts "Can't move there. Please try again."
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def move(board, index, token = "X")
  board[index] = token
  display_board(board)
end
