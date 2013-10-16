class LocalbrsController < ApplicationController
  before_action :set_localbr, only: [:show, :edit, :update, :destroy]

  # GET /localbrs
  # GET /localbrs.json
  def index
    @localbrs = Localbr.all
  end

  # GET /localbrs/1
  # GET /localbrs/1.json
  def show
  end

  # GET /localbrs/new
  def new
    @localbr = Localbr.new
  end

  # GET /localbrs/1/edit
  def edit
  end

  # POST /localbrs
  # POST /localbrs.json
  def create
    @localbr = Localbr.new(localbr_params)

    respond_to do |format|
      if @localbr.save
        format.html { redirect_to @localbr, notice: 'Localbr was successfully created.' }
        format.json { render action: 'show', status: :created, location: @localbr }
      else
        format.html { render action: 'new' }
        format.json { render json: @localbr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /localbrs/1
  # PATCH/PUT /localbrs/1.json
  def update
    respond_to do |format|
      if @localbr.update(localbr_params)
        format.html { redirect_to @localbr, notice: 'Localbr was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @localbr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /localbrs/1
  # DELETE /localbrs/1.json
  def destroy
    @localbr.destroy
    respond_to do |format|
      format.html { redirect_to localbrs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_localbr
      @localbr = Localbr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def localbr_params
      params.require(:localbr).permit(:lbrid, :lbruf, :lbrbr, :lbrkm, :lbrlatitude, :lbrlatitude, :lbrpnvid, :lbratualiza)
    end
end
