class OcorrenciaacidentesController < ApplicationController
  before_action :set_ocorrenciaacidente, only: [:show, :edit, :update, :destroy]

  # GET /ocorrenciaacidentes
  # GET /ocorrenciaacidentes.json
  def index
    @ocorrenciaacidentes = Ocorrenciaacidente.all
  end

  # GET /ocorrenciaacidentes/1
  # GET /ocorrenciaacidentes/1.json
  def show
  end

  # GET /ocorrenciaacidentes/new
  def new
    @ocorrenciaacidente = Ocorrenciaacidente.new
  end

  # GET /ocorrenciaacidentes/1/edit
  def edit
  end

  # POST /ocorrenciaacidentes
  # POST /ocorrenciaacidentes.json
  def create
    @ocorrenciaacidente = Ocorrenciaacidente.new(ocorrenciaacidente_params)

    respond_to do |format|
      if @ocorrenciaacidente.save
        format.html { redirect_to @ocorrenciaacidente, notice: 'Ocorrenciaacidente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ocorrenciaacidente }
      else
        format.html { render action: 'new' }
        format.json { render json: @ocorrenciaacidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ocorrenciaacidentes/1
  # PATCH/PUT /ocorrenciaacidentes/1.json
  def update
    respond_to do |format|
      if @ocorrenciaacidente.update(ocorrenciaacidente_params)
        format.html { redirect_to @ocorrenciaacidente, notice: 'Ocorrenciaacidente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ocorrenciaacidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocorrenciaacidentes/1
  # DELETE /ocorrenciaacidentes/1.json
  def destroy
    @ocorrenciaacidente.destroy
    respond_to do |format|
      format.html { redirect_to ocorrenciaacidentes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocorrenciaacidente
      @ocorrenciaacidente = Ocorrenciaacidente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ocorrenciaacidente_params
      params.require(:ocorrenciaacidente).permit(:oacocoid, :oacttacodigo, :oactcacodigo, :oacdano, :oacdanoterc, :oacdanoamb, :oaclatitude, :oaclongitude, :oacrefera, :oacreferb, :oacdistab, :oacdistac, :oacdistbc, :oacmodelopista, :oacsentido1, :oacsentido2, :oacqtdfaixa1, :oacqtdfaixa2, :oacacostamento1, :oacacostamento2, :oacimagemlen, :oacimagem, :oacdescdanopat, :oacdescdanoterc, :oacdescdanoamb, :oaccanteiro, :oaccanteiro, :oacorientpista, :oacgirafundo, :oacversaocroqui, :oacsitio)
    end
end
