class Bike < ActiveRecord::Base
has_many :set_ups , :class_name => "SetUp", :foreign_key => "bike_id"
belongs_to :user
validates :model, :presence => true
validates :manufacturer, :presence => true
validates :year, :presence => true, numericality: { greater_than: 1900, less_than: 2050 }

end
