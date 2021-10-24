class Chess
  KING = 'king'
  QUEEN = 'queen'
  ROOK = 'rook'
  BISHOP = 'bishop'
  KNIGHT = 'knight'
  PAWN = 'pawn'
  def is_king?(figure)
    figure == KING ? 'yes' : 'no'
  end
  def is_queen?(figure)
    figure == QUEEN ? 'yes' : 'no'
  end
  def is_rook?(figure)
    figure == ROOK ? 'yes' : 'no'
  end
  def is_bishop?(figure)
    figure == BISHOP ? 'yes' : 'no'
  end
  def is_knight?(figure)
    figure == KNIGHT ? 'yes' : 'no'
  end
  def is_pawn?(figure)
    figure == PAWN ? 'yes' : 'no'
  end
  def what_figure?(figure)
    case figure
    when 'king'
      'It is a king'
    when 'queen'
      'It is a queen'
    when 'rook'
      'It is a rook'
    when 'bishop'
      'It is a bishop'
    when 'knight'
      'It is a knight'
    when 'pawn'
      'It is a pawn'
    else
      "There's no such figure"
    end
  end
end
ch = Chess.new
some_figure = 'queen'
puts ch.is_king?('king')
puts ch.is_king?(some_figure)
puts ch.what_figure?(some_figure)