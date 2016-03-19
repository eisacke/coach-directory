class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :courses
  mount_uploader :image, ProfileImageUploader
  geocoded_by :location
  after_validation :geocode

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
