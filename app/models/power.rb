class Power < ApplicationRecord
  has_many :heroines

  validates :name, presence: true

  def display_name
    self.name.titleize
  end

  def self.search(name)
    Power.where('name LIKE ?', "%#{name}%")
  end
end
