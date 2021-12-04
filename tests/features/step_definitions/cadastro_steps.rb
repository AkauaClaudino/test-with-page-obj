Dado('que acesso o cadastro de usuário') do
 @cadastro_page = CadastroPage.new
 @cadastro_page.load
end

Dado('preencho os campos do formulário com dados válidos') do
 @cadastro_page.preencher_form_com_dados_pf
end

Quando('confirmo o cadastro') do
 @cadastro_page.clicar_finalizar
end

Dado('preencho os campos do formulário com dados válidos de um novo usuário pessoa física') do
@cadastro_page.preencher_dados_pf_aleartório
  end

Então('o sistema deve exibir a mensagem de boas vindas') do
 @cadastro_page.wait_until_msg_sucesso_visible     #para evitar o uso do sleep utiizamos o método wait_until
 expect(@cadastro_page).to have_content 'Usuário Criado com sucesso'
end

Dado('eu preencha os campos com {string},{string},{string},{string},{string},{string},{string},{string}') do |nome, sobrenome, email, endereço, universidade, profissão, sexo, idade|
 @cadastro_page.preencher_form_com_dados_informados(nome, sobrenome, email, endereço, universidade, profissão, sexo, idade) 
end

Então('o sistema deve exibir a mensagem de confirmação {string}') do |msgsucesso|
  expect(@cadastro_page).to have_content msgsucesso
end

Então('o sistema deve exibir a mensagem de erro {string}') do |msg_falha_campo|
  expect(@cadastro_page).to have_content msg_falha_campo
end

Então('permanecer na página de cadastro') do
  exoect(@cadastro_page).to have_current_path '/users'
end