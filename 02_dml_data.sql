-- Inserindo Dados
INSERT INTO Aluno (CPF_Aluno, Nome, Email, Nivel) VALUES ('11122233344', 'João da Silva', 'joao@email.com', 'Iniciante');
INSERT INTO Instrutor (CPF_Instrutor, CREF, Nome, Especialidade) VALUES ('99988877766', '12345-G/SE', 'Maria Oliveira', 'Musculação');
INSERT INTO Plano (Nome, ValorMensal, Duracao_Dias) VALUES ('Plano VIP', 150.00, 30), ('Plano Basic', 90.00, 30);

-- Criando uma Matrícula e um Treino
INSERT INTO Matricula (CPF_Aluno, ID_Plano, Status) VALUES ('11122233344', 1, 'Ativo');
INSERT INTO Treino_Atribuido (CPF_Aluno, CPF_Instrutor, Descricao) VALUES ('11122233344', '99988877766', 'Treino A - Adaptação');