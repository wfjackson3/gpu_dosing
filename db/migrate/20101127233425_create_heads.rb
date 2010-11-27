class CreateHeads < ActiveRecord::Migration
  def self.up
    create_table :heads do |t|
      t.string :material
      t.string :typekey
      t.string :tradename

      t.timestamps
    end
  end

  def self.down
    drop_table :heads
  end
end
