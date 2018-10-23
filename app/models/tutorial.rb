class Tutorial < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true
  validates :video_link, length: { maximum: 245 },
                         format: { with: URI.regexp(%w(http https)), message: :bad_url_format }

  belongs_to :trainer
  has_many :comments
  has_many :trainers, through: :comments

  scope :with_comments, -> { where("comments_count > 0") }

end
