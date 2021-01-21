# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8]  # Bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right columm
  [6,4,2], # diagonal
  [0.4.8]  # diagonal
]