class SetUp < ActiveRecord::Base
  belongs_to :track , :class_name => "Track", :foreign_key => "track_id"
  belongs_to :bike
end
