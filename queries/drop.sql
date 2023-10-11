-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-10-11 17:29:27.924

-- foreign keys
ALTER TABLE ite_item_pedido
    DROP CONSTRAINT Table_13_ped_pedido;

ALTER TABLE ite_item_pedido
    DROP CONSTRAINT Table_13_pra_prato;

ALTER TABLE con_confeccao
    DROP CONSTRAINT con_confeccao_est_estoque;

ALTER TABLE con_confeccao
    DROP CONSTRAINT con_confeccao_pra_prato;

ALTER TABLE est_estoque
    DROP CONSTRAINT est_estoque_cat_categoria;

ALTER TABLE est_estoque
    DROP CONSTRAINT est_estoque_uni_unidade;

ALTER TABLE ins_insumo
    DROP CONSTRAINT ins_insumo_for_fornecedor;

ALTER TABLE ins_insumo
    DROP CONSTRAINT ins_insumo_ite_item;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_fun_funcionario;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_res_reserva;

ALTER TABLE res_reserva
    DROP CONSTRAINT res_reserva_sta_status;

-- tables
DROP TABLE cat_categoria;

DROP TABLE con_confeccao;

DROP TABLE est_estoque;

DROP TABLE for_fornecedor;

DROP TABLE fun_funcionario;

DROP TABLE ins_insumo;

DROP TABLE ite_item_pedido;

DROP TABLE ped_pedido;

DROP TABLE pra_prato;

DROP TABLE res_reserva;

DROP TABLE sta_status;

DROP TABLE uni_unidade;

-- sequences
DROP SEQUENCE ADMIN.con_confeccao_seq;

DROP SEQUENCE ADMIN.est_estoque_seq;

DROP SEQUENCE ADMIN.for_fornecedor_seq;

DROP SEQUENCE ADMIN.fun_funcionario_seq;

DROP SEQUENCE ADMIN.ins_insumo_seq;

DROP SEQUENCE ADMIN.ped_pedido_seq;

DROP SEQUENCE ADMIN.pra_prato_seq;

DROP SEQUENCE ADMIN.res_reserva_seq;

DROP SEQUENCE ADMIN.sta_status_seq;

DROP SEQUENCE ADMIN.uni_unidade_seq;

-- Views
DROP VIEW v_status_reservas;

-- End of file.

