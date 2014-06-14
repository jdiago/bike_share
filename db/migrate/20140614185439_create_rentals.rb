class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.belongs_to :user, index: true
      t.belongs_to :bike, index: true
      t.datetime :drop_off_date

      t.timestamps
    end
  end
end
