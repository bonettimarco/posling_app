class EgressosController < ApplicationController
  before_action :set_egresso, only: [:show, :edit, :update, :destroy]

  
  # GET /egressos
  # GET /egressos.json
  def index
	@aux = Dado.find(1)
	@provi = Egresso.where(nivel: @aux.nivel)
    @egressos = @provi.where(ano: @aux.ano)
  end

  # GET /egressos/1
  # GET /egressos/1.json
  def show 
    if !logged_in?
		mensagem()
		redirect_to home_url
	end
 
  end

  # GET /egressos/new
  def new
   	if !logged_in?
		mensagem()
		redirect_to home_url
	else
		@egresso = Egresso.new
	end
  end

  # GET /egressos/1/edit
  def edit
 	if !logged_in?
		mensagem()
		redirect_to home_url
	end
   end

  # POST /egressos
  # POST /egressos.json
  def create
  	if !logged_in?
		mensagem()
		redirect_to home_url
	else
    @egresso = Egresso.new(egresso_params)

    respond_to do |format|
      if @egresso.save
        format.html { redirect_to @egresso, notice: 'Egresso was successfully created.' }
        format.json { render :show, status: :created, location: @egresso }
      else
        format.html { render :new }
        format.json { render json: @egresso.errors, status: :unprocessable_entity }
      end
    end
	end
  end

  # PATCH/PUT /egressos/1
  # PATCH/PUT /egressos/1.json
  def update
 	if !logged_in?
		mensagem()
		redirect_to home_url
	else
	respond_to do |format|
      if @egresso.update(egresso_params)
        format.html { redirect_to @egresso, notice: 'Egresso was successfully updated.' }
        format.json { render :show, status: :ok, location: @egresso }
      else
        format.html { render :edit }
        format.json { render json: @egresso.errors, status: :unprocessable_entity }
      end
    end
	end
  end

  # DELETE /egressos/1
  # DELETE /egressos/1.json
  def destroy
    @egresso.destroy
    respond_to do |format|
      format.html { redirect_to egressos_url, notice: 'Egresso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egresso
      @egresso = Egresso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def egresso_params
      params.require(:egresso).permit(:ano, :nivel, :nome, :lattes, :orientador, :defesa)
    end
end
