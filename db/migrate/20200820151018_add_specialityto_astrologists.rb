class AddSpecialitytoAstrologists < ActiveRecord::Migration[6.0]
  def change
    add_column :astrologists, :speciality, :string
  end
end
