class Comment < ActiveRecord::Base
  validates :content, presence: true

  belongs_to :tutorial, counter_cache: true
  belongs_to :trainer
end
