class CreateSearches < ActiveRecord::Migration
  def self.up
    create_table :searches do |t|
      t.integer :line_id
      t.integer :flow
      t.integer :pressure
      t.integer :head_id
      t.integer :gasket_id
      t.integer :ball_id

      t.timestamps
    end
  end

  def self.down
    drop_table :searches
  end
end
