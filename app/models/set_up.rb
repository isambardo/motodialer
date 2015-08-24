class SetUp < ActiveRecord::Base
  belongs_to :track , :class_name => "Track", :foreign_key => "track_id"
  belongs_to :bike
  validates :track_id, :presence => true
  validates :laptime, :numericality => true
  validates :rider_weight, :numericality => true
  validates :bike_id, :presence => true
  validates :comment, length: { maximum: 200,
    too_long: "%{count} characters is the maximum allowed" }
  validates :subjective_rating, numericality: { only_integer: true, less_than: 10, greater_than: -1 }
  validates :conditions, inclusion: { in: %w(Dry Damp Wet),
    message: "%{value} is not a valid condition: enter Dry, Damp, or Wet" }
  validates :track_temperature, :numericality => true
  validates :ambient_temperature, :numericality => true
  validates :rear_tire_pressure, :numericality => true
  validates :front_tire_pressure, :numericality => true
  validates :steering_head_angle, numericality: { greater_than: 0, less_than: 90 }
  validates :front_suspension_preload, :numericality => true
  validates :front_suspension_compression, :numericality => true
  validates :front_suspension_damping, :numericality => true
  validates :front_suspension_spring_rate, :numericality => true
  validates :rear_suspension_preload, :numericality => true
  validates :rear_suspension_compression, :numericality => true
  validates :rear_suspension_damping, :numericality => true
  validates :rear_suspension_spring_rate, :numericality => true
  validates :rear_suspension_static_sag, :numericality => true
  validates :rear_suspension_sag, :numericality => true




end
