class NumEventosController < ApplicationController
  before_action :set_num_evento, only: [:show, :edit, :update, :destroy]

  # GET /num_eventos
  # GET /num_eventos.json
  def index
    @num_eventos = NumEvento.all
  end

  # GET /num_eventos/1
  # GET /num_eventos/1.json
  def show
  end

  # GET /num_eventos/new
  def new
    @num_evento = NumEvento.new
  end

  # GET /num_eventos/1/edit
  def edit
  end

  # POST /num_eventos
  # POST /num_eventos.json
  def create
    @num_evento = NumEvento.new(num_evento_params)

    respond_to do |format|
      if @num_evento.save
        format.html { redirect_to @num_evento, notice: 'Num evento was successfully created.' }
        format.json { render :show, status: :created, location: @num_evento }
      else
        format.html { render :new }
        format.json { render json: @num_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /num_eventos/1
  # PATCH/PUT /num_eventos/1.json
  def update
    respond_to do |format|
      if @num_evento.update(num_evento_params)
        format.html { redirect_to @num_evento, notice: 'Num evento was successfully updated.' }
        format.json { render :show, status: :ok, location: @num_evento }
      else
        format.html { render :edit }
        format.json { render json: @num_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /num_eventos/1
  # DELETE /num_eventos/1.json
  def destroy
    @num_evento.destroy
    respond_to do |format|
      format.html { redirect_to num_eventos_url, notice: 'Num evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_num_evento
      @num_evento = NumEvento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def num_evento_params
      params.require(:num_evento).permit(:tema, :descripcion, :quien_presenta, :observaciones, :responsable, :fecha_inicio, :fecha_compromiso, :pospuesto)
    end
end
