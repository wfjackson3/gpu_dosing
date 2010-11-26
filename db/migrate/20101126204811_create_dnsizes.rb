class CreateDnsizes < ActiveRecord::Migration
  def self.up
    create_table :dnsizes do |t|
      t.integer :size

      t.timestamps
    end
  end

  def self.down
    drop_table :dnsizes
  end
end
