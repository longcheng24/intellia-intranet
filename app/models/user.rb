class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  HUMANRESOURCES	= 10
  FINANCE			= 20
  RESEARCH			= 30
  ALL				= 40

end
