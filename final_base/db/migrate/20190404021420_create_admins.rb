class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :Email
      t.string :Name
      t.string :Password
      t.string :Course_num
      t.string :Manage_year

      t.timestamps
    end
  end
end
