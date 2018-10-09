class Comment < ActiveRecord::Base
  belongs_to :tutorial
  belongs_to :trainer
end
