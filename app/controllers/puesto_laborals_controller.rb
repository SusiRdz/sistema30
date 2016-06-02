class PuestoLaboralsController < ApplicationController
  before_action :set_puesto_laboral, only: [:show, :edit, :update, :destroy]

  # GET /puesto_laborals
  # GET /puesto_laborals.json
  def index
    @puesto_laborals = PuestoLaboral.all
  end

  # GET /puesto_laborals/1
  # GET /puesto_laborals/1.json
  def show
  end

  # GET /puesto_laborals/new
  def new
    @puesto_laboral = PuestoLaboral.new
  end

  # GET /puesto_laborals/1/edit
  def edit
  end

  # POST /puesto_laborals
  # POST /puesto_laborals.json
  def create
    @puesto_laboral = PuestoLaboral.new(puesto_laboral_params)

    respond_to do |format|
      if @puesto_laboral.save
        format.html { redirect_to @puesto_laboral, notice: 'Puesto laboral was successfully created.' }
        format.json { render :show, status: :created, location: @puesto_laboral }
      else
        format.html { render :new }
        format.json { render json: @puesto_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puesto_laborals/1
  # PATCH/PUT /puesto_laborals/1.json
  def update
    respond_to do |format|
      if @puesto_laboral.update(puesto_laboral_params)
        format.html { redirect_to @puesto_laboral, notice: 'Puesto laboral was successfully updated.' }
        format.json { render :show, status: :ok, location: @puesto_laboral }
      else
        format.html { render :edit }
        format.json { render json: @puesto_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puesto_laborals/1
  # DELETE /puesto_laborals/1.json
  def destroy
    @puesto_laboral.destroy
    respond_to do |format|
      format.html { redirect_to puesto_laborals_url, notice: 'Puesto laboral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puesto_laboral
      @puesto_laboral = PuestoLaboral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puesto_laboral_params
      params.require(:puesto_laboral).permit(:nombre_puesto, :descripcion)
    end
end
