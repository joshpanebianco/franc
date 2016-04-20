class AddBooleanToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :shortlist, :boolean, :default => false
  end
end
