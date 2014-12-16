class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street_address
      t.string :address_line_2
      t.string :town
      t.string :city
      t.string :region
      t.references :country, index: true

      t.timestamps
    end
  end
end
