class TiporeceptoresController < ApplicationController
  before_action :set_tiporeceptor, only: [:show, :edit, :update, :destroy]

  # GET /tiporeceptores
  # GET /tiporeceptores.json
  def index
    @tiporeceptores = Tiporeceptor.all
  end

  # GET /tiporeceptores/1
  # GET /tiporeceptores/1.json
  def show
  end

  # GET /tiporeceptores/new
  def new
    @tiporeceptor = Tiporeceptor.new
  end

  # GET /tiporeceptores/1/edit
  def edit
  end

  # POST /tiporeceptores
  # POST /tiporeceptores.json
  def create
    @tiporeceptor = Tiporeceptor.new(tiporeceptor_params)

    respond_to do |format|
      if @tiporeceptor.save
        format.html { redirect_to @tiporeceptor, notice: 'Tiporeceptor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tiporeceptor }
      else
        format.html { render action: 'new' }
        format.json { render json: @tiporeceptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiporeceptores/1
  # PATCH/PUT /tiporeceptores/1.json
  def update
    respond_to do |format|
      if @tiporeceptor.update(tiporeceptor_params)
        format.html { redirect_to @tiporeceptor, notice: 'Tiporeceptor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tiporeceptor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiporeceptores/1
  # DELETE /tiporeceptores/1.json
  def destroy
    @tiporeceptor.destroy
    respond_to do |format|
      format.html { redirect_to tiporeceptores_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiporeceptor
      @tiporeceptor = Tiporeceptor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiporeceptor_params
      params.require(:tiporeceptor).permit(:ttrcodigo, :ttrdescricao, :ttratualiza, :ttrdelegacia)
    end
end
