class CreateAstrologists < ActiveRecord::Migration[6.0]
  def change
    create_table :astrologists do |t|
      t.text :experience
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
