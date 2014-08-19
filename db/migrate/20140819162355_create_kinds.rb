class CreateKinds < ActiveRecord::Migration
  def change
    create_table :kinds do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
