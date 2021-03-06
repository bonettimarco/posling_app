class GruposController < ApplicationController
  before_action :set_grupo, only: [:show, :edit, :update, :destroy]

  # GET /grupos
  # GET /grupos.json
  def index
    @grupos = Grupo.all
  end

  # GET /grupos/1
  # GET /grupos/1.json
  def show
   	if !logged_in?
		mensagem()
		redirect_to home_url
	end
 end

  # GET /grupos/new
  def new
  	if logged_in?
		@grupo = Grupo.new
	else
		mensagem()
		redirect_to home_url
	end
  end

  # GET /grupos/1/edit
  def edit
   	if !logged_in?
		mensagem()
		redirect_to home_url
	end
   end

  # POST /grupos
  # POST /grupos.json
  def create
  	if logged_in?
		@grupo = Grupo.new(grupo_params)

    respond_to do |format|
      if @grupo.save
        format.html { redirect_to @grupo, notice: 'Grupo was successfully created.' }
        format.json { render :show, status: :created, location: @grupo }
      else
        format.html { render :new }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # PATCH/PUT /grupos/1
  # PATCH/PUT /grupos/1.json
  def update
 	if logged_in?
		respond_to do |format|
      if @grupo.update(grupo_params)
        format.html { redirect_to @grupo, notice: 'Grupo was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo }
      else
        format.html { render :edit }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # DELETE /grupos/1
  # DELETE /grupos/1.json
  def destroy
    @grupo.destroy
    respond_to do |format|
      format.html { redirect_to grupos_url, notice: 'Grupo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo
      @grupo = Grupo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_params
      params.require(:grupo).permit(:texto, :idioma)
    end
end
