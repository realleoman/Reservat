class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.column 'name', :string
      t.references 'asset_type'
      t.column 'created_by', :integer
      t.column 'updated_by', :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
