class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :city
      t.string :lat
      t.string :lng
      t.timestamps
    end
  end
end
