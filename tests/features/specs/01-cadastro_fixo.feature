#language:pt
@regressivo
Funcionalidade: Criar conta
Como um usuário do site HerokuApp
Quero criar uma conta Demo
Para receber notícias sobre Qualidade de software

@cadastro_valido_fixo_pf
Cenário: Cadastrar usuário pessoa física com dados válidos
Dado que acesso o cadastro de usuário
E preencho os campos do formulário com dados válidos
Quando confirmo o cadastro
Então o sistema deve exibir a mensagem de boas vindas