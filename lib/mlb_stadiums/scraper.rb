class Scraper

    def self.scrape_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)
        ballpark = Stadium.new #created a ballpark object
        doc.css("a.stadium-item").each do |ballpark|
            ballpark.title = ballpark.css("div.title").text.strip
            binding.pry
        end
        # scrape the title and the link
        #make movie objects and assign them titles and links


    end

    def self.scrape_stadium_details(stadium)

    end
        
end