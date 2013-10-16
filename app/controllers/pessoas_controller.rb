class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /pessoas
  # GET /pessoas.json
  def index
    @pessoas = Pessoa.all
  end

  # GET /pessoas/1
  # GET /pessoas/1.json
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  # POST /pessoas.json
  def create
    @pessoa = Pessoa.new(pessoa_params)

    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to @pessoa, notice: 'Pessoa was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pessoa }
      else
        format.html { render action: 'new' }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoas/1
  # PATCH/PUT /pessoas/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to @pessoa, notice: 'Pessoa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1
  # DELETE /pessoas/1.json
  def destroy
    @pessoa.destroy
    respond_to do |format|
      format.html { redirect_to pessoas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_params
      params.require(:pessoa).permit(:pesid, :pesufexpedidora, :pesnaturalidade, :pesnacionalidade, :pessexo, :pestgicodigo, :pestopcodigo, :pesmunicipioori, :pespaisori, :pesmunicipiodest, :pesveiid, :pescinto, :pescapacete, :peshabilitado, :pessocorrido, :pesdormindo, :pesalcool, :peskmpercorre, :peshorapercorre, :pescategcnh, :pesdatahabil, :pesdatavalidade, :pesapelido, :pesidade, :pesaltura, :pespeso, :pescicatriz, :pestatuagem, :pessinal, :peslesao, :pestcccodigo, :pestctcodigo, :pestctcodigo, :pespertences, :pesdadoscomplement, :pesoenid, :vestigios_drogas, :descricao_cicatriz, :descricao_sinal, :descricao_deficiencia)
    end
end
