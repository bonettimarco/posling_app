class DisciplinasController < ApplicationController
  before_action :set_disciplina, only: [:show, :edit, :update, :destroy]

  # GET /disciplinas
  # GET /disciplinas.json
  def index
    @disciplinas = Disciplina.all
  end

  # GET /disciplinas/1
  # GET /disciplinas/1.json
  def show
	if !logged_in?
		mensagem()
		redirect_to home_url
	end
  end

  # GET /disciplinas/new
  def new
    if logged_in?
		  @disciplina = Disciplina.new
	  else	
		  mensagem()
		  redirect_to home_url
	  end
  end

  # GET /disciplinas/1/edit
  def edit
	if !logged_in?
		mensagem()
		redirect_to home_url
	end
  end

  # POST /disciplinas
  # POST /disciplinas.json
  def create
	if logged_in?
		@disciplina = Disciplina.new(disciplina_params)

    respond_to do |format|
      if @disciplina.save
        format.html { redirect_to @disciplina, notice: 'Disciplina was successfully created.' }
        format.json { render :show, status: :created, location: @disciplina }
      else
        format.html { render :new }
        format.json { render json: @disciplina.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # PATCH/PUT /disciplinas/1
  # PATCH/PUT /disciplinas/1.json
  def update
	if logged_in?
		respond_to do |format|
      if @disciplina.update(disciplina_params)
        format.html { redirect_to @disciplina, notice: 'Disciplina was successfully updated.' }
        format.json { render :show, status: :ok, location: @disciplina }
      else
        format.html { render :edit }
        format.json { render json: @disciplina.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # DELETE /disciplinas/1
  # DELETE /disciplinas/1.json
  def destroy
    @disciplina.destroy
    respond_to do |format|
      format.html { redirect_to disciplinas_url, notice: 'Disciplina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplina
      @disciplina = Disciplina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disciplina_params
      params.require(:disciplina).permit(:texto, :idioma)
    end
end
