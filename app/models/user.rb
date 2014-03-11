class User < ActiveRecord::Base
  rolify

  devise :invitable, :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

end
