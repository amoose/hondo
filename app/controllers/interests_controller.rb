class InterestsController < ApplicationController
	def create
		# Interest.create(params[:interest])
		# redirect_to "/request-an-invite/thank-you/#{params[:interest][:email]}"
		redirect_to "/request-an-invite/?error=true&message=Not+accepting+invite+signups+at+this+time."
	end
end
