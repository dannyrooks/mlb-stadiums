#our cli controller
class CLI

    def run
        puts "Welcome to National League Baseball Stadium Fact Finder."
        puts ""
        puts "Select the  ballpark you would like to learn more about. "
        puts ""
        Scraper.scrape_stadiums
        
        selector
        print_ballparks
        
    end

    def selector
    end

    def print_ballparks
        Stadium.all.each.with_index(1) do |title, index|
            puts "#{index}. #{title}"
        end
    end

    def goodbye

    end

end