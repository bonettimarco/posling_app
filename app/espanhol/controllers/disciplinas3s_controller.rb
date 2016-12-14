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
  end

  # GET /disciplinas3s/new
  def new
    @disciplinas3 = Disciplinas3.new
  end

  # GET /disciplinas3s/1/edit
  def edit
  end

  # POST /disciplinas3s
  # POST /disciplinas3s.json
  def create
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
  end

  # PATCH/PUT /disciplinas3s/1
  # PATCH/PUT /disciplinas3s/1.json
  def update
    respond_to do |format|
      if @disciplinas3.update(disciplinas3_params)
        format.html { redirect_to @disciplinas3, notice: 'Disciplinas3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @disciplinas3 }
      else
        format.html { render :edit }
        format.json { render json: @disciplinas3.errors, status: :unprocessable_entity }
      end
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
