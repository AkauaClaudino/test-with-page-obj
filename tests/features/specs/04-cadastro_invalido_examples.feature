#language:pt
@regressivo
Funcionalidade: Criar conta
Como um usuário do site HerokuApp
Quero criar três contas Demo
Para receber notícias sobre Qualidade de software

@cadastro_invalido_exemplos
Esquema do Cenário: Não permitir cadastrar usuário com dados inválidos
Dado que acesso o cadastro de usuário
E eu preencha os campos com <nome>,<sobrenome>,<email>,<endereço>,<universidade>,<profissão>,<sexo>,<idade>
Quando confirmo o cadastro
Então o sistema deve exibir a mensagem de erro <msg_falha_campo>
E permanecer na página de cadastro
Exemplos:
| nome      | sobrenome      |  email              |  endereço      | universidade   | profissão     | sexo  | idade  |  msg_falha_campo
| "     "   | "Jarbas"       | "jonas@teste.com"   |  "13e"         |  "USP"         | "Advogado"    | "M"   | "29"   |  "1 errors proibiu que este usuário fosse salvo:"
| "      "  | "          "   | "                "  |  "         "   |  "    "        | "          "  | " "   | "  "   |  "3 errors proibiu que este usuário fosse salvo:"
| "      "  | "          "   | "                "  |  "         "   |  "    "        | "          "  | " "   | "  "   |  "3 errors proibiu que este usuário fosse salvo:"