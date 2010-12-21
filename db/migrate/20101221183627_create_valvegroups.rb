class CreateValvegroups < ActiveRecord::Migration
  def self.up
    create_table :valvegroups do |t|
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :valvegroups
  end
end
