class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :Email
      t.string :Name
      t.string :Password
      t.string :Graduate_year

      t.timestamps
    end
  end
end
