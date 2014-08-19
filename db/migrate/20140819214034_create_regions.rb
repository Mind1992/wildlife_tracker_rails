class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :name
    end
    add_column :sightings, :region_id, :integer
  end
end
