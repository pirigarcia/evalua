class ReporteGeneralController < ApplicationController
  before_action :set_reporte_general, only: %i[ show edit update destroy ]

  # GET /reporte_general or /reporte_general.json
  def index
    @reporte_general = ReporteGeneral.all
  end

  # GET /reporte_general/1 or /reporte_general/1.json
  def show
  end

  # GET /reporte_general/new
  def new
    @reporte_general = ReporteGeneral.new
  end

  # GET /reporte_general/1/edit
  def edit
  end

  # POST /reporte_general or /reporte_general.json
  def create
    @reporte_general = ReporteGeneral.new(reporte_general_params)

    respond_to do |format|
      if @reporte_general.save
        format.html { redirect_to @reporte_general, notice: "Reporte general was successfully created." }
        format.json { render :show, status: :created, location: @reporte_general }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reporte_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reporte_general/1 or /reporte_general/1.json
  def update
    respond_to do |format|
      if @reporte_general.update(reporte_general_params)
        format.html { redirect_to @reporte_general, notice: "Reporte general was successfully updated." }
        format.json { render :show, status: :ok, location: @reporte_general }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reporte_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reporte_general/1 or /reporte_general/1.json
  def destroy
    @reporte_general.destroy

    respond_to do |format|
      format.html { redirect_to reporte_general_path, status: :see_other, notice: "Reporte general was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reporte_general
      @reporte_general = ReporteGeneral.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reporte_general_params
      params.require(:reporte_general).permit(:venta, :atención, :producto, :instalaciones)
    end
end
