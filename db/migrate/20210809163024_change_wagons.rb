class ChangeWagons < ActiveRecord::Migration
  def change
    change_table :wagons do |t|
      t.remove :wagon_type
      t.remove :count_top_places
      t.remove :count_bottom_places

      t.integer :number
      t.integer :top_seats
      t.integer :bottom_seats
      t.integer :side_top_seats
      t.integer :side_bottom_seats
      t.string :type
    end
  end
end
