class UsrVenderProperty < ApplicationRecord
  has_and_belongs_to_many :usr_contacts
end
