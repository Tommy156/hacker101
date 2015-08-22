class CreateHacks < ActiveRecord::Migration
  def change
    create_table :hacks do |t|
      t.string :mac
      t.string :name
      t.integer :heartbeat
      t.decimal :self_latitude
      t.decimal :self_longitude
      t.decimal :sanc_latitude
      t.decimal :sanc_longitude
      t.integer :direction
      t.decimal :distance

      t.timestamps null: false
    end
  end
end
