class Choice < ActiveRecord::Base
  belongs_to :move
  belongs_to :city
  accepts_nested_attributes_for :move, allow_destroy: true
  accepts_nested_attributes_for :city, allow_destroy: true

end
