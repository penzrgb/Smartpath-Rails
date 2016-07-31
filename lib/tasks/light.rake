require 'csv'

namespace :light do
  desc "TODO"
  task Import: :environment do
    LIGHT_DATA_PATH = "lights.csv"
    csv_text = File.read(LIGHT_DATA_PATH)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      l = Light.new
      l.type = row["Type"]
      l.power = row["Power"].to_i
      l.pole = row["Pole_Type"]
      l.longitude = row["Longitude"]
      l.latitude = row["Latitude"]
    end
  end

end
