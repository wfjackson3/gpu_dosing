class AddUniquenessIndex < ActiveRecord::Migration
  def self.up
    add_index :valves, [:partnumber, :valvegroup_id], :unique => true
    add_index :sizes, [:flow, :pressure, :line_id], :unique => true
    add_index :heads, :typekey, :unique => true
    add_index :gaskets, :typekey, :unique => true
    add_index :balls, :typekey, :unique => true
    add_index :lines, :name, :unique => true
  end

  def self.down
    remove_index :valves, [:partnumber, :valvegroup_id]
  end
end
