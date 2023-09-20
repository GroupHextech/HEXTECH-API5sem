-- tables
-- Table: con_confeccao
CREATE TABLE con_confeccao (
    pra_id INTEGER NOT NULL,
    ins_id INTEGER NOT NULL,
    con_id INTEGER NOT NULL,
    CONSTRAINT con_confeccao_pk PRIMARY KEY (con_id)
);

-- Table: for_fornecedor
CREATE TABLE for_fornecedor (
    for_id INTEGER NOT NULL,
    for_nome VARCHAR(50) NOT NULL,
    CONSTRAINT for_fornecedor_pk PRIMARY KEY (for_id)
);

-- Table: fun_funcionario
CREATE TABLE fun_funcionario (
    fun_id INTEGER NOT NULL,
    fun_nome VARCHAR(50) NOT NULL,
    fun_funcao VARCHAR(50) NOT NULL,
    fun_salario FLOAT(2) NOT NULL,
    fun_desempenho INTEGER NOT NULL,
    fun_folga DATE NOT NULL,
    CONSTRAINT fun_funcionario_pk PRIMARY KEY (fun_id)
);

-- Table: ins_insumo
CREATE TABLE ins_insumo (
    ins_id INTEGER NOT NULL,
    ins_quantidade VARCHAR(50) NOT NULL,
    ins_validade DATE NOT NULL,
    ins_data_hora_compra TIMESTAMP NOT NULL,
    ins_valor_compra FLOAT(2) NOT NULL,
    for_id INTEGER NOT NULL,
    ite_id INTEGER NOT NULL,
    CONSTRAINT ins_insumo_pk PRIMARY KEY (ins_id)
);

-- Table: ite_item
CREATE TABLE ite_item (
    ite_id INTEGER NOT NULL,
    ite_nome INTEGER NOT NULL,
    CONSTRAINT ite_item_pk PRIMARY KEY (ite_id)
);

-- Table: pra_prato
CREATE TABLE pra_prato (
    pra_id INTEGER NOT NULL,
    pra_nome VARCHAR(50) NOT NULL,
    pra_custo FLOAT(2) NOT NULL,
    pra_preco_venda FLOAT(2) NOT NULL,
    pra_desempenho INTEGER NOT NULL,
    CONSTRAINT pra_prato_pk PRIMARY KEY (pra_id)
);

-- Table: res_reserva
CREATE TABLE res_reserva (
    res_id INTEGER NOT NULL,
    res_nome VARCHAR(50) NOT NULL,
    res_mesa INTEGER NOT NULL,
    res_data_hora TIMESTAMP NOT NULL,
	res_telefone VARCHAR(15), NOT NULL,
    res_status VARCHAR(50) NOT NULL,
    pra_id INTEGER NOT NULL,
    CONSTRAINT res_reserva_pk PRIMARY KEY (res_id)
);

-- foreign keys
-- Reference: con_confeccao (table: con_confeccao)
ALTER TABLE con_confeccao ADD CONSTRAINT con_confeccao_fk
    FOREIGN KEY (ins_id)
    REFERENCES ins_insumo (ins_id);

-- Reference: ins_insumo_for_fornecedor (table: ins_insumo)
ALTER TABLE ins_insumo ADD CONSTRAINT ins_insumo_for_fornecedor_fk
    FOREIGN KEY (for_id)
    REFERENCES for_fornecedor (for_id);

-- Reference: ins_insumo_ite_item (table: ins_insumo)
ALTER TABLE ins_insumo ADD CONSTRAINT ins_insumo_ite_item_fk
    FOREIGN KEY (ite_id)
    REFERENCES ite_item (ite_id);

-- Reference: ins_insumo_pra_prato_pra_prato (table: con_confeccao)
ALTER TABLE con_confeccao ADD CONSTRAINT ins_insumo_pra_prato_pra_prato_fk
    FOREIGN KEY (pra_id)
    REFERENCES pra_prato (pra_id);

-- Reference: res_reserva_pra_prato (table: res_reserva)
ALTER TABLE res_reserva ADD CONSTRAINT res_reserva_pra_prato_fk
    FOREIGN KEY (pra_id)
    REFERENCES pra_prato (pra_id);

-- sequences
-- Sequence: for_fornecedor_seq
CREATE SEQUENCE for_fornecedor_seq
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    START WITH 1
    NOCACHE
    NOCYCLE;

-- Sequence: fun_funcionario_seq
CREATE SEQUENCE fun_funcionario_seq
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    START WITH 1
    NOCACHE
    NOCYCLE;

-- Sequence: ins_insumo_seq
CREATE SEQUENCE ins_insumo_seq
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    START WITH 1
    NOCACHE
    NOCYCLE;

-- Sequence: ite_item_seq
CREATE SEQUENCE ite_item_seq
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    START WITH 1
    NOCACHE
    NOCYCLE;

-- Sequence: pra_prato_seq
CREATE SEQUENCE pra_prato_seq
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    START WITH 1
    NOCACHE
    NOCYCLE;

-- Sequence: res_reserva_seq
CREATE SEQUENCE res_reserva_seq
    INCREMENT BY 1
    NOMINVALUE
    NOMAXVALUE
    START WITH 1
    NOCACHE
    NOCYCLE;


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


-- End of file.
