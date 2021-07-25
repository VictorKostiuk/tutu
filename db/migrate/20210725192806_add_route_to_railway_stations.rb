class AddRouteToRailwayStations < ActiveRecord::Migration
  def change
    create_table :railway_stations_routes do |t|
      t.belongs_to :railway_station
      t.belongs_to :route
    end
  end
end
