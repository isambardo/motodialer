class User < ActiveRecord::Base

  has_many :bikes
  has_many :set_ups, :through => :bikes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :first_name, :presence => true
  validates :lastname, :presence => true
  validates :bio, length: { maximum: 200,
    too_long: "%{count} characters is the maximum allowed" }
end
