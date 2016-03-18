class PilotsShip < ActiveRecord::Base
  attr_accessible :last_utilisation
  belongs_to :pilot
  belongs_to :ship
end
