class Trainer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :tutorials
  has_many :comments
  has_many :tutorial_comments, through: :comments, :class_name => "Tutorial"

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |trainer|
      trainer.provider = auth.provider
      trainer.uid = auth.uid
      trainer.email = auth.info.email
      trainer.password = Devise.friendly_token[0,20]
    end
  end

  
end
