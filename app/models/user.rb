class User < ActiveRecord::Base
  rolify

  has_many :images, :as => :imageable

  devise :invitable, :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

end
