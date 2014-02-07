class City < ActiveRecord::Base
  has_many :choices
  has_many :moves, through: :choices
  accepts_nested_attributes_for :moves
  accepts_nested_attributes_for :choices
   
end
