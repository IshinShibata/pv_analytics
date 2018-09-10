class CreateAccessLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :access_logs do |t|
      t.string :token_id
      t.text :url
      t.timestamps
    end
  end
end
