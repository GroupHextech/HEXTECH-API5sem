-- View v_media_desempenho_restaurante
CREATE VIEW v_media_desempenho_restaurante AS
SELECT AVG(rst_nota) AS media_desempenho
FROM rst_restaurante;

-- View v_quantidade_notas_restaurante
CREATE VIEW v_quantidade_notas_restaurante AS
SELECT
    notas.nota AS nota,
    COUNT(rst.rst_nota) AS quantidade
FROM (
    SELECT 1 AS nota FROM dual UNION ALL
    SELECT 2 AS nota FROM dual UNION ALL
    SELECT 3 AS nota FROM dual UNION ALL
    SELECT 4 AS nota FROM dual UNION ALL
    SELECT 5 AS nota FROM dual
) notas
LEFT JOIN rst_restaurante rst ON notas.nota = rst.rst_nota
GROUP BY notas.nota
ORDER BY notas.nota;