class Image
  attr_accessor :hangman_image

  def initialize
    @hangman_image =
     ["       __________",
      "       |        |",
      "       |         ",
      "       |         ",
      "       |         ",
      "       |         ",
      " ______|_______  "]
  end

  def display_hangman_image
    #not sure it's right?

    @hangman_image.map {|line| puts line}
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
# have array of possible hanged men, update method goes to next index
end

#       __________
#       |         |
#       |         0
#       |        /|\
#       |        / \
#       |
# ______|_______
