class City < ActiveRecord::Base
  has_many :choices
  has_many :moves, through: :choices
  accepts_nested_attributes_for :moves, allow_destroy: true
  accepts_nested_attributes_for :choices, allow_destroy: true
   
end
