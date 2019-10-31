class MlbStadiums::Scraper

    def get_page
        Nokogiri::HTML(open(https://en.wikipedia.org/wiki/List_of_current_Major_League_Baseball_stadiums))
    end

    def scrape_stadium_names
        self.get_page.css()
        
    end

end