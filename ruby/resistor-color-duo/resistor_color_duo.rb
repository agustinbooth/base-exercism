=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

#The colors are mapped to the numbers from 0 to 9 in the sequence:
# Black - Brown - Red - Orange - Yellow - Green - Blue - Violet - Grey - White

class ResistorColorDuo

    @colors = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"]

    def self.value(color)

        first_number = @colors.index(color[0]).to_s
        second_number = @colors.index(color[1]).to_s

        result = first_number + second_number
        result = result.to_i
        result


    end    


end

