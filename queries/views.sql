CREATE OR REPLACE VIEW mesa_status_por_data AS
SELECT
    r.res_nome AS nome,
    r.res_telefone AS telefone,
    r.res_status AS status,
    r.res_mesa AS mesa,
    r.res_data_hora AS data
FROM
    res_reserva r;
