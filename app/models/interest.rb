class Interest < ActiveRecord::Base
	validates_uniqueness_of :email
	validates :email, :presence => true, :email => true
end
