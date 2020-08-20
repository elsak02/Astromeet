class AddConfirmationtoBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :confirmed, :boolean, default: true
  end
end
