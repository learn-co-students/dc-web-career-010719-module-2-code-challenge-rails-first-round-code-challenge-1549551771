class Power < ApplicationRecord
  has_many :heroines

  validates :name, presence: true

  def display_name
    self.name.titleize
  end
end
