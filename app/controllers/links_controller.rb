class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all
  end

  # GET /links/1
  # GET /links/1.json
  def show
 	if !logged_in?
		mensagem()
		redirect_to home_url
	end
   end

  # GET /links/new
  def new
  	if !logged_in?
		mensagem()
		redirect_to home_url
	else
    @link = Link.new
	end
  end

  # GET /links/1/edit
  def edit
 	if !logged_in?
		mensagem()
		redirect_to home_url
	end
   end

  # POST /links
  # POST /links.json
  def create
  	if !logged_in?
		mensagem()
		redirect_to home_url
	else
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
	end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
 	if !logged_in?
		mensagem()
		redirect_to home_url
	else
     respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
	end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def mensagem()
  		flash[:notice]= "Você precisa logar antes de realizar esta operação"
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:link, :texto)
    end
end
