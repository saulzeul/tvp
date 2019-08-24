class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :fullname
      t.string :email
      t.attachment :avatar
      t.references :area, foreign_key: true
      t.references :role, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
