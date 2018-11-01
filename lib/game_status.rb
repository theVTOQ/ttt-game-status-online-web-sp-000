# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  x_indices, o_indices = []
  for i in 0..board.length do
    x_indices << i if board[i] == "X"
    o_indices << i if board[o] == "O"

  end


  WIN_COMBINATIONS.each do |win_combo|
    x_matches = x_indices & win_combo
    if x_matches.length == 3
      return true
    elsif y_matches.length == 3
      return true
    end
  end
end
