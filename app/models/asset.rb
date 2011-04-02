class Asset < ActiveRecord::Base
  has_many :asset_reservations, :dependent => :destroy
  belongs_to :asset_type
end
