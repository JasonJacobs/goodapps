class CreateJoinTableListsSingleApps < ActiveRecord::Migration
  def change
    create_join_table :lists, :single_apps do |t|
      t.index [:list_id, :single_app_id]
      t.index [:single_app_id, :list_id]
    end
  end
end
