require "test_helper"

class InstrutorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instrutor = instrutors(:one)
  end

  test "should get index" do
    get instrutors_url
    assert_response :success
  end

  test "should get new" do
    get new_instrutor_url
    assert_response :success
  end

  test "should create instrutor" do
    assert_difference("Instrutor.count") do
      post instrutors_url, params: { instrutor: { academium_id: @instrutor.academium_id, contato: @instrutor.contato, cpf: @instrutor.cpf, data_nascimento: @instrutor.data_nascimento, email: @instrutor.email, horario_trabalho: @instrutor.horario_trabalho, nome: @instrutor.nome, password: @instrutor.password } }
    end

    assert_redirected_to instrutor_url(Instrutor.last)
  end

  test "should show instrutor" do
    get instrutor_url(@instrutor)
    assert_response :success
  end

  test "should get edit" do
    get edit_instrutor_url(@instrutor)
    assert_response :success
  end

  test "should update instrutor" do
    patch instrutor_url(@instrutor), params: { instrutor: { academium_id: @instrutor.academium_id, contato: @instrutor.contato, cpf: @instrutor.cpf, data_nascimento: @instrutor.data_nascimento, email: @instrutor.email, horario_trabalho: @instrutor.horario_trabalho, nome: @instrutor.nome, password: @instrutor.password } }
    assert_redirected_to instrutor_url(@instrutor)
  end

  test "should destroy instrutor" do
    assert_difference("Instrutor.count", -1) do
      delete instrutor_url(@instrutor)
    end

    assert_redirected_to instrutors_url
  end
end
