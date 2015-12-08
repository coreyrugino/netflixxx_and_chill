class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.text :interested_in
      t.boolean :cats
      t.boolean :dogs

      t.timestamps null: false
    end
  end
end
