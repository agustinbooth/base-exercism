=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.


To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym

  def self.abbreviate(sentence)

    sentence = sentence.split(/\W/)
    sentence = sentence.reject { |c| c.empty? }

    @acronym = String.new

    sentence.each do |a_word|
        @acronym << a_word[0]
    end
    
    return @acronym.upcase

  end
end
