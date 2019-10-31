class Scraper

    def self.scrape_stadiums
        doc = Nokogiri::HTML(open(https://en.wikipedia.org/wiki/List_of_current_Major_League_Baseball_stadiums))
    end

    def scrape_stadium_names
        self.get_page.css()
        
    end

end