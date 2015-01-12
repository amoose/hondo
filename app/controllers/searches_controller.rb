class SearchesController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :set_search, only: [:show, :edit, :update, :destroy]

  respond_to :json

  def index
    @searches = Search.all
  end

  # def show
  #   respond_with(@search)
  # end

  def new
    @search = Search.new
    respond_with(@search)
  end

  def edit
  end

  def create
    unless params[:terms].blank?
      result = Tmdb::Movie.find params[:terms]
      @search = Search.new(terms: params[:terms])
      @search.result = result.to_json
      if @search.save
        render json: @search
      end
    end
  end

  # def update
  #   @search.update(search_params)
  #   respond_with(@search)
  # end

  # def destroy
  #   @search.destroy
  #   respond_with(@search)
  # end

  private
    def set_search
      @search = Search.find(params[:id])
    end

    def search_params
      params.require(:search).permit(:terms, :options, :result)
    end
end
