class CreateValvekits < ActiveRecord::Migration
  def self.up
    create_table :valvekits do |t|
      t.integer :PN
      t.string :ball
      t.string :gasket
      t.string :body
      t.integer :dnsize
      t.string :mfg

      t.timestamps
    end
  end

  def self.down
    drop_table :valvekits
  end
end
