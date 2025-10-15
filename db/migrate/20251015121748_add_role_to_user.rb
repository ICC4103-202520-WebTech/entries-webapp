class AddRoleToUser < ActiveRecord::Migration[8.0]
  def change
    change_table :users do |t|
      t.integer :role, null: false, default: 0
    end
  end
end
