class CreateBalls < ActiveRecord::Migration
  def self.up
    create_table :balls do |t|
      t.string :material
      t.string :typekey
      t.string :tradename

      t.timestamps
    end
  end

  def self.down
    drop_table :balls
  end
end
