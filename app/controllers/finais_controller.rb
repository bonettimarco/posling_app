class FinaisController < ApplicationController
  before_action :set_finai, only: [:show, :edit, :update, :destroy]

  # GET /finais
  # GET /finais.json
  def index
    @finais = Finai.all
  end

  # GET /finais/1
  # GET /finais/1.json
  def show
  end

  # GET /finais/new
  def new
    @finai = Finai.new
  end

  # GET /finais/1/edit
  def edit
  end

  # POST /finais
  # POST /finais.json
  def create
    @finai = Finai.new(finai_params)

    respond_to do |format|
      if @finai.save
        format.html { redirect_to @finai, notice: 'Finai was successfully created.' }
        format.json { render :show, status: :created, location: @finai }
      else
        format.html { render :new }
        format.json { render json: @finai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finais/1
  # PATCH/PUT /finais/1.json
  def update
    respond_to do |format|
      if @finai.update(finai_params)
        format.html { redirect_to @finai, notice: 'Finai was successfully updated.' }
        format.json { render :show, status: :ok, location: @finai }
      else
        format.html { render :edit }
        format.json { render json: @finai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finais/1
  # DELETE /finais/1.json
  def destroy
    @finai.destroy
    respond_to do |format|
      format.html { redirect_to finais_url, notice: 'Finai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finai
      @finai = Finai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finai_params
      params.require(:finai).permit(:texto)
    end
end