class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  has_many :cart_items
  validates :email, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         enum role: { user: 0, buyer: 1, seller: 2, admin: 3 }

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end 

  def admin?
    self.role == 'admin'
  end
  
end
