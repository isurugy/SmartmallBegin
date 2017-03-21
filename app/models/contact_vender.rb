class ContactVender < ApplicationRecord
  belongs_to :Contact
  belongs_to :VenderProprty
end
