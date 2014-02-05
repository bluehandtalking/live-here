class Topic < ActiveRecord::Base
  belongs_to :survey
  has_many :questions
end
