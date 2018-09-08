class RemovepvIdurlIdFromSites < ActiveRecord::Migration[5.1]
  def change
    remove_reference :sites, :url, foreign_key: true
    remove_reference :sites, :pv, foreign_key: true
  end
end
