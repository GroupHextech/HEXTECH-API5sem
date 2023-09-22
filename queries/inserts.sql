-- Inserir dados na tabela for_fornecedor
INSERT INTO for_fornecedor (for_id, for_nome)
VALUES (for_fornecedor_seq.NEXTVAL, 'Fornecedor A');

INSERT INTO for_fornecedor (for_id, for_nome)
VALUES (for_fornecedor_seq.NEXTVAL, 'Fornecedor B');

INSERT INTO for_fornecedor (for_id, for_nome)
VALUES (for_fornecedor_seq.NEXTVAL, 'Fornecedor C');

INSERT INTO for_fornecedor (for_id, for_nome)
VALUES (for_fornecedor_seq.NEXTVAL, 'Fornecedor D');

INSERT INTO for_fornecedor (for_id, for_nome)
VALUES (for_fornecedor_seq.NEXTVAL, 'Fornecedor E');

-- Inserir dados na tabela ite_item
INSERT INTO ite_item (ite_id, ite_nome)
VALUES (ite_item_seq.NEXTVAL, 'Item 1');

INSERT INTO ite_item (ite_id, ite_nome)
VALUES (ite_item_seq.NEXTVAL, 'Item 2');

INSERT INTO ite_item (ite_id, ite_nome)
VALUES (ite_item_seq.NEXTVAL, 'Item 3');

INSERT INTO ite_item (ite_id, ite_nome)
VALUES (ite_item_seq.NEXTVAL, 'Item 4');

INSERT INTO ite_item (ite_id, ite_nome)
VALUES (ite_item_seq.NEXTVAL, 'Item 5');

-- Inserir dados na tabela ins_insumo
INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (ins_insumo_seq.NEXTVAL, 100, TO_DATE('2023-12-31', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 10.50, 1, 1);

INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (ins_insumo_seq.NEXTVAL, 200, TO_DATE('2023-12-31', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 15.75, 2, 2);

INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (ins_insumo_seq.NEXTVAL, 150, TO_DATE('2023-11-30', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 12.25, 3, 3);

INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (ins_insumo_seq.NEXTVAL, 250, TO_DATE('2023-10-15', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 18.50, 4, 4);

INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, ite_id, for_id)
VALUES (ins_insumo_seq.NEXTVAL, 180, TO_DATE('2023-12-10', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 14.75, 5, 5);

-- Inserir dados na tabela res_reserva
INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES (res_reserva_seq.NEXTVAL, 'Reserva João', 3, '(123) 456-7890', TO_TIMESTAMP('2023-09-23 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Confirmada');

INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES (res_reserva_seq.NEXTVAL, 'Reserva Maria', 5, '(987) 654-3210', TO_TIMESTAMP('2023-09-24 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Confirmada');

INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES (res_reserva_seq.NEXTVAL, 'Reserva Pedro', 2, '(111) 222-3333', TO_TIMESTAMP('2023-09-25 20:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Pendente');

INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES (res_reserva_seq.NEXTVAL, 'Reserva Ana', 4, '(555) 777-9999', TO_TIMESTAMP('2023-09-26 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Confirmada');

INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_telefone, res_data_hora, res_status)
VALUES (res_reserva_seq.NEXTVAL, 'Reserva Carlos', 6, '(444) 333-2222', TO_TIMESTAMP('2023-09-27 21:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Pendente');

-- Inserir dados na tabela pra_prato
INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES (pra_prato_seq.NEXTVAL, 'Prato A', 7.50, 15.00, 1);

INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES (pra_prato_seq.NEXTVAL, 'Prato B', 8.00, 16.50, 2);

INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES (pra_prato_seq.NEXTVAL, 'Prato C', 9.50, 18.00, 3);

INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES (pra_prato_seq.NEXTVAL, 'Prato D', 8.75, 17.50, 4);

INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, res_id)
VALUES (pra_prato_seq.NEXTVAL, 'Prato E', 10.00, 20.00, 5);

-- Inserir dados na tabela rst_restaurante
INSERT INTO rst_restaurante (rst_id, rst_nome, rst_nota, pra_id, ins_id)
VALUES (rst_restaurante_seq.NEXTVAL, 'Restaurante X', 4, 1, 1);

INSERT INTO rst_restaurante (rst_id, rst_nome, rst_nota, pra_id, ins_id)
VALUES (rst_restaurante_seq.NEXTVAL, 'Restaurante X', 5, 2, 2);

INSERT INTO rst_restaurante (rst_id, rst_nome, rst_nota, pra_id, ins_id)
VALUES (rst_restaurante_seq.NEXTVAL, 'Restaurante X', 4, 3, 3);

INSERT INTO rst_restaurante (rst_id, rst_nome, rst_nota, pra_id, ins_id)
VALUES (rst_restaurante_seq.NEXTVAL, 'Restaurante X', 5, 4, 4);

INSERT INTO rst_restaurante (rst_id, rst_nome, rst_nota, pra_id, ins_id)
VALUES (rst_restaurante_seq.NEXTVAL, 'Restaurante X', 3, 5, 5);

-- Inserir dados na tabela fun_funcionario
INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 1', 'Garçom', 2000.00, 9, TO_TIMESTAMP('2023-09-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 2', 'Cozinheiro', 2500.00, 8, TO_TIMESTAMP('2023-09-29 20:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 3', 'Garçom', 2200.00, 8, TO_TIMESTAMP('2023-09-28 17:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 4', 'Cozinheiro', 2700.00, 9, TO_TIMESTAMP('2023-09-27 19:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 5', 'Atendente', 2000.00, 7, TO_TIMESTAMP('2023-09-26 18:30:00', 'YYYY-MM-DD HH24:MI:SS'));
