class Planet < ActiveRecord::Base
  attr_accessible :name, :category

  # Validates
  validates :name, presence: true, uniqueness: true
  validates :category, inclusion: { in: %w(gazeuse tellurique) }

  # Relationship
  has_many :pilots
  has_many :ships

  # Scope
  scope :terrestrial, -> { where(category: 'tellurique') }
  scope :giant, -> { where(category: 'gazeuse') }
end
