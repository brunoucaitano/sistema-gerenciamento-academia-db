-- 1. Relatório de Faturamento Total por Plano [cite: 425]
SELECT P.Nome, SUM(P.ValorMensal) as Receita_Total
FROM Plano P
JOIN Matricula M ON P.ID_Plano = M.ID_Plano
WHERE M.Status = 'Ativo'
GROUP BY P.Nome;

-- 2. Lista de Alunos e seus respectivos Instrutores (Relacionamento N:N) [cite: 407]
SELECT A.Nome as Aluno, I.Nome as Instrutor, T.Descricao as Treino
FROM Aluno A
JOIN Treino_Atribuido T ON A.CPF_Aluno = T.CPF_Aluno
JOIN Instrutor I ON T.CPF_Instrutor = I.CPF_Instrutor;