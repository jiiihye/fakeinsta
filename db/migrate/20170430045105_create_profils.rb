class CreateProfils < ActiveRecord::Migration
  def change
    create_table :profils do |t|
      t.text :career
      t.text :main
      t.text :addition

      t.timestamps null: false
    end
  end
end
