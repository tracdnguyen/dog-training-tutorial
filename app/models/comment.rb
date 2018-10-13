class Comment < ActiveRecord::Base
  validates :content, :presence true

  belongs_to :tutorial
  belongs_to :trainer
end
