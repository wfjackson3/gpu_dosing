class CreateGaskets < ActiveRecord::Migration
  def self.up
    create_table :gaskets do |t|
      t.string :material

      t.timestamps
    end
  end

  def self.down
    drop_table :gaskets
  end
end
