class User < ActiveRecord::Base
  rolify

  has_many :images, :as => :imageable
  has_many :medium
  has_many :buffaloes

  devise :invitable, :database_authenticatable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable


  def invitations_remaining
  	invitation_limit - invitations_count
  end
end
