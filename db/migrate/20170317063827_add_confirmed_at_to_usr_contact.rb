class AddConfirmedAtToUsrContact < ActiveRecord::Migration[5.0]
  def change
    change_table(:usr_contacts) do |t|
      # Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable
    end
    add_index  :usr_contacts, :confirmation_token, :unique => true
  end
end
