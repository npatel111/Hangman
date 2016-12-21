class Player
  attr_reader :type
  # type is guesser or picker
  def initialize(type)
    @type = type
  end

end
