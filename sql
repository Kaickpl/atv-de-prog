CREATE DATABASE IF NOT EXISTS escola;
USE escola;

CREATE TABLE IF NOT EXISTS Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS Nota (
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,  -- Chave estrangeira
    disciplina VARCHAR(100) NOT NULL,
    nota DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno) ON DELETE CASCADE
);




-- Inserir alunos na tabela
INSERT INTO Aluno (nome, email) VALUES ('kaick josé', 'kaick@gmail.com');
INSERT INTO Aluno (nome, email) VALUES ('glauco siqueira', 'glauco@gmail.com');
INSERT INTO Aluno (nome, email) VALUES ('maria gabriela', 'gabi@gmail.com');
INSERT INTO Aluno (nome, email) VALUES ('Joãoo Silva', 'joaoo@email.com');
INSERT INTO Aluno (nome, email) VALUES ('Mariaa Oliveira', 'mariaa@email.com');

INSERT INTO Nota (id_aluno, disciplina, nota) VALUES (1, 'Matemática', 8.5);
INSERT INTO Nota (id_aluno, disciplina, nota) VALUES (1, 'Português', 6.0);
INSERT INTO Nota (id_aluno, disciplina, nota) VALUES (2, 'Matemática', 10.0);
INSERT INTO Nota (id_aluno, disciplina, nota) VALUES (2, 'Matemática', 8.5);
INSERT INTO Nota (id_aluno, disciplina, nota) VALUES (3, 'Português', 5.0);
INSERT INTO Nota (id_aluno, disciplina, nota) VALUES (3, 'Matemática', 10.0);




SELECT * FROM Nota;
select * from Aluno;
