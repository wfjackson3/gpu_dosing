class CreateHeadsizes < ActiveRecord::Migration
  def self.up
    create_table :headsizes do |t|
      t.integer :size

      t.timestamps
    end
  end

  def self.down
    drop_table :headsizes
  end
end
