class AddMapToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :map, :text
  end
end
