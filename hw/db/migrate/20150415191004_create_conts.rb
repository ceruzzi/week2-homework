class CreateConts < ActiveRecord::Migration
  def change
    create_table :conts do |t|
      t.string :FirstName
      t.string :LastName

      t.timestamps null : false
    end
  end
end
