class ChangeRemunerationFromStringToNumeric < ActiveRecord::Migration
  def change
    change_column :jobs, :remuneration, 'DECIMAL(12,0) USING CAST(remuneration AS DECIMAL)'
    #:decimal, :precision => 12, :scale => 0,
  end
end
