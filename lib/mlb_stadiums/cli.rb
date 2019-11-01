#our cli controller
class CLI

    def run
        puts "Welcome to National League Baseball Stadium Fact Finder."
        puts ""
        puts "Select the  ballpark you would like to learn more about. "
        puts ""
        Scraper.scrape_stadiums
        
        # loop logic, ask user what to do and does it over and over until 'exit
        menu
        
    end

    def menu
        print_stadiums
    end

    def print_stadiums
        Stadium.all.each.with_index(1) do |title, index|
            puts "#{index}. #{title}"
        end
    end

    def goodbye

    end

end