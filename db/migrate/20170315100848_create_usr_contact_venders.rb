class CreateUsrContactVenders < ActiveRecord::Migration[5.0]
  def change
    create_table :usr_contact_venders do |t|
      t.references :UsrContact, foreign_key: true
      t.references :UsrVenderProperty, foreign_key: true

      t.timestamps
    end
  end
end
