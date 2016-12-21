class ProcessoSeletivosController < ApplicationController
  before_action :set_processo_seletivo, only: [:show, :edit, :update, :destroy]

  # GET /processo_seletivos
  # GET /processo_seletivos.json
  def index
    @processo_seletivos = ProcessoSeletivo.all
  end

  # GET /processo_seletivos/1
  # GET /processo_seletivos/1.json
  def show
  	if !logged_in?
		mensagem()
		redirect_to home_url
	end
  end

  # GET /processo_seletivos/new
  def new
	if logged_in?
		@processo_seletivo = ProcessoSeletivo.new
	else
		mensagem()
		redirect_to home_url
	end
  end

  # GET /processo_seletivos/1/edit
  def edit
  	if !logged_in?
		mensagem()
		redirect_to home_url
	end
 end

  # POST /processo_seletivos
  # POST /processo_seletivos.json
  def create
 	if logged_in?
		@processo_seletivo = ProcessoSeletivo.new(processo_seletivo_params)

		respond_to do |format|
		if @processo_seletivo.save
			format.html { redirect_to @processo_seletivo, notice: 'Processo seletivo was successfully created.' }
			format.json { render :show, status: :created, location: @processo_seletivo }
		else
			format.html { render :new }
			format.json { render json: @processo_seletivo.errors, status: :unprocessable_entity }
		end
		end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # PATCH/PUT /processo_seletivos/1
  # PATCH/PUT /processo_seletivos/1.json
  def update
 	if logged_in?
		respond_to do |format|
			if @processo_seletivo.update(processo_seletivo_params)
				format.html { redirect_to @processo_seletivo, notice: 'Processo seletivo was successfully updated.' }
				format.json { render :show, status: :ok, location: @processo_seletivo }
			else
				format.html { render :edit }
				format.json { render json: @processo_seletivo.errors, status: :unprocessable_entity }
			end
			end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # DELETE /processo_seletivos/1
  # DELETE /processo_seletivos/1.json
  def destroy
    @processo_seletivo.destroy
    respond_to do |format|
      format.html { redirect_to processo_seletivos_url, notice: 'Processo seletivo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processo_seletivo
      @processo_seletivo = ProcessoSeletivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def processo_seletivo_params
      params.require(:processo_seletivo).permit(:cabecalho, :mestrado, :texto1, :doutorado, :texto2, :idioma)
    end
end
