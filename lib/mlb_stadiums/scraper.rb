class Scraper

    def self.scrape_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)
        doc.css("a.stadium-item").each do |field|
            stadium = Stadium.new
            stadium.name = field.css("div.title").text.strip
            
            # stadium.url = doc.css("a.stadium-item").attribute("href").value
            stadium.url = field.css("a").attribute("href")
        end
    end

    def self.scrape_stadium_details(stadium)

    end
        
end