class Wagon < ActiveRecord::Base
  enum wagon_type: [ :seat_card, :cargo ]
  belongs_to :train
end