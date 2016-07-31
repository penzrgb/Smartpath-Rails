class CreateLights < ActiveRecord::Migration[5.0]
  def change
    create_table :lights do |t|
      t.string :type
      t.integer :power
      t.string :pole
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
