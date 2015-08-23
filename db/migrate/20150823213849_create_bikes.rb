class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.integer :user_id
      t.string :year
      t.string :model
      t.string :manufacturer

      t.timestamps

    end
  end
end
