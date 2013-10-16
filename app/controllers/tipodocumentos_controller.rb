class TipodocumentosController < ApplicationController
  before_action :set_tipodocumento, only: [:show, :edit, :update, :destroy]

  # GET /tipodocumentos
  # GET /tipodocumentos.json
  def index
    @tipodocumentos = Tipodocumento.all
  end

  # GET /tipodocumentos/1
  # GET /tipodocumentos/1.json
  def show
  end

  # GET /tipodocumentos/new
  def new
    @tipodocumento = Tipodocumento.new
  end

  # GET /tipodocumentos/1/edit
  def edit
  end

  # POST /tipodocumentos
  # POST /tipodocumentos.json
  def create
    @tipodocumento = Tipodocumento.new(tipodocumento_params)

    respond_to do |format|
      if @tipodocumento.save
        format.html { redirect_to @tipodocumento, notice: 'Tipodocumento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipodocumento }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipodocumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipodocumentos/1
  # PATCH/PUT /tipodocumentos/1.json
  def update
    respond_to do |format|
      if @tipodocumento.update(tipodocumento_params)
        format.html { redirect_to @tipodocumento, notice: 'Tipodocumento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipodocumento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipodocumentos/1
  # DELETE /tipodocumentos/1.json
  def destroy
    @tipodocumento.destroy
    respond_to do |format|
      format.html { redirect_to tipodocumentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipodocumento
      @tipodocumento = Tipodocumento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipodocumento_params
      params.require(:tipodocumento).permit(:ttocodigo, :ttodescricao, :ttoatualiza, :ttorelapreensao, :ttorelrecuperacao)
    end
end
