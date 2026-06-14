INSERT INTO Plano (Nome, Preco, Resolucao_maxima) VALUES 
('Básico', 25.90, '720p'),
('Padrão', 39.90, '1080p'),
('Premium', 55.90, '4K');


INSERT INTO Usuario (Nome, Email, Data_Cadastro, fk_ID_Plano) VALUES 
('Lucas Silva', 'lucas@email.com', '2026-01-15', 3), 
('Pedro Bezerra', 'Pedro@email.com', '2026-03-10', 2),
('Mario Cabral', 'Mario@email.com', '2026-01-06', 3),
('Maria Souza', 'maria@email.com', '2026-02-20', 1);

INSERT INTO Perfil (Nome_Perfil, Eh_Crianca, fk_ID_Usuario) VALUES 
('Lucas', false, 1),
('Aninha', true, 1), 
('Pedro', false, 2),
('Mario', false, 3),
('Maria', false, 4);

INSERT INTO Titulo (Titulo, Sinopse, Ano_Lancamento, Tipo) VALUES 
('Stranger Things', 'Grupo de amigos enfrenta forças sobrenaturais.', '2016-07-15', 'Série'),
('Ilha do Medo', 'Um agente federal investiga o desaparecimento de uma paciente no Hospital Psiquiátrico Ashecliffe.', '2010-02-19', 'Filme'),
('O Rei Leão', 'A jornada de um jovem leão para assumir seu trono.', '1994-06-24', 'Filme');

INSERT INTO Historico_Visualizacao (Data_Visualizacao, Segundos_Assistindo, fk_ID_Perfil, fk_ID_Titulo) VALUES 
('2026-06-10', 3600, 1, 1), 
('2026-06-12', 5400, 2, 3),
('2026-06-10', 3600, 4, 2),
('2026-06-10', 3600, 5, 2);
