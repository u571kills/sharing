require 'csv'
@lastlocation = ''
hosts = CSV.read("deviceip.csv")

hosts.each { |x|
            host = x[0].upcase
            model = x[1]
            location = x[2].upcase

            if location != @lastlocation
              puts "\n\n"
              puts "++ #{location}"
              puts "menu = #{location}"
              puts "title = #{location}"
            end
            puts "+++ #{host}"
            puts "title = #{host} - #{model}"
            puts "host = #{host}"
            @lastlocation = location
          }
