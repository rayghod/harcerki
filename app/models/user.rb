class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :magazines

  before_save :assign_role

  def assign_role
  	self.role = Role.find_by name: "Klient" if self.role.nil?
  end

  def admin?
    self.role && self.role.name == "Admin"
  end

  def koordynator?
    self.role && self.role.name == "koordynator"
  end

  def klient?
    self.role && self.role.name == "Klient"
  end

  def pracownik?
    self.role && self.role.name == "pracownik"
  end

end