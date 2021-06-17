class User < ApplicationRecord
  has_many :hosted_events, :class_name => "Event", foreign_key: :host_id
  has_many :hosts, through: :events
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
      
end
