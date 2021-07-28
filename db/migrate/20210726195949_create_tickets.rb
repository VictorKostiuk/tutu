class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :first_station
      t.string :last_station

      t.references :train

      t.timestamps null: false
    end
  end
end
