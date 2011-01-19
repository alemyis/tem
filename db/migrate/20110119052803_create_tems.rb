class CreateTems < ActiveRecord::Migration
  def self.up
    create_table :tems do |t|
      t.string :teret
      t.string :misale
      t.integer :ye
      t.integer :ne

      t.timestamps
    end
  end

  def self.down
    drop_table :tems
  end
end
