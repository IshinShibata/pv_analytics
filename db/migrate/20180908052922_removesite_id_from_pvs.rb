class RemovesiteIdFromPvs < ActiveRecord::Migration[5.1]
  def change
    remove_reference :pvs, :site, foreign_key: true
  end
end
