#our cli controller, ALL INPUT AND OUTPUT MUST COME FROM THIS FILE!
class CLI

    def run
        puts ""
        puts "Welcome to National League Baseball Stadium Fact Finder!"
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        puts "Choose the stadium which you would like to learn more about, or type 'exit' to quit."
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        Scraper.scrape_stadiums 
        puts "NL Stadiums"
        puts ""
        print_stadiums_with_index
        puts " "
        puts "Please enter a number:"
        input = gets.strip.downcase
        while input != 'exit' do
            stadium = Stadium.all[input.to_i - 1] #add validations
            Scraper.scrape_stadium_details(stadium) if !stadium.facts 
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
            print_facts(stadium)
            puts ""
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
            puts "Would you like to select another stadium?"
            puts "y or n?"
            input = gets.strip.downcase 
        if input == "y" 
            print_stadiums_with_index
            puts ""
            puts "Please enter a number:"
            input = gets.strip.downcase
        elsif input == "n"
            goodbye
        else
            puts ""
            puts "I do not understand, try again." 
            input = gets.strip.downcase
        end
    end

        
    end

    def print_stadiums_with_index
        Stadium.all.each.with_index(1) do |stadium, index|
            puts "#{index}. #{stadium.name}" 
        end
    end

    def print_facts(stadium)
        puts "LOOK AT ALL THESE FACTS!!"
        puts ""
        puts "#{stadium.facts}"
    end

    def goodbye
        puts ""
        puts "Have a nice day!"
        puts ""
        exit
    end

end