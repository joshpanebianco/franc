class RemoveColumnsFromApplications < ActiveRecord::Migration
  def change
    remove_column :applications, :first_name, :string
    remove_column :applications, :last_name, :string
    remove_column :applications, :email, :string
  end
end
