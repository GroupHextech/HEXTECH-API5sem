-- Trigger irá verificar se o o estoque está acima do mínimo aceitável, caso contrário retornará o item e o valor atual em estoque;
create or replace TRIGGER T_COMPARAR_ESTOQUE
AFTER INSERT OR UPDATE ON est_estoque
FOR EACH ROW
DECLARE
BEGIN
    IF :new.est_qtd_estoque <= :new.est_nivel_minimo THEN
        DBMS_OUTPUT.PUT_LINE(:new.est_nome ||'   '|| :new.est_qtd_estoque);
    END IF;
END;
