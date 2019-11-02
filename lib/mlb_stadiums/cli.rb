#our cli controller, ALL INPUT AND OUTPUT MUST COME FROM THIS FILE!
class CLI

    def run
        puts "Welcome to National League Baseball Stadium Fact Finder."
        puts ""
        puts " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
        puts ""
        puts "Choose the number of the stadium which you would like more information on, or type 'exit' to exit."
        puts ""
        puts " ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ "
        puts ""
        Scraper.scrape_stadiums
        menu
        puts " "
        puts "Enter a number:"
        input = gets.strip.downcase
        while input != 'exit' do
            stadium = Stadium.all[input.to_i - 1] #add validations
            Scraper.scrape_stadium_details(stadium)
        puts " ~~~~~~~~~~~~~~"
        puts ""
        print_facts(stadium)
        puts ""
        puts "blah blah"
        input = gets.strip.downcase
        end
        puts "#{goodbye}"
    end

    def menu
        print_stadiums_with_index
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
        puts "#{stadium.facts}"
        puts "#{stadium.morefacts}"
    end

    def goodbye
        "Have a nice day!"
    end

end