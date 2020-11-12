class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :phone_number

      t.timestamps
    end
  end
end
