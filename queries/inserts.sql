-- Inserindo dados na tabela for_fornecedor
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

-- Inserindo dados na tabela fun_funcionario
INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 1', 'Atendente', 2500.00, 8, TO_DATE('2023-09-19', 'YYYY-MM-DD'));


INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 2', 'Cozinheiro', 3000.00, 9, TO_DATE('2023-09-20', 'YYYY-MM-DD'));


INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 3', 'Atendente', 2600.00, 7, TO_DATE('2023-09-21', 'YYYY-MM-DD'));


INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 4', 'Cozinheiro', 3200.00, 8, TO_DATE('2023-09-22', 'YYYY-MM-DD'));


INSERT INTO fun_funcionario (fun_id, fun_nome, fun_funcao, fun_salario, fun_desempenho, fun_folga)
VALUES (fun_funcionario_seq.NEXTVAL, 'Funcionário 5', 'Garçom', 2400.00, 9, TO_DATE('2023-09-23', 'YYYY-MM-DD'));

-- Inserindo dados na tabela ite_item
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


-- Inserindo dados na tabela pra_prato
INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, pra_desempenho)
VALUES (pra_prato_seq.NEXTVAL, 'Prato A', 10.00, 20.00, 9);


INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, pra_desempenho)
VALUES (pra_prato_seq.NEXTVAL, 'Prato B', 12.00, 25.00, 8);


INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, pra_desempenho)
VALUES (pra_prato_seq.NEXTVAL, 'Prato C', 15.00, 30.00, 9);


INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, pra_desempenho)
VALUES (pra_prato_seq.NEXTVAL, 'Prato D', 11.00, 22.00, 8);


INSERT INTO pra_prato (pra_id, pra_nome, pra_custo, pra_preco_venda, pra_desempenho)
VALUES (pra_prato_seq.NEXTVAL, 'Prato E', 14.00, 28.00, 9);

-- INSERT: res_reserva TABLE
INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_data_hora, res_status, pra_id, res_telefone)
VALUES (res_reserva_seq.NEXTVAL, 'RESERVA 1', 3, TIMESTAMP '2023-09-22 18:00:00', 'CONFIRMADA', 1, '12987654321');

INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_data_hora, res_status, pra_id, res_telefone)
VALUES (res_reserva_seq.NEXTVAL, 'RESERVA 2', 5, TIMESTAMP '2023-09-23 19:30:00', 'CONFIRMADA', 2, '11912345678');

INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_data_hora, res_status, pra_id, res_telefone)
VALUES (res_reserva_seq.NEXTVAL, 'RESERVA 3', 2, TIMESTAMP '2023-09-27 17:30:00', 'CONFIRMADA', 3, '1390876543');

INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_data_hora, res_status, pra_id, res_telefone)
VALUES (res_reserva_seq.NEXTVAL, 'RESERVA 4', 4, TIMESTAMP '2023-09-28 20:00:00', 'PENDENTE', 4, '11987654320');

INSERT INTO res_reserva (res_id, res_nome, res_mesa, res_data_hora, res_status, pra_id, res_telefone)
VALUES (res_reserva_seq.NEXTVAL, 'RESERVA 5', 6, TIMESTAMP '2023-09-29 19:00:00', 'CONFIRMADA', 5, '12970654209');

-- Inserindo dados na tabela ins_insumo
INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, ite_id)
VALUES (ins_insumo_seq.NEXTVAL, '100 unidades', TO_DATE('2023-12-31', 'YYYY-MM-DD'), TIMESTAMP '2023-09-19 10:00:00', 150.00, 1, 1);

INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, ite_id)
VALUES (ins_insumo_seq.NEXTVAL, '50 unidades', TO_DATE('2023-11-30', 'YYYY-MM-DD'), TIMESTAMP '2023-09-20 14:30:00', 80.00, 2, 2);

INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, ite_id)
VALUES (ins_insumo_seq.NEXTVAL, '75 unidades', TO_DATE('2023-10-31', 'YYYY-MM-DD'), TIMESTAMP '2023-09-24 12:15:00', 120.00, 3, 3);

INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, ite_id)
VALUES (ins_insumo_seq.NEXTVAL, '90 unidades', TO_DATE('2023-11-30', 'YYYY-MM-DD'), TIMESTAMP '2023-09-25 09:30:00', 180.00, 4, 4);

INSERT INTO ins_insumo (ins_id, ins_quantidade, ins_validade, ins_data_hora_compra, ins_valor_compra, for_id, ite_id)
VALUES (ins_insumo_seq.NEXTVAL, '120 unidades', TO_DATE('2023-12-31', 'YYYY-MM-DD'), TIMESTAMP '2023-09-26 15:45:00', 200.00, 5, 5);

-- Inserindo dados na tabela con_confeccao
INSERT INTO con_confeccao (pra_id, ins_id, con_id)
VALUES (1, 1, con_confeccao_seq.NEXTVAL);

INSERT INTO con_confeccao (pra_id, ins_id, con_id)
VALUES (1, 2, con_confeccao_seq.NEXTVAL);

INSERT INTO con_confeccao (pra_id, ins_id, con_id)
VALUES (2, 3, con_confeccao_seq.NEXTVAL);

INSERT INTO con_confeccao (pra_id, ins_id, con_id)
VALUES (2, 4, con_confeccao_seq.NEXTVAL);

INSERT INTO con_confeccao (pra_id, ins_id, con_id)
VALUES (3, 5, con_confeccao_seq.NEXTVAL);
