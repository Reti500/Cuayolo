class User < ActiveRecord::Base
  authenticates_with_sorcery!


  has_one :asignarEscuela
  has_one :escuela, through: :asignarEscuela

  validates :username, :email, :password, :password_confirmation, :sexo, :fecha_nac, presence: true
  validates :username, :email, uniqueness: true

  validates_confirmation_of :password
  validates_presence_of :password, on: :create

  validates_format_of :email, :with => /\A(.+)@(.+)\.(.+)\z/
end
