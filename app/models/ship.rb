class Ship < ActiveRecord::Base
  attr_accessible :name, :building_date, :has_hyperspace, :nb_reactor, :planet

  # Validates
  validates :has_hyperspace, inclusion: { in: [true, false] }

  # Relationship
  has_and_belongs_to_many :pilots
  belongs_to :planet

  def valid_date?
  if scheduled_on.present?
    unless scheduled_on.is_a?(Time)
      errors.add(:building_date, "Is an invalid date.")
    end
  end
end
end
