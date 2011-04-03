class AddCommentToReservations < ActiveRecord::Migration
  def self.up
    add_column :reservations, :comment, :string
  end

  def self.down
    remove_column :reservations, :comment
  end
end