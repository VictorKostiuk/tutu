class CreateWagon < ActiveRecord::Migration
  def change
    create_table :wagons do |t|
      t.belongs_to :train
      t.integer :wagon_type
      t.integer :count_top_places
      t.integer :count_bottom_places

      t.timestamps null: false
    end
  end
end
