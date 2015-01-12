class RoamingBuffaloesController < WebsocketRails::BaseController
  def initialize_session
    controller_store[:message_count] = 0
  end

  def client_connected
    logger.info "*** CLIENT CONNECTED ***"
    WebsocketRails.users[params[:uid]] = connection
    logger.info "** #{params[:uid]} user created with #{connection.inspect}"

    if @buffalo = Buffalo.find_or_create_by(:uid => params[:uid])
      connection_store[:buffalo] = @buffalo
      # connection_store[]
      send_message :authorization_token, {:value => @buffalo.token }
    end
  end

  def client_disconnected
    # known_connections = WebsocketRails.users[client_id]
    # known_connections.connections.delete connection
    logger.info "** DISCONNECTED"
    logger.info params
    if @buffalo = Buffalo.find_by(:uid => params[:uid])
      @buffalo.update_attributes(:status => :offline)
    end
    logger.info "**  //DISCONNECTED"
  end

  def identify
    if @buffalo = Buffalo.find_by(:uid => params[:uid])
      @buffalo.update_attributes(:status => :online)
      send_message :identify, { :value => :success }
      logger.info "*** "
      logger.info current_user
    end
  end


  def current_user
    @current_user ||= Buffalo.find_by(:uid => params[:uid])
  end
end