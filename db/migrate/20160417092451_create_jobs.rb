class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :location
      t.text :requirements
      t.string :remuneration

      t.timestamps null: false
    end
  end
end
