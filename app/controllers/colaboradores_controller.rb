class ColaboradoresController < ApplicationController
  before_action :set_colaboradore, only: [:show, :edit, :update, :destroy]


  # GET /colaboradores
  # GET /colaboradores.json
  def index
    @colaboradores = Colaboradore.all
  end

  # GET /colaboradores/1
  # GET /colaboradores/1.json
  def show
   	if !logged_in?
		mensagem()
		redirect_to home_url
	end
   end

  # GET /colaboradores/new
  def new
    if logged_in?
		@colaboradore = Colaboradore.new
	else
		mensagem()
		redirect_to home_url
	end
  end

  # GET /colaboradores/1/edit
  def edit
	if !logged_in?
		mensagem()
		redirect_to home_url
	end
  end

  # POST /colaboradores
  # POST /colaboradores.json
  def create
	if !logged_in?
		mensagem()
		redirect_to home_url
	end
    @colaboradore = Colaboradore.new(colaboradore_params)

    respond_to do |format|
      if @colaboradore.save
        format.html { redirect_to @colaboradore, notice: 'O colaborador foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @colaboradore }
      else
        format.html { render :new }
        format.json { render json: @colaboradore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colaboradores/1
  # PATCH/PUT /colaboradores/1.json
  def update
	if !logged_in?
			mensagem()
		redirect_to home_url
	end
    respond_to do |format|
      if @colaboradore.update(colaboradore_params)
        format.html { redirect_to @colaboradore, notice: 'Colaboradore was successfully updated.' }
        format.json { render :show, status: :ok, location: @colaboradore }
      else
        format.html { render :edit }
        format.json { render json: @colaboradore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colaboradores/1
  # DELETE /colaboradores/1.json
  def destroy
    @colaboradore.destroy
    respond_to do |format|
      format.html { redirect_to colaboradores_url, notice: 'Colaborador foi retirado.' }
      format.json { head :no_content }
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colaboradore
      @colaboradore = Colaboradore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colaboradore_params
      params.require(:colaboradore).permit(:nome)
    end
	
	
	
end
