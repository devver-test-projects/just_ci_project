class CreateBatmen < ActiveRecord::Migration
  def self.up
    create_table :batmen do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :batmen
  end
end
