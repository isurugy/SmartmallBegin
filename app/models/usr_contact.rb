class UsrContact < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :image, UsrContactUploader

  # validations for sing in
  validates :name, :presence => true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :omniauthable, :omniauth_providers => [:twitter]
  validate :password_complexity
  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)./)
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
    end
  end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |usr_contact|
      usr_contact.provider = auth.provider
      usr_contact.uid = auth.uid
      usr_contact.name = auth.info.nickname
    end
  end

  has_and_belongs_to_many :usr_vender_properties
end
