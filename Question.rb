class Question
  MAX_RAND_NUM = 20

  attr_reader :question, :answer

  def initialize
    num1 = generate_number
    num2 = generate_number

    @question = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end

  private
  def generate_number
    rand(MAX_RAND_NUM) + 1
  end

end