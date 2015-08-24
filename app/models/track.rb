class Track < ActiveRecord::Base
  has_many :set_ups , :class_name => "SetUp", :foreign_key => "track_id"
  validates :name, :presence => true, :uniqueness => true
  validates :address, :presence => true
end
