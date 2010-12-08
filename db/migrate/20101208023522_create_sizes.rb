class CreateSizes < ActiveRecord::Migration
  def self.up
    create_table :sizes do |t|
      t.integer :flow
      t.integer :pressure
      t.integer :line_id
      t.integer :dnsize_id
      t.integer :headsize_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sizes
  end
end
