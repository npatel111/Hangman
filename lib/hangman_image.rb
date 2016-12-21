#       __________
#       |         |
#       |         0
#       |        /|\
#       |        / \
#       |
# ______|_______

class Hangman_Image
  attr_accessor :hangman_image

  def initialize
    # @hangman_image =
    # puts"       __________"
    # puts"       |        |"
    # puts"       |         "
    # puts"       |         "
    # puts"       |         "
    # puts"       |         "
    # puts" ______|_______  "

    @hangman_image =
    ["       __________",
     "       |        |",
     "       |         ",
     "       |         ",
     "       |         ",
     "       |         ",
     " ______|_______  "]
     @hangman_image.map {|line| puts line}
    byebug
  end

  def update_hangman_image
    puts "hi"
  end

  def hanged_man
    puts"       __________"
    puts"       |         |"
    puts"       |         0"
    puts"       |        /|\ "
    puts"       |        / \ "
    puts"       |"
    puts" ______|_______"
  end

end
