class Heroine < ApplicationRecord
  belongs_to :power
  delegate :name, :description, to: :power, prefix: true
end
