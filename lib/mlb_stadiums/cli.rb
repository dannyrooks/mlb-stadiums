class CLI

    def run
        puts ""
        puts "Welcome to the National League Stadium Fact Finder!"
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        puts "Choose the stadium you would like to learn more about, or type 'exit' to quit."
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        Scraper.scrape_national_stadiums 
        puts "NL Stadiums"
        puts ""
        print_stadiums_with_index
        puts " "
        puts "Please enter a number:"
        input = gets.strip.downcase
        menu(input)
    end

    def menu(input)
        while input != 'exit' do
            stadium = Stadium.all[input.to_i - 1] 
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
            puts ""
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
        puts "Facts:"
        puts ""
        puts "#{stadium.facts}"
        puts ""
        puts "Memorable Moments:"
        puts ""
        puts "#{stadium.memorable_moments}"
    end

    def goodbye
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        puts "Have a nice day!"
        puts ""
        exit
    end

end