class TipoapreensoesController < ApplicationController
  before_action :set_tipoapreensao, only: [:show, :edit, :update, :destroy]

  # GET /tipoapreensoes
  # GET /tipoapreensoes.json
  def index
    @tipoapreensoes = Tipoapreensao.all
  end

  # GET /tipoapreensoes/1
  # GET /tipoapreensoes/1.json
  def show
  end

  # GET /tipoapreensoes/new
  def new
    @tipoapreensao = Tipoapreensao.new
  end

  # GET /tipoapreensoes/1/edit
  def edit
  end

  # POST /tipoapreensoes
  # POST /tipoapreensoes.json
  def create
    @tipoapreensao = Tipoapreensao.new(tipoapreensao_params)

    respond_to do |format|
      if @tipoapreensao.save
        format.html { redirect_to @tipoapreensao, notice: 'Tipoapreensao was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipoapreensao }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipoapreensao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoapreensoes/1
  # PATCH/PUT /tipoapreensoes/1.json
  def update
    respond_to do |format|
      if @tipoapreensao.update(tipoapreensao_params)
        format.html { redirect_to @tipoapreensao, notice: 'Tipoapreensao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipoapreensao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoapreensoes/1
  # DELETE /tipoapreensoes/1.json
  def destroy
    @tipoapreensao.destroy
    respond_to do |format|
      format.html { redirect_to tipoapreensoes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoapreensao
      @tipoapreensao = Tipoapreensao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoapreensao_params
      params.require(:tipoapreensao).permit(:ttpcodigo, :ttpatualiza)
    end
end
