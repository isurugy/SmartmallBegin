class CreateUsrContactVenders < ActiveRecord::Migration[5.0]
  def change
    create_table :usr_contact_venders do |t|
      t.integer :usr_contacts_id, foreign_key: true
      t.integer :usr_vender_properties_id, foreign_key: true

      t.timestamps
    end
  end
end
