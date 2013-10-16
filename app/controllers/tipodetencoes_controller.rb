class TipodetencoesController < ApplicationController
  before_action :set_tipodetencao, only: [:show, :edit, :update, :destroy]

  # GET /tipodetencoes
  # GET /tipodetencoes.json
  def index
    @tipodetencoes = Tipodetencao.all
  end

  # GET /tipodetencoes/1
  # GET /tipodetencoes/1.json
  def show
  end

  # GET /tipodetencoes/new
  def new
    @tipodetencao = Tipodetencao.new
  end

  # GET /tipodetencoes/1/edit
  def edit
  end

  # POST /tipodetencoes
  # POST /tipodetencoes.json
  def create
    @tipodetencao = Tipodetencao.new(tipodetencao_params)

    respond_to do |format|
      if @tipodetencao.save
        format.html { redirect_to @tipodetencao, notice: 'Tipodetencao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipodetencao }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipodetencao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipodetencoes/1
  # PATCH/PUT /tipodetencoes/1.json
  def update
    respond_to do |format|
      if @tipodetencao.update(tipodetencao_params)
        format.html { redirect_to @tipodetencao, notice: 'Tipodetencao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipodetencao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipodetencoes/1
  # DELETE /tipodetencoes/1.json
  def destroy
    @tipodetencao.destroy
    respond_to do |format|
      format.html { redirect_to tipodetencoes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipodetencao
      @tipodetencao = Tipodetencao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipodetencao_params
      params.require(:tipodetencao).permit(:ttdcodigo, :ttddescricao, :ttdatualiza, :ttdrelacidente)
    end
end
