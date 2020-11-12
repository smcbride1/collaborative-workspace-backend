class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :list_id
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
