class CreateUsrVenderProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :usr_vender_properties do |t|
      t.string :specifiedArea
      t.string :mobile
      t.integer :shopId

      t.timestamps
    end
  end
end
