class AddTagToTem < ActiveRecord::Migration
  def self.up
    add_column :tems, :Tag, :string
  end

  def self.down
    remove_column :tems, :tag
  end
end
