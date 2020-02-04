class Player
  @@MAX_LIFE = 3

  attr_accessor :name, :answer
  attr_reader :life

  def initialize(name = "")
    self.name = name
    self.life = @@MAX_LIFE
    self.answer = ""
  end

  def self.MAX_LIFE
    @@MAX_LIFE
  end

  def isDead?
    self.life < 1
  end

  def lose_one_life
    self.life = life - 1
  end

  private
  def life= (l)
    @life = l
  end
  
end