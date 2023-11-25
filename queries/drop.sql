-- views
DROP VIEW V_STATUS_RESERVAS;

-- foreign keys
ALTER TABLE con_confeccao
    DROP CONSTRAINT con_confeccao_est_estoque;

ALTER TABLE con_confeccao
    DROP CONSTRAINT con_confeccao_pra_prato;

ALTER TABLE esc_escala
    DROP CONSTRAINT esc_escala_fol_folgas;

ALTER TABLE esc_escala
    DROP CONSTRAINT esc_escala_fun_funcionario;

ALTER TABLE est_estoque
    DROP CONSTRAINT est_estoque_cat_categoria;

ALTER TABLE est_estoque
    DROP CONSTRAINT est_estoque_uni_unidade;

ALTER TABLE fun_funcionario
    DROP CONSTRAINT fun_funcionario_car_cargos;

ALTER TABLE fun_funcionario
    DROP CONSTRAINT fun_funcionario_per_perfilscala;

ALTER TABLE ins_insumo
    DROP CONSTRAINT ins_insumo_for_fornecedor;

ALTER TABLE ins_insumo
    DROP CONSTRAINT ins_insumo_ite_item;

ALTER TABLE ite_item_pedido
    DROP CONSTRAINT ite_item_pedido_ped_pedido;

ALTER TABLE ite_item_pedido
    DROP CONSTRAINT ite_item_pedido_pra_prato;

ALTER TABLE log_login
    DROP CONSTRAINT log_login_fun_funcionario;

ALTER TABLE log_login
    DROP CONSTRAINT log_login_per_permissao;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_fun_funcionario;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_res_reserva;

ALTER TABLE ped_pedido
    DROP CONSTRAINT ped_pedido_sta_status;

-- tables
DROP TABLE car_cargos;

DROP TABLE cat_categoria;

DROP TABLE con_confeccao;

DROP TABLE esc_escala;

DROP TABLE est_estoque;

DROP TABLE for_fornecedor;

DROP TABLE fun_funcionario;

DROP TABLE ins_insumo;

DROP TABLE ite_item_pedido;

DROP TABLE log_login;

DROP TABLE ped_pedido;

DROP TABLE per_perfilescala;

DROP TABLE pms_permissao;

DROP TABLE pra_prato;

DROP TABLE res_reserva;

DROP TABLE sta_status;

DROP TABLE tip_tipoescala;

DROP TABLE uni_unidade;

-- sequences
DROP SEQUENCE ADMIN.car_cargo_seq;

DROP SEQUENCE ADMIN.cat_categoria;

DROP SEQUENCE ADMIN.con_confeccao_seq;

DROP SEQUENCE ADMIN.esc_escala_seq;

DROP SEQUENCE ADMIN.est_estoque_seq;

DROP SEQUENCE ADMIN.for_fornecedor_seq;

DROP SEQUENCE ADMIN.fun_funcionario_seq;

DROP SEQUENCE ADMIN.ins_insumo_seq;

DROP SEQUENCE ADMIN.ite_item_pedido;

DROP SEQUENCE ADMIN.log_login_seq;

DROP SEQUENCE ADMIN.ped_pedido_seq;

DROP SEQUENCE ADMIN.per_perfilescala_seq;

DROP SEQUENCE ADMIN.pms_permissao_seq;

DROP SEQUENCE ADMIN.pra_prato_seq;

DROP SEQUENCE ADMIN.res_reserva_seq;

DROP SEQUENCE ADMIN.sta_status_seq;

DROP SEQUENCE ADMIN.tip_tipoescala;

DROP SEQUENCE ADMIN.uni_unidade_seq;

-- End of file.