class CreateUsrBranches < ActiveRecord::Migration[5.0]
  def change
    create_table :usr_branches do |t|
      t.string :address
      t.references :usr_vender_property, foreign_key: true

      t.timestamps
    end
  end
end
