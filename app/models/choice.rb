class Choice < ActiveRecord::Base
  belongs_to :move
  belongs_to :city
  accepts_nested_attributes_for :move
  accepts_nested_attributes_for :city

end
