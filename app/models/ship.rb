class Ship < ActiveRecord::Base
  attr_accessible :name, :building_date, :has_hyperspace, :reactors, :planet

  # Validates
  validates :name, presence: true
  validates :has_hyperspace, inclusion: { in: [true, false] }
  validates :reactors, :numericality => {
                                      :only_integer => true,
                                      :allow_nil => false
                                        }

  # Relationship
  has_many :pilots_ships
  has_many :pilots, :through => :pilots_ships
  belongs_to :planet

end
