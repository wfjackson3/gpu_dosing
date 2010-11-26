class CreateDNsizes < ActiveRecord::Migration
  def self.up
    create_table :d_nsizes do |t|
      t.integer :size

      t.timestamps
    end
  end

  def self.down
    drop_table :d_nsizes
  end
end
