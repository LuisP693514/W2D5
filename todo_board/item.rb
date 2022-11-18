# todo_board/item.rb

require 'date'

class Item

    def self.valid_date?(date_str)

        d = date_str.split('-').map {|e| e.to_i}
        
        return true if d[1] <= 12 && d[1] >= 1 && d[2] <= 31 && d[2] >= 1
    
        false    

    end

    attr_accessor :title, :deadline, :description

    def initialize(title, deadline, description)

        @title = title
        
        @description = description

        if Item.valid_date?(deadline)
            @deadline = deadline
        else
            raise RuntimeError.new("Not a valid date!")
        end
    end

end

# p Item.valid_date?('2019-10-25') # true
# p Item.valid_date?('1912-06-23') # true
# p Item.valid_date?('2018-13-20') # false
# p Item.valid_date?('2018-12-32') # false
# p Item.valid_date?('10-25-2019') # false

# Item.new('Fix login page', '2019-10-25', 'The page loads too slow.')

# Item.new(
#     'Buy Cheese',
#     '2019-10-21',
#     'We require American, Swiss, Feta, and Mozzarella cheese for the Happy hour!'
# )

# # Item.new(
# #     'Fix checkout page',
# #     '10-25-2019',
# #     'The font is too small.'
# # ) # raises error due to invalid date
