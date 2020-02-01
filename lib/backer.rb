class Player
    attr_accessor :team
    attr_reader :name, :position
    @@all = []

    def initialize(name, position)
        @name = name 
        @position = position
        @@all << self
    end
end

class Team
    attr_reader :name, :city
    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def players
        Player.all.select { |player| player.team == self }
        binding.pry
    end
end