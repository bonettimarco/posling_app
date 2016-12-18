class DocentesController < ApplicationController
  before_action :set_docente, only: [:show, :edit, :update, :destroy]

  # GET /docentes
  # GET /docentes.json
  def index
    @docentes = Docente.all
  end

  # GET /docentes/1
  # GET /docentes/1.json
  def show
   	if !logged_in?
		redirect_to home_url
	end
 
  end

  # GET /docentes/new
  def new
  	if logged_in?
		@docente = Docente.new
	else
		redirect_to home_url
	end
  end

  # GET /docentes/1/edit
  def edit
   	if !logged_in?
		redirect_to home_url
	end
 
  end

  # POST /docentes
  # POST /docentes.json
  def create
 	if logged_in?
		@docente = Docente.new(docente_params)

			respond_to do |format|
			if @docente.save
				format.html { redirect_to @docente, notice: 'Docente was successfully created.' }
				format.json { render :show, status: :created, location: @docente }
			else
				format.html { render :new }
				format.json { render json: @docente.errors, status: :unprocessable_entity }
			end
			end
		else
			redirect_to home_url
		end
  end

  # PATCH/PUT /docentes/1
  # PATCH/PUT /docentes/1.json
  def update
 	if logged_in?
     respond_to do |format|
      if @docente.update(docente_params)
        format.html { redirect_to @docente, notice: 'Docente was successfully updated.' }
        format.json { render :show, status: :ok, location: @docente }
      else
        format.html { render :edit }
        format.json { render json: @docente.errors, status: :unprocessable_entity }
      end
    end
	else
		redirect_to home_url
	end
  end

  # DELETE /docentes/1
  # DELETE /docentes/1.json
  def destroy
    @docente.destroy
    respond_to do |format|
      format.html { redirect_to docentes_url, notice: 'Docente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_docente
      @docente = Docente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def docente_params
      params.require(:docente).permit(:nome, :linha, :link)
    end
end
