class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :workname
      t.integer :progress
      t.string :userpart

      t.timestamps null: false
    end
  end
end
