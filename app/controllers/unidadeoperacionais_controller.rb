class UnidadeoperacionaisController < ApplicationController
  before_action :set_unidadeoperacional, only: [:show, :edit, :update, :destroy]

  # GET /unidadeoperacionais
  # GET /unidadeoperacionais.json
  def index
    @unidadeoperacionais = Unidadeoperacional.all
  end

  # GET /unidadeoperacionais/1
  # GET /unidadeoperacionais/1.json
  def show
  end

  # GET /unidadeoperacionais/new
  def new
    @unidadeoperacional = Unidadeoperacional.new
  end

  # GET /unidadeoperacionais/1/edit
  def edit
  end

  # POST /unidadeoperacionais
  # POST /unidadeoperacionais.json
  def create
    @unidadeoperacional = Unidadeoperacional.new(unidadeoperacional_params)

    respond_to do |format|
      if @unidadeoperacional.save
        format.html { redirect_to @unidadeoperacional, notice: 'Unidadeoperacional was successfully created.' }
        format.json { render action: 'show', status: :created, location: @unidadeoperacional }
      else
        format.html { render action: 'new' }
        format.json { render json: @unidadeoperacional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unidadeoperacionais/1
  # PATCH/PUT /unidadeoperacionais/1.json
  def update
    respond_to do |format|
      if @unidadeoperacional.update(unidadeoperacional_params)
        format.html { redirect_to @unidadeoperacional, notice: 'Unidadeoperacional was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @unidadeoperacional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidadeoperacionais/1
  # DELETE /unidadeoperacionais/1.json
  def destroy
    @unidadeoperacional.destroy
    respond_to do |format|
      format.html { redirect_to unidadeoperacionais_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidadeoperacional
      @unidadeoperacional = Unidadeoperacional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidadeoperacional_params
      params.require(:unidadeoperacional).permit(:uniid, :uniunidade, :unilotacao, :unisigla, :unittucodigo, :uniunidaderesponsavel, :unidenominacao, :unimunicipio, :unilocal, :unilatitude, :unilongitude, :unihelicoptero)
    end
end
