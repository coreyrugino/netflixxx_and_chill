class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.integer :age
      t.text :body
      t.string :title
      t.text :status

      t.timestamps null: false
    end
  end
end
