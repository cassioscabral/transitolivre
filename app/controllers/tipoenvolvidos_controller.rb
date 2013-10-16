class TipoenvolvidosController < ApplicationController
  before_action :set_tipoenvolvido, only: [:show, :edit, :update, :destroy]

  # GET /tipoenvolvidos
  # GET /tipoenvolvidos.json
  def index
    @tipoenvolvidos = Tipoenvolvido.all
  end

  # GET /tipoenvolvidos/1
  # GET /tipoenvolvidos/1.json
  def show
  end

  # GET /tipoenvolvidos/new
  def new
    @tipoenvolvido = Tipoenvolvido.new
  end

  # GET /tipoenvolvidos/1/edit
  def edit
  end

  # POST /tipoenvolvidos
  # POST /tipoenvolvidos.json
  def create
    @tipoenvolvido = Tipoenvolvido.new(tipoenvolvido_params)

    respond_to do |format|
      if @tipoenvolvido.save
        format.html { redirect_to @tipoenvolvido, notice: 'Tipoenvolvido was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipoenvolvido }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipoenvolvido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipoenvolvidos/1
  # PATCH/PUT /tipoenvolvidos/1.json
  def update
    respond_to do |format|
      if @tipoenvolvido.update(tipoenvolvido_params)
        format.html { redirect_to @tipoenvolvido, notice: 'Tipoenvolvido was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipoenvolvido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipoenvolvidos/1
  # DELETE /tipoenvolvidos/1.json
  def destroy
    @tipoenvolvido.destroy
    respond_to do |format|
      format.html { redirect_to tipoenvolvidos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoenvolvido
      @tipoenvolvido = Tipoenvolvido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoenvolvido_params
      params.require(:tipoenvolvido).permit(:ttecodigo, :tteatualiza, :tteativo)
    end
end
