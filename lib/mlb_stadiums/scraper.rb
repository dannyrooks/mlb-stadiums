class Scraper

    def self.scrape_stadiums
        html = open("https://en.wikipedia.org/wiki/List_of_current_Major_League_Baseball_stadiums")
        doc = Nokogiri::HTML(html)

        doc.css("th a").each do |name|
            stadium = Stadium.new
            
        end

        binding.pry
    end

    def self.scrape_stadium_names
        html = open("https://en.wikipedia.org/wiki/List_of_current_Major_League_Baseball_stadiums")
        doc = Nokogiri::HTML(html)
        
    end

end