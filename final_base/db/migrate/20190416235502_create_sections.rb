class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :Section_num
      t.string :Course_num
      t.string :Section_semester
      t.string :Section_time
      t.integer :Num_of_graders

      t.timestamps
    end
  end
end
