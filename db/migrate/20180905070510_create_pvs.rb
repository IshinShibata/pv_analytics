class CreatePvs < ActiveRecord::Migration[5.1]
  def change
    create_table :pvs do |t|
      t.timestamps
    end
  end
end
