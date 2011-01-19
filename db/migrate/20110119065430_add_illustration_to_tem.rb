class AddIllustrationToTem < ActiveRecord::Migration
  def self.up
    add_column :tems, :illustration, :string
  end

  def self.down
    remove_column :tems, :illustration
  end
end
