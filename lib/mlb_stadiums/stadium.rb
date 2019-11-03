class Stadium

    attr_accessor :name, :url, :facts, :memorable_moments
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
    
end