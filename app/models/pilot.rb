class Pilot < ActiveRecord::Base
  attr_accessible :age, :firstname, :grade, :lastname, :planet_id, :ship_id

  # Validates
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :grade, :numericality => {
                                      :only_integer => true,
                                      :allow_nil => false,
                                      inclusion: { in: [0, 9] },
                                      :message => 'can only be between 0 and 9'
                                    }
  validates :age, :numericality => {
                                    :only_integer => true,
                                    :allow_nil => false,
                                    :greater_than_or_equal_to => 1,
                                    :less_than_or_equal_to => 150,
                                    :message => 'can only be whole number between 1 and 150.'
                                  }

  # Relationship
  has_many :pilots_ships
  has_many :ships, :through => :pilots_ships
  belongs_to :planet

  def formatted_name
    firstname + " " + lastname
  end

  def homeworld
    planet = Planet.find(planet_id)
  end

end
