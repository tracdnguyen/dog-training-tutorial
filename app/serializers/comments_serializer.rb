class CommentsSerializer < ActiveModel::Serializer
  attributes :id, :trainer_id, :tutorial_id, :content
end
