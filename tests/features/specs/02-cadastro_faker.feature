#language:pt
@regressivo
Funcionalidade: Criar conta
Como um usuário do site HerokuApp
Quero criar uma conta Demo
Para receber notícias sobre Qualidade de software

@cadastro_valido_faker
Cenário: Cadastrar usuário com dados válidos
Dado que acesso o cadastro de usuário
E preencho os campos do formulário com dados válidos de um novo usuário pessoa física
Quando confirmo o cadastro
Então o sistema deve exibir a mensagem de boas vindas