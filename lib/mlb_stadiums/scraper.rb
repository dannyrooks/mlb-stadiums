class Scraper

    def self.scrape_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)



    end

    def self.scrape_stadium_details

    end
        
end