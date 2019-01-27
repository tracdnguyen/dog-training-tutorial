class CommentSerializer < ActiveModel::Serializer
  attributes :id, :trainer_id, :tutorial_id, :content, :trainer_email
  belongs_to :tutorial
end
