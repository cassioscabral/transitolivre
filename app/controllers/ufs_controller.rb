class UfsController < ApplicationController
  before_action :set_uf, only: [:show, :edit, :update, :destroy]

  # GET /ufs
  # GET /ufs.json
  def index
    @ufs = Uf.all
  end

  # GET /ufs/1
  # GET /ufs/1.json
  def show
  end

  # GET /ufs/new
  def new
    @uf = Uf.new
  end

  # GET /ufs/1/edit
  def edit
  end

  # POST /ufs
  # POST /ufs.json
  def create
    @uf = Uf.new(uf_params)

    respond_to do |format|
      if @uf.save
        format.html { redirect_to @uf, notice: 'Uf was successfully created.' }
        format.json { render action: 'show', status: :created, location: @uf }
      else
        format.html { render action: 'new' }
        format.json { render json: @uf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ufs/1
  # PATCH/PUT /ufs/1.json
  def update
    respond_to do |format|
      if @uf.update(uf_params)
        format.html { redirect_to @uf, notice: 'Uf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @uf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ufs/1
  # DELETE /ufs/1.json
  def destroy
    @uf.destroy
    respond_to do |format|
      format.html { redirect_to ufs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uf
      @uf = Uf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uf_params
      params.require(:uf).permit(:tufuf, :tufdenominacao)
    end
end
