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
    #find whatever index the image is, then hangman _image equals the next image
    @num = (0..hanged_men.length - 1).find_index {|i| self.hangman_image == hanged_men[i]}
    self.hangman_image = hanged_men[@num + 1]
    display_hangman_image
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

def hanged_men
  [
    ["       __________",
     "       |        |",
     "       |         ",
     "       |         ",
     "       |         ",
     "       |         ",
     " ______|_______  "],

     ["       __________",
     "       |         |",
     "       |       ('_')",
     "       |         ",
     "       |         ",
     "       |",
     " ______|_______"],

     ["       __________",
     "       |         |",
     "       |       ('_')",
     "       |        [ ] ",
     "       |          ",
     "       |",
     " ______|_______"],

     ["       __________",
     "       |         |",
     "       |       ('_')",
     "       |      --[ ] ",
     "       |          ",
     "       |",
     " ______|_______"],

     ["       __________",
     "       |         |",
     "       |       ('_')",
     "       |      --[ ]-- ",
     "       |          ",
     "       |",
     " ______|_______"],

     ["       __________",
     "       |         |",
     "       |       ('_')",
     "       |      --[ ]-- ",
     "       |       _|  ",
     "       |",
     " ______|_______"],

     ["       __________",
     "       |         |",
     "       |       ('_')",
     "       |      --[ ]-- ",
     "       |       _| |_ ",
     "       |",
     " ______|_______"]
   ]

end