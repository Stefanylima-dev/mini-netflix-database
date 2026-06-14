SELECT 
    P.Nome AS Plano,
    COUNT(U.ID) AS Total_Assinantes,
    SUM(P.Preco) AS Faturamento_Total
FROM Plano P
LEFT JOIN Usuario U ON P.ID = U.fk_ID_Plano
GROUP BY P.Nome;

SELECT 
    U.Nome AS Dono_da_Conta,
    Perf.Nome_Perfil AS Nome_do_Perfil,
    T.Titulo AS Conteudo_Assistido
FROM Perfil Perf
INNER JOIN Usuario U ON Perf.fk_ID_Usuario = U.ID
INNER JOIN Historico_Visualizacao H ON Perf.ID = H.fk_ID_Perfil
INNER JOIN Titulo T ON H.fk_ID_Titulo = T.ID
WHERE Perf.Eh_Crianca = true;

SELECT 
    T.Titulo AS Titulo,
    T.Tipo AS Tipo,
	COUNT(H.ID) AS Vezes_Assistido
FROM Titulo T
INNER JOIN Historico_visualizacao H ON T.ID = H.fk_ID_Titulo
GROUP BY T.ID, T.Titulo, T.Tipo
ORDER BY Vezes_Assistido DESC
LIMIT 10;