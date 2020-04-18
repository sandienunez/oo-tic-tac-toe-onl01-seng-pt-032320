class TicTacToe
  def initialize
    @board = [" "," "," "," "," ", " ", " ", " ", " " ]
  end 

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

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
 user_input.to_i - 1
end

def move(index, current_player)
  @board[index] = current_player
end

def position_taken?(index)
  if (@board[index] == " " || @board[index] == "" || @board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(index)
  if (index < 0 || index > 8)
    return false
  elsif position_taken?(index)
    return false
  else
    return true
  end
end

def turn
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(index)
    move(index, current_player)
    display_board
  else
    turn
  end
end



def turn_count
  counter = 0 
  @board.each do |token| 
    if token == "X" || token == "O"
    counter += 1 
  end 
end 
counter 
end 

  def current_player
    turn_count % 2 == 0 ? "X":"O"
  end 

def won?
WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = @board[win_index_1]
    position_2 = @board[win_index_2]
    position_3 = @board[win_index_3]
    if ((position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O"))
      return win_combination
    else
      # do nothing
    end
  end
  return nil
end

def full?(array)
  counter = 0
  array.each do |element|
    if (element == "X" || element == "O")
      counter += 1
    else
      # do nothing
    end
  end
  if counter == 9
    return true
  else
    return false
  end
end

def draw?(array)
  if full?(array) && !won?(array)
    return true
  else
    return false
  end
end

def over?(array)
  if ( won?(array) || draw?(array) || full?(array) )
    return true
  else
    return false
  end
end

def winner(array)
  if won?(array)
    WIN_COMBINATIONS.each do |win_combination|
      position_1 = array[win_combination[0]]
      position_2 = array[win_combination[1]]
      position_3 = array[win_combination[2]]
      if (position_1 == "X" && position_2 == "X" && position_3 == "X")
        return "X"
      elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
        return "O"
      else
        # do nothing
      end
    end
  else
    return nil
  end
end

def full?
   @board.all? {|i| i == "X" || i == "O"}
end



def play(board)
  while !over?(board)
    turn(board)
  end
  if won?(board)
    puts "Congratulations " + winner(board) + "!"
  elsif draw?(board)
    puts "Cat's Game!"
  else
    #do nothing
  end
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