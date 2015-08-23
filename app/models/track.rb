class Track < ActiveRecord::Base
  has_many :set_ups , :class_name => "SetUp", :foreign_key => "track_id"
end
