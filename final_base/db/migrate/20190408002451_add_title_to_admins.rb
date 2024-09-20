class AddTitleToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :Title, :string
  end
end
