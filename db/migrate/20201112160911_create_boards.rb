class CreateBoards < ActiveRecord::Migration[6.0]
  def change
    create_table :boards do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
