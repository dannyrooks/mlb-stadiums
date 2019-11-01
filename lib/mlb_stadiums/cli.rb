#our cli controller
class CLI

    def run
        puts "Welcome to MLB Stadium Fact Finder."
        puts ""
        puts "Select the division in which the ballpark you are looking for is in. "
        puts ""
        puts "American League or National League?"
        puts ""
        Scraper.scrape_stadiums
        
        binding.pry
    end


    def division_selector(league)
        doc.css("a div.title")[0].text #<--- "American League Ballparks"
        doc.css("a div.title")[1].text


    end

    def stadium_selector
        

    end

    def goodbye

    end

end