class Heroine < ApplicationRecord
  belongs_to :power
  delegate :name, :display_name, :description, to: :power, prefix: true

  validates :name, presence: true
  validates :super_name, presence: true, uniqueness: true

  def self.search_by_power(power_name)
    # TODO: optimize as single sql query w/join
    powers = Power.search(power_name)
    Heroine.where(power: [powers])
  end
end
