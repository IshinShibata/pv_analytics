class RemovesiteIdfromUrls < ActiveRecord::Migration[5.1]
  def change
    remove_reference :urls, :site, foreign_key: true
  end
end
