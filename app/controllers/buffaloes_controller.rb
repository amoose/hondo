class BuffaloesController < ApplicationController
  before_action :set_buffalo, only: [:show, :edit, :update, :destroy]

  # GET /buffaloes
  # GET /buffaloes.json
  def index
    @buffaloes = current_user.buffaloes
  end

  # GET /buffaloes/1
  # GET /buffaloes/1.json
  def show
  end

  # GET /buffaloes/new
  def new
    @buffalo = Buffalo.new
  end

  # GET /buffaloes/1/edit
  def edit
  end

  # POST /buffaloes
  # POST /buffaloes.json
  def create
    @buffalo = Buffalo.new(buffalo_params)

    respond_to do |format|
      if @buffalo.save
        format.html { redirect_to @buffalo, notice: 'Buffalo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @buffalo }
      else
        format.html { render action: 'new' }
        format.json { render json: @buffalo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buffaloes/1
  # PATCH/PUT /buffaloes/1.json
  def update
    respond_to do |format|
      if @buffalo.update(buffalo_params)
        format.html { redirect_to @buffalo, notice: 'Buffalo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @buffalo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buffaloes/1
  # DELETE /buffaloes/1.json
  def destroy
    @buffalo.destroy
    respond_to do |format|
      format.html { redirect_to buffaloes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buffalo
      @buffalo = Buffalo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def buffalo_params
      params.require(:buffalo).permit(:uid, :token, :label, :last_ip, :user_id, :location)
    end
end
