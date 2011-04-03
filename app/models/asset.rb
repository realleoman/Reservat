class Asset < ActiveRecord::Base
  has_many :reservations, :dependent => :destroy
  belongs_to :asset_type
end
