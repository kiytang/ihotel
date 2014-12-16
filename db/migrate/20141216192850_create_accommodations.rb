class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
      t.text :description
      t.references :location, index: true

      t.timestamps
    end
  end
end
