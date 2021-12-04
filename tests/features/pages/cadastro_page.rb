class CadastroPage < SitePrism::Page 
  set_url '/users/new'


  element :cmp_nome, '#user_name'
  element :cmp_sobrenome, '#user_lastname'
  element :cmp_email, '#user_email'
  element :cmp_adress, '#user_address'
  element :cmp_univer, '#user_university'
  element :cmp_profile, '#user_profile'
  element :cmp_genero, '#user_gender'
  element :cmp_idade, '#user_age'
  element :btn_enviar, 'input[value="Criar"]'
  element :msg_sucesso, '#notice'

 
  def preencher_form_com_dados_pf 
  cmp_nome.set 'Testador'
  cmp_sobrenome.set 'tester'
  cmp_email.set 'testando@gmail.com'
  cmp_adress.set 'rui branco'
  cmp_univer.set 'Lakers'
  cmp_profile.set'Lebron'
  cmp_genero.set 'Male'
  cmp_idade.set '70'

end

def preencher_dados_pf_aleartório
    cmp_nome.set Faker::Name.first_name
    cmp_sobrenome.set Faker::Name.last_name
    cmp_email.set Faker::Internet.email(domain:'floffy')
    cmp_adress.set Faker::Address.street_name
    cmp_univer.set Faker::Educator.university
    cmp_profile.set Faker::Company.profession
    cmp_genero.set 'Male'
    cmp_idade.set Faker::Number.number(digits: 2)
end

def preencher_form_com_dados_informados(nome, sobrenome, email, endereço, universidade, profissão, sexo, idade)
  cmp_nome.set nome
  cmp_sobrenome.set sobrenome
  cmp_email.set email
  cmp_adress.set endereço
  cmp_univer.set universidade
  cmp_profile.set profissão
  cmp_genero.set sexo
  cmp_idade.set idade

end

def clicar_finalizar
    btn_enviar.click

  end

end