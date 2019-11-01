class Scraper

    def scrape_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)

        doc.css("a div.title")[0].text #American League
        doc.css("a div.title")[1].text #National League
            
        
       
    end

end