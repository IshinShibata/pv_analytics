class RemoveurlIdFromPvs < ActiveRecord::Migration[5.1]
  def change
    remove_reference :pvs, :url, foreign_key: true
  end
end
