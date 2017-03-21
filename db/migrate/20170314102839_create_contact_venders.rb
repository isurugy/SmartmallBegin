class CreateContactVenders < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_venders do |t|
      t.references :Contact, foreign_key: true
      t.references :VenderProprty, foreign_key: true

      t.timestamps
    end
  end
end
