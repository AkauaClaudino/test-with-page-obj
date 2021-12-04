#language:pt
@regressivo
Funcionalidade: Criar conta
Como um usuário do site HerokuApp
Quero criar três contas Demo
Para receber notícias sobre Qualidade de software

@cadastro_valido_exemplos
Esquema do Cenário: Cadastrar usuário com dados válidos
Dado que acesso o cadastro de usuário
E eu preencha os campos com <nome>,<sobrenome>,<email>,<endereço>,<universidade>,<profissão>,<sexo>,<idade>
Quando confirmo o cadastro
Então o sistema deve exibir a mensagem de confirmação <msgsucesso>
Exemplos:
| nome      | sobrenome      |  email              |  endereço      | universidade   | profissão     | sexo  | idade  |  msgsucesso
| "Jonas"   | "Jarbas"       | "jonas@teste.com"   |  "Rua: treze"  |  "USP"         | "Advogado"    | "M"   | "29"   |  "Usuário Criado com sucesso"
| "Flavio"  | "Cavalcante"   | "flavio@teste.com"  |  "Rua: doze"   |  "UNIP"        | "Marceneiro"  | "M"   | "36"   |  "Usuário Criado com sucesso"
|  "Ana"    | "Ranier"       | "ana@teste.com"     |  "Rua: onze"   |  "PUC"         |  "T.I"        | "F"   | "22"   |  "Usuário Criado com sucesso"