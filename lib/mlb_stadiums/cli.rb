#our cli controller, ALL INPUT AND OUTPUT MUST COME FROM THIS FILE!
class CLI

    def run
            puts ""
            puts "Welcome to National League Baseball Stadium Fact Finder!"
            start
    end
    def start
            puts ""
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
            puts "Choose the number of the stadium which you would like more information on, or type 'exit' to quit."
            puts ""
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
        Scraper.scrape_stadiums
        print_stadiums_with_index
            puts " "
            puts "Please enter a number:"
        input = gets.strip.downcase
        while input != 'exit' do
            stadium = Stadium.all[input.to_i - 1] #add validations
            Scraper.scrape_stadium_details(stadium)
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
            print_facts(stadium)
            print_morefacts(stadium)
            puts ""
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
            puts "Would you like to select another stadium?"
        input = gets.strip.downcase 
        if input == "y"
            start
        elsif input == "n"
            goodbye
        else
            puts ""
            puts "I do not understand." 
            start
        end
    end

        input = gets.strip.downcase
        
        puts "#{goodbye}"
    end

    def list
        #returns user to the main list of stadiums
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

    def print_morefacts(stadium)
        puts "#{stadium.morefacts}"
    end

    def goodbye
        puts ""
        puts "Have a nice day!"
        puts ""
        exit
    end

end