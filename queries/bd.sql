-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-10-14 00:45:27.541

-- tables
-- Table: car_cargos
CREATE TABLE car_cargo (
    car_id integer  NOT NULL,
    car_cargonome varchar2(100)  NULL,
    CONSTRAINT car_cargos_pk PRIMARY KEY (car_id)
) ;

-- Table: cat_categoria
CREATE TABLE cat_categoria (
    cat_id integer  NOT NULL,
    cat_nome varchar2(50)  NOT NULL,
    CONSTRAINT cat_categoria_pk PRIMARY KEY (cat_id)
) ;

-- Table: con_confeccao
CREATE TABLE con_confeccao (
    con_id integer  NOT NULL,
    con_qtd_utilizada float(4)  NULL,
    est_id integer  NOT NULL,
    pra_id integer  NOT NULL,
    CONSTRAINT con_confeccao_pk PRIMARY KEY (con_id)
) ;

-- Table: esc_escala
CREATE TABLE esc_escala (
    esc_id integer  NOT NULL,
    esc_data date  NOT NULL,
    esc_entrada_func timestamp  NOT NULL,
    esc_entrada_refeicao timestamp  NOT NULL,
    esc_saida_refeicao timestamp  NOT NULL,
    esc_saida_func timestamp  NOT NULL,
    fun_id integer  NOT NULL,
    tip_id integer  NOT NULL,
    CONSTRAINT esc_escala_pk PRIMARY KEY (esc_id)
) ;

-- Table: est_estoque
CREATE TABLE est_estoque (
    est_id integer  NOT NULL,
    est_nome varchar2(30)  NULL,
    est_qtd_estoque float(4)  NULL,
	est_nivel_minimo float(4),
    uni_id integer  NOT NULL,
	cat_id integer  NOT NULL,
    CONSTRAINT ite_item_pk PRIMARY KEY (est_id)
) ;

-- Table: for_fornecedor
CREATE TABLE for_fornecedor (
    for_id integer  NOT NULL,
    for_nome varchar2(50)  NOT NULL,
    for_telefone varchar2(15)  NULL,
    for_endereco varchar2(100)  NULL,
    for_email varchar2(100)  NULL,
    CONSTRAINT for_fornecedor_pk PRIMARY KEY (for_id)
) ;

-- Table: fun_funcionario
CREATE TABLE fun_funcionario (
    fun_id integer  NOT NULL,
    fun_nome varchar2(100)  NULL,
    fun_salario float(2)  NULL,
    fun_data_contrato date  NULL,
    car_id integer  NOT NULL,
    per_id integer  NOT NULL,
    CONSTRAINT fun_funcionario_pk PRIMARY KEY (fun_id)
) ;

-- Table: ins_insumo
CREATE TABLE ins_insumo (
    ins_id integer  NOT NULL,
    ins_qtd_entrada float(4)  NOT NULL,
    ins_validade date  NOT NULL,
    ins_data_hora_compra timestamp  NOT NULL,
    ins_valor_compra float(2)  NOT NULL,
    for_id integer  NOT NULL,
    est_id integer  NOT NULL,
    ins_previsao_entrega date  NOT NULL,
    ins_data_recebimento date  NOT NULL,
	ins_nota_fiscal varchar2(20)  NOT NULL,
    ins_previsao_pagmento date  NOT NULL,
    ins_data_pagamento date  NOT NULL,

    CONSTRAINT ins_insumo_pk PRIMARY KEY (ins_id)
) ;

-- Table: ite_item_pedido
CREATE TABLE ite_item_pedido (
    ite_id integer  NOT NULL,
    ite_quantidade integer  NOT NULL,
    pra_id integer  NOT NULL,
    ped_id integer  NOT NULL,
    CONSTRAINT ite_item_pedido_pk PRIMARY KEY (ite_id)
) ;

-- Table: log_login
CREATE TABLE log_login (
    log_id integer  NOT NULL,
    fun_id integer  NOT NULL,
    log_username varchar2(100)  NULL,
    log_password varchar2(256)  NULL,
    pms_id integer  NOT NULL,
    CONSTRAINT log_login_pk PRIMARY KEY (log_id)
) ;

-- Table: ped_pedido
CREATE TABLE ped_pedido (
    ped_id integer  NOT NULL,
    pra_id integer  NOT NULL,
    fun_id integer  NOT NULL,
    ped_hora_pedido timestamp  NULL,
    ped_hora_entregue timestamp  NULL,
    ped_valor_total float(2)  NULL,
    res_id integer  NOT NULL,
    res_telefone varchar2(15)  NOT NULL,
    CONSTRAINT ped_pedido_pk PRIMARY KEY (ped_id)
) ;

-- Table: per_perfilescala
CREATE TABLE per_perfilescala (
    per_id integer  NOT NULL,
    per_nomeperfil varchar2(100)  NULL,
    per_hora_entrada timestamp  NOT NULL,
    per_hora_saida timestamp  NOT NULL,
    CONSTRAINT per_perfilescala_pk PRIMARY KEY (per_id)
) ;

-- Table: pms_permissao
CREATE TABLE pms_permissao (
    pms_id integer  NOT NULL,
    pms_permissao varchar2(30)  NULL,
    CONSTRAINT pms_permissao_pk PRIMARY KEY (pms_id)
) ;

-- Table: pra_prato
CREATE TABLE pra_prato (
    pra_id integer  NOT NULL,
	pra_nome varchar(50) NOT NULL,
    pra_custo float(2)  NOT NULL,
    pra_preco_venda float(2)  NOT NULL,
    pra_tempo_preparo timestamp  NULL,
    CONSTRAINT pra_prato_pk PRIMARY KEY (pra_id)
) ;

-- Table: res_reserva
CREATE TABLE res_reserva (
    res_id integer  NOT NULL,
    res_nome varchar2(50)  NOT NULL,
    res_telefone varchar2(15)  NOT NULL,
    res_mesa integer  NULL,
    res_qtd_pesssoas Integer  NULL,
    res_data_hora timestamp  NOT NULL,
	sta_id integer  NOT NULL,
    CONSTRAINT res_reserva_pk PRIMARY KEY (res_id,res_telefone)
) ;

-- Table: sta_status
CREATE TABLE sta_status (
    sta_id integer  NOT NULL,
    sta_nome varchar2(30)  NULL,
    CONSTRAINT sta_status_pk PRIMARY KEY (sta_id)
) ;

-- Table: tip_tipoescala
CREATE TABLE tip_tipoescala (
    tip_id integer  NOT NULL,
    tip_escala varchar2(100)  NOT NULL,
    CONSTRAINT tip_tipoescala_pk PRIMARY KEY (tip_id)
) ;

-- Table: uni_unidade
CREATE TABLE uni_unidade (
    uni_id integer  NOT NULL,
    uni_nome varchar2(30)  NULL,
    uni_sigla char(2)  NULL,
    CONSTRAINT uni_unidade_pk PRIMARY KEY (uni_id)
) ;


-- foreign keys
-- Reference: con_confeccao_est_estoque (table: con_confeccao)
ALTER TABLE con_confeccao ADD CONSTRAINT con_confeccao_est_estoque
    FOREIGN KEY (est_id)
    REFERENCES est_estoque (est_id) ENABLE;

-- Reference: con_confeccao_pra_prato (table: con_confeccao)
ALTER TABLE con_confeccao ADD CONSTRAINT con_confeccao_pra_prato
    FOREIGN KEY (pra_id)
    REFERENCES pra_prato (pra_id) ENABLE;

-- Reference: esc_escala_fol_folgas (table: esc_escala)
ALTER TABLE esc_escala ADD CONSTRAINT esc_escala_fol_folgas
    FOREIGN KEY (tip_id)
    REFERENCES tip_tipoescala (tip_id) ENABLE;

-- Reference: esc_escala_fun_funcionario (table: esc_escala)
ALTER TABLE esc_escala ADD CONSTRAINT esc_escala_fun_funcionario
    FOREIGN KEY (fun_id)
    REFERENCES fun_funcionario (fun_id) ENABLE;

-- Reference: est_estoque_cat_categoria (table: est_estoque)
ALTER TABLE est_estoque ADD CONSTRAINT est_estoque_cat_categoria
    FOREIGN KEY (cat_id)
    REFERENCES cat_categoria (cat_id) ENABLE;

-- Reference: est_estoque_uni_unidade (table: est_estoque)
ALTER TABLE est_estoque ADD CONSTRAINT est_estoque_uni_unidade
    FOREIGN KEY (uni_id)
    REFERENCES uni_unidade (uni_id) ENABLE;

-- Reference: fun_funcionario_car_cargos (table: fun_funcionario)
ALTER TABLE fun_funcionario ADD CONSTRAINT fun_funcionario_car_cargos
    FOREIGN KEY (car_id)
    REFERENCES car_cargos (car_id) ENABLE;

-- Reference: fun_funcionario_per_perfilscala (table: fun_funcionario)
ALTER TABLE fun_funcionario ADD CONSTRAINT fun_funcionario_per_perfilscala
    FOREIGN KEY (per_id)
    REFERENCES per_perfilescala (per_id) ENABLE;

-- Reference: ins_insumo_for_fornecedor (table: ins_insumo)
ALTER TABLE ins_insumo ADD CONSTRAINT ins_insumo_for_fornecedor
    FOREIGN KEY (for_id)
    REFERENCES for_fornecedor (for_id) ENABLE;

-- Reference: ins_insumo_ite_item (table: ins_insumo)
ALTER TABLE ins_insumo ADD CONSTRAINT ins_insumo_ite_item
    FOREIGN KEY (est_id)
    REFERENCES est_estoque (est_id) ENABLE;

-- Reference: ite_item_pedido_ped_pedido (table: ite_item_pedido)
ALTER TABLE ite_item_pedido ADD CONSTRAINT ite_item_pedido_ped_pedido
    FOREIGN KEY (ped_id)
    REFERENCES ped_pedido (ped_id);

-- Reference: ite_item_pedido_pra_prato (table: ite_item_pedido)
ALTER TABLE ite_item_pedido ADD CONSTRAINT ite_item_pedido_pra_prato
    FOREIGN KEY (pra_id)
    REFERENCES pra_prato (pra_id) ENABLE;

-- Reference: log_login_fun_funcionario (table: log_login)
ALTER TABLE log_login ADD CONSTRAINT log_login_fun_funcionario
    FOREIGN KEY (fun_id)
    REFERENCES fun_funcionario (fun_id) ENABLE;

-- Reference: log_login_pms_permissao (table: log_login)
ALTER TABLE log_login ADD CONSTRAINT log_login_pms_permissao
    FOREIGN KEY (pms_id)
    REFERENCES pms_permissao (pms_id) ENABLE;

-- Reference: ped_pedido_fun_funcionario (table: ped_pedido)
ALTER TABLE ped_pedido ADD CONSTRAINT ped_pedido_fun_funcionario
    FOREIGN KEY (fun_id)
    REFERENCES fun_funcionario (fun_id) ENABLE;

-- Reference: ped_pedido_res_reserva (table: ped_pedido)
ALTER TABLE ped_pedido ADD CONSTRAINT ped_pedido_res_reserva
    FOREIGN KEY (res_id,res_telefone)
    REFERENCES res_reserva (res_id,res_telefone) ENABLE;
	
-- Reference: res_reserva_sta_status (table: res_reserva)
ALTER TABLE res_reserva ADD CONSTRAINT res_reserva_sta_status
    FOREIGN KEY (sta_id)
    REFERENCES sta_status (sta_id) ENABLE;

-- End of file.

