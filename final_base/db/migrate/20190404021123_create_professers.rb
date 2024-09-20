class CreateProfessers < ActiveRecord::Migration[5.1]
  def change
    create_table :professers do |t|
      t.string :Email
      t.string :Name
      t.string :Password
      t.string :Section_num
      t.string :Course_num
      t.string :Teaching_year

      t.timestamps
    end
  end
end
