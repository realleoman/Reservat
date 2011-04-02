class CreateAssetReservations < ActiveRecord::Migration
  def self.up
    create_table :asset_reservations do |t|
      t.references 'asset'
      t.column 'start_at', :datetime
      t.column 'stop_at', :datetime
      t.column 'duration', :integer, :default => 0
      t.column 'created_by', :integer
      t.column 'updated_by', :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :asset_reservations
  end
end
