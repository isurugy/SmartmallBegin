class AddImageToUsrContact < ActiveRecord::Migration[5.0]
  def change
    add_column :usr_contacts, :image, :string
  end
end
