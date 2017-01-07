namespace :gardens do
    desc " updating lat and long"
    task :update_coordinates => :environment do
      gardens = Garden.where(latitude: nil, longitude: nil)
      gardens.each do |garden|
        garden.geocode
        if garden.save
          puts "#{garden.title} was uploaded"
        else puts "error: #{garden.title}"
          #code
        end
      end
    end
end
