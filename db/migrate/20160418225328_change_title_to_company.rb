class ChangeTitleToCompany < ActiveRecord::Migration
  def change
    rename_column :jobs, :title, :company
  end
end
