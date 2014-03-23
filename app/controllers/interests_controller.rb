class InterestsController < ApplicationController
	def create
		@interest = Interest.new(interest_params)
		respond_to do |format|
			 if @interest.save
        format.html { redirect_to "/request-an-invite/thank-you/#{@interest.email}"}
        format.json { render action: 'show', status: :created, location: @interest }
      else
      	@resource = @interest
        format.html { render action: 'new' }
        format.json { render json: @interest.errors, status: :unprocessable_entity }
      end
		end
  end

  def new
  	@resource = Interest.new
  end

  def thanks
	end

  def resource_name
    :interst
  end

  def resource
    @resource ||= Interest.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  private

    def interest_params
      params.require(:interest).permit(:email)
    end
end
