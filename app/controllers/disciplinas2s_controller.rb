class Disciplinas2sController < ApplicationController
  before_action :set_disciplinas2, only: [:show, :edit, :update, :destroy]

  # GET /disciplinas2s
  # GET /disciplinas2s.json
  def index
    @disciplinas2s = Disciplinas2.all
  end

  # GET /disciplinas2s/1
  # GET /disciplinas2s/1.json
  def show
  if !logged_in
	mensagem()
	redirect_to home_url
  end
  end

  # GET /disciplinas2s/new
  def new
	if logged_in
	    @disciplinas2 = Disciplinas2.new
	else
		mensagem()
		redirect_to home_url
	end
  end

  # GET /disciplinas2s/1/edit
  def edit
	if !logged_in
		mensagem()
		redirect_to home_url
	end
  end

  # POST /disciplinas2s
  # POST /disciplinas2s.json
  def create
	if logged_in
		@disciplinas2 = Disciplinas2.new(disciplinas2_params)
    respond_to do |format|
      if @disciplinas2.save
        format.html { redirect_to @disciplinas2, notice: 'Disciplinas2 was successfully created.' }
        format.json { render :show, status: :created, location: @disciplinas2 }
      else
        format.html { render :new }
        format.json { render json: @disciplinas2.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # PATCH/PUT /disciplinas2s/1
  # PATCH/PUT /disciplinas2s/1.json
  def update
	if logged_in
		respond_to do |format|
      if @disciplinas2.update(disciplinas2_params)
        format.html { redirect_to @disciplinas2, notice: 'Disciplinas2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @disciplinas2 }
      else
        format.html { render :edit }
        format.json { render json: @disciplinas2.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # DELETE /disciplinas2s/1
  # DELETE /disciplinas2s/1.json
  def destroy
    @disciplinas2.destroy
    respond_to do |format|
      format.html { redirect_to disciplinas2s_url, notice: 'Disciplinas2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplinas2
      @disciplinas2 = Disciplinas2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disciplinas2_params
      params.require(:disciplinas2).permit(:texto)
    end
end
