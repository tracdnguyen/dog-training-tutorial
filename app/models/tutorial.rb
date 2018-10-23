class Tutorial < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 6 }
  validates :content, presence: true

  belongs_to :trainer
  has_many :comments
  has_many :trainers, through: :comments

  scope :with_comments, -> { where("comments_count > 0") }

end
