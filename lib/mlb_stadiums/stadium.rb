class Stadium

    attr_accessor :name, :team_name, :location
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
    
end