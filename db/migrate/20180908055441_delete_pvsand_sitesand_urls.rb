class DeletePvsandSitesandUrls < ActiveRecord::Migration[5.1]
  def change
    drop_table :pvs
    drop_table :sites
    drop_table :urls
  end
end
