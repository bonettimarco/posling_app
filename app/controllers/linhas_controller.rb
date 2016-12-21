class LinhasController < ApplicationController
  before_action :set_linha, only: [:show, :edit, :update, :destroy]

  # GET /linhas
  # GET /linhas.json
  def index
    @linhas = Linha.all
  end

  # GET /linhas/1
  # GET /linhas/1.json
  def show
   	if !logged_in?
		mensagem()
		redirect_to home_url
	end
   end

  # GET /linhas/new
  def new
  	if logged_in?
		@linha = Linha.new
	else
		mensagem()
		redirect_to home_url
	end
  end

  # GET /linhas/1/edit
  def edit
 	if !logged_in?
		mensagem()
		redirect_to home_url
	end
   end

  # POST /linhas
  # POST /linhas.json
  def create
  	if logged_in?
		@linha = Linha.new(linha_params)

    respond_to do |format|
      if @linha.save
        format.html { redirect_to @linha, notice: 'Linha was successfully created.' }
        format.json { render :show, status: :created, location: @linha }
      else
        format.html { render :new }
        format.json { render json: @linha.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # PATCH/PUT /linhas/1
  # PATCH/PUT /linhas/1.json
  def update
 	if logged_in?
		respond_to do |format|
      if @linha.update(linha_params)
        format.html { redirect_to @linha, notice: 'Linha was successfully updated.' }
        format.json { render :show, status: :ok, location: @linha }
      else
        format.html { render :edit }
        format.json { render json: @linha.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end
  
  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end

  # DELETE /linhas/1
  # DELETE /linhas/1.json
  def destroy
    @linha.destroy
    respond_to do |format|
      format.html { redirect_to linhas_url, notice: 'Linha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linha
      @linha = Linha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linha_params
      params.require(:linha).permit(:texto, :idioma)
    end
end
