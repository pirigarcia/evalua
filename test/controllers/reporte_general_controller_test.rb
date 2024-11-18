require "test_helper"

class ReporteGeneralControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reporte_general = reporte_general(:one)
  end

  # testg "should get index" do
  #   get reporte_general_url
  #   assert_response :success
  # end

  # testg "should get new" do
  #   get new_reporte_general_url
  #   assert_response :success
  # end

  # testg "should show reporte_general" do
  #   get reporte_general_url(@reporte_general)
  #   assert_response :success
  #   assert_select "h1", @reporte_general.venta  # Check for the 'venta' field in the h1
  #   assert_select "p", @reporte_general.atencion  # Check for the 'atencion' field in a <p> tag
  # end
  

  test "should create reporte_general" do
    assert_difference("ReporteGeneral.count") do
      post reporte_general_url, params: { reporte_general: { atención: @reporte_general.atencion, instalaciones: @reporte_general.instalaciones, producto: @reporte_general.producto, venta: @reporte_general.venta } }
    end

    assert_redirected_to reporte_general_url(ReporteGeneral.last)
  end

  test "should show el reporte_general" do
    get reporte_general_url(@reporte_general)
    assert_response :success
  end

  test "should get edit" do
    get edit_reporte_general_url(@reporte_general)
    assert_response :success
  end

  test "should update reporte_general" do
    patch reporte_general_url(@reporte_general), params: { reporte_general: { atención: @reporte_general.atención, instalaciones: @reporte_general.instalaciones, producto: @reporte_general.producto, venta: @reporte_general.venta } }
    assert_redirected_to reporte_general_url(@reporte_general)
  end

  test "should destroy reporte_general" do
    assert_difference("ReporteGeneral.count", -1) do
      delete reporte_general_url(@reporte_general)
    end

    assert_redirected_to reporte_general_url
  end
end
