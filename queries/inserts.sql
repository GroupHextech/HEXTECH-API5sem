-- Inserir dados na tabela cat_categoria
INSERT INTO cat_categoria (cat_nome) VALUES ('Categoria 1');
INSERT INTO cat_categoria (cat_nome) VALUES ('Categoria 2');

-- Inserir dados na tabela con_confeccao
INSERT INTO con_confeccao (con_qtd_utilizada, est_id, pra_id) VALUES (10.5, 1, 1);
INSERT INTO con_confeccao (con_qtd_utilizada, est_id, pra_id) VALUES (15.2, 2, 2);

-- Inserir dados na tabela est_estoque
INSERT INTO est_estoque (est_nome, est_qtd_estoque, est_nivel_minimo, uni_id, cat_categoria_cat_id) VALUES ('Item 1', 100.0, 10.0, 1, 1);
INSERT INTO est_estoque (est_nome, est_qtd_estoque, est_nivel_minimo, uni_id, cat_categoria_cat_id) VALUES ('Item 2', 200.0, 20.0, 2, 2);

-- Inserir dados na tabela for_fornecedor
INSERT INTO for_fornecedor (for_nome, for_telefone, for_endereco, for_email) VALUES ('Fornecedor 1', '123-456-7890', 'Endereço 1', 'fornecedor1@example.com');
INSERT INTO for_fornecedor (for_nome, for_telefone, for_endereco, for_email) VALUES ('Fornecedor 2', '987-654-3210', 'Endereço 2', 'fornecedor2@example.com');

-- Inserir dados na tabela fun_funcionario
INSERT INTO fun_funcionario (fun_nome, fun_funcao, fun_salario, fun_folga, fun_data_contrato) VALUES ('Funcionário 1', 'Cargo 1', 3000.00, TO_DATE('2023-10-11', 'YYYY-MM-DD'), TO_DATE('2023-01-15', 'YYYY-MM-DD'));
INSERT INTO fun_funcionario (fun_nome, fun_funcao, fun_salario, fun_folga, fun_data_contrato) VALUES ('Funcionário 2', 'Cargo 2', 2500.00, TO_DATE('2023-10-12', 'YYYY-MM-DD'), TO_DATE('2023-02-20', 'YYYY-MM-DD'));

-- Inserir dados na tabela ins_insumo
INSERT INTO ins_insumo (ins_qtd_entrada, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, est_id) VALUES (50.0, TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-10-11 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), 100.00, 1, 1);
INSERT INTO ins_insumo (ins_qtd_entrada, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, est_id) VALUES (75.0, TO_DATE('2024-02-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2023-10-11 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), 150.00, 2, 2);

-- Inserir dados na tabela ite_item_pedido
INSERT INTO ite_item_pedido (pra_id, ped_id, ite_quantidade) VALUES (1, 1, 2);
INSERT INTO ite_item_pedido (pra_id, ped_id, ite_quantidade) VALUES (2, 2, 3);

-- Inserir dados na tabela ped_pedido
INSERT INTO ped_pedido (ped_hora_pedido, ped_hora_entregue, ped_valor_total, ped_avaliacao, fun_id, res_id) VALUES (TO_TIMESTAMP('2023-10-11 12:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2023-10-11 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 50.00, 5, 1, 1);
INSERT INTO ped_pedido (ped_hora_pedido, ped_hora_entregue, ped_valor_total, ped_avaliacao, fun_id, res_id) VALUES (TO_TIMESTAMP('2023-10-11 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), NULL, 75.00, NULL, 2, 2);

-- Inserir dados na tabela pra_prato
INSERT INTO pra_prato (pra_custo, pra_preco_venda, pra_tempo_preparo) VALUES (10.00, 20.00, TO_TIMESTAMP('00:30:00', 'HH24:MI:SS'));
INSERT INTO pra_prato (pra_custo, pra_preco_venda, pra_tempo_preparo) VALUES (15.00, 30.00, TO_TIMESTAMP('00:45:00', 'HH24:MI:SS'));

-- Inserir dados na tabela res_reserva
INSERT INTO res_reserva (res_nome, res_telefone, res_mesa, res_qtd_pesssoas, res_data_hora, sta_id) VALUES ('Reserva 1', '111-222-3333', 5, 4, TO_TIMESTAMP('2023-10-12 19:00:00', 'YYYY-MM-DD HH24:MI:SS'), 1);
INSERT INTO res_reserva (res_nome, res_telefone, res_mesa, res_qtd_pesssoas, res_data_hora, sta_id) VALUES ('Reserva 2', '222-333-4444', 7, 6, TO_TIMESTAMP('2023-10-13 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), 2);

-- Inserir dados na tabela sta_status
INSERT INTO sta_status (sta_nome) VALUES ('Status 1');
INSERT INTO sta_status (sta_nome) VALUES ('Status 2');

-- Inserir dados na tabela uni_unidade
INSERT INTO uni_unidade (uni_nome, uni_sigla) VALUES ('Unidade 1', 'U1');
INSERT INTO uni_unidade (uni_nome, uni_sigla) VALUES ('Unidade 2', 'U2');
