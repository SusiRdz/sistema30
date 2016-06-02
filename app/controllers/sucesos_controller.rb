class SucesosController < ApplicationController
  before_action :set_suceso, only: [:show, :edit, :update, :destroy]

  # GET /sucesos
  # GET /sucesos.json
  def index
    @sucesos = Suceso.all
  end

  # GET /sucesos/1
  # GET /sucesos/1.json
  def show
  end

  # GET /sucesos/new
  def new
    @suceso = Suceso.new
  end

  # GET /sucesos/1/edit
  def edit
  end

  # POST /sucesos
  # POST /sucesos.json
  def create
    @suceso = Suceso.new(suceso_params)

    respond_to do |format|
      if @suceso.save
        format.html { redirect_to @suceso, notice: 'Suceso was successfully created.' }
        format.json { render :show, status: :created, location: @suceso }
      else
        format.html { render :new }
        format.json { render json: @suceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sucesos/1
  # PATCH/PUT /sucesos/1.json
  def update
    respond_to do |format|
      if @suceso.update(suceso_params)
        format.html { redirect_to @suceso, notice: 'Suceso was successfully updated.' }
        format.json { render :show, status: :ok, location: @suceso }
      else
        format.html { render :edit }
        format.json { render json: @suceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sucesos/1
  # DELETE /sucesos/1.json
  def destroy
    @suceso.destroy
    respond_to do |format|
      format.html { redirect_to sucesos_url, notice: 'Suceso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suceso
      @suceso = Suceso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suceso_params
      params.require(:suceso).permit(:num_evento_id, :mensaje)
    end
end
