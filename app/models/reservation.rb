class Reservation < ActiveRecord::Base
  belongs_to :asset


  def has_conflict_with?(start_time, stop_time)
    (start_time >= start_at && start_time <= stop_at) || (stop_time >= start_at && stop_time <= stop_at)
  end

  def validate
    saved_reservations = Reservation.find_all_by_asset_id(asset_id)
    if reservation = saved_reservations.find {|r| r.has_conflict_with?(start_at, stop_at)}
      errors[:base] << "There was a time conflict with reservation #{reservation.id}"
    end
  end
end
