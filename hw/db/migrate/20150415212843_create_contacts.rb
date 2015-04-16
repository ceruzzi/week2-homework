class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :FirstName
      t.string :LastName

      t.timestamps null: false
    end
  end
end
