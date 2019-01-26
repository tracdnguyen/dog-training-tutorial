class CommentSerializer < ActiveModel::Serializer
  attributes :id, :trainer_id, :tutorial_id, :content
  belongs_to :tutorial
end
