class CreateValvekits < ActiveRecord::Migration
  def self.up
    create_table :valvekits do |t|
      t.integer :PN
      t.integer :ball_id
      t.integer :gasket_id
      t.integer :head_id
      t.integer :dnsize_id
      t.string :mfg

      t.timestamps
    end
  end

  def self.down
    drop_table :valvekits
  end
end
