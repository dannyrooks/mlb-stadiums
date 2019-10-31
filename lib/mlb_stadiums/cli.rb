#our cli controller
class CLI

    def run
        puts "Welcome to MLB Stadium Fact Finder."
        puts ""
        puts "Select a stadium you would like to learn more about."
        puts ""
        Scraper.scrape_stadiums
        
        binding.pry
    end


    def list_stadiums
        # puts out a list of scraped stadium names

    end

    def stadium_selector
        

    end

    def goodbye

    end

end