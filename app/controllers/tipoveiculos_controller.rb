class TipoveiculosController < ApplicationController
  before_action :set_tipoveiculo, only: [:show, :edit, :update, :destroy]

  # GET /tipoveiculos
  # GET /tipoveiculos.json
  def index
    @tipoveiculos = Tipoveiculo.all
  end

  # GET /tipoveiculos/1
  # GET /tipoveiculos/1.json
  def show
  end

  # GET /tipoveiculos/new
  def new
    @tipoveiculo = Tipoveiculo.new
  end

  # GET /tipoveiculos/1/edit
  def edit
  end

  # POST /tipoveiculos
  # POST /tipoveiculos.json
  def create
    @tipoveiculo = Tipoveiculo.new(tipoveiculo_params)

    respond_to do |format|
      if @tipoveiculo.save
        format.html { redirect_to @tipoveiculo, notice: 'Tipoveiculo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipoveiculo }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipoveiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoveiculos/1
  # PATCH/PUT /tipoveiculos/1.json
  def update
    respond_to do |format|
      if @tipoveiculo.update(tipoveiculo_params)
        format.html { redirect_to @tipoveiculo, notice: 'Tipoveiculo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipoveiculo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoveiculos/1
  # DELETE /tipoveiculos/1.json
  def destroy
    @tipoveiculo.destroy
    respond_to do |format|
      format.html { redirect_to tipoveiculos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoveiculo
      @tipoveiculo = Tipoveiculo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoveiculo_params
      params.require(:tipoveiculo).permit(:tvvcodigo, :tvvatualiza, :tvvativo)
    end
end
