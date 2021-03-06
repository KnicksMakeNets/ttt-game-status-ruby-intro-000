# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8],  # Bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right columm
  [6,4,2], # diagonal
  [0,4,8]  # diagonal
]

def won?(board)
  win_index = []
  position = []
  WIN_COMBINATIONS.each do |winCombo| # iterate over each winning comination of the entire winning combination array
    counter = 0
    winCombo.each do |index| # iterate over each element of each winning combination
      position[counter] = board[index] # pushes the element of the current board at the index based off the winning combination element
      counter += 1
    end
    if position.all?{|position| position == "X"} #if all the board elements in the winning combo indexes are X, it's a win!
      return winCombo
    elsif  position.all?{|position| position == "O"} # same above but for O
      return winCombo
    end
  end
  return false #returns false after the function iterates through each winning combination
end

def full?(board)
  board.none?{|space| space == " "}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if full?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    winCombo = won?(board)
    index = winCombo[0]
    return board[index]
  end
end
