def valid_move?(position)
  position.between?(0, 8) && position_taken?(position) == false #can put bang in front of !position_taken?(position)
end 

def turn
  input = gets.strip
  converted_input = input_to_index(input)
  if valid_move?(converted_input)
    token = current_player
    move(converted_input)
    display_board
  else
    turn 
  end 
  
end 

def turn_count
  @board.count{|token| token == "X" \\ token == "0"'
end 