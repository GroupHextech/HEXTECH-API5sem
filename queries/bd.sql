-- Lógico_1:

CREATE TABLE for_fornecedor (
    for_id NUMBER(10) PRIMARY KEY,
    for_nome VARCHAR2(50)
);

CREATE TABLE ins_insumo (
    ins_id NUMBER(10) PRIMARY KEY,
    ins_quantidade NUMBER(10, 2),
    ins_validade DATE,
    ins_data_hora_compra TIMESTAMP,
    ins_valor_compra NUMBER(10, 2),
    ite_id NUMBER(10),
    for_id NUMBER(10)
);

CREATE TABLE ite_item (
    ite_id NUMBER(10) PRIMARY KEY,
    ite_nome VARCHAR2(50)
);

CREATE TABLE rst_restaurante (
    rst_id NUMBER(10) PRIMARY KEY,
    rst_nome VARCHAR2(50),
    rst_nota NUMBER(3),
    pra_id NUMBER(10),
    ins_id NUMBER(10)
);

CREATE TABLE pra_prato (
    pra_id NUMBER(10) PRIMARY KEY,
    pra_nome VARCHAR2(50),
    pra_custo NUMBER(10, 2),
    pra_preco_venda NUMBER(10, 2),
    res_id NUMBER(10)
);

CREATE TABLE fun_funcionario (
    fun_id NUMBER(10) PRIMARY KEY,
    fun_nome VARCHAR2(50),
    fun_funcao VARCHAR2(50),
    fun_salario NUMBER(10, 2),
    fun_desempenho NUMBER(3),
    fun_folga TIMESTAMP
);

CREATE TABLE res_reserva (
    res_id NUMBER(10) PRIMARY KEY,
    res_nome VARCHAR2(50),
    res_telefone VARCHAR2(50),
    res_mesa NUMBER(5),
    res_data_hora TIMESTAMP,
    res_status VARCHAR2(50)
);

ALTER TABLE ins_insumo ADD CONSTRAINT FK_ins_insumo_2
    FOREIGN KEY (ite_id)
    REFERENCES ite_item (ite_id)
    ON DELETE SET NULL;

ALTER TABLE ins_insumo ADD CONSTRAINT FK_ins_insumo_3
    FOREIGN KEY (for_id)
    REFERENCES for_fornecedor (for_id)
    ON DELETE SET NULL;

ALTER TABLE rst_restaurante ADD CONSTRAINT FK_rst_restaurante_2
    FOREIGN KEY (pra_id)
    REFERENCES pra_prato (pra_id)
    ON DELETE SET NULL;

ALTER TABLE rst_restaurante ADD CONSTRAINT FK_rst_restaurante_3
    FOREIGN KEY (ins_id)
    REFERENCES ins_insumo (ins_id)
    ON DELETE SET NULL;

ALTER TABLE pra_prato ADD CONSTRAINT FK_pra_prato_2
    FOREIGN KEY (res_id)
    REFERENCES res_reserva (res_id)
    ON DELETE SET NULL;

-- Sequência para a tabela for_fornecedor
CREATE SEQUENCE for_fornecedor_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Sequência para a tabela ins_insumo
CREATE SEQUENCE ins_insumo_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Sequência para a tabela ite_item
CREATE SEQUENCE ite_item_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Sequência para a tabela rst_restaurante
CREATE SEQUENCE rst_restaurante_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Sequência para a tabela pra_prato
CREATE SEQUENCE pra_prato_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Sequência para a tabela fun_funcionario
CREATE SEQUENCE fun_funcionario_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;

-- Sequência para a tabela res_reserva
CREATE SEQUENCE res_reserva_seq
    START WITH 1
    INCREMENT BY 1
    NOCACHE
    NOCYCLE;
