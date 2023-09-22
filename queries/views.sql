-- View v_media_desempenho_restaurante
CREATE VIEW v_media_desempenho_restaurante AS
SELECT AVG(rst_nota) AS media_desempenho
FROM rst_restaurante;

-- View v_quantidade_notas_restaurante
CREATE VIEW v_quantidade_notas_restaurante AS
SELECT rst_nota, COUNT(*) AS quantidade
FROM rst_restaurante
GROUP BY rst_nota;