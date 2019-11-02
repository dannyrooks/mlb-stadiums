class Scraper

    def self.scrape_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)
        doc.css("a.stadium-item").each do |field|
            stadium = Stadium.new
            stadium.name = field.css("div.title").text.split.map { |x| x.capitalize }.join(" ")
            stadium.url = field.attribute("href").value
        end
    end

    def self.scrape_stadium_details(stadium)
        html = open("#{stadium.url}")
        doc = Nokogiri::HTML(html)
        binding.pry
        stadium.facts = doc.css("div p")[6].text
        stadium.facts = doc.css("div p")[7].text
        
    end
        
end