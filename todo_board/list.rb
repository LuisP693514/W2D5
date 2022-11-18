# todo_board/list.rb

require_relative "item.rb"

class List

    attr_accessor :label

    def initialize(label)

        @label = label
        @items = Array.new

    end

    def add_item(title, deadline, description="")

        if Item.valid_date?(deadline)
            @items << Item.new(title, deadline, description)
            return true
        else
            return false
        end

    end

    def valid_index?(index)

        return false if index < 0 || index > @items.length

        true

    end

    def swap(i1, i2)

        if self.valid_index?(i1) && self.valid_index?(i2)
            @items[i1], @items[i2] = @items[i2], @items[i1]
            return true
        else
            return false
        end
    end


end