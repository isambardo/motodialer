class User < ActiveRecord::Base

  has_many :bikes
  has_many :set_ups, :through => :bikes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
