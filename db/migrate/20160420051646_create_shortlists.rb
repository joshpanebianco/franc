class CreateShortlists < ActiveRecord::Migration
  def change
    create_table :shortlists do |t|
      t.string :user_id
      t.string :post_id
      t.boolean :shortlist, :default => false

      t.timestamps null: false
    end
  end
end
