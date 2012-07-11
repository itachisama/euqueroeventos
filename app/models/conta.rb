class Conta < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :perfil_id, :password, :password_confirmation, :remember_me, :ativo, :dataCadastro
  belongs_to :perfil
  has_one :usuario
  
  validates :email,:uniqueness=>true,
            :format =>{:with=> /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i}
  
end
