class Move < ActiveRecord::Base
  has_many :choices
  has_many :cities , through: :choices
  accepts_nested_attributes_for :cities
  accepts_nested_attributes_for :choices
end
