class CreateSetUps < ActiveRecord::Migration
  def change
    create_table :set_ups do |t|
      t.integer :track_id
      t.float :laptime
      t.float :rider_weight
      t.integer :bike_id
      t.text :comment
      t.integer :subjective_rating
      t.string :conditions
      t.float :track_temperature
      t.float :ambient_temperature
      t.float :rear_tire_pressure
      t.float :front_tire_pressure
      t.string :rear_tire
      t.string :front_tire
      t.float :steering_head_angle
      t.integer :front_suspension_preload
      t.integer :front_suspension_compression
      t.integer :front_suspension_damping
      t.float :front_suspension_spring_rate
      t.string :front_suspension_brand
      t.integer :rear_suspension_preload
      t.integer :rear_suspension_compression
      t.integer :rear_suspension_damping
      t.float :rear_suspension_spring_rate
      t.float :rear_suspension_static_sag
      t.float :rear_suspension_sag
      t.string :rear_suspension_brand

      t.timestamps

    end
  end
end
