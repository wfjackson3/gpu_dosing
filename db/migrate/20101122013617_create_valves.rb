class CreateValves < ActiveRecord::Migration
  def self.up
    create_table :valves do |t|
      t.string :ball
      t.string :oring
      t.string :body
      t.string :mfg
      t.integer :dn_size

      t.timestamps
    end
  end

  def self.down
    drop_table :valves
  end
end
