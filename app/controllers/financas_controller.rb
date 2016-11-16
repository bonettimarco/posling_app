class FinancasController < ApplicationController
  before_action :set_financa, only: [:show, :edit, :update, :destroy]

  # GET /financas
  # GET /financas.json
  def index
    @financas = Financa.all
  end

  # GET /financas/1
  # GET /financas/1.json
  def show
  end

  # GET /financas/new
  def new
    @financa = Financa.new
  end

  # GET /financas/1/edit
  def edit
  end

  # POST /financas
  # POST /financas.json
  def create
    @financa = Financa.new(financa_params)

    respond_to do |format|
      if @financa.save
        format.html { redirect_to @financa, notice: 'Financa was successfully created.' }
        format.json { render :show, status: :created, location: @financa }
      else
        format.html { render :new }
        format.json { render json: @financa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financas/1
  # PATCH/PUT /financas/1.json
  def update
    respond_to do |format|
      if @financa.update(financa_params)
        format.html { redirect_to @financa, notice: 'Financa was successfully updated.' }
        format.json { render :show, status: :ok, location: @financa }
      else
        format.html { render :edit }
        format.json { render json: @financa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financas/1
  # DELETE /financas/1.json
  def destroy
    @financa.destroy
    respond_to do |format|
      format.html { redirect_to financas_url, notice: 'Financa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financa
      @financa = Financa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financa_params
      params.require(:financa).permit(:cabecalho, :texto)
    end
end
