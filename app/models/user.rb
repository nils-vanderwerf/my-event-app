class User < ApplicationRecord
   # when the object is destroyed, events will be deleted

   validates :name, presence: :true
   validates :email, presence: :true
   has_many :hosted_events, foreign_key: :host_id, dependent: :destroy,  class_name: "Event"
 
    has_many :comments
    has_many :commented_events, through: :comments, class_name: "Event"
    has_many :attended_events, through: :rsvps
    
    has_many :rsvps, foreign_key: :guest_id
             
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: %i[facebook]

  def self.from_omniauth(auth)
    name_split = auth.info.name.split(" ")
    user = User.where(email: auth.info.email).first
    user ||= User.create!(provider: auth.provider, uid: auth.uid, name: name_split[0], email: auth.info.email, password: Devise.friendly_token[0, 20])
    user
  end
end
