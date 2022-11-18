 class Flight

    attr_reader :passengers

    def initialize(flight_number, capacity)

        @flight_number = flight_number
        @capacity = capacity
        @passengers = Array.new

    end

    def full?
        if passengers.length == @capacity
            return true
        else
            return false
        end
    end

    def board_passenger(passenger)

        if !self.full? && passenger.has_flight?(@flight_number)
            @passengers << passenger
        end

    end

    def list_passengers

        @passengers.map {|p| p.name}

    end

    def [](index)
       
        @passengers[index]

    end

    def <<(passenger)

        self.board_passenger(passenger)

    end

 end