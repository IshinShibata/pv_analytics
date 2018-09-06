class AddurlIdToPvs < ActiveRecord::Migration[5.1]
  def change
    add_reference :pvs, :url, foreign_key: true
  end
end
