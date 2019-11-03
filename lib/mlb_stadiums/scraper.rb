class Scraper

    def self.scrape_american_stadiums
        html = open("https://www.ballparksofbaseball.com/american-league")
        doc = Nokogiri::HTML(html)
        doc.css("a.stadium-item").each do |field|
            stadium = Stadium.new
            stadium.name = field.css("div.title").text.split.map { |x| x.capitalize }.join(" ")
            stadium.url = field.attribute("href").value
        end
    end

    def self.scrape_al_stadium_details(stadium)
        html = open("#{stadium.url}")
        doc = Nokogiri::HTML(html)
        stadium.facts = doc.css("div.facts-col p")[0].text.strip
        stadium.memorable_moments = doc.css("li.tenfont").text.strip
        end   
    end

    def self.scrape_national_stadiums
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)
        doc.css("a.stadium-item").each do |field|
            stadium = Stadium.new
            stadium.name = field.css("div.title").text.split.map { |x| x.capitalize }.join(" ")
            stadium.url = field.attribute("href").value
        end
    end

    def self.scrape_nl_stadium_details(stadium)
        html = open("#{stadium.url}")
        doc = Nokogiri::HTML(html)
        stadium.facts = doc.css("div.facts-col p")[0].text.strip
        stadium.memorable_moments = doc.css("li.tenfont").text.strip
        end   
    end

    
