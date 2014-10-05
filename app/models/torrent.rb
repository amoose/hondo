class Torrent < ActiveRecord::Base
	include Uidable
	include Tokenable

	belongs_to :media
end
