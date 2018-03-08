class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
