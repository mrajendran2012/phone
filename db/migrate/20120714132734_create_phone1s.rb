class CreatePhone1s < ActiveRecord::Migration
  def change
    create_table :phone1s do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number

      t.timestamps
    end
  end
end
