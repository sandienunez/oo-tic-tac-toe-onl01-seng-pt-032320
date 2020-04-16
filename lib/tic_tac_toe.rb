def valid_move?(position)
  position.between?(0, 8) && position_taken?(position) == false #can put bang in front of !position_taken?(position)
end 