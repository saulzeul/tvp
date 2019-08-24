class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :profile_config
      t.boolean :user_config
      t.boolean :area_config
      t.boolean :general_config

      t.timestamps
    end
  end
end
