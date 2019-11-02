class Stadium

    attr_accessor :name, :url, :facts
    @@all = []

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end
    
end