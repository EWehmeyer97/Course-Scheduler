class CreateRecommands < ActiveRecord::Migration[5.1]
  def change
    create_table :recommands do |t|
      t.string :Professer_id
      t.string :Request_flag
      t.string :Student_name
      t.string :Course_num
      t.string :Grader_year
      t.string :Reason

      t.timestamps
    end
  end
end
