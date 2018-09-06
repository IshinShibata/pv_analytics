class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :name
      t.references :url, foreign_key: true
      t.references :pv, foreign_key: true
      t.timestamps
    end
  end
end
