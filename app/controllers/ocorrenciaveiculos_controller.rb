class OcorrenciaveiculosController < ApplicationController
  before_action :set_ocorrenciaveiculo, only: [:show, :edit, :update, :destroy]

  # GET /ocorrenciaveiculos
  # GET /ocorrenciaveiculos.json
  def index
    @ocorrenciaveiculos = Ocorrenciaveiculo.all
  end

  # GET /ocorrenciaveiculos/1
  # GET /ocorrenciaveiculos/1.json
  def show
  end

  # GET /ocorrenciaveiculos/new
  def new
    @ocorrenciaveiculo = Ocorrenciaveiculo.new
  end

  # GET /ocorrenciaveiculos/1/edit
  def edit
  end

  # POST /ocorrenciaveiculos
  # POST /ocorrenciaveiculos.json
  def create
    @ocorrenciaveiculo = Ocorrenciaveiculo.new(ocorrenciaveiculo_params)

    respond_to do |format|
      if @ocorrenciaveiculo.save
        format.html { redirect_to @ocorrenciaveiculo, notice: 'Ocorrenciaveiculo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ocorrenciaveiculo }
      else
        format.html { render action: 'new' }
        format.json { render json: @ocorrenciaveiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ocorrenciaveiculos/1
  # PATCH/PUT /ocorrenciaveiculos/1.json
  def update
    respond_to do |format|
      if @ocorrenciaveiculo.update(ocorrenciaveiculo_params)
        format.html { redirect_to @ocorrenciaveiculo, notice: 'Ocorrenciaveiculo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ocorrenciaveiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocorrenciaveiculos/1
  # DELETE /ocorrenciaveiculos/1.json
  def destroy
    @ocorrenciaveiculo.destroy
    respond_to do |format|
      format.html { redirect_to ocorrenciaveiculos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocorrenciaveiculo
      @ocorrenciaveiculo = Ocorrenciaveiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ocorrenciaveiculo_params
      params.require(:ocorrenciaveiculo).permit(:ocvid, :ocvocoid, :ocvveiid)
    end
end
