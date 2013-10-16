class TipoAcidentesController < ApplicationController
  before_action :set_tipo_acidente, only: [:show, :edit, :update, :destroy]

  # GET /tipo_acidentes
  # GET /tipo_acidentes.json
  def index
    @tipo_acidentes = TipoAcidente.all
  end

  # GET /tipo_acidentes/1
  # GET /tipo_acidentes/1.json
  def show
  end

  # GET /tipo_acidentes/new
  def new
    @tipo_acidente = TipoAcidente.new
  end

  # GET /tipo_acidentes/1/edit
  def edit
  end

  # POST /tipo_acidentes
  # POST /tipo_acidentes.json
  def create
    @tipo_acidente = TipoAcidente.new(tipo_acidente_params)

    respond_to do |format|
      if @tipo_acidente.save
        format.html { redirect_to @tipo_acidente, notice: 'Tipo acidente was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_acidente }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_acidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_acidentes/1
  # PATCH/PUT /tipo_acidentes/1.json
  def update
    respond_to do |format|
      if @tipo_acidente.update(tipo_acidente_params)
        format.html { redirect_to @tipo_acidente, notice: 'Tipo acidente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_acidente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_acidentes/1
  # DELETE /tipo_acidentes/1.json
  def destroy
    @tipo_acidente.destroy
    respond_to do |format|
      format.html { redirect_to tipo_acidentes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_acidente
      @tipo_acidente = TipoAcidente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_acidente_params
      params.require(:tipo_acidente).permit(:ttacodigo, :ttaatualiza, :ttaativo)
    end
end
