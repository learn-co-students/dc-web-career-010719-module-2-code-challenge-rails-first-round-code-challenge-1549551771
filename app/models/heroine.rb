class Heroine < ApplicationRecord
  belongs_to :power
  validates :super_name, uniqueness: true
  validates :name, presence: true
  validates :super_name, presence: true
  validates :power_id, presence: true
end
