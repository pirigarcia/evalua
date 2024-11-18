require "application_system_test_case"

class ReporteGeneralsTest < ApplicationSystemTestCase
  setup do
    @reporte_general = reporte_generals(:one)
  end

  test "visiting the index" do
    visit reporte_generals_url
    assert_selector "h1", text: "Reporte generals"
  end

  test "should create reporte general" do
    visit reporte_generals_url
    click_on "New reporte general"

    fill_in "Atención", with: @reporte_general.atención
    fill_in "Instalaciones", with: @reporte_general.instalaciones
    fill_in "Producto", with: @reporte_general.producto
    fill_in "Venta", with: @reporte_general.venta
    click_on "Create Reporte general"

    assert_text "Reporte general was successfully created"
    click_on "Back"
  end

  test "should update Reporte general" do
    visit reporte_general_url(@reporte_general)
    click_on "Edit this reporte general", match: :first

    fill_in "Atención", with: @reporte_general.atención
    fill_in "Instalaciones", with: @reporte_general.instalaciones
    fill_in "Producto", with: @reporte_general.producto
    fill_in "Venta", with: @reporte_general.venta
    click_on "Update Reporte general"

    assert_text "Reporte general was successfully updated"
    click_on "Back"
  end

  test "should destroy Reporte general" do
    visit reporte_general_url(@reporte_general)
    click_on "Destroy this reporte general", match: :first

    assert_text "Reporte general was successfully destroyed"
  end
end
