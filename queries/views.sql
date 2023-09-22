-- View v_detalhes_insumo_fornecedor
CREATE VIEW v_detalhes_insumo_fornecedor AS
SELECT t.ite_nome, i.ins_quantidade, i.ins_validade, i.ins_data_hora_compra,
    i.ins_valor_compra, f.for_nome
FROM ins_insumo i
LEFT JOIN ite_item t ON i.ite_id = t.ite_id
LEFT JOIN for_fornecedor f ON i.for_id = f.for_id;

-- View v_detalhes_insumo_com_diferenca
CREATE VIEW v_detalhes_insumo_com_diferenca AS
SELECT 
    t.ite_nome,
    i.ins_quantidade,
    i.ins_validade,
    i.ins_data_hora_compra,
    i.ins_valor_compra,
    f.for_nome,
    i.ins_quantidade - LAG(i.ins_quantidade, 1, 0) OVER (PARTITION BY i.ite_id ORDER BY i.ins_data_hora_compra) AS diferenca_quantidade
FROM ins_insumo i
LEFT JOIN ite_item t ON i.ite_id = t.ite_id
LEFT JOIN for_fornecedor f ON i.for_id = f.for_id;
