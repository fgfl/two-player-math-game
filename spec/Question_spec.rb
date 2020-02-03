require "./Question"

RSpec.describe Question do
  describe "#generate_number" do
    it "generates a string with numbers and answer is sum of generated numbers" do
      q = Question.new
      question_match = /What does (?<num1>\d*) plus (?<num2>\d*) equal?/.match(q.question)

      # p question_match
      # puts q.question
      # puts q.answer

      expect(question_match != nil)
      expect(q.answer == question_match[:num1] + question_match[:num2])
    end
  end
end