require 'csv' 

namespace :tree do
  desc "TODO"
  task Import: :environment do
    TREE_DATA_PATH = "geelongtrees.csv"
    csv_text = File.read(TREE_DATA_PATH)
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      t = Tree.new
      # THIS IS THE WRONG WAY AROUND ON PURPOSE.
      t.longitude = row["lat"]
      t.latitude = row["lon"]
      t.save
    end
  end

end
