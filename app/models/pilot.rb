class Pilot < ActiveRecord::Base
  attr_accessible :age, :firstname, :grade, :lastname, :planet_id, :ship_id

  # Validator
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :grade, numericality: {
    only_integer: true,
    allow_nil: false,
    inclusion: { in: [0, 9] },
    message: 'can only be between 0 and 9'
  }

  validates :age, numericality: {
    only_integer: true,
    allow_nil: false,
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 150,
    message: 'can only be whole number between 1 and 150.'
  }

  # Relationship
  has_and_belongs_to_many :ships
  belongs_to :homeworld, class_name: 'Planet', foreign_key: 'planet_id'

  # Scope
  # scope :earthian, -> {
  #   id = Planet.where(name: 'Earth').pluck(:id).first
  #   where(planet_id: id)
  # }

  scope :earthian, -> { joins(:homeworld).where(planets: { name: 'Earth' }) }

  def formatted_name
    firstname + ' ' + lastname
  end
end
