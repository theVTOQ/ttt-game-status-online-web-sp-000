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

  WIN_COMBINATIONS.each do |win_combo|
    pos_1 = board[win_combo[0]]
    pos_2 = board[win_combo[1]]
    pos_3 = board[win_combo[2]]

    x_wins = pos_1 == "X" && pos_2 == "X" && pos_3 == "X"
    y_wins = pos_1 == "O" && pos_2 == "O" && pos_3 == "O"

    if x_wins || y_wins
      return true
    end
  end

  return false

end
