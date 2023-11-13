--------------------------------------------------------
--  DDL for Trigger T_COMPARAR_ESTOQUE
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."T_COMPARAR_ESTOQUE" 
AFTER INSERT OR UPDATE ON est_estoque
FOR EACH ROW
DECLARE
BEGIN
    IF :new.est_qtd_estoque <= :new.est_nivel_minimo THEN
        DBMS_OUTPUT.PUT_LINE(:new.est_nome ||'   '|| :new.est_qtd_estoque);
    END IF;
END;

/
ALTER TRIGGER "ADMIN"."T_COMPARAR_ESTOQUE" ENABLE;

-- Trigger irá verificar se o o estoque está acima do mínimo aceitável, caso contrário retornará o item e o valor atual em estoque;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_CARGO_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_CARGO_TRIGGER" 
BEFORE INSERT ON car_cargo
FOR EACH ROW
BEGIN
  SELECT ADMIN.car_cargo_seq.NEXTVAL
  INTO :new.car_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_CARGO_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_CATEGORIA_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_CATEGORIA_TRIGGER" 
BEFORE INSERT ON cat_categoria
FOR EACH ROW
BEGIN
  SELECT ADMIN.cat_categoria_seq.NEXTVAL
  INTO :new.cat_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_CATEGORIA_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_CONFECCAO_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_CONFECCAO_TRIGGER" 
BEFORE INSERT ON con_confeccao
FOR EACH ROW
BEGIN
  SELECT ADMIN.con_confeccao_seq.NEXTVAL
  INTO :new.con_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_CONFECCAO_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_ESCALA_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_ESCALA_TRIGGER" 
BEFORE INSERT ON esc_escala
FOR EACH ROW
BEGIN
  SELECT ADMIN.esc_escala_seq.NEXTVAL
  INTO :new.esc_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_ESCALA_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_ESTOQUE_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_ESTOQUE_TRIGGER" 
BEFORE INSERT ON est_estoque
FOR EACH ROW
BEGIN
  SELECT ADMIN.est_estoque_seq.NEXTVAL
  INTO :new.est_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_ESTOQUE_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_FORNECEDOR_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_FORNECEDOR_TRIGGER" 
BEFORE INSERT ON for_fornecedor
FOR EACH ROW
BEGIN
  SELECT ADMIN.for_fornecedor_seq.NEXTVAL
  INTO :new.for_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_FORNECEDOR_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_FUNCIONARIO_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_FUNCIONARIO_TRIGGER" 
BEFORE INSERT ON fun_funcionario
FOR EACH ROW
BEGIN
  SELECT ADMIN.fun_funcionario_seq.NEXTVAL
  INTO :new.fun_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_FUNCIONARIO_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_INSUMO_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_INSUMO_TRIGGER" 
BEFORE INSERT ON ins_insumo
FOR EACH ROW
BEGIN
  SELECT ADMIN.ins_insumo_seq.NEXTVAL
  INTO :new.ins_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_INSUMO_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_ITEM_PEDIDO_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_ITEM_PEDIDO_TRIGGER" 
BEFORE INSERT ON ite_item_pedido
FOR EACH ROW
BEGIN
  SELECT ADMIN.ite_item_pedido_seq.NEXTVAL
  INTO :new.ite_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_ITEM_PEDIDO_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_LOGIN_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_LOGIN_TRIGGER" 
BEFORE INSERT ON log_login
FOR EACH ROW
BEGIN
  SELECT ADMIN.log_login_seq.NEXTVAL
  INTO :new.log_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_LOGIN_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_PEDIDO_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_PEDIDO_TRIGGER" 
BEFORE INSERT ON ped_pedido
FOR EACH ROW
BEGIN
  SELECT ADMIN.ped_pedido_seq.NEXTVAL
  INTO :new.ped_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_PEDIDO_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_PERFILSCALA_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_PERFILSCALA_TRIGGER" 
BEFORE INSERT ON per_perfilescala
FOR EACH ROW
BEGIN
  SELECT ADMIN.per_perfilescala_seq.NEXTVAL
  INTO :new.per_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_PERFILSCALA_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_PERMISSAO_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_PERMISSAO_TRIGGER" 
BEFORE INSERT ON pms_permissao
FOR EACH ROW
BEGIN
  SELECT ADMIN.pms_permissao_seq.NEXTVAL
  INTO :new.pms_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_PERMISSAO_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_PRATO_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_PRATO_TRIGGER" 
BEFORE INSERT ON pra_prato
FOR EACH ROW
BEGIN
  SELECT ADMIN.pra_prato_seq.NEXTVAL
  INTO :new.pra_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_PRATO_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_RESERVA_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_RESERVA_TRIGGER" 
BEFORE INSERT ON res_reserva
FOR EACH ROW
BEGIN
  SELECT ADMIN.res_reserva_seq.NEXTVAL
  INTO :new.res_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_RESERVA_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_STATUS_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_STATUS_TRIGGER" 
BEFORE INSERT ON sta_status
FOR EACH ROW
BEGIN
  SELECT ADMIN.sta_status_seq.NEXTVAL
  INTO :new.sta_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_STATUS_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_TIPOESCALA_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_TIPOESCALA_TRIGGER" 
BEFORE INSERT ON tip_tipoescala
FOR EACH ROW
BEGIN
  SELECT ADMIN.tip_tipoescala_seq.NEXTVAL
  INTO :new.tip_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_TIPOESCALA_TRIGGER" ENABLE;

--------------------------------------------------------
--  DDL for Trigger AUTO_INCREMENT_UNIDADE_TRIGGER
--------------------------------------------------------
CREATE OR REPLACE EDITIONABLE TRIGGER "ADMIN"."AUTO_INCREMENT_UNIDADE_TRIGGER" 
BEFORE INSERT ON uni_unidade
FOR EACH ROW
BEGIN
  SELECT ADMIN.uni_unidade_seq.NEXTVAL
  INTO :new.uni_id
  FROM dual;
END;

/
ALTER TRIGGER "ADMIN"."AUTO_INCREMENT_UNIDADE_TRIGGER" ENABLE;