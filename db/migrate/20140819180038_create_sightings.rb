class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.date :date
      t.float :latitude
      t.float :longitude
      t.belongs_to :kind
    end
  end
end
