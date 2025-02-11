def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index)  
  elsif index >= 0 && index <= 8 
  true
  else
end
end

def move(board, index, value = "X")
  board[index] = value 
  return board
end

def position_taken?(board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
  move(board, index, value = "X")
  display_board(board)
  else 
  turn(board)
end
end