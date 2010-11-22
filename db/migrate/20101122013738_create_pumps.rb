class CreatePumps < ActiveRecord::Migration
  def self.up
    create_table :pumps do |t|
      t.integer :dn_size
      t.integer :head_size
      t.string  :line
      t.integer :flow
      t.integer :pressure

      t.timestamps
    end
    
    add_index :pumps, :line, :flow, :pressure
    
  end

  def self.down
    drop_table :pumps
  end
end
