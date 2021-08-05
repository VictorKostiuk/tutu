class ChangeTickets < ActiveRecord::Migration
  def change
    change_table :tickets do |t|
      t.remove :first_station
      t.remove :last_station

      t.integer :first_station_id
      t.integer :last_station_id
      t.string :first_name
      t.string :last_name
    end
  end
end
