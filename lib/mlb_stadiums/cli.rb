#our cli controller
class CLI

    def run
        puts "Welcome to National League Baseball Stadium Fact Finder."
        puts ""
        puts "Select the  ballpark you would like to learn more about. "
        puts ""
        Scraper.scrape_stadiums
        binding.pry
        # loop logic, ask user what to do and does it over and over until 'exit
        menu
        
    end

    def menu
        print_stadiums_with_index
    end

    def print_stadiums_with_index
        Stadium.all.each.with_index(1) do |title, index|
            puts "#{index}. #{title}"
        end
    end

    def goodbye

    end

end