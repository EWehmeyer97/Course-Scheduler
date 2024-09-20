class AddPasswordDigestToProfessers < ActiveRecord::Migration[5.1]
  def change
    add_column :professers, :password_digest, :string
  end
end
