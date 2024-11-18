class ReportesController < ApplicationController
  before_action :set_reporte, only: %i[show edit update destroy]

  def index
    @reportes = Reporte.all  # Fetch all reportes from the database
  end


  def new
    @reporte = Reporte.new
  end

  def create
    @reporte = Reporte.new(reporte_params)
    
    if @reporte.save
      redirect_to reportes_path, notice: 'Reporte Creado.'
    else
      render :new, status: :unprocessable_entity
    end
  end


  def show
    @reporte = Reporte.find(params[:id])
  end

  def edit
    # @reporte will be set by the set_reporte method
  end

  def update
    # @reporte will be set by the set_reporte method
  end

  def destroy
    # @reporte will be set by the set_reporte method
    @reporte.destroy
    redirect_to reportes_url, notice: 'Reporte was successfully destroyed.'
  end

  private

  

  # Set the reporte for the actions that need it
  def set_reporte
    @reporte = Reporte.find(params[:id])
  end

  # Only allow a list of trusted parameters through
  def reporte_params
    params.require(:reporte).permit(:sucursal, :logrado, :comentario, :venta, :atencion, :producto, :instalaciones)
  end
end
