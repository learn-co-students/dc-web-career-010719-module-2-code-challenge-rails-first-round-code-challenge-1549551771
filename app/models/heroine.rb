class Heroine < ApplicationRecord
  belongs_to :power
  delegate :name, :display_name, :description, to: :power, prefix: true

  validates :name, presence: true
  validates :super_name, presence: true
end
