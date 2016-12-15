class PublicasController < ApplicationController
  before_action :set_publica, only: [:show, :edit, :update, :destroy]

  # GET /publicas
  # GET /publicas.json
  def index
    @publicas = Publica.all
  end

  # GET /publicas/1
  # GET /publicas/1.json
  def show
  end

  # GET /publicas/new
  def new
    @publica = Publica.new
  end

  # GET /publicas/1/edit
  def edit
  end

  # POST /publicas
  # POST /publicas.json
  def create
    @publica = Publica.new(publica_params)

    respond_to do |format|
      if @publica.save
        format.html { redirect_to @publica, notice: 'Publica was successfully created.' }
        format.json { render :show, status: :created, location: @publica }
      else
        format.html { render :new }
        format.json { render json: @publica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicas/1
  # PATCH/PUT /publicas/1.json
  def update
    respond_to do |format|
      if @publica.update(publica_params)
        format.html { redirect_to @publica, notice: 'Publica was successfully updated.' }
        format.json { render :show, status: :ok, location: @publica }
      else
        format.html { render :edit }
        format.json { render json: @publica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicas/1
  # DELETE /publicas/1.json
  def destroy
    @publica.destroy
    respond_to do |format|
      format.html { redirect_to publicas_url, notice: 'Publica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publica
      @publica = Publica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publica_params
      params.require(:publica).permit(:titulo, :texto)
    end
end
