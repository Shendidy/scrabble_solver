class Scrable
  def initialize(word = '')
    @word = word
    @score_board = {
      0 => ["", " ", " \t\n", nil],
      1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2 => ["D", "G"],
      3 => ["B", "C", "M", "P"],
      4 => ["F", "H", "V", "W", "Y"],
      5 => ["K"],
      8 => ["J", "X"],
      10 => ["Q", "Z"]
    }
  end
  def score
    return 0 if ["", " ", " \t\n", nil].include? @word
    score = 0
    @word.split("").map{ |letter|
                @score_board.find{ |k,v|
                  score += k if v.include? letter.upcase
                }.first
              }
    return score
  end
end