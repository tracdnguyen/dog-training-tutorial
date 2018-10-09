class Tutorial < ActiveRecord::Base
  has_many :comments
  has_many :trainers, through: :comments
end
