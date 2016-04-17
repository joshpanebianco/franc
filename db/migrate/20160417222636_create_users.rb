class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.text :address
      t.text :image

      
      t.timestamps null: false
    end
  end
end
