class CreateApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :applications do |t|
      t.string :Student_name
      t.string :Email
      t.string :Course_num
      t.string :Grader_period
      t.string :Recommand_letter
      t.string :Course_grade
      t.string :Student_id
      t.string :Status

      t.timestamps
    end
  end
end
