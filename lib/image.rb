class Image
  attr_accessor :hangman_image, :num

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

  def display_hangman_image(image)
    puts "Your hangman:"
    image.hangman_image.map {|line| puts line}
  end

  def update_hangman_image
    # took out - 1
    #find whatever index the image is, then hangman _image equals the next image
    # byebug
    @num = (0..hanged_men.length - 1).find_index {|i| self.hangman_image == hanged_men[i]}
    self.hangman_image = hanged_men[@num + 1]

  end
end


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
