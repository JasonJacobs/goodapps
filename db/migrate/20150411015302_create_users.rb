class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.text :name
      t.text :profile_image

      t.timestamps null: false
    end
  end
end
