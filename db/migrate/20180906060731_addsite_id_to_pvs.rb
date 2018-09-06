class AddsiteIdToPvs < ActiveRecord::Migration[5.1]
  def change
    add_reference :pvs, :site, foreign_key: true
  end
end
