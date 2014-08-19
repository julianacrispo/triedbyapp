class User < ActiveRecord::Base
  has_many :reviews

  def role?(base_role)
    role == base_role.to_s
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


end
