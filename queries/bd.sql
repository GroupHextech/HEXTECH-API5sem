-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-10-10 00:49:07.096

-- tables
-- Table: con_confeccao
CREATE TABLE con_confeccao (
    con_id integer  NOT NULL,
    con_qtd_utilizada float(3)  NOT NULL,
    est_id integer  NOT NULL,
    pra_id integer  NOT NULL,
    CONSTRAINT con_confeccao_pk PRIMARY KEY (con_id)
) ;

-- Table: est_estoque
CREATE TABLE est_estoque (
    est_id integer  NOT NULL,
    est_nome varchar2(30)  NULL,
    est_qtd_estoque float(3)  NULL,
    uni_id integer  NOT NULL,
    CONSTRAINT ite_item_pk PRIMARY KEY (est_id)
) ;

-- Table: for_fornecedor
CREATE TABLE for_fornecedor (
    for_id integer  NOT NULL,
    for_nome varchar2(50)  NOT NULL,
    for_telefone varchar2(15)  NOT NULL,
    for_endereco varchar2(100)  NOT NULL,
    for_email varchar2(100)  NOT NULL,
    CONSTRAINT for_fornecedor_pk PRIMARY KEY (for_id)
) ;

-- Table: fun_funcionario
CREATE TABLE fun_funcionario (
    fun_id integer  NOT NULL,
    fun_nome varchar2(50)  NULL,
    fun_funcao varchar2(50)  NULL,
    fun_salario float(2)  NULL,
    fun_folga date  NOT NULL,
    fun_data_contrato date  NULL,
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
    CONSTRAINT ins_insumo_pk PRIMARY KEY (ins_id)
) ;

-- Table: ped_pedido
CREATE TABLE ped_pedido (
    ped_id integer  NOT NULL,
    pra_id integer  NOT NULL,
    fun_id integer  NOT NULL,
    sta_id integer  NOT NULL,
    ped_hora_pedido timestamp  NULL,
    ped_hora_entregue timestamp  NULL,
    ped_valor_total float(2)  NULL,
    res_id integer  NOT NULL,
    res_telefone varchar2(15)  NOT NULL,
    CONSTRAINT ped_pedido_pk PRIMARY KEY (ped_id)
) ;

-- Table: pra_prato
CREATE TABLE pra_prato (
    pra_id integer  NOT NULL,
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
    CONSTRAINT res_reserva_pk PRIMARY KEY (res_id,res_telefone)
) ;

-- Table: sta_status
CREATE TABLE sta_status (
    sta_id integer  NOT NULL,
    sta_nome varchar2(30)  NULL,
    CONSTRAINT sta_status_pk PRIMARY KEY (sta_id)
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
    REFERENCES est_estoque (est_id);

-- Reference: con_confeccao_pra_prato (table: con_confeccao)
ALTER TABLE con_confeccao ADD CONSTRAINT con_confeccao_pra_prato
    FOREIGN KEY (pra_id)
    REFERENCES pra_prato (pra_id);

-- Reference: est_estoque_uni_unidade (table: est_estoque)
ALTER TABLE est_estoque ADD CONSTRAINT est_estoque_uni_unidade
    FOREIGN KEY (uni_id)
    REFERENCES uni_unidade (uni_id);

-- Reference: ins_insumo_for_fornecedor (table: ins_insumo)
ALTER TABLE ins_insumo ADD CONSTRAINT ins_insumo_for_fornecedor
    FOREIGN KEY (for_id)
    REFERENCES for_fornecedor (for_id);

-- Reference: ins_insumo_ite_item (table: ins_insumo)
ALTER TABLE ins_insumo ADD CONSTRAINT ins_insumo_ite_item
    FOREIGN KEY (est_id)
    REFERENCES est_estoque (est_id);

-- Reference: ped_pedido_fun_funcionario (table: ped_pedido)
ALTER TABLE ped_pedido ADD CONSTRAINT ped_pedido_fun_funcionario
    FOREIGN KEY (fun_id)
    REFERENCES fun_funcionario (fun_id);

-- Reference: ped_pedido_pra_prato (table: ped_pedido)
ALTER TABLE ped_pedido ADD CONSTRAINT ped_pedido_pra_prato
    FOREIGN KEY (pra_id)
    REFERENCES pra_prato (pra_id);

-- Reference: ped_pedido_res_reserva (table: ped_pedido)
ALTER TABLE ped_pedido ADD CONSTRAINT ped_pedido_res_reserva
    FOREIGN KEY (res_id,res_telefone)
    REFERENCES res_reserva (res_id,res_telefone);

-- Reference: ped_pedido_sta_status (table: ped_pedido)
ALTER TABLE ped_pedido ADD CONSTRAINT ped_pedido_sta_status
    FOREIGN KEY (sta_id)
    REFERENCES sta_status (sta_id);

-- sequences
-- Sequence: con_confeccao_seq
CREATE SEQUENCE ADMIN.con_confeccao_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: est_estoque_seq
CREATE SEQUENCE ADMIN.est_estoque_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: for_fornecedor_seq
CREATE SEQUENCE ADMIN.for_fornecedor_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: fun_funcionario_seq
CREATE SEQUENCE ADMIN.fun_funcionario_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: ins_insumo_seq
CREATE SEQUENCE ADMIN.ins_insumo_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: ped_pedido_seq
CREATE SEQUENCE ADMIN.ped_pedido_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: pra_prato_seq
CREATE SEQUENCE ADMIN.pra_prato_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: res_reserva_seq
CREATE SEQUENCE ADMIN.res_reserva_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: sta_status_seq
CREATE SEQUENCE ADMIN.sta_status_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- Sequence: uni_unidade_seq
CREATE SEQUENCE ADMIN.uni_unidade_seq
      INCREMENT BY 1
      MINVALUE 1
      MAXVALUE 9999999999999999999999999999
      START WITH 1
      NOCACHE
      NOCYCLE
      NOORDER
      NOSCALE;

-- End of file.

