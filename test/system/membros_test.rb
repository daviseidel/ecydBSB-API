require "application_system_test_case"

class MembrosTest < ApplicationSystemTestCase
  setup do
    @membro = membros(:one)
  end

  test "visiting the index" do
    visit membros_url
    assert_selector "h1", text: "Membros"
  end

  test "should create membro" do
    visit membros_url
    click_on "New membro"

    fill_in "Anodeinscricao", with: @membro.anoDeInscricao
    fill_in "Celular", with: @membro.celular
    fill_in "Etapa", with: @membro.etapa
    fill_in "Localecyd", with: @membro.localEcyd
    fill_in "Nome", with: @membro.nome
    fill_in "Restricao", with: @membro.restricao
    fill_in "Rg", with: @membro.rg
    fill_in "Rosto", with: @membro.rosto
    click_on "Create Membro"

    assert_text "Membro was successfully created"
    click_on "Back"
  end

  test "should update Membro" do
    visit membro_url(@membro)
    click_on "Edit this membro", match: :first

    fill_in "Anodeinscricao", with: @membro.anoDeInscricao
    fill_in "Celular", with: @membro.celular
    fill_in "Etapa", with: @membro.etapa
    fill_in "Localecyd", with: @membro.localEcyd
    fill_in "Nome", with: @membro.nome
    fill_in "Restricao", with: @membro.restricao
    fill_in "Rg", with: @membro.rg
    fill_in "Rosto", with: @membro.rosto
    click_on "Update Membro"

    assert_text "Membro was successfully updated"
    click_on "Back"
  end

  test "should destroy Membro" do
    visit membro_url(@membro)
    click_on "Destroy this membro", match: :first

    assert_text "Membro was successfully destroyed"
  end
end
