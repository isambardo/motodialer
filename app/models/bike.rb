class Bike < ActiveRecord::Base
has_many :set_ups , :class_name => "SetUp", :foreign_key => "bike_id"
belongs_to :user
end
