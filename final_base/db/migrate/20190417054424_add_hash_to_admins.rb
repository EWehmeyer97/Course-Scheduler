class AddHashToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :passowrd_hash, :string
  end
end
