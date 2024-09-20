class AddHashToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :passowrd_hash, :string
  end
end
