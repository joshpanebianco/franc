class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :videoURL
      t.text :comments

      t.timestamps null: false
    end
  end
end
