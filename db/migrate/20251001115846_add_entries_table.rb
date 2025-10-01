class AddEntriesTable < ActiveRecord::Migration[8.0]
  def change
    create_table :entries do |t|
      t.string :title, null: false
      t.text :body

      t.timestamps
    end
  end
end
