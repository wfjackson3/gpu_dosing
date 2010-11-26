class CreateDnSizes < ActiveRecord::Migration
  def self.up
    create_table :dn_sizes do |t|
      t.integer :size

      t.timestamps
    end
  end

  def self.down
    drop_table :dn_sizes
  end
end
