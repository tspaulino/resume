class CreateAuthorizedApps < ActiveRecord::Migration
  def change
    create_table :authorized_apps do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name
      t.string :uid
      t.string :token
      t.string :provider

      t.timestamps null: false
    end
  end
end
