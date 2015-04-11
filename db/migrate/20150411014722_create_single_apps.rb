class CreateSingleApps < ActiveRecord::Migration
  def change
    create_table :single_apps do |t|
      t.text :name
      t.text :description
      t.text :image
      t.string :price
      t.text :url

      t.timestamps null: false
    end
  end
end
