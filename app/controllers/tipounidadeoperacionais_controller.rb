class TipounidadeoperacionaisController < ApplicationController
  before_action :set_tipounidadeoperacional, only: [:show, :edit, :update, :destroy]

  # GET /tipounidadeoperacionais
  # GET /tipounidadeoperacionais.json
  def index
    @tipounidadeoperacionais = Tipounidadeoperacional.all
  end

  # GET /tipounidadeoperacionais/1
  # GET /tipounidadeoperacionais/1.json
  def show
  end

  # GET /tipounidadeoperacionais/new
  def new
    @tipounidadeoperacional = Tipounidadeoperacional.new
  end

  # GET /tipounidadeoperacionais/1/edit
  def edit
  end

  # POST /tipounidadeoperacionais
  # POST /tipounidadeoperacionais.json
  def create
    @tipounidadeoperacional = Tipounidadeoperacional.new(tipounidadeoperacional_params)

    respond_to do |format|
      if @tipounidadeoperacional.save
        format.html { redirect_to @tipounidadeoperacional, notice: 'Tipounidadeoperacional was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipounidadeoperacional }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipounidadeoperacional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipounidadeoperacionais/1
  # PATCH/PUT /tipounidadeoperacionais/1.json
  def update
    respond_to do |format|
      if @tipounidadeoperacional.update(tipounidadeoperacional_params)
        format.html { redirect_to @tipounidadeoperacional, notice: 'Tipounidadeoperacional was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipounidadeoperacional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipounidadeoperacionais/1
  # DELETE /tipounidadeoperacionais/1.json
  def destroy
    @tipounidadeoperacional.destroy
    respond_to do |format|
      format.html { redirect_to tipounidadeoperacionais_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipounidadeoperacional
      @tipounidadeoperacional = Tipounidadeoperacional.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipounidadeoperacional_params
      params.require(:tipounidadeoperacional).permit(:ttucodigo, :ttudescricao, :ttuatualiza)
    end
end
