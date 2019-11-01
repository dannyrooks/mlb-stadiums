#our cli controller
class CLI

    def run
        puts "Welcome to National League Baseball Stadium Fact Finder."
        puts ""
        puts "Select the  ballpark you would like to learn more about. "
        puts ""
        
        html = open("https://www.ballparksofbaseball.com/national-league")
        doc = Nokogiri::HTML(html)
        ballparks = []
        doc.css("a.stadium-item").each do |ballpark|
            title = ballpark.css("div.title").text.strip
            ballparks << title
        end

            ballparks.each.with_index(1) do |title, index|
                puts "#{index}. #{title}"
            end
        
    end


    def stadium_selector
        

    end

    def goodbye

    end

end