namespace :reservat_support do

  desc "Initial creation of Assets"
  task :initial_creation => :environment do

    at1 = AssetType.create :name => 'Equipment'
    at2 = AssetType.create :name => 'Room'

    Asset.create :name => 'Computer 1', :asset_type_id => at1.id
    Asset.create :name => 'Meeting Room 1', :asset_type_id => at2.id
  end

  desc "Create some reservations"
  task :create_reservations => :environment do
    t = Time.now
    a = Asset.first
    a.reservations.build :start_at => (t + 30.minutes).to_datetime, :stop_at => (t + 60.minutes).to_datetime
    a.save
  end
end