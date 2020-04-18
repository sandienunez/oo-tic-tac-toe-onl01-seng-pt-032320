WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)




def turn_count(board)
  counter = 0 
  board.each do |token| 
    if token == "X" || token == "O"
    counter += 1 
  end 
end 
counter 
end 

def current_player(baord)
  turn_count(board) % 2 == 0 ? "X":"O"
end 
end 


# #def valid_move?(position)
#   position.between?(0, 8) && position_taken?(position) == false #can put bang in front of !position_taken?(position)
# end 

# def turn
#   input = gets.strip
#   converted_input = input_to_index(input)
#   if valid_move?(converted_input)
#     token = current_player
#     move(converted_input)
#     display_board
#   else
#     turn 
#   end 
  
# end 

# def turn_count
#   @board.count{|token| token == "X" \\ token == "0"'
# end 