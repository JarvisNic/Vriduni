require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  test "should get subir_doc" do
    get :subir_doc
    assert_response :success
  end

  test "should get listar_doc" do
    get :listar_doc
    assert_response :success
  end

  test "should get borrar_doc" do
    get :borrar_doc
    assert_response :success
  end

end
