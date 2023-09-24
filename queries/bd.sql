-- Tabela for_fornecedor
CREATE TABLE for_fornecedor (
    for_id INT PRIMARY KEY AUTO_INCREMENT,
    for_nome VARCHAR(50)
);

-- Tabela ite_item
CREATE TABLE ite_item (
    ite_id INT PRIMARY KEY AUTO_INCREMENT,
    ite_nome VARCHAR(50)
);

-- Tabela ins_insumo
CREATE TABLE ins_insumo (
    ins_id INT PRIMARY KEY AUTO_INCREMENT,
    ins_quantidade DECIMAL(10, 2),
    ins_validade DATE,
    ins_data_hora_compra TIMESTAMP,
    ins_valor_compra DECIMAL(10, 2),
    ite_id INT,
    for_id INT,
    FOREIGN KEY (ite_id) REFERENCES ite_item(ite_id) ON DELETE SET NULL,
    FOREIGN KEY (for_id) REFERENCES for_fornecedor(for_id) ON DELETE SET NULL
);

-- Tabela res_reserva
CREATE TABLE res_reserva (
    res_id INT PRIMARY KEY AUTO_INCREMENT,
    res_nome VARCHAR(50),
    res_telefone VARCHAR(50),
    res_mesa INT,
    res_data_hora TIMESTAMP,
    res_status VARCHAR(50)
);

-- Tabela pra_prato
CREATE TABLE pra_prato (
    pra_id INT PRIMARY KEY AUTO_INCREMENT,
    pra_nome VARCHAR(50),
    pra_custo DECIMAL(10, 2),
    pra_preco_venda DECIMAL(10, 2),
    res_id INT,
    FOREIGN KEY (res_id) REFERENCES res_reserva(res_id) ON DELETE SET NULL
);

-- Tabela rst_restaurante
CREATE TABLE rst_restaurante (
    rst_id INT PRIMARY KEY AUTO_INCREMENT,
    rst_nome VARCHAR(50),
    rst_nota INT,
    pra_id INT,
    ins_id INT,
    FOREIGN KEY (pra_id) REFERENCES pra_prato(pra_id) ON DELETE SET NULL,
    FOREIGN KEY (ins_id) REFERENCES ins_insumo(ins_id) ON DELETE SET NULL
);

-- Tabela fun_funcionario
CREATE TABLE fun_funcionario (
    fun_id INT PRIMARY KEY AUTO_INCREMENT,
    fun_nome VARCHAR(50),
    fun_funcao VARCHAR(50),
    fun_salario DECIMAL(10, 2),
    fun_desempenho INT,
    fun_folga TIMESTAMP
);
