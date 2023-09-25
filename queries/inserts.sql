-- Inserir dados na tabela for_fornecedor utilizando auto_increment
INSERT INTO for_fornecedor (for_nome) VALUES ('Fornecedor A');
INSERT INTO for_fornecedor (for_nome) VALUES ('Fornecedor B');
INSERT INTO for_fornecedor (for_nome) VALUES ('Fornecedor C');
INSERT INTO for_fornecedor (for_nome) VALUES ('Fornecedor D');
INSERT INTO for_fornecedor (for_nome) VALUES ('Fornecedor E');

-- Inserir dados na tabela ite_item utilizando auto_increment
INSERT INTO ite_item (ite_nome) VALUES ('Item 1');
INSERT INTO ite_item (ite_nome) VALUES ('Item 2');
INSERT INTO ite_item (ite_nome) VALUES ('Item 3');
INSERT INTO ite_item (ite_nome) VALUES ('Item 4');
INSERT INTO ite_item (ite_nome) VALUES ('Item 5');
INSERT INTO ite_item (ite_nome) VALUES ('Item 6');
INSERT INTO ite_item (ite_nome) VALUES ('Item 7');

-- Inserir dados na tabela ins_insumo utilizando auto_increment
INSERT INTO ins_insumo (ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (100, '2023-12-31', NOW(), 10.50, 1, 1);
INSERT INTO ins_insumo (ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (200, '2023-05-31', NOW(), 15.75, 2, 2);
INSERT INTO ins_insumo (ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (150, '2023-11-30', NOW(), 12.25, 3, 3);
INSERT INTO ins_insumo (ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (250, '2023-07-15', NOW(), 18.50, 4, 4);
INSERT INTO ins_insumo (ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (180, '2023-12-10', NOW(), 14.75, 5, 5);
INSERT INTO ins_insumo (ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (200, '2023-12-10', NOW(), 14.75, 6, 5);
INSERT INTO ins_insumo (ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (50, '2023-12-10', NOW(), 14.75, 1, 3);
INSERT INTO ins_insumo (ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (180, '2023-12-10', NOW(), 14.75, 3, 2);

-- Inserir dados na tabela res_reserva utilizando auto_increment
INSERT INTO res_reserva (res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES ('João', 3, '(27) 92859-4796', '2023-09-26 19:00:00', 'reservada');

INSERT INTO res_reserva (res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES ('Maria', 5, '(54) 93244-5588', '2023-09-26 19:00:00', 'reservada');

INSERT INTO res_reserva (res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES ('Pedro', 2, '(79) 93585-7273', '2023-09-26 20:00:00', 'reservada');

INSERT INTO res_reserva (res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES ('Ana', 4, '(24) 93413-4223', '2023-09-27 17:00:00', 'reservada');

INSERT INTO res_reserva (res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES ('Carlos', 6, '(51) 93600-6275', '2023-09-27 17:00:00', 'reservada');

-- Inserir dados na tabela pra_prato utilizando auto_increment
INSERT INTO pra_prato (pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES ('Prato A', 7.50, 15.00, 1);

INSERT INTO pra_prato (pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES ('Prato B', 8.00, 16.50, 2);

INSERT INTO pra_prato (pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES ('Prato C', 9.50, 18.00, 3);

INSERT INTO pra_prato (pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES ('Prato D', 8.75, 17.50, 4);

INSERT INTO pra_prato (pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES ('Prato E', 10.00, 20.00, 5);

-- Inserir dados na tabela rst_restaurante utilizando auto_increment
INSERT INTO rst_restaurante (rst_nome, rst_nota, pra_id, ins_id)
VALUES ('Restaurante X', 4, 1, 1);

INSERT INTO rst_restaurante (rst_nome, rst_nota, pra_id, ins_id)
VALUES ('Restaurante X', 5, 2, 2);

INSERT INTO rst_restaurante (rst_nome, rst_nota, pra_id, ins_id)
VALUES ('Restaurante X', 4, 3, 3);

INSERT INTO rst_restaurante (rst_nome, rst_nota, pra_id, ins_id)
VALUES ('Restaurante X', 5, 4, 4);

INSERT INTO rst_restaurante (rst_nome, rst_nota, pra_id, ins_id)
VALUES ('Restaurante X', 3, 5, 5);

-- Inserir dados na tabela fun_funcionario utilizando auto_increment
INSERT INTO fun_funcionario (fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES ('Funcionário 1', 'Garçom', 2000.00, 9, '2023-09-30 18:00:00');

INSERT INTO fun_funcionario (fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES ('Funcionário 2', 'Cozinheiro', 2500.00, 8, '2023-09-29 20:00:00');

INSERT INTO fun_funcionario (fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES ('Funcionário 3', 'Garçom', 2200.00, 8, '2023-09-28 17:30:00');

INSERT INTO fun_funcionario (fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES ('Funcionário 4', 'Cozinheiro', 2700.00, 9, '2023-09-27 19:00:00');

INSERT INTO fun_funcionario (fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES ('Funcionário 5', 'Atendente', 2000.00, 7, '2023-09-26 18:30:00');
