class TutorialsSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :video_link
  has_many :comments
end
