class AreaLaboralsController < ApplicationController
  before_action :set_area_laboral, only: [:show, :edit, :update, :destroy]

  # GET /area_laborals
  # GET /area_laborals.json
  def index
    @area_laborals = AreaLaboral.all
  end

  # GET /area_laborals/1
  # GET /area_laborals/1.json
  def show
  end

  # GET /area_laborals/new
  def new
    @area_laboral = AreaLaboral.new
  end

  # GET /area_laborals/1/edit
  def edit
  end

  # POST /area_laborals
  # POST /area_laborals.json
  def create
    @area_laboral = AreaLaboral.new(area_laboral_params)

    respond_to do |format|
      if @area_laboral.save
        format.html { redirect_to @area_laboral, notice: 'Area laboral was successfully created.' }
        format.json { render :show, status: :created, location: @area_laboral }
      else
        format.html { render :new }
        format.json { render json: @area_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area_laborals/1
  # PATCH/PUT /area_laborals/1.json
  def update
    respond_to do |format|
      if @area_laboral.update(area_laboral_params)
        format.html { redirect_to @area_laboral, notice: 'Area laboral was successfully updated.' }
        format.json { render :show, status: :ok, location: @area_laboral }
      else
        format.html { render :edit }
        format.json { render json: @area_laboral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_laborals/1
  # DELETE /area_laborals/1.json
  def destroy
    @area_laboral.destroy
    respond_to do |format|
      format.html { redirect_to area_laborals_url, notice: 'Area laboral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_laboral
      @area_laboral = AreaLaboral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_laboral_params
      params.require(:area_laboral).permit(:nombre_area, :jefe_area, :descripcion)
    end
end
