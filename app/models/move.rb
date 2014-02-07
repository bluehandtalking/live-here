class Move < ActiveRecord::Base
  has_many :choices
  has_many :cities , through: :choices
  accepts_nested_attributes_for :cities, allow_destroy: true
  accepts_nested_attributes_for :choices, allow_destroy: true
end
