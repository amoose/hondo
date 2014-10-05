class Buffalo < ActiveRecord::Base
	include Uidable
	include Tokenable
	belongs_to :user
end
