class CreateValves < ActiveRecord::Migration
  def self.up
    create_table :valves do |t|
      t.integer :partnumber
      t.integer :head_id
      t.integer :gasket_id
      t.integer :ball_id
      t.integer :valvegroup_id
      t.boolean :iskit

      t.timestamps
    end
  end

  def self.down
    drop_table :valves
  end
end
