class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :address
      t.string :name

      t.timestamps

    end
  end
end
