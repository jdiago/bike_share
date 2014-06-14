class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.boolean :is_available
      t.string :unlock_code

      t.timestamps
    end
  end
end
