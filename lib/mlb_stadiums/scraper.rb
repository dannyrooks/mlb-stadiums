class Scraper

    def self.scrape_stadiums
        html = open("https://www.ballparksofbaseball.com/american-league/")
        doc = Nokogiri::HTML(html)

        doc.css("th a").each do |name|
            stadium = Stadium.new
            
        end

        binding.pry
    end

    def self.scrape_stadium_names
        html = open("https://www.ballparksofbaseball.com/american-league/")
        doc = Nokogiri::HTML(html)
        
    end

end