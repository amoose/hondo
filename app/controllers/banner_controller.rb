class BannerController < WebsocketRails::BaseController
  def initialize_session
    # perform application setup here
    controller_store[:message_count] = 0
  end

  def client_connected
  	send_message :welcome, {:message => 'welcome'}
  end

  def new_banner
  	send_message :welcome, {:uid => '123'}.to_json
  end
end