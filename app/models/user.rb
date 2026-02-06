class User < ApplicationRecord
  has_many :created_events,
            class_name: "User",
            foreign_key: "creator_id"

  has_and_belongs_to_many :attended_events,
                           class_name: "User"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
