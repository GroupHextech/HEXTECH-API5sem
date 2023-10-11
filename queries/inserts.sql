-- Inserções para uni_unidade
INSERT INTO uni_unidade (uni_id, uni_nome, uni_sigla) VALUES (1, 'Unidade 1', 'U1');
INSERT INTO uni_unidade (uni_id, uni_nome, uni_sigla) VALUES (2, 'Unidade 2', 'U2');
INSERT INTO uni_unidade (uni_id, uni_nome, uni_sigla) VALUES (3, 'Unidade 3', 'U3');

-- Inserções para cat_categoria
INSERT INTO cat_categoria (cat_id, cat_nome) VALUES (1, 'Categoria 1');
INSERT INTO cat_categoria (cat_id, cat_nome) VALUES (2, 'Categoria 2');
INSERT INTO cat_categoria (cat_id, cat_nome) VALUES (3, 'Categoria 3');

-- Inserções para for_fornecedor
INSERT INTO for_fornecedor (for_id, for_nome, for_telefone, for_endereco, for_email) VALUES (1, 'Fornecedor 1', '123-456-7890', 'Endereço 1', 'fornecedor1@example.com');
INSERT INTO for_fornecedor (for_id, for_nome, for_telefone, for_endereco, for_email) VALUES (2, 'Fornecedor 2', '987-654-3210', 'Endereço 2', 'fornecedor2@example.com');
INSERT INTO for_fornecedor (for_id, for_nome, for_telefone, for_endereco, for_email) VALUES (3, 'Fornecedor 3', '555-555-5555', 'Endereço 3', 'fornecedor3@example.com');

-- Inserções para fun_funcionario
INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_folga, fun_data_contrato) VALUES (1, 'Funcionário 1', 'Cargo 1', 2500.00, TO_DATE('2023-10-01', 'yyyy-mm-dd'), TO_DATE('2023-01-15', 'yyyy-mm-dd'));
INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_folga, fun_data_contrato) VALUES (2, 'Funcionário 2', 'Cargo 2', 2800.00, TO_DATE('2023-10-05', 'yyyy-mm-dd'), TO_DATE('2023-02-20', 'yyyy-mm-dd'));
INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_folga, fun_data_contrato) VALUES (3, 'Funcionário 3', 'Cargo 3', 3000.00, TO_DATE('2023-10-10', 'yyyy-mm-dd'), TO_DATE('2023-03-10', 'yyyy-mm-dd'));

-- Inserções para sta_status
INSERT INTO sta_status (sta_id, sta_nome) VALUES (1, 'Ativo');
INSERT INTO sta_status (sta_id, sta_nome) VALUES (2, 'Inativo');
INSERT INTO sta_status (sta_id, sta_nome) VALUES (3, 'Pendente');

-- Inserções para est_estoque
INSERT INTO est_estoque (est_id, est_nome, est_qtd_estoque, est_nivel_minimo, uni_id, cat_id) VALUES (1, 'Item 1', 100.0, 10.0, 1, 1);
INSERT INTO est_estoque (est_id, est_nome, est_qtd_estoque, est_nivel_minimo, uni_id, cat_id) VALUES (2, 'Item 2', 150.0, 15.0, 2, 2);
INSERT INTO est_estoque (est_id, est_nome, est_qtd_estoque, est_nivel_minimo, uni_id, cat_id) VALUES (3, 'Item 3', 200.0, 20.0, 3, 3);

-- Inserções para pra_prato
INSERT INTO pra_prato (pra_id, pra_custo, pra_preco_venda, pra_tempo_preparo) VALUES (1, 10.00, 20.00, TO_TIMESTAMP('00:30:00', 'hh24:mi:ss'));
INSERT INTO pra_prato (pra_id, pra_custo, pra_preco_venda, pra_tempo_preparo) VALUES (2, 12.00, 25.00, TO_TIMESTAMP('00:40:00', 'hh24:mi:ss'));
INSERT INTO pra_prato (pra_id, pra_custo, pra_preco_venda, pra_tempo_preparo) VALUES (3, 15.00, 30.00, TO_TIMESTAMP('00:45:00', 'hh24:mi:ss'));

-- Inserções para con_confeccao
INSERT INTO con_confeccao (con_id, con_qtd_utilizada, est_id, pra_id) VALUES (1, 10.5, 1, 1);
INSERT INTO con_confeccao (con_id, con_qtd_utilizada, est_id, pra_id) VALUES (2, 15.0, 2, 2);
INSERT INTO con_confeccao (con_id, con_qtd_utilizada, est_id, pra_id) VALUES (3, 20.0, 3, 3);

-- Inserções para ins_insumo
INSERT INTO ins_insumo (ins_id, ins_qtd_entrada, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, est_id) VALUES (1, 500.0, TO_DATE('2023-12-31', 'yyyy-mm-dd'), TO_TIMESTAMP('2023-10-01 08:30:00', 'yyyy-mm-dd hh24:mi:ss'), 500.00, 1, 1);
INSERT INTO ins_insumo (ins_id, ins_qtd_entrada, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, est_id) VALUES (2, 750.0, TO_DATE('2023-11-30', 'yyyy-mm-dd'), TO_TIMESTAMP('2023-10-05 09:15:00', 'yyyy-mm-dd hh24:mi:ss'), 700.00, 2, 2);
INSERT INTO ins_insumo (ins_id, ins_qtd_entrada, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, est_id) VALUES (3, 1000.0, TO_DATE('2023-10-31', 'yyyy-mm-dd'), TO_TIMESTAMP('2023-10-10 10:45:00', 'yyyy-mm-dd hh24:mi:ss'), 950.00, 3, 3);

-- Inserções para res_reserva
INSERT INTO res_reserva (res_id, res_nome, res_telefone, res_mesa, res_qtd_pesssoas, res_data_hora, sta_id) VALUES (1, 'Reserva 1', '111-111-1111', 1, 4, TO_TIMESTAMP('2023-10-02 18:00:00', 'yyyy-mm-dd hh24:mi:ss'), 1);
INSERT INTO res_reserva (res_id, res_nome, res_telefone, res_mesa, res_qtd_pesssoas, res_data_hora, sta_id) VALUES (2, 'Reserva 2', '222-222-2222', 2, 6, TO_TIMESTAMP('2023-10-06 19:30:00', 'yyyy-mm-dd hh24:mi:ss'), 2);
INSERT INTO res_reserva (res_id, res_nome, res_telefone, res_mesa, res_qtd_pesssoas, res_data_hora, sta_id) VALUES (3, 'Reserva 3', '333-333-3333', 3, 8, TO_TIMESTAMP('2023-10-11 20:00:00', 'yyyy-mm-dd hh24:mi:ss'), 3);

-- Inserções para ped_pedido
INSERT INTO ped_pedido (ped_id, ped_hora_pedido, ped_hora_entregue, ped_valor_total, ped_avaliacao, fun_id, res_id) VALUES (1, TO_TIMESTAMP('2023-10-01 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), TO_TIMESTAMP('2023-10-01 12:30:00', 'yyyy-mm-dd hh24:mi:ss'), 50.00, 5, 1, 1);
INSERT INTO ped_pedido (ped_id, ped_hora_pedido, ped_hora_entregue, ped_valor_total, ped_avaliacao, fun_id, res_id) VALUES (2, TO_TIMESTAMP('2023-10-05 18:30:00', 'yyyy-mm-dd hh24:mi:ss'), TO_TIMESTAMP('2023-10-05 19:00:00', 'yyyy-mm-dd hh24:mi:ss'), 75.00, 4, 2, 2);
INSERT INTO ped_pedido (ped_id, ped_hora_pedido, ped_hora_entregue, ped_valor_total, ped_avaliacao, fun_id, res_id) VALUES (3, TO_TIMESTAMP('2023-10-10 20:15:00', 'yyyy-mm-dd hh24:mi:ss'), TO_TIMESTAMP('2023-10-10 20:45:00', 'yyyy-mm-dd hh24:mi:ss'), 100.00, 4, 3, 3);

-- Inserções para ite_item_pedido
INSERT INTO ite_item_pedido (pra_id, ped_id, ite_quantidade) VALUES (1, 1, 2);
INSERT INTO ite_item_pedido (pra_id, ped_id, ite_quantidade) VALUES (2, 2, 3);
INSERT INTO ite_item_pedido (pra_id, ped_id, ite_quantidade) VALUES (3, 3, 4);
