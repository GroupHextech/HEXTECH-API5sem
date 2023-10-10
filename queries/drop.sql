-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-10-10 00:49:07.096

-- foreign keys
ALTER TABLE con_confeccao
    DROP CONSTRAINT con_confeccao_est_estoque;

ALTER TABLE con_confeccao
    DROP CONSTRAINT con_confeccao_pra_prato;

ALTER TABLE est_estoque
    DROP CONSTRAINT est_estoque_uni_unidade;

ALTER TABLE ins_insumo
    DROP CONSTRAINT ins_insumo_for_fornecedor;

ALTER TABLE ins_insumo
    DROP CONSTRAINT ins_insumo_ite_item;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_fun_funcionario;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_pra_prato;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_res_reserva;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_sta_status;

-- tables
DROP TABLE con_confeccao;

DROP TABLE est_estoque;

DROP TABLE for_fornecedor;

DROP TABLE fun_funcionario;

DROP TABLE ins_insumo;

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

-- End of file.

