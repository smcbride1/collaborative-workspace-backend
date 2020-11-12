class CreateWorkspaces < ActiveRecord::Migration[6.0]
  def change
    create_table :workspaces do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
