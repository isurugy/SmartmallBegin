class UsrContact < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :image, UsrContactUploader

  # validations for sing in
  validates :name, :presence => true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validate :password_complexity
  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)./)
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
    end
  end
  has_and_belongs_to_many :usr_vender_properties
  has_one :usr_buyer
end
