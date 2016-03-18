class Planet < ActiveRecord::Base
  attr_accessible :name, :planet_type

  validates :planet_type, inclusion: { in: %w(gazeuse tellurique) }

  has_many :pilots
  has_many :ships
end
