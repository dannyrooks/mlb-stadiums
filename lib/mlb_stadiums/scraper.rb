class Scraper

    def self.scrape_stadiums
        html = open("https://www.ballparksofbaseball.com")
        doc = Nokogiri::HTML(html)

        doc.css("a div.title")[0].text #American League
        doc.css("a div.title")[1].text #National League
            
        end
        binding.pry
    end

    def self.scrape_american_league_stadiums
        html = open("https://www.ballparksofbaseball.com/american-league/")
        doc = Nokogiri::HTML(html)
    end

    def self.scrape_national_league_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league/")
        doc = Nokogiri::HTML(html)
    end

end