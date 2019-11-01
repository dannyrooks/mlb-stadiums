class Stadium

    attr_accessor :name, :url
    @@all = []

    def initialize
        @name = name
        @@all << self
    end

    def self.url(name)
        @url = name 
    end

    def self.all
        @@all
    end
    
end