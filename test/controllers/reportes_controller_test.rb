require 'test_helper'


class ReportesControllerTest < ActionDispatch::IntegrationTest
  # Use the fixture with the correct name
  setup do
    @reporte = Reporte.create(
      venta: 'Venta 1',
      atencion: 'Alta',
      producto: 'Producto A',
      instalaciones: 'Instalación 1',
      sucursal: 'Olmeca',
      logrado: 'Sí'
    )
  end

  test "should render reporte details" do
    get reporte_url(@reporte)
    assert_response :success
    assert_select "h1", @reporte.sucursal  # Expecting 'Olmeca'
  end
end