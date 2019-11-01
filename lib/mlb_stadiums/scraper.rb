class Scraper

    def self.scrape_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)
        doc.css("a.stadium-item").each do |ballpark|
            stadium = Stadium.new
            stadium.title = ballpark.css("div.title").text.strip	
            binding.pry
        end
    end

    def self.scrape_stadium_details(stadium)

    end
        
end