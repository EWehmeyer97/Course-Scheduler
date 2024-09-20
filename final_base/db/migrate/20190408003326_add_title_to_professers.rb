class AddTitleToProfessers < ActiveRecord::Migration[5.1]
  def change
    add_column :professers, :Title, :string
  end
end
