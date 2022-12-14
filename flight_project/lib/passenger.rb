class Passenger

    attr_reader :name

    def initialize(name)
        @name = name
        @flight_numbers = Array.new
    end

    def has_flight?(flight_number)

        @flight_numbers.any?(flight_number.upcase)

    end

    def add_flight(flight_number)

        if !self.has_flight?(flight_number)
            @flight_numbers << flight_number.upcase
        end

    end

end