class Medium < ActiveRecord::Base
	include Uidable
	has_many :images, :as => :imageable, :dependent => :destroy
	belongs_to :user
	has_one :torrent

	accepts_nested_attributes_for :torrent,
    :allow_destroy => true

  after_create :query_imdb, :if => :is_movie?
  after_update :query_imdb, :if => :title_changed?

  validates_presence_of :name

  acts_as_taggable

  def is_movie?
  	media_type == 'movie'
  end

  def title_changed?
  	is_movie? and name_changed?
  end

  def query_imdb
  	if movie_id = YayImdbs.search_for_imdb_id(name)
  		info = YayImdbs.scrap_movie_info(movie_id)
  		tag_list.add("Movie")
  		images << Image.create(:url => info[:large_image]) unless
  			images.map(&:url).include? info[:large_image]
  	end
  end
end
