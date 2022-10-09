Feature: aluno
  As a proprietario
  I want to adicionar, remover, visualizar e editar alunos das minhas academias
  So that alunos consigam acessar os sistema

  Scenario: Adicionar aluno corretamente
    Given o proprietario com email 'email@email.com' e senha '12345678' esta logado
    And a academia com nome 'Academia nome' e cnpj '12345678901234' existe
    And Eu estou na pagina de alunos
    When Eu clico em adicionar aluno
    And Eu preencho os dados do aluno com nome 'Aluno nome' e cpf '12345678901' e senha '12345678' e contato '87984563215' e data de nascimento '01/01/2000' e endereco 'Rua teste' cep '12345678'
    And Eu clico em salvar
    And Eu vejo uma mensagem de sucesso
    Then Eu vejo o aluno 'Aluno nome' na lista de alunos