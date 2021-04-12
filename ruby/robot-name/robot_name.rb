=begin
Write your code for the 'Robot Name' exercise in this file. Make the tests in
`robot_name_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/robot-name` directory.
=end

class Robot
  attr_reader :name

  class << self
    def names_used
      @used ||= []
    end
  end

  def initialize
    loop do
      @name = generateName
      break !Robot.names_used.include?(name)
    end
    Robot.names_used << @name
  end

  def reset
    @name = generateName
  end

  def generateName
    (0...2).map { (65 + rand(26)).chr }.join + rand(10).to_s + rand(10).to_s + rand(10).to_s
  end

  def forget
  end  
end
