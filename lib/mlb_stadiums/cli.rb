#our cli controller
class CLI

    def run
        puts "Welcome to National League Baseball Stadium Fact Finder."
        puts ""
        puts "Select the ballpark you would like to learn more about. "
        puts ""
        
        html = open("https://www.ballparksofbaseball.com")
        doc = Nokogiri::HTML(html)
        divisions = []
        doc.css("a.home-submenu-item").each do |div|
        end
        

        
        
    end


    def self.division_selector
        
        doc.css("a div.title")[1].text 
        doc.css("a.home-submenu-item")[1] 


    end

    def stadium_selector
        

    end

    def goodbye

    end

end