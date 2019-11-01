class Scraper

    def self.scrape_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)
            stadium = Stadium.new
        doc.css("a.stadium-item").each do |ballpark|	    
            stadium.name = ballpark.css("div.title").text.strip	
            
            
            
        end
    end

    def self.scrape_stadium_details(stadium)

    end
        
end