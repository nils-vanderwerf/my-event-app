class User < ApplicationRecord
  has_many :hosted_events, :class_name => "Event", foreign_key: :host_id
  has_many :hosts, through: :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: %i[facebook]

  def self.from_omniauth(auth)
    name_split = auth.info.name.split(" ")
    user = User.where(email: auth.info.email).first
    user ||= User.create!(provider: auth.provider, uid: auth.uid, name: name, email: auth.info.email, password: Devise.friendly_token[0, 20])
      user
  end
end
