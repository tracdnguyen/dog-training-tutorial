class Tutorial < ActiveRecord::Base
  belongs_to :trainer
  has_many :comments
  has_many :trainers, through: :comments
end
