# Cantina++

Cantina++ é uma aplicação voltada para estudantes avaliarem a merenda escolar, 
oferecendo um sistema de feedback detalhado e relatórios gerenciais para administradores.

## Funcionalidades
- Para Estudantes:
  - Login e Cadastro:

Estudantes cadastrados acessam o sistema usando CPF e senha.
- Estudantes sem senha cadastrada:
Devem informar seu e-mail acadêmico para busca na base de dados.
Se o e-mail estiver na base, serão direcionados para criar uma senha. Apenas a criação da nova senha será solicitada.
Se o e-mail não estiver na base, podem solicitar o registro, fornecendo nome completo, CPF e contato (e-mail ou CPF).
## Feedback da Merenda:

Após login, o estudante seleciona a análise em aberto.
Pode visualizar uma imagem do prato.
Deve fornecer uma avaliação de 0 a 5 estrelas (obrigatório) e pode escrever observações (opcional).
## Para Administradores:

 - Cadastro de Análises:

Inserir descrição da merenda, data e período de oferta.
Definir para quais turnos a análise estará disponível através da visibilidade da tabela de horários.
Determinar data e hora de encerramento da pesquisa.

## Relatórios de Feedback:

- Visualização de resultados agregados:

   - Nota média.

  - Quantidade de cada nota (0 a 5).

  - Número de participantes!

  - Diferentes formas de visualização para facilitar análise.

 ## Tecnologias Utilizadas

  - Backend: Node.js / Java / Spring Boot (dependendo da implementação)

  - Banco de Dados: MySQL / PostgreSQL / Firebase (dependendo da implementação)

  - Frontend: HTML, CSS, JavaScript, frameworks opcionais (React, Vue ou Angular)

   - Autenticação: CPF e senha, com controle de criação de senha segura
   - Relatórios: Visualização de dados agregados para administradores
## Fluxo de Uso

- Estudante:

  - Acessa a aplicação → Login com CPF e senha ou solicita registro.

  - Seleciona análise em aberto → dá nota e envia feedback.

- Administrador:

   - Acessa painel → cadastra análise de merenda → define período e turnos.

   - Visualiza relatórios → avalia feedback agregado dos estudantes.

## Observações

O sistema garante que apenas estudantes em curso possam enviar feedback.

## Campos obrigatórios:

- Para estudantes: CPF e nota.

- Para administradores: Descrição da merenda, datas e horários.

## Campos opcionais:

- Para estudantes: Observações e imagem do prato.

- Permite solicitação de registro de novos estudantes que não estão na base de dados.

[MIT](https://choosealicense.com/licenses/mit/)
