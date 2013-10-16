class TipoareaespeciaisController < ApplicationController
  before_action :set_tipoareaespecial, only: [:show, :edit, :update, :destroy]

  # GET /tipoareaespeciais
  # GET /tipoareaespeciais.json
  def index
    @tipoareaespeciais = Tipoareaespecial.all
  end

  # GET /tipoareaespeciais/1
  # GET /tipoareaespeciais/1.json
  def show
  end

  # GET /tipoareaespeciais/new
  def new
    @tipoareaespecial = Tipoareaespecial.new
  end

  # GET /tipoareaespeciais/1/edit
  def edit
  end

  # POST /tipoareaespeciais
  # POST /tipoareaespeciais.json
  def create
    @tipoareaespecial = Tipoareaespecial.new(tipoareaespecial_params)

    respond_to do |format|
      if @tipoareaespecial.save
        format.html { redirect_to @tipoareaespecial, notice: 'Tipoareaespecial was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipoareaespecial }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipoareaespecial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoareaespeciais/1
  # PATCH/PUT /tipoareaespeciais/1.json
  def update
    respond_to do |format|
      if @tipoareaespecial.update(tipoareaespecial_params)
        format.html { redirect_to @tipoareaespecial, notice: 'Tipoareaespecial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipoareaespecial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoareaespeciais/1
  # DELETE /tipoareaespeciais/1.json
  def destroy
    @tipoareaespecial.destroy
    respond_to do |format|
      format.html { redirect_to tipoareaespeciais_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoareaespecial
      @tipoareaespecial = Tipoareaespecial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoareaespecial_params
      params.require(:tipoareaespecial).permit(:taecodigo, :taedescricao, :taeatualiza)
    end
end
