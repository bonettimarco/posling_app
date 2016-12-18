class EventosController < ApplicationController
  before_action :set_evento, only: [:show, :edit, :update, :destroy]

  # GET /eventos
  # GET /eventos.json
  def index
    @eventos = Evento.all
  end

  # GET /eventos/1
  # GET /eventos/1.json
  def show
  	if !logged_in?
			mensagem()
			redirect_to home_url
		end
  end

  # GET /eventos/new
  def new
	if logged_in?
		@evento = Evento.new
	else
		mensagem()
		redirect_to home_url
	end    
  end

  # GET /eventos/1/edit
  def edit
  	if !logged_in?
		mensagem()
		redirect_to home_url
	end
  end

  # POST /eventos
  # POST /eventos.json
  def create
	if logged_in?
		@evento = Evento.new(evento_params)

		respond_to do |format|
		if @evento.save
			format.html { redirect_to @evento, notice: 'Evento was successfully created.' }
			format.json { render :show, status: :created, location: @evento }
		else
			format.html { render :new }
			format.json { render json: @evento.errors, status: :unprocessable_entity }
		end
		end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # PATCH/PUT /eventos/1
  # PATCH/PUT /eventos/1.json
  def update
	if logged_in?
		respond_to do |format|
		if @evento.update(evento_params)
			format.html { redirect_to @evento, notice: 'Evento was successfully updated.' }
			format.json { render :show, status: :ok, location: @evento }
		else
			format.html { render :edit }
			format.json { render json: @evento.errors, status: :unprocessable_entity }
		end
		end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # DELETE /eventos/1
  # DELETE /eventos/1.json
  def destroy
    @evento.destroy
    respond_to do |format|
      format.html { redirect_to eventos_url, notice: 'Evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evento
      @evento = Evento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evento_params
      params.require(:evento).permit(:titulo, :link, :texto)
    end
end
