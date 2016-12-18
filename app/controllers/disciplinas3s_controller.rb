class Disciplinas3sController < ApplicationController
  before_action :set_disciplinas3, only: [:show, :edit, :update, :destroy]

  # GET /disciplinas3s
  # GET /disciplinas3s.json
  def index
    @disciplinas3s = Disciplinas3.all
  end

  # GET /disciplinas3s/1
  # GET /disciplinas3s/1.json
  def show
	if !logged_in
		mensagem()
		redirect_to home_url
	end
  end

  # GET /disciplinas3s/new
  def new
	if logged_in
		@disciplinas3 = Disciplinas3.new
	else
		mensagem()
		redirect_to home_url
	end
  end

  # GET /disciplinas3s/1/edit
  def edit
	if !logged_in
		mensagem()
		redirect_to home_url
	end
  end

  # POST /disciplinas3s
  # POST /disciplinas3s.json
  def create
	if logged_in
		@disciplinas3 = Disciplinas3.new(disciplinas3_params)

    respond_to do |format|
      if @disciplinas3.save
        format.html { redirect_to @disciplinas3, notice: 'Disciplinas3 was successfully created.' }
        format.json { render :show, status: :created, location: @disciplinas3 }
      else
        format.html { render :new }
        format.json { render json: @disciplinas3.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # PATCH/PUT /disciplinas3s/1
  # PATCH/PUT /disciplinas3s/1.json
  def update
	if logged_in
		respond_to do |format|
      if @disciplinas3.update(disciplinas3_params)
        format.html { redirect_to @disciplinas3, notice: 'Disciplinas3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @disciplinas3 }
      else
        format.html { render :edit }
        format.json { render json: @disciplinas3.errors, status: :unprocessable_entity }
      end
    end
	else
		mensagem()
		redirect_to home_url
	end
  end

  # DELETE /disciplinas3s/1
  # DELETE /disciplinas3s/1.json
  def destroy
    @disciplinas3.destroy
    respond_to do |format|
      format.html { redirect_to disciplinas3s_url, notice: 'Disciplinas3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciplinas3
      @disciplinas3 = Disciplinas3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disciplinas3_params
      params.require(:disciplinas3).permit(:texto)
    end
end
