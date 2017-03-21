class CreateVenderProprties < ActiveRecord::Migration[5.0]
  def change
    create_table :vender_proprties do |t|
      t.integer :venderId
      t.string :specifiedArea
      t.string :mobile
      t.integer :shopId

      t.timestamps
    end
  end
end
