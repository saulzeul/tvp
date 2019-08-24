class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :name
      t.boolean :status
      t.string :icon

      t.timestamps
    end
  end
end
